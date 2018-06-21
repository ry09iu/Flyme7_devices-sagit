.class public Landroid/hardware/CameraInjector;
.super Ljava/lang/Object;
.source "CameraInjector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/CameraInjector$CameraExInfo;,
        Landroid/hardware/CameraInjector$CameraOrientationEventListener;,
        Landroid/hardware/CameraInjector$UploadInfoThread;
    }
.end annotation


# static fields
.field private static final ACTION_SAVE_CAMERA_INFO:Ljava/lang/String; = "action_save_camera_info"

.field private static final CAMERA_CONFIG_KEY:Ljava/lang/String; = "camera"

.field private static final ENDTTIME:Ljava/lang/String; = "endtime"

.field private static final EXTRA_BEAUTIFY_VALUE:Ljava/lang/String; = "extra_still_beautify_value"

.field private static final EXTRA_MIN_PREVIEW_SIZE:Ljava/lang/String; = "extra_min_preview_size"

.field private static final FRONTORBACK:Ljava/lang/String; = "frontorback"

.field private static final KEY_BEAUTIFY:Ljava/lang/String; = "xiaomi-still-beautify-values"

.field private static final KEY_CAMERA_ID:Ljava/lang/String; = "camera-id"

.field private static final KEY_PICTURE_SIZE:Ljava/lang/String; = "picture-size"

.field private static final KEY_PREVIEW_SIZE:Ljava/lang/String; = "preview-size"

.field private static final SAVE_CAMERA_INFO_PACKAGE_NAME:Ljava/lang/String; = "com.miui.klo.bugreport"

.field private static final SAVE_CAMERA_INFO_SERVICE_NAME:Ljava/lang/String; = "com.miui.klo.bugreport.service.ReceiveCameraInfoService"

.field private static final STARTTIME:Ljava/lang/String; = "starttime"

.field private static final SUPPORTED_VALUES_SUFFIX:Ljava/lang/String; = "-values"

.field private static final TAG:Ljava/lang/String; = "CameraInjector"

.field private static sCameraInfoMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/hardware/Camera;",
            "Landroid/hardware/CameraInjector$CameraExInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0()Ljava/util/WeakHashMap;
    .locals 1

    sget-object v0, Landroid/hardware/CameraInjector;->sCameraInfoMap:Ljava/util/WeakHashMap;

    return-object v0
.end method

.method static synthetic -wrap0(II)I
    .locals 1
    .param p0, "orientation"    # I
    .param p1, "orientationHistory"    # I

    .prologue
    invoke-static {p0, p1}, Landroid/hardware/CameraInjector;->roundOrientation(II)I

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Landroid/hardware/CameraInjector;->sCameraInfoMap:Ljava/util/WeakHashMap;

    .line 31
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static convertSizeToString(Landroid/hardware/Camera$Size;)Ljava/lang/String;
    .locals 2
    .param p0, "size"    # Landroid/hardware/Camera$Size;

    .prologue
    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static createOrientationListener(Landroid/hardware/Camera;)V
    .locals 4
    .param p0, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 384
    sget-object v2, Landroid/hardware/CameraInjector;->sCameraInfoMap:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/CameraInjector$CameraExInfo;

    .line 385
    .local v0, "cameraExInfo":Landroid/hardware/CameraInjector$CameraExInfo;
    invoke-static {}, Landroid/hardware/CameraInjector;->isInRotateWhiteList()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 386
    const-string/jumbo v2, "CameraInjector"

    const-string/jumbo v3, "Listener orientation"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    new-instance v1, Landroid/hardware/CameraInjector$CameraOrientationEventListener;

    .line 389
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    .line 387
    invoke-direct {v1, p0, v2}, Landroid/hardware/CameraInjector$CameraOrientationEventListener;-><init>(Landroid/hardware/Camera;Landroid/content/Context;)V

    .line 390
    .local v1, "cameraOrientationEventListener":Landroid/hardware/CameraInjector$CameraOrientationEventListener;
    invoke-virtual {v1}, Landroid/hardware/CameraInjector$CameraOrientationEventListener;->enable()V

    .line 391
    invoke-static {v0, v1}, Landroid/hardware/CameraInjector$CameraExInfo;->-set0(Landroid/hardware/CameraInjector$CameraExInfo;Landroid/hardware/CameraInjector$CameraOrientationEventListener;)Landroid/hardware/CameraInjector$CameraOrientationEventListener;

    .line 383
    .end local v1    # "cameraOrientationEventListener":Landroid/hardware/CameraInjector$CameraOrientationEventListener;
    :cond_0
    return-void
