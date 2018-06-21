.class public Lcom/miui/server/MiuiInitServer;
.super Lmiui/os/IMiuiInit$Stub;
.source "MiuiInitServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/server/MiuiInitServer$BootCompletedReceiver;,
        Lcom/miui/server/MiuiInitServer$InitCustEnvironmentTask;
    }
.end annotation


# static fields
.field private static final CUST_PROPERTIES_FILE_NAME:Ljava/lang/String; = "cust.prop"

.field private static final PREINSTALL_APP_HISTORY_FILE:Ljava/lang/String; = "/data/app/preinstall_history"

.field private static final PREINSTALL_PACKAGE_LIST:Ljava/lang/String; = "/data/system/preinstall.list"

.field private static final TAG:Ljava/lang/String; = "MiuiInitServer"


# instance fields
.field mCompatModePackages:Lcom/miui/server/MiuiCompatModePackages;

.field private mContext:Landroid/content/Context;

.field private mDoing:Z

.field mHasNavigationBar:Z

.field private mPreinstallHistoryMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mPreinstallLock:Ljava/lang/Object;

.field private mPreinstalledChannels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPreinstalledPackage:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/miui/server/MiuiInitServer;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/miui/server/MiuiInitServer;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -set0(Lcom/miui/server/MiuiInitServer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/server/MiuiInitServer;->mDoing:Z

    return p1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    invoke-direct {p0}, Lmiui/os/IMiuiInit$Stub;-><init>()V

    .line 52
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/miui/server/MiuiInitServer;->mPreinstallLock:Ljava/lang/Object;

    .line 57
    iput-object p1, p0, Lcom/miui/server/MiuiInitServer;->mContext:Landroid/content/Context;

    .line 59
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 60
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v3, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 61
    iget-object v3, p0, Lcom/miui/server/MiuiInitServer;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/miui/server/MiuiInitServer$BootCompletedReceiver;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/miui/server/MiuiInitServer$BootCompletedReceiver;-><init>(Lcom/miui/server/MiuiInitServer;Lcom/miui/server/MiuiInitServer$BootCompletedReceiver;)V

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 64
    invoke-static {}, Lmiui/util/MiuiFeatureUtils;->setMiuisdkProperties()V

    .line 66
    const-string/jumbo v3, "window"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 65
    invoke-static {v3}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v2

    .line 68
    .local v2, "windowManager":Landroid/view/IWindowManager;
    :try_start_0
    invoke-interface {v2}, Landroid/view/IWindowManager;->hasNavigationBar()Z

    move-result v3

    iput-boolean v3, p0, Lcom/miui/server/MiuiInitServer;->mHasNavigationBar:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :goto_0
    iget-boolean v3, p0, Lcom/miui/server/MiuiInitServer;->mHasNavigationBar:Z

    if-eqz v3, :cond_0

    .line 73
    new-instance v3, Lcom/miui/server/MiuiCompatModePackages;

    iget-object v4, p0, Lcom/miui/server/MiuiInitServer;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/miui/server/MiuiCompatModePackages;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/miui/server/MiuiInitServer;->mCompatModePackages:Lcom/miui/server/MiuiCompatModePackages;

    .line 56
    :cond_0
    return-void

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "MiuiInitServer"

    const-string/jumbo v4, "no winowmanager"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private checkPermission(Ljava/lang/String;)V
    .locals 4
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 435
    iget-object v1, p0, Lcom/miui/server/MiuiInitServer;->mContext:Landroid/content/Context;

    .line 436
    const-string/jumbo v2, "android.permission.SET_SCREEN_COMPATIBILITY"

    .line 435
    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    .line 437
    .local v0, "permission":I
    if-nez v0, :cond_0

    .line 438
    return-void

    .line 439
    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Permission Denial: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 440
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 439
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 440
    const-string/jumbo v3, ", uid="

    .line 439
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 440
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 439
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public doFactoryReset(Z)V
    .locals 2
    .param p1, "keepUserApps"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 311
    sget-boolean v1, Lmiui/os/Build;->IS_GLOBAL_BUILD:Z

    if-eqz v1, :cond_0

    .line 312
    const-string/jumbo v1, ""

    invoke-static {v1}, Lmiui/util/CustomizeUtil;->setMiuiCustVariatDir(Ljava/lang/String;)V

    .line 313
    invoke-static {}, Lmiui/util/CustomizeUtil;->getMiuiCustVariantFile()Ljava/io/File;

    move-result-object v0

    .line 314
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 315
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 318
    .end local v0    # "file":Ljava/io/File;
    :cond_0
    if-nez p1, :cond_1

    .line 319
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/data/app/preinstall_history"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 320
    .restart local v0    # "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 321
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 310
    .end local v0    # "file":Ljava/io/File;
    :cond_1
    return-void
.end method

.method public getAspectRatio(Ljava/lang/String;)F
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 421
    iget-boolean v0, p0, Lcom/miui/server/MiuiInitServer;->mHasNavigationBar:Z

    if-nez v0, :cond_0

    .line 422
    const/high16 v0, 0x40400000    # 3.0f

    return v0

    .line 424
    :cond_0
    iget-object v0, p0, Lcom/miui/server/MiuiInitServer;->mCompatModePackages:Lcom/miui/server/MiuiCompatModePackages;

    invoke-virtual {v0, p1}, Lcom/miui/server/MiuiCompatModePackages;->getAspectRatio(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public getCustVariants()[Ljava/lang/String;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 287
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 288
    .local v5, "regionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Lmiui/util/CustomizeUtil;->getMiuiCustDir()Ljava/io/File;

    move-result-object v2

    .line 289
    .local v2, "cust":Ljava/io/File;
    invoke-static {}, Ljava/util/Locale;->getISOCountries()[Ljava/lang/String;

    move-result-object v1

    .line 290
    .local v1, "cs":[Ljava/lang/String;
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    .line 291
    .local v6, "resgions":[Ljava/io/File;
    if-eqz v6, :cond_3

    .line 292
    array-length v10, v6

    move v9, v8

    :goto_0
    if-ge v9, v10, :cond_3

    aget-object v4, v6, v9

    .line 293
    .local v4, "region":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-nez v7, :cond_1

    .line 292
    :cond_0
    add-int/lit8 v7, v9, 0x1

    move v9, v7

    goto :goto_0

    .line 297
    :cond_1
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    .line 298
    .local v3, "r":Ljava/lang/String;
    array-length v11, v1

    move v7, v8

    :goto_1
    if-ge v7, v11, :cond_0

    aget-object v0, v1, v7

    .line 299
    .local v0, "c":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 300
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 298
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 306
    .end local v0    # "c":Ljava/lang/String;
    .end local v3    # "r":Ljava/lang/String;
    .end local v4    # "region":Ljava/io/File;
    :cond_3
    new-array v7, v8, [Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    return-object v7
.end method

.method public getDefaultAspectType(Ljava/lang/String;)I
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 428
    iget-boolean v0, p0, Lcom/miui/server/MiuiInitServer;->mHasNavigationBar:Z

    if-nez v0, :cond_0

    .line 429
    const/4 v0, 0x0

    return v0

    .line 431
    :cond_0
    iget-object v0, p0, Lcom/miui/server/MiuiInitServer;->mCompatModePackages:Lcom/miui/server/MiuiCompatModePackages;

    invoke-virtual {v0, p1}, Lcom/miui/server/MiuiCompatModePackages;->getDefaultAspectType(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getMiuiChannelPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 351
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 352
    const-string/jumbo v2, ""

    return-object v2

    .line 354
    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/server/MiuiInitServer;->isPreinstalledPackage(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 355
    const-string/jumbo v2, ""

    return-object v2

    .line 357
    :cond_1
    iget-object v2, p0, Lcom/miui/server/MiuiInitServer;->mPreinstalledChannels:Ljava/util/ArrayList;

    if-nez v2, :cond_2

    .line 358
    invoke-static {}, Lcom/android/server/pm/PreinstallApp;->getPeinstalledChannelList()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/server/MiuiInitServer;->mPreinstalledChannels:Ljava/util/ArrayList;

    .line 360
    :cond_2
    iget-object v2, p0, Lcom/miui/server/MiuiInitServer;->mPreinstalledChannels:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "channel$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 361
    .local v0, "channel":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 362
    return-object v0

    .line 365
    .end local v0    # "channel":Ljava/lang/String;
    :cond_4
    const-string/jumbo v2, ""

    return-object v2
.end method

.method public getMiuiPreinstallAppPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 385
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 386
    const-string/jumbo v4, ""

    return-object v4

    .line 388
    :cond_0
    iget-object v4, p0, Lcom/miui/server/MiuiInitServer;->mPreinstallHistoryMap:Ljava/util/HashMap;

    if-nez v4, :cond_1

    .line 389
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/miui/server/MiuiInitServer;->mPreinstallHistoryMap:Ljava/util/HashMap;

    .line 391
    :try_start_0
    const-string/jumbo v4, "system_data_packagename_list"

    invoke-static {v4}, Lmiui/util/FeatureParser;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 392
    .local v3, "pkgNameList":[Ljava/lang/String;
    const-string/jumbo v4, "system_data_path_list"

    invoke-static {v4}, Lmiui/util/FeatureParser;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 393
    .local v0, "appPathList":[Ljava/lang/String;
    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    array-length v4, v3

    array-length v5, v0

    if-ne v4, v5, :cond_1

    .line 394
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, v3

    if-ge v2, v4, :cond_1

    .line 395
    iget-object v4, p0, Lcom/miui/server/MiuiInitServer;->mPreinstallHistoryMap:Ljava/util/HashMap;

    aget-object v5, v3, v2

    aget-object v6, v0, v2

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 394
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 398
    .end local v0    # "appPathList":[Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "pkgNameList":[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 399
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "MiuiInitServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Error occurs while get miui preinstall app path + "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    iget-object v4, p0, Lcom/miui/server/MiuiInitServer;->mPreinstallHistoryMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_2

    const-string/jumbo v4, ""

    :goto_1
    return-object v4

    :cond_2
    iget-object v4, p0, Lcom/miui/server/MiuiInitServer;->mPreinstallHistoryMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    goto :goto_1
.end method

.method public initCustEnvironment(Ljava/lang/String;Lmiui/os/IMiuiInitObserver;)Z
    .locals 5
    .param p1, "custVariant"    # Ljava/lang/String;
    .param p2, "obs"    # Lmiui/os/IMiuiInitObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 258
    iget-object v0, p0, Lcom/miui/server/MiuiInitServer;->mContext:Landroid/content/Context;

    .line 259
    const-string/jumbo v1, "miui.os.permisson.INIT_MIUI_ENVIRONMENT"

    const/4 v2, 0x0

    .line 258
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    const-string/jumbo v0, "MiuiInitServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "check status, cust variant["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    monitor-enter p0

    .line 262
    :try_start_0
    iget-boolean v0, p0, Lcom/miui/server/MiuiInitServer;->mDoing:Z

    if-eqz v0, :cond_0

    .line 263
    const-string/jumbo v0, "MiuiInitServer"

    const-string/jumbo v1, "skip, initializing cust environment"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 264
    return v3

    .line 266
    :cond_0
    :try_start_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 267
    const-string/jumbo v0, "MiuiInitServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "skip, cust variant["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] is empty"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 268
    return v3

    .line 270
    :cond_1
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/miui/server/MiuiInitServer;->mDoing:Z

    .line 271
    const-string/jumbo v0, "MiuiInitServer"

    const-string/jumbo v1, "initializing cust environment"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    new-instance v0, Lcom/miui/server/MiuiInitServer$InitCustEnvironmentTask;

    invoke-direct {v0, p0, p1, p2}, Lcom/miui/server/MiuiInitServer$InitCustEnvironmentTask;-><init>(Lcom/miui/server/MiuiInitServer;Ljava/lang/String;Lmiui/os/IMiuiInitObserver;)V

    invoke-virtual {v0}, Lcom/miui/server/MiuiInitServer$InitCustEnvironmentTask;->start()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    .line 273
    return v4

    .line 261
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public installPreinstallApp()V
    .locals 3

    .prologue
    .line 280
    iget-object v0, p0, Lcom/miui/server/MiuiInitServer;->mContext:Landroid/content/Context;

    .line 281
    const-string/jumbo v1, "miui.os.permisson.INIT_MIUI_ENVIRONMENT"

    const/4 v2, 0x0

    .line 280
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    invoke-static {}, Lcom/android/server/pm/PreinstallApp;->installCustApps()V

    .line 278
    return-void
.end method

.method public isPreinstalledPackage(Ljava/lang/String;)Z
    .locals 7
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 328
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 329
    const/4 v3, 0x0

    return v3

    .line 332
    :cond_0
    iget-object v4, p0, Lcom/miui/server/MiuiInitServer;->mPreinstallLock:Ljava/lang/Object;

    monitor-enter v4

    .line 333
    :try_start_0
    iget-object v3, p0, Lcom/miui/server/MiuiInitServer;->mPreinstalledPackage:Ljava/util/HashSet;

    if-nez v3, :cond_1

    .line 334
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Lcom/miui/server/MiuiInitServer;->mPreinstalledPackage:Ljava/util/HashSet;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 336
    :try_start_1
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    const-string/jumbo v5, "/data/system/preinstall.list"

    invoke-direct {v3, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 337
    .local v2, "reader":Ljava/io/BufferedReader;
    const/4 v1, 0x0

    .line 338
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .local v1, "pkgname":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 339
    iget-object v3, p0, Lcom/miui/server/MiuiInitServer;->mPreinstalledPackage:Ljava/util/HashSet;

    invoke-virtual {v3, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 342
    .end local v1    # "pkgname":Ljava/lang/String;
    .end local v2    # "reader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v0

    .line 343
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    const-string/jumbo v3, "MiuiInitServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Error occurs while read preinstalled packages + "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/miui/server/MiuiInitServer;->mPreinstalledPackage:Ljava/util/HashSet;

    invoke-virtual {v3, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v3

    monitor-exit v4

    return v3

    .line 341
    .restart local v1    # "pkgname":Ljava/lang/String;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    :cond_2
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 332
    .end local v1    # "pkgname":Ljava/lang/String;
    .end local v2    # "reader":Ljava/io/BufferedReader;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public isRestrictAspect(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 414
    iget-boolean v0, p0, Lcom/miui/server/MiuiInitServer;->mHasNavigationBar:Z

    if-nez v0, :cond_0

    .line 415
    const/4 v0, 0x0

    return v0

    .line 417
    :cond_0
    iget-object v0, p0, Lcom/miui/server/MiuiInitServer;->mCompatModePackages:Lcom/miui/server/MiuiCompatModePackages;

    invoke-virtual {v0, p1}, Lcom/miui/server/MiuiCompatModePackages;->isRestrictAspect(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public removeFromPreinstallList(Ljava/lang/String;)V
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 370
    iget-object v0, p0, Lcom/miui/server/MiuiInitServer;->mContext:Landroid/content/Context;

    .line 371
    const-string/jumbo v1, "miui.os.permisson.INIT_MIUI_ENVIRONMENT"

    .line 370
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 374
    return-void

    .line 377
    :cond_0
    iget-object v1, p0, Lcom/miui/server/MiuiInitServer;->mPreinstallLock:Ljava/lang/Object;

    monitor-enter v1

    .line 378
    :try_start_0
    iget-object v0, p0, Lcom/miui/server/MiuiInitServer;->mPreinstalledPackage:Ljava/util/HashSet;

    if-eqz v0, :cond_1

    .line 379
    iget-object v0, p0, Lcom/miui/server/MiuiInitServer;->mPreinstalledPackage:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v1

    .line 368
    return-void

    .line 377
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setRestrictAspect(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "restrict"    # Z

    .prologue
    .line 406
    iget-boolean v0, p0, Lcom/miui/server/MiuiInitServer;->mHasNavigationBar:Z

    if-nez v0, :cond_0

    .line 407
    return-void

    .line 409
    :cond_0
    const-string/jumbo v0, "setRestrictAspect"

    invoke-direct {p0, v0}, Lcom/miui/server/MiuiInitServer;->checkPermission(Ljava/lang/String;)V

    .line 410
    iget-object v0, p0, Lcom/miui/server/MiuiInitServer;->mCompatModePackages:Lcom/miui/server/MiuiCompatModePackages;

    invoke-virtual {v0, p1, p2}, Lcom/miui/server/MiuiCompatModePackages;->setRestrictAspect(Ljava/lang/String;Z)V

    .line 405
    return-void
.end method
