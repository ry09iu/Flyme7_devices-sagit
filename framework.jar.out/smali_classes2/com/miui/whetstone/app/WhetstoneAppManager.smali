.class public Lcom/miui/whetstone/app/WhetstoneAppManager;
.super Ljava/lang/Object;
.source "WhetstoneAppManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WhetstoneAppManager"

.field private static final UNINIT:I = -0x2

.field private static _sInstance:Lcom/miui/whetstone/app/WhetstoneAppManager;


# instance fields
.field private mApplicationThread:Landroid/os/IBinder;

.field public mBitmapCacheManager:Lcom/miui/whetstone/graphics/BitmapCacheManager;

.field private mContex:Landroid/content/Context;

.field public mEnable:Z

.field public mHasInit:Z

.field public mWhetstonePackageInfo:Lcom/miui/whetstone/strategy/WhetstonePackageInfo;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lcom/miui/whetstone/app/WhetstoneApplicationThread;

    invoke-direct {v0}, Lcom/miui/whetstone/app/WhetstoneApplicationThread;-><init>()V

    iput-object v0, p0, Lcom/miui/whetstone/app/WhetstoneAppManager;->mApplicationThread:Landroid/os/IBinder;

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/whetstone/app/WhetstoneAppManager;->mHasInit:Z

    .line 47
    invoke-direct {p0}, Lcom/miui/whetstone/app/WhetstoneAppManager;->checkInit()V

    .line 45
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/miui/whetstone/app/WhetstoneAppManager;-><init>()V

    .line 63
    invoke-virtual {p0, p1}, Lcom/miui/whetstone/app/WhetstoneAppManager;->attach(Landroid/content/Context;)V

    .line 61
    return-void
.end method

.method public static addBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 156
    sget-object v0, Lcom/miui/whetstone/app/WhetstoneAppManager;->_sInstance:Lcom/miui/whetstone/app/WhetstoneAppManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/whetstone/app/WhetstoneAppManager;->_sInstance:Lcom/miui/whetstone/app/WhetstoneAppManager;

    iget-object v0, v0, Lcom/miui/whetstone/app/WhetstoneAppManager;->mBitmapCacheManager:Lcom/miui/whetstone/graphics/BitmapCacheManager;

    if-eqz v0, :cond_0

    .line 157
    sget-object v0, Lcom/miui/whetstone/app/WhetstoneAppManager;->_sInstance:Lcom/miui/whetstone/app/WhetstoneAppManager;

    iget-object v0, v0, Lcom/miui/whetstone/app/WhetstoneAppManager;->mBitmapCacheManager:Lcom/miui/whetstone/graphics/BitmapCacheManager;

    invoke-virtual {v0, p0}, Lcom/miui/whetstone/graphics/BitmapCacheManager;->addBitmap(Landroid/graphics/Bitmap;)V

    .line 155
    :cond_0
    return-void
.end method