.end method

.method private static destoryOrientationListener(Landroid/hardware/Camera;)V
    .locals 5
    .param p0, "camera"    # Landroid/hardware/Camera;

    .prologue
    const/4 v4, 0x0

    .line 396
    sget-object v2, Landroid/hardware/CameraInjector;->sCameraInfoMap:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/CameraInjector$CameraExInfo;

    .line 397
    .local v0, "cameraExInfo":Landroid/hardware/CameraInjector$CameraExInfo;
    if-eqz v0, :cond_0

    .line 398
    invoke-static {v0}, Landroid/hardware/CameraInjector$CameraExInfo;->-get0(Landroid/hardware/CameraInjector$CameraExInfo;)Landroid/hardware/CameraInjector$CameraOrientationEventListener;

    move-result-object v1

    .line 399
    .local v1, "listener":Landroid/hardware/CameraInjector$CameraOrientationEventListener;
    if-eqz v1, :cond_0

    .line 400
    const-string/jumbo v2, "CameraInjector"

    const-string/jumbo v3, "release orientation listener"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    invoke-virtual {v1}, Landroid/hardware/CameraInjector$CameraOrientationEventListener;->disable()V

    .line 402
    invoke-static {v0, v4}, Landroid/hardware/CameraInjector$CameraExInfo;->-set0(Landroid/hardware/CameraInjector$CameraExInfo;Landroid/hardware/CameraInjector$CameraOrientationEventListener;)Landroid/hardware/CameraInjector$CameraOrientationEventListener;

    .line 395
    .end local v1    # "listener":Landroid/hardware/CameraInjector$CameraOrientationEventListener;
    :cond_0
    return-void
.end method

.method private static getCameraParameterInfo(Landroid/hardware/Camera;)Ljava/util/HashMap;
    .locals 3
    .param p0, "camera"    # Landroid/hardware/Camera;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/Camera;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 440
    sget-object v1, Landroid/hardware/CameraInjector;->sCameraInfoMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/CameraInjector$CameraExInfo;

    .line 441
    .local v0, "cameraExInfo":Landroid/hardware/CameraInjector$CameraExInfo;
    if-eqz v0, :cond_0

    .line 442
    invoke-static {v0}, Landroid/hardware/CameraInjector$CameraExInfo;->-get1(Landroid/hardware/CameraInjector$CameraExInfo;)Ljava/util/HashMap;

    move-result-object v1

    return-object v1

    .line 444
    :cond_0
    return-object v2
.end method

.method public static getNumberOfCameras(I)I
    .locals 1
    .param p0, "numberOfCameras"    # I

    .prologue
    .line 221
    invoke-static {}, Landroid/hardware/CameraInjector;->isExposeAuxCamera()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    if-le p0, v0, :cond_0

    .line 222
    const/4 p0, 0x2

    .line 227
    :cond_0
    invoke-static {}, Landroid/hardware/CameraInjector;->limitCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    if-le p0, v0, :cond_1

    .line 228
    const/4 p0, 0x1

    .line 231
    :cond_1
    return p0
.end method

.method public static getParametersEx(Landroid/hardware/Camera$Parameters;)V
    .locals 7
    .param p0, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 130
    const-string/jumbo v5, "remove_lower_perview_size_list"

    invoke-static {v5}, Landroid/hardware/CameraInjector;->isInWhiteList(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 131
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v2

    .line 132
    .local v2, "previewSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 133
    .local v1, "newSizeList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    const-string/jumbo v5, "extra_min_preview_size"

    const v6, 0xe1000

    invoke-static {v5, v6}, Lmiui/util/FeatureParser;->getInteger(Ljava/lang/String;I)I

    move-result v0

    .line 134
    .local v0, "minSize":I
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "size$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Camera$Size;

    .line 135
    .local v3, "size":Landroid/hardware/Camera$Size;
    iget v5, v3, Landroid/hardware/Camera$Size;->width:I

    iget v6, v3, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v5, v6

    if-gt v0, v5, :cond_0

    .line 136
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 139
    .end local v3    # "size":Landroid/hardware/Camera$Size;
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-eq v5, v6, :cond_2

    .line 140
    const-string/jumbo v5, "preview-size-values"

    .line 141
    invoke-static {v1}, Landroid/hardware/CameraInjector;->getValueString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v6

    .line 140
    invoke-virtual {p0, v5, v6}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    .end local v0    # "minSize":I
    .end local v1    # "newSizeList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    .end local v2    # "previewSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    .end local v4    # "size$iterator":Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method private static getValueString(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 202
    .local p0, "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    if-eqz p0, :cond_2

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 204
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 205
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Camera$Size;

    .line 206
    .local v2, "size":Landroid/hardware/Camera$Size;
    iget v3, v2, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 207
    const/16 v3, 0x78

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 208
    iget v3, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 209
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-eq v1, v3, :cond_0

    const/16 v3, 0x2c

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 204
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 211
    .end local v2    # "size":Landroid/hardware/Camera$Size;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 213
    .end local v0    # "buffer":Ljava/lang/StringBuilder;
    .end local v1    # "i":I
    :cond_2
    const-string/jumbo v3, ""

    return-object v3
.end method

.method public static initCamera(Landroid/hardware/Camera;I)V
    .locals 2
    .param p0, "camera"    # Landroid/hardware/Camera;
    .param p1, "cameraId"    # I

    .prologue
    .line 79
    new-instance v0, Landroid/hardware/CameraInjector$CameraExInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/hardware/CameraInjector$CameraExInfo;-><init>(ILandroid/hardware/CameraInjector$CameraExInfo;)V

    .line 80
    .local v0, "info":Landroid/hardware/CameraInjector$CameraExInfo;
    sget-object v1, Landroid/hardware/CameraInjector;->sCameraInfoMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    const/4 v1, 0x1

    invoke-static {p0, v1}, Landroid/hardware/CameraInjector;->onCameraStateChange(Landroid/hardware/Camera;Z)V

    .line 83
    const/4 v1, 0x0

    invoke-static {p0, v1}, Landroid/hardware/CameraInjector;->uploadCameraUseInfo(Landroid/hardware/Camera;Z)V

    .line 78
    return-void
.end method

.method public static isExposeAuxCamera()Z
    .locals 1

    .prologue
    .line 281
    const-string/jumbo v0, "camera.aux.packagelist"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/CameraInjector;->limitByPackageName(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static isInRotateWhiteList()Z
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 349
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    .line 351
    .local v1, "processName":Ljava/lang/String;
    const-string/jumbo v5, "camera.rotate.packagelist"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 352
    .local v0, "packageList":Ljava/lang/String;
    const-string/jumbo v5, "CameraInjector"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isInRotateWhiteList whiteList="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " processName="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 354
    new-instance v2, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v5, 0x2c

    invoke-direct {v2, v5}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 355
    .local v2, "splitter":Landroid/text/TextUtils$StringSplitter;
    invoke-interface {v2, v0}, Landroid/text/TextUtils$StringSplitter;->setString(Ljava/lang/String;)V

    .line 356
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "str$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 357
    .local v3, "str":Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 358
    const/4 v5, 0x1

    return v5

    .line 362
    .end local v2    # "splitter":Landroid/text/TextUtils$StringSplitter;
    .end local v3    # "str":Ljava/lang/String;
    .end local v4    # "str$iterator":Ljava/util/Iterator;
    :cond_1
    return v8
.end method

.method private static isInWhiteList(Ljava/lang/String;)Z
    .locals 7
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 66
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, "processName":Ljava/lang/String;
    invoke-static {p0}, Lmiui/util/FeatureParser;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 68
    .local v2, "whitelist":[Ljava/lang/String;
    if-eqz v2, :cond_1

    array-length v3, v2

    if-lez v3, :cond_1

    .line 69
    array-length v5, v2

    move v3, v4

    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v1, v2, v3

    .line 70
    .local v1, "str":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 71
    const/4 v3, 0x1

    return v3

    .line 69
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 75
    .end local v1    # "str":Ljava/lang/String;
    :cond_1
    return v4
.end method

.method public static limitByCameraId(Ljava/lang/String;)Z
    .locals 3
    .param p0, "cameraId"    # Ljava/lang/String;

    .prologue
    .line 241
    const/4 v0, 0x0

    .line 242
    .local v0, "limit":Z
    if-nez p0, :cond_0

    .line 243
    const/4 v0, 0x1

    .line 248
    :cond_0
    invoke-static {}, Landroid/hardware/CameraInjector;->isExposeAuxCamera()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_1

    .line 249
    const/4 v0, 0x1

    .line 254
    :cond_1
    invoke-static {}, Landroid/hardware/CameraInjector;->limitCamera()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_2

    .line 255
    const/4 v0, 0x1

    .line 258
    :cond_2
    return v0
.end method

.method private static limitByPackageName(Ljava/lang/String;)Z
    .locals 6
    .param p0, "packageList"    # Ljava/lang/String;

    .prologue
    .line 262
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    .line 264
    .local v1, "packageName":Ljava/lang/String;
    const/4 v0, 0x0

    .line 265
    .local v0, "limit":Z
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 266
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 267
    new-instance v2, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v5, 0x2c

    invoke-direct {v2, v5}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 268
    .local v2, "splitter":Landroid/text/TextUtils$StringSplitter;
    invoke-interface {v2, p0}, Landroid/text/TextUtils$StringSplitter;->setString(Ljava/lang/String;)V

    .line 269
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "str$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 270
    .local v3, "str":Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 271
    const/4 v0, 0x1

    .line 277
    .end local v2    # "splitter":Landroid/text/TextUtils$StringSplitter;
    .end local v3    # "str":Ljava/lang/String;
    .end local v4    # "str$iterator":Ljava/util/Iterator;
    :cond_1
    return v0
.end method

.method public static limitCamera()Z
    .locals 1

    .prologue
    .line 285
    const-string/jumbo v0, "camera.limit.packagelist"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/CameraInjector;->limitByPackageName(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static onCameraStateChange(Landroid/hardware/Camera;Z)V
    .locals 2
    .param p0, "camera"    # Landroid/hardware/Camera;
    .param p1, "active"    # Z

    .prologue
    .line 373
    const-string/jumbo v0, "chiron"

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 374
    const-string/jumbo v0, "lithium"

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 373
    if-eqz v0, :cond_1

    .line 375
    :cond_0
    if-eqz p1, :cond_2

    .line 376
    invoke-static {p0}, Landroid/hardware/CameraInjector;->createOrientationListener(Landroid/hardware/Camera;)V

    .line 371
    :cond_1
    :goto_0
    return-void

    .line 378
    :cond_2
    invoke-static {p0}, Landroid/hardware/CameraInjector;->destoryOrientationListener(Landroid/hardware/Camera;)V

    goto :goto_0
.end method

.method public static processPreviewFrame(Landroid/hardware/Camera;[B)V
    .locals 2
    .param p0, "camera"    # Landroid/hardware/Camera;
    .param p1, "data"    # [B

    .prologue
    .line 195
    sget-object v1, Landroid/hardware/CameraInjector;->sCameraInfoMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/CameraInjector$CameraExInfo;

    .line 196
    .local v0, "cameraExInfo":Landroid/hardware/CameraInjector$CameraExInfo;
    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/hardware/CameraInjector$CameraExInfo;->-get3(Landroid/hardware/CameraInjector$CameraExInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 197
    invoke-static {p1}, Landroid/hardware/CameraInjector;->reversePreviewFrame([B)V

    .line 194
    :cond_0
    return-void
.end method

.method public static releaseCamera(Landroid/hardware/Camera;)V
    .locals 1
    .param p0, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 87
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/hardware/CameraInjector;->onCameraStateChange(Landroid/hardware/Camera;Z)V

    .line 89
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/hardware/CameraInjector;->uploadCameraUseInfo(Landroid/hardware/Camera;Z)V

    .line 90
    sget-object v0, Landroid/hardware/CameraInjector;->sCameraInfoMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    return-void
.end method

.method private static reverse([BII)V
    .locals 2
    .param p0, "array"    # [B
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 316
    if-eqz p0, :cond_0

    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    if-le p1, v1, :cond_1

    .line 318
    :cond_0
    return-void

    .line 316
    :cond_1
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    if-gt p2, v1, :cond_0

    .line 317
    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    .line 321
    :goto_0
    if-le p2, p1, :cond_2

    .line 322
    aget-byte v0, p0, p2

    .line 323
    .local v0, "tmp":B
    aget-byte v1, p0, p1

    aput-byte v1, p0, p2

    .line 324
    aput-byte v0, p0, p1

    .line 325
    add-int/lit8 p2, p2, -0x1

    .line 326
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 315
    .end local v0    # "tmp":B
    :cond_2
    return-void
.end method

.method private static reversePreviewFrame([B)V
    .locals 2
    .param p0, "array"    # [B

    .prologue
    .line 304
    if-nez p0, :cond_0

    .line 305
    return-void

    .line 308
    :cond_0
    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    div-int/lit8 v0, v1, 0x3

    .line 310
    .local v0, "totalYNum":I
    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Landroid/hardware/CameraInjector;->reverse([BII)V

    .line 312
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    invoke-static {p0, v0, v1}, Landroid/hardware/CameraInjector;->reverseUV([BII)V

    .line 303
    return-void
.end method

.method private static reverseUV([BII)V
    .locals 4
    .param p0, "array"    # [B
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 331
    if-eqz p0, :cond_0

    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-le p1, v2, :cond_1

    .line 333
    :cond_0
    return-void

    .line 331
    :cond_1
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-gt p2, v2, :cond_0

    .line 332
    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    .line 336
    :goto_0
    if-le p2, p1, :cond_2

    .line 337
    add-int/lit8 v2, p2, -0x1

    aget-byte v0, p0, v2

    .line 338
    .local v0, "tmpU":B
    aget-byte v1, p0, p2

    .line 339
    .local v1, "tmpV":B
    add-int/lit8 v2, p2, -0x1

    aget-byte v3, p0, p1

    aput-byte v3, p0, v2

    .line 340
    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    aput-byte v2, p0, p2

    .line 341
    aput-byte v0, p0, p1

    .line 342
    add-int/lit8 v2, p1, 0x1

    aput-byte v1, p0, v2

    .line 343
    add-int/lit8 p2, p2, -0x2

    .line 344
    add-int/lit8 p1, p1, 0x2

    goto :goto_0

    .line 330
    .end local v0    # "tmpU":B
    .end local v1    # "tmpV":B
    :cond_2
    return-void
.end method

.method private static roundOrientation(II)I
    .locals 3
    .param p0, "orientation"    # I
    .param p1, "orientationHistory"    # I

    .prologue
    .line 289
    const/4 v0, 0x0

    .line 290
    .local v0, "changeOrientation":Z
    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    .line 291
    const/4 v0, 0x1

    .line 297
    :goto_0
    if-eqz v0, :cond_2

    .line 298
    add-int/lit8 v2, p0, 0x2d

    div-int/lit8 v2, v2, 0x5a

    mul-int/lit8 v2, v2, 0x5a

    rem-int/lit16 v2, v2, 0x168

    return v2

    .line 293
    :cond_0
    sub-int v2, p0, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 294
    .local v1, "dist":I
    rsub-int v2, v1, 0x168

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 295
    const/16 v2, 0x32

    if-lt v1, v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 300
    .end local v1    # "dist":I
    :cond_2
    return p1
.end method

.method public static setParametersEx(Landroid/hardware/Camera;Landroid/hardware/Camera$Parameters;)V
    .locals 5
    .param p0, "camera"    # Landroid/hardware/Camera;
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    const/16 v3, 0x2d0

    .line 152
    const-string/jumbo v2, "add_still_beautify_list"

    invoke-static {v2}, Landroid/hardware/CameraInjector;->isInWhiteList(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 153
    const-string/jumbo v2, "xiaomi-still-beautify-values"

    invoke-virtual {p1, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 154
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 155
    .local v1, "size":Landroid/hardware/Camera$Size;
    if-eqz v1, :cond_1

    iget v2, v1, Landroid/hardware/Camera$Size;->height:I

    if-le v2, v3, :cond_0

    iget v2, v1, Landroid/hardware/Camera$Size;->width:I

    if-gt v2, v3, :cond_1

    .line 156
    :cond_0
    const-string/jumbo v2, "xiaomi-still-beautify-values"

    .line 157
    const-string/jumbo v3, "extra_still_beautify_value"

    invoke-static {v3}, Lmiui/util/FeatureParser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 156
    invoke-virtual {p1, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    .end local v1    # "size":Landroid/hardware/Camera$Size;
    :cond_1
    invoke-static {p0}, Landroid/hardware/CameraInjector;->getCameraParameterInfo(Landroid/hardware/Camera;)Ljava/util/HashMap;

    move-result-object v0

    .line 162
    .local v0, "info":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_2

    .line 163
    const-string/jumbo v2, "preview-size"

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/CameraInjector;->convertSizeToString(Landroid/hardware/Camera$Size;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    const-string/jumbo v2, "picture-size"

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/CameraInjector;->convertSizeToString(Landroid/hardware/Camera$Size;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    :goto_0
    return-void

    .line 166
    :cond_2
    const-string/jumbo v2, "CameraInjector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setParametersEx: Lost camera info "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setTorchMode(Ljava/lang/String;)V
    .locals 2
    .param p0, "cameraId"    # Ljava/lang/String;

    .prologue
    .line 235
    invoke-static {p0}, Landroid/hardware/CameraInjector;->limitByCameraId(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "invalid cameraId"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 234
    :cond_0
    return-void
.end method

.method public static startPreview(Landroid/hardware/Camera;)V
    .locals 6
    .param p0, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 171
    invoke-static {p0}, Landroid/hardware/CameraInjector;->getCameraParameterInfo(Landroid/hardware/Camera;)Ljava/util/HashMap;

    move-result-object v1

    .line 172
    .local v1, "info":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    .line 174
    const-string/jumbo v3, "camera-id"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 175
    .local v0, "cameraId":Ljava/lang/String;
    const-string/jumbo v3, "preview-size"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 176
    .local v2, "previewSize":Ljava/lang/String;
    new-instance v3, Lcom/miui/whetstone/utils/WhetstoneActionBuilder;

    const-string/jumbo v4, "camera"

    invoke-direct {v3, v4}, Lcom/miui/whetstone/utils/WhetstoneActionBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "camera-id"

    invoke-virtual {v3, v4, v0}, Lcom/miui/whetstone/utils/WhetstoneActionBuilder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/whetstone/utils/WhetstoneActionBuilder;

    move-result-object v3

    const-string/jumbo v4, "preview-size"

    invoke-virtual {v3, v4, v2}, Lcom/miui/whetstone/utils/WhetstoneActionBuilder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/whetstone/utils/WhetstoneActionBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/whetstone/utils/WhetstoneActionBuilder;->getAction()Lcom/miui/whetstone/WhetstoneAction;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/whetstone/WhetstoneManager;->analyticTrack(Lcom/miui/whetstone/WhetstoneAction;)V

    .line 170
    .end local v0    # "cameraId":Ljava/lang/String;
    .end local v2    # "previewSize":Ljava/lang/String;
    :goto_0
    return-void

    .line 178
    :cond_0
    const-string/jumbo v3, "CameraInjector"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startPreview: Lost camera info "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static takePicture(Landroid/hardware/Camera;)V
    .locals 6
    .param p0, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 183
    invoke-static {p0}, Landroid/hardware/CameraInjector;->getCameraParameterInfo(Landroid/hardware/Camera;)Ljava/util/HashMap;

    move-result-object v1

    .line 184
    .local v1, "info":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    .line 186
    const-string/jumbo v3, "camera-id"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 187
    .local v0, "cameraId":Ljava/lang/String;
    const-string/jumbo v3, "picture-size"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 188
    .local v2, "pictureSize":Ljava/lang/String;
    new-instance v3, Lcom/miui/whetstone/utils/WhetstoneActionBuilder;

    const-string/jumbo v4, "camera"

    invoke-direct {v3, v4}, Lcom/miui/whetstone/utils/WhetstoneActionBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "camera-id"

    invoke-virtual {v3, v4, v0}, Lcom/miui/whetstone/utils/WhetstoneActionBuilder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/whetstone/utils/WhetstoneActionBuilder;

    move-result-object v3

    const-string/jumbo v4, "picture-size"

    invoke-virtual {v3, v4, v2}, Lcom/miui/whetstone/utils/WhetstoneActionBuilder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/whetstone/utils/WhetstoneActionBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/whetstone/utils/WhetstoneActionBuilder;->getAction()Lcom/miui/whetstone/WhetstoneAction;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/whetstone/WhetstoneManager;->analyticTrack(Lcom/miui/whetstone/WhetstoneAction;)V

    .line 182
    .end local v0    # "cameraId":Ljava/lang/String;
    .end local v2    # "pictureSize":Ljava/lang/String;
    :goto_0
    return-void

    .line 190
    :cond_0
    const-string/jumbo v3, "CameraInjector"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "takePicture: Lost camera info "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static uploadCameraUseInfo(Landroid/hardware/Camera;Z)V
    .locals 5
    .param p0, "camera"    # Landroid/hardware/Camera;
    .param p1, "endFlag"    # Z

    .prologue
    const/4 v4, 0x0

    .line 94
    sget-object v1, Landroid/hardware/CameraInjector;->sCameraInfoMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/CameraInjector$CameraExInfo;

    .line 95
    .local v0, "cameraExInfo":Landroid/hardware/CameraInjector$CameraExInfo;
    if-eqz v0, :cond_1

    .line 96
    if-eqz p1, :cond_0

    .line 97
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/hardware/CameraInjector$CameraExInfo;->-set1(Landroid/hardware/CameraInjector$CameraExInfo;J)J

    .line 99
    :cond_0
    new-instance v1, Landroid/hardware/CameraInjector$UploadInfoThread;

    invoke-direct {v1, v0, v4}, Landroid/hardware/CameraInjector$UploadInfoThread;-><init>(Landroid/hardware/CameraInjector$CameraExInfo;Landroid/hardware/CameraInjector$UploadInfoThread;)V

    invoke-virtual {v1}, Landroid/hardware/CameraInjector$UploadInfoThread;->start()V

    .line 93
    :cond_1
    return-void
.end method