.method public static addBitmapDrawable(Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 1
    .param p0, "dr"    # Landroid/graphics/drawable/BitmapDrawable;

    .prologue
    .line 143
    sget-object v0, Lcom/miui/whetstone/app/WhetstoneAppManager;->_sInstance:Lcom/miui/whetstone/app/WhetstoneAppManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/whetstone/app/WhetstoneAppManager;->_sInstance:Lcom/miui/whetstone/app/WhetstoneAppManager;

    iget-object v0, v0, Lcom/miui/whetstone/app/WhetstoneAppManager;->mBitmapCacheManager:Lcom/miui/whetstone/graphics/BitmapCacheManager;

    if-eqz v0, :cond_0

    .line 144
    sget-object v0, Lcom/miui/whetstone/app/WhetstoneAppManager;->_sInstance:Lcom/miui/whetstone/app/WhetstoneAppManager;

    iget-object v0, v0, Lcom/miui/whetstone/app/WhetstoneAppManager;->mBitmapCacheManager:Lcom/miui/whetstone/graphics/BitmapCacheManager;

    invoke-virtual {v0, p0}, Lcom/miui/whetstone/graphics/BitmapCacheManager;->addBitmapForDrawable(Landroid/graphics/drawable/BitmapDrawable;)V

    .line 142
    :cond_0
    return-void
.end method

.method public static addDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p0, "dr"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 150
    if-eqz p0, :cond_0

    instance-of v0, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 151
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    .end local p0    # "dr":Landroid/graphics/drawable/Drawable;
    invoke-static {p0}, Lcom/miui/whetstone/app/WhetstoneAppManager;->addBitmapDrawable(Landroid/graphics/drawable/BitmapDrawable;)V

    .line 149
    :cond_0
    return-void
.end method

.method private checkInit()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v4, -0x2

    .line 51
    iget-boolean v3, p0, Lcom/miui/whetstone/app/WhetstoneAppManager;->mHasInit:Z

    if-nez v3, :cond_1

    .line 52
    iget-object v3, p0, Lcom/miui/whetstone/app/WhetstoneAppManager;->mApplicationThread:Landroid/os/IBinder;

    invoke-static {v3}, Lcom/miui/whetstone/WhetstoneManager;->getWhetstonePackage(Landroid/os/IBinder;)Lcom/miui/whetstone/strategy/WhetstonePackageInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/whetstone/app/WhetstoneAppManager;->mWhetstonePackageInfo:Lcom/miui/whetstone/strategy/WhetstonePackageInfo;

    .line 53
    invoke-static {v4}, Lcom/miui/whetstone/WhetstoneManager;->getWhetstoneLeve(I)I

    move-result v0

    .line 54
    .local v0, "level":I
    if-eq v0, v4, :cond_1

    .line 55
    if-lez v0, :cond_0

    move v1, v2

    :cond_0
    iput-boolean v1, p0, Lcom/miui/whetstone/app/WhetstoneAppManager;->mEnable:Z

    .line 56
    iput-boolean v2, p0, Lcom/miui/whetstone/app/WhetstoneAppManager;->mHasInit:Z

    .line 50
    .end local v0    # "level":I
    :cond_1
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/miui/whetstone/app/WhetstoneAppManager;
    .locals 2

    .prologue
    const-class v1, Lcom/miui/whetstone/app/WhetstoneAppManager;

    monitor-enter v1

    .line 119
    :try_start_0
    sget-object v0, Lcom/miui/whetstone/app/WhetstoneAppManager;->_sInstance:Lcom/miui/whetstone/app/WhetstoneAppManager;

    if-nez v0, :cond_0

    .line 120
    new-instance v0, Lcom/miui/whetstone/app/WhetstoneAppManager;

    invoke-direct {v0}, Lcom/miui/whetstone/app/WhetstoneAppManager;-><init>()V

    sput-object v0, Lcom/miui/whetstone/app/WhetstoneAppManager;->_sInstance:Lcom/miui/whetstone/app/WhetstoneAppManager;

    .line 122
    :cond_0
    sget-object v0, Lcom/miui/whetstone/app/WhetstoneAppManager;->_sInstance:Lcom/miui/whetstone/app/WhetstoneAppManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/miui/whetstone/app/WhetstoneAppManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-class v1, Lcom/miui/whetstone/app/WhetstoneAppManager;

    monitor-enter v1

    .line 126
    :try_start_0
    sget-object v0, Lcom/miui/whetstone/app/WhetstoneAppManager;->_sInstance:Lcom/miui/whetstone/app/WhetstoneAppManager;

    if-nez v0, :cond_0

    .line 127
    new-instance v0, Lcom/miui/whetstone/app/WhetstoneAppManager;

    invoke-direct {v0, p0}, Lcom/miui/whetstone/app/WhetstoneAppManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miui/whetstone/app/WhetstoneAppManager;->_sInstance:Lcom/miui/whetstone/app/WhetstoneAppManager;

    .line 129
    :cond_0
    sget-object v0, Lcom/miui/whetstone/app/WhetstoneAppManager;->_sInstance:Lcom/miui/whetstone/app/WhetstoneAppManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getLeakCanaryWorksProperty()Z
    .locals 2

    .prologue
    .line 115
    const-string/jumbo v0, "persist.sys.mem_leak_debug"

    const-string/jumbo v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static handleTrimMemory(I)Z
    .locals 2
    .param p0, "level"    # I

    .prologue
    .line 178
    const/4 v0, 0x0

    .line 179
    .local v0, "finish":Z
    packed-switch p0, :pswitch_data_0

    .line 195
    :goto_0
    return v0

    .line 181
    :pswitch_0
    sget-object v1, Lcom/miui/whetstone/app/WhetstoneAppManager;->_sInstance:Lcom/miui/whetstone/app/WhetstoneAppManager;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/miui/whetstone/app/WhetstoneAppManager;->_sInstance:Lcom/miui/whetstone/app/WhetstoneAppManager;

    iget-object v1, v1, Lcom/miui/whetstone/app/WhetstoneAppManager;->mBitmapCacheManager:Lcom/miui/whetstone/graphics/BitmapCacheManager;

    if-eqz v1, :cond_0

    .line 182
    sget-object v1, Lcom/miui/whetstone/app/WhetstoneAppManager;->_sInstance:Lcom/miui/whetstone/app/WhetstoneAppManager;

    iget-object v1, v1, Lcom/miui/whetstone/app/WhetstoneAppManager;->mBitmapCacheManager:Lcom/miui/whetstone/graphics/BitmapCacheManager;

    invoke-virtual {v1, p0}, Lcom/miui/whetstone/graphics/BitmapCacheManager;->onTrimMemory(I)V

    .line 184
    :cond_0
    const/4 v0, 0x1

    .line 185
    goto :goto_0

    .line 187
    :pswitch_1
    const/4 v1, 0x2

    invoke-static {v1}, Lcom/miui/whetstone/utils/UtilsNative;->trimApplicationDalvik(I)V

    .line 188
    const/4 v0, 0x1

    .line 189
    goto :goto_0

    .line 191
    :pswitch_2
    invoke-static {}, Lcom/miui/whetstone/utils/UtilsNative;->clearOpenGLCache()V

    .line 192
    const/4 v0, 0x1

    .line 193
    goto :goto_0

    .line 179
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static isEnable()Z
    .locals 1

    .prologue
    .line 168
    sget-object v0, Lcom/miui/whetstone/app/WhetstoneAppManager;->_sInstance:Lcom/miui/whetstone/app/WhetstoneAppManager;

    if-eqz v0, :cond_0

    .line 169
    sget-object v0, Lcom/miui/whetstone/app/WhetstoneAppManager;->_sInstance:Lcom/miui/whetstone/app/WhetstoneAppManager;

    invoke-direct {v0}, Lcom/miui/whetstone/app/WhetstoneAppManager;->checkInit()V

    .line 170
    sget-object v0, Lcom/miui/whetstone/app/WhetstoneAppManager;->_sInstance:Lcom/miui/whetstone/app/WhetstoneAppManager;

    iget-boolean v0, v0, Lcom/miui/whetstone/app/WhetstoneAppManager;->mHasInit:Z

    if-eqz v0, :cond_0

    .line 171
    sget-object v0, Lcom/miui/whetstone/app/WhetstoneAppManager;->_sInstance:Lcom/miui/whetstone/app/WhetstoneAppManager;

    iget-boolean v0, v0, Lcom/miui/whetstone/app/WhetstoneAppManager;->mEnable:Z

    return v0

    .line 174
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isLeakCanaryWorks()Z
    .locals 2

    .prologue
    .line 110
    invoke-static {}, Lcom/miui/whetstone/app/WhetstoneAppManager;->getLeakCanaryWorksProperty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string/jumbo v1, "userdebug"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string/jumbo v1, "eng"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 110
    :goto_0
    return v0

    .line 111
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 110
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isTestKeyBuild()Z
    .locals 2

    .prologue
    .line 106
    sget-object v0, Landroid/os/Build;->TAGS:Ljava/lang/String;

    const-string/jumbo v1, "test-keys"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static restoreDirectBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 162
    sget-object v0, Lcom/miui/whetstone/app/WhetstoneAppManager;->_sInstance:Lcom/miui/whetstone/app/WhetstoneAppManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/whetstone/app/WhetstoneAppManager;->_sInstance:Lcom/miui/whetstone/app/WhetstoneAppManager;

    iget-object v0, v0, Lcom/miui/whetstone/app/WhetstoneAppManager;->mBitmapCacheManager:Lcom/miui/whetstone/graphics/BitmapCacheManager;

    if-eqz v0, :cond_0

    .line 163
    sget-object v0, Lcom/miui/whetstone/app/WhetstoneAppManager;->_sInstance:Lcom/miui/whetstone/app/WhetstoneAppManager;

    iget-object v0, v0, Lcom/miui/whetstone/app/WhetstoneAppManager;->mBitmapCacheManager:Lcom/miui/whetstone/graphics/BitmapCacheManager;

    invoke-virtual {v0, p0}, Lcom/miui/whetstone/graphics/BitmapCacheManager;->restoreDirectBitmap(Landroid/graphics/Bitmap;)V

    .line 161
    :cond_0
    return-void
.end method

.method public static setHardwareRendererIfNeeded()V
    .locals 1

    .prologue
    .line 199
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->isOPENGLDisableNeeded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    :cond_0
    return-void
.end method

.method public static trimHeapSizeIfNeeded(Landroid/content/pm/ApplicationInfo;)V
    .locals 2
    .param p0, "info"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 206
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x100000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 208
    return-void

    .line 210
    :cond_0
    sget-object v0, Lcom/miui/whetstone/app/WhetstoneAppManager;->_sInstance:Lcom/miui/whetstone/app/WhetstoneAppManager;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/miui/whetstone/app/WhetstoneAppManager;->_sInstance:Lcom/miui/whetstone/app/WhetstoneAppManager;

    iget-object v0, v0, Lcom/miui/whetstone/app/WhetstoneAppManager;->mWhetstonePackageInfo:Lcom/miui/whetstone/strategy/WhetstonePackageInfo;

    if-eqz v0, :cond_1

    .line 211
    sget-object v0, Lcom/miui/whetstone/app/WhetstoneAppManager;->_sInstance:Lcom/miui/whetstone/app/WhetstoneAppManager;

    iget-object v0, v0, Lcom/miui/whetstone/app/WhetstoneAppManager;->mWhetstonePackageInfo:Lcom/miui/whetstone/strategy/WhetstonePackageInfo;

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->isEnable(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 212
    invoke-static {}, Lcom/miui/whetstone/utils/UtilsNative;->trimDalvikHeapSize()V

    .line 205
    :cond_1
    return-void
.end method


# virtual methods
.method public attach(Landroid/content/Context;)V
    .locals 2
    .param p1, "appContext"    # Landroid/content/Context;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/miui/whetstone/app/WhetstoneAppManager;->mContex:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 68
    iput-object p1, p0, Lcom/miui/whetstone/app/WhetstoneAppManager;->mContex:Landroid/content/Context;

    .line 69
    iget-object v0, p0, Lcom/miui/whetstone/app/WhetstoneAppManager;->mWhetstonePackageInfo:Lcom/miui/whetstone/strategy/WhetstonePackageInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/whetstone/app/WhetstoneAppManager;->mWhetstonePackageInfo:Lcom/miui/whetstone/strategy/WhetstonePackageInfo;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->isEnable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    new-instance v0, Lcom/miui/whetstone/graphics/BitmapCacheManager;

    iget-object v1, p0, Lcom/miui/whetstone/app/WhetstoneAppManager;->mContex:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/miui/whetstone/graphics/BitmapCacheManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/whetstone/app/WhetstoneAppManager;->mBitmapCacheManager:Lcom/miui/whetstone/graphics/BitmapCacheManager;

    .line 66
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/app/Application;)V
    .locals 11
    .param p1, "application"    # Landroid/app/Application;

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/miui/whetstone/app/WhetstoneAppManager;->checkInit()V

    .line 81
    invoke-direct {p0}, Lcom/miui/whetstone/app/WhetstoneAppManager;->isLeakCanaryWorks()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 82
    invoke-static {}, Lcom/miui/whetstone/app/WhetstoneAppManager;->isTestKeyBuild()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 83
    const-string/jumbo v6, "WhetstoneAppManager"

    const-string/jumbo v7, "WhetstoneAppManager onCreate mem leak check install"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :cond_0
    :try_start_0
    const-string/jumbo v6, "com.squareup.leakcanary.LeakCanary"

    .line 87
    const/4 v7, 0x0

    .line 86
    invoke-static {v6, v7}, Lmiui/util/ReflectionUtils;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v6

    .line 87
    const-string/jumbo v7, "install"

    .line 86
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    .line 87
    const-class v9, Landroid/app/Application;

    const/4 v10, 0x0

    aput-object v9, v8, v10

    .line 86
    invoke-static {v6, v7, v8}, Lmiui/util/ReflectionUtils;->findMethodExact(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 88
    .local v4, "install":Ljava/lang/reflect/Method;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x0

    invoke-virtual {v4, v7, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 75
    .end local v4    # "install":Ljava/lang/reflect/Method;
    :cond_1
    :goto_0
    return-void

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "WhetstoneAppManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Exception e:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 93
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 94
    .local v1, "e":Ljava/lang/IllegalAccessException;
    const-string/jumbo v6, "WhetstoneAppManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "IllegalAccessException e:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 91
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v2

    .line 92
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v6, "WhetstoneAppManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "IllegalArgumentException e:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 89
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v3

    .line 90
    .local v3, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string/jumbo v6, "WhetstoneAppManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "InvocationTargetException e:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 99
    .end local v3    # "e":Ljava/lang/reflect/InvocationTargetException;
    :cond_2
    invoke-static {}, Lcom/miui/whetstone/app/WhetstoneAppManager;->isTestKeyBuild()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 100
    const-string/jumbo v6, "WhetstoneAppManager"

    const-string/jumbo v7, "WhetstoneAppManager onCreate mem leak check not install"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/miui/whetstone/app/WhetstoneAppManager;->checkInit()V

    .line 136
    iget-object v0, p0, Lcom/miui/whetstone/app/WhetstoneAppManager;->mBitmapCacheManager:Lcom/miui/whetstone/graphics/BitmapCacheManager;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/miui/whetstone/app/WhetstoneAppManager;->mBitmapCacheManager:Lcom/miui/whetstone/graphics/BitmapCacheManager;

    invoke-virtual {v0, p1}, Lcom/miui/whetstone/graphics/BitmapCacheManager;->onRestoreAll(Landroid/app/Activity;)V

    .line 133
    :cond_0
    return-void
.end method
