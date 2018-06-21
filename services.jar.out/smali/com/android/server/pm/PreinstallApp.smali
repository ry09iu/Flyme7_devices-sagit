.class public Lcom/android/server/pm/PreinstallApp;
.super Ljava/lang/Object;
.source "PreinstallApp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/PreinstallApp$Item;
    }
.end annotation


# static fields
.field private static final CUSTOMIZED_APP_DIR:Ljava/io/File;

.field private static final DEBUG:Z = true

.field private static final ENCRYPTING_STATE:Ljava/lang/String; = "trigger_restart_min_framework"

.field private static final INSTALL_DIR:Ljava/lang/String; = "/data/app/"

.field private static final MIUI_APP_PATH_L_LENGTH:I = 0x7

.field private static final NONCUSTOMIZED_APP_DIR:Ljava/io/File;

.field private static final OLD_PREINSTALL_APP_DIR:Ljava/io/File;

.field private static final OLD_PREINSTALL_HISTORY_FILE:Ljava/lang/String; = "/data/system/preinstall_history"

.field private static final PREINSTALL_HISTORY_FILE:Ljava/lang/String; = "/data/app/preinstall_history"

.field private static final PREINSTALL_PACKAGE_LIST:Ljava/lang/String; = "/data/system/preinstall.list"

.field private static final RECOMMENDED_APP_DIR:Ljava/io/File;

.field private static final RETRY_INSTALL_CNT:I = 0x2

.field private static final TAG:Ljava/lang/String;

.field private static final sIgnorePreinstallApks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sNewUpdatedSystemPreinstallApps:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/server/pm/PreinstallApp$Item;",
            ">;"
        }
    .end annotation
.end field

.field private static final sPreinstallApps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PreinstallApp$Item;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -wrap0(Ljava/io/File;)Ljava/io/File;
    .locals 1
    .param p0, "app"    # Ljava/io/File;

    .prologue
    invoke-static {p0}, Lcom/android/server/pm/PreinstallApp;->getApkFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 92
    const-class v0, Lcom/android/server/pm/PreinstallApp;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    .line 98
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/data/miui/apps"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/pm/PreinstallApp;->OLD_PREINSTALL_APP_DIR:Ljava/io/File;

    .line 101
    invoke-static {}, Lmiui/util/CustomizeUtil;->getMiuiNoCustomizedAppDir()Ljava/io/File;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/PreinstallApp;->NONCUSTOMIZED_APP_DIR:Ljava/io/File;

    .line 104
    invoke-static {}, Lmiui/util/CustomizeUtil;->getMiuiCustomizedAppDir()Ljava/io/File;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/PreinstallApp;->CUSTOMIZED_APP_DIR:Ljava/io/File;

    .line 107
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/data/miui/app/recommended"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/pm/PreinstallApp;->RECOMMENDED_APP_DIR:Ljava/io/File;

    .line 109
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/pm/PreinstallApp;->sIgnorePreinstallApks:Ljava/util/Set;

    .line 110
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/pm/PreinstallApp;->sNewUpdatedSystemPreinstallApps:Ljava/util/Set;

    .line 111
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/pm/PreinstallApp;->sPreinstallApps:Ljava/util/Map;

    .line 121
    sget-boolean v0, Lmiui/os/Build;->IS_MI2A:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lmiui/os/Build;->IS_MITHREE:Z

    if-eqz v0, :cond_2

    .line 124
    :cond_0
    :goto_0
    const-string/jumbo v0, "support_ir"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 125
    const-string/jumbo v0, "partner-XMRemoteController.apk"

    invoke-static {v0}, Lcom/android/server/pm/PreinstallApp;->ignorePreinstallApks(Ljava/lang/String;)V

    .line 47
    :cond_1
    return-void

    .line 122
    :cond_2
    const-string/jumbo v0, "ota-miui-MiTagApp.apk"

    invoke-static {v0}, Lcom/android/server/pm/PreinstallApp;->ignorePreinstallApks(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addPreinstallAppToList(Ljava/util/List;Ljava/io/File;Ljava/util/Set;)V
    .locals 7
    .param p1, "appDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;",
            "Ljava/io/File;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 435
    .local p0, "preinstallAppList":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .local p2, "filterSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 436
    .local v2, "apps":[Ljava/io/File;
    if-eqz v2, :cond_5

    .line 438
    const/4 v3, 0x0

    array-length v4, v2

    :goto_0
    if-ge v3, v4, :cond_5

    aget-object v1, v2, v3

    .line 439
    .local v1, "app":Ljava/io/File;
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-ge v5, v6, :cond_3

    .line 441
    move-object v0, v1

    .line 442
    .local v0, "apk":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {v1}, Lcom/android/server/pm/PreinstallApp;->isApkFile(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 460
    :cond_0
    sget-object v5, Lcom/android/server/pm/PreinstallApp;->sIgnorePreinstallApks:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 461
    if-eqz p2, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 464
    :cond_1
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 438
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 446
    .end local v0    # "apk":Ljava/io/File;
    :cond_3
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 448
    invoke-static {v1}, Lcom/android/server/pm/PreinstallApp;->getBaseApkFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 449
    .restart local v0    # "apk":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    .line 454
    .end local v0    # "apk":Ljava/io/File;
    :cond_4
    move-object v0, v1

    .line 455
    .restart local v0    # "apk":Ljava/io/File;
    invoke-static {v1}, Lcom/android/server/pm/PreinstallApp;->isApkFile(Ljava/io/File;)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    .line 434
    .end local v0    # "apk":Ljava/io/File;
    .end local v1    # "app":Ljava/io/File;
    :cond_5
    return-void
.end method

.method private static addPreinstallChannelToList(Ljava/util/List;Ljava/io/File;Ljava/lang/String;)V
    .locals 6
    .param p1, "channelDir"    # Ljava/io/File;
    .param p2, "channelListFile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1007
    .local p0, "preinstallChannelList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, p2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1009
    .local v2, "reader":Ljava/io/BufferedReader;
    const/4 v0, 0x0

    .line 1010
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .local v0, "channelName":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1011
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1015
    .end local v0    # "channelName":Ljava/lang/String;
    .end local v2    # "reader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v1

    .line 1016
    .local v1, "e":Ljava/io/IOException;
    sget-object v3, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Error occurs while read preinstalled channels + "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    .end local v1    # "e":Ljava/io/IOException;
    :goto_1
    return-void

    .line 1014
    .restart local v0    # "channelName":Ljava/lang/String;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private static copyNewPreinstallApp(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PreinstallApp$Item;)Z
    .locals 1
    .param p0, "pms"    # Lcom/android/server/pm/PackageManagerService;
    .param p1, "item"    # Lcom/android/server/pm/PreinstallApp$Item;

    .prologue
    .line 376
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/server/pm/PreinstallApp;->copyPreinstallApp(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PreinstallApp$Item;Lcom/android/server/pm/PackageSetting;)Z

    move-result v0

    return v0
.end method

.method private static copyPreinstallApp(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PreinstallApp$Item;Lcom/android/server/pm/PackageSetting;)Z
    .locals 2
    .param p0, "pms"    # Lcom/android/server/pm/PackageManagerService;
    .param p1, "item"    # Lcom/android/server/pm/PreinstallApp$Item;
    .param p2, "ps"    # Lcom/android/server/pm/PackageSetting;

    .prologue
    .line 380
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 381
    invoke-static {p0, p1, p2}, Lcom/android/server/pm/PreinstallApp;->copyPreinstallForVersionUnder21(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PreinstallApp$Item;Lcom/android/server/pm/PackageSetting;)Z

    move-result v0

    return v0

    .line 383
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/android/server/pm/PreinstallApp;->copyPreinstallAppForVersionEqualOrAbove21(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PreinstallApp$Item;Lcom/android/server/pm/PackageSetting;)Z

    move-result v0

    return v0
.end method

.method private static copyPreinstallAppForVersionEqualOrAbove21(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PreinstallApp$Item;Lcom/android/server/pm/PackageSetting;)Z
    .locals 7
    .param p0, "pms"    # Lcom/android/server/pm/PackageManagerService;
    .param p1, "srcApp"    # Lcom/android/server/pm/PreinstallApp$Item;
    .param p2, "ps"    # Lcom/android/server/pm/PackageSetting;

    .prologue
    const/4 v2, 0x0

    .line 344
    iget-object v3, p1, Lcom/android/server/pm/PreinstallApp$Item;->apkFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 345
    return v2

    .line 348
    :cond_0
    const/4 v1, 0x0

    .line 349
    .local v1, "dstCodePath":Ljava/io/File;
    if-eqz p2, :cond_1

    invoke-static {p2}, Lcom/android/server/pm/PreinstallApp;->underData(Lcom/android/server/pm/PackageSetting;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 351
    invoke-static {p0, p2}, Lcom/android/server/pm/PackageManagerProxy;->cleanUpResource(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageSetting;)Z

    .line 352
    iget-object v1, p2, Lcom/android/server/pm/PackageSetting;->codePath:Ljava/io/File;

    .line 354
    .end local v1    # "dstCodePath":Ljava/io/File;
    :cond_1
    if-nez v1, :cond_2

    .line 355
    iget v3, p1, Lcom/android/server/pm/PreinstallApp$Item;->type:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_6

    .line 356
    new-instance v1, Ljava/io/File;

    const-string/jumbo v3, "/data/app/"

    iget-object v4, p1, Lcom/android/server/pm/PreinstallApp$Item;->app:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    :cond_2
    :goto_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 362
    invoke-static {v1}, Lcom/android/server/pm/PreinstallApp;->deleteFileOrDirectory(Ljava/io/File;)V

    .line 364
    :cond_3
    invoke-static {v1}, Lcom/android/server/pm/PreinstallApp;->createIfNonexist(Ljava/io/File;)V

    .line 365
    new-instance v0, Ljava/io/File;

    iget-object v3, p1, Lcom/android/server/pm/PreinstallApp$Item;->apkFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 366
    .local v0, "dstApkFile":Ljava/io/File;
    iget-object v3, p1, Lcom/android/server/pm/PreinstallApp$Item;->apkFile:Ljava/io/File;

    invoke-static {v3, v0}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 367
    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2}, Ljava/io/File;->setReadable(ZZ)Z

    move-result v2

    .line 368
    .local v2, "ret":Z
    :cond_4
    if-eqz v2, :cond_5

    .line 370
    iget-object v3, p1, Lcom/android/server/pm/PreinstallApp$Item;->apkFile:Ljava/io/File;

    invoke-static {v3, v1}, Lcom/android/server/pm/PackageManagerProxy;->copyOdexFileIfExists(Ljava/io/File;Ljava/io/File;)V

    .line 372
    :cond_5
    return v2

    .line 358
    .end local v0    # "dstApkFile":Ljava/io/File;
    .end local v2    # "ret":Z
    :cond_6
    new-instance v1, Ljava/io/File;

    const-string/jumbo v3, "/data/app/"

    iget-object v4, p1, Lcom/android/server/pm/PreinstallApp$Item;->apkFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ".apk"

    const-string/jumbo v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v1, "dstCodePath":Ljava/io/File;
    goto :goto_0
.end method

.method public static copyPreinstallApps(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/Settings;)V
    .locals 3
    .param p0, "pms"    # Lcom/android/server/pm/PackageManagerService;
    .param p1, "settings"    # Lcom/android/server/pm/Settings;

    .prologue
    .line 771
    const-string/jumbo v1, "vold.decrypt"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 772
    .local v0, "cryptState":Ljava/lang/String;
    const-string/jumbo v1, "trigger_restart_min_framework"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 773
    sget-object v1, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Detected encryption in progress - can\'t copy preinstall apps now!"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    return-void

    .line 776
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->isFirstBoot()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->isUpgrade()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 777
    :cond_1
    invoke-static {}, Lcom/android/server/pm/PreinstallApp;->parseAndDeleteDuplicatePreinstallApps()V

    .line 780
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->isFirstBoot()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 781
    invoke-static {p0, p1}, Lcom/android/server/pm/PreinstallApp;->copyPreinstallAppsForFirstBoot(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/Settings;)V

    .line 770
    :goto_0
    return-void

    .line 782
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->isUpgrade()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 783
    invoke-static {p0, p1}, Lcom/android/server/pm/PreinstallApp;->copyPreinstallAppsForBoot(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/Settings;)V

    goto :goto_0

    .line 785
    :cond_4
    sget-object v1, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Nothing need copy for normal boot."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static copyPreinstallAppsForBoot(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/Settings;)V
    .locals 14
    .param p0, "pms"    # Lcom/android/server/pm/PackageManagerService;
    .param p1, "settings"    # Lcom/android/server/pm/Settings;

    .prologue
    const/4 v9, 0x0

    .line 666
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 667
    .local v0, "currentTime":J
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 674
    .local v2, "history":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-static {v2}, Lcom/android/server/pm/PreinstallApp;->readHistory(Ljava/util/Map;)V

    .line 675
    sget-object v10, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "copy preinstall apps start"

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    sget-object v10, Lcom/android/server/pm/PreinstallApp;->sPreinstallApps:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "item$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PreinstallApp$Item;

    .line 677
    .local v3, "item":Lcom/android/server/pm/PreinstallApp$Item;
    invoke-static {v2, v3}, Lcom/android/server/pm/PreinstallApp;->dealed(Ljava/util/Map;Lcom/android/server/pm/PreinstallApp$Item;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 681
    iget-object v10, v3, Lcom/android/server/pm/PreinstallApp$Item;->apkFile:Ljava/io/File;

    invoke-static {v10}, Lcom/android/server/pm/PreinstallApp;->signCheck(Ljava/io/File;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 682
    sget-object v10, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "Skip copying when the sign is false."

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 687
    :cond_1
    invoke-static {v2, v3}, Lcom/android/server/pm/PreinstallApp;->recorded(Ljava/util/Map;Lcom/android/server/pm/PreinstallApp$Item;)Z

    move-result v7

    .line 689
    .local v7, "recorded":Z
    iget-object v10, v3, Lcom/android/server/pm/PreinstallApp$Item;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v10}, Lcom/android/server/pm/Settings;->peekPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v6

    .line 690
    .local v6, "ps":Lcom/android/server/pm/PackageSetting;
    iget-object v10, v3, Lcom/android/server/pm/PreinstallApp$Item;->packageName:Ljava/lang/String;

    invoke-static {p0, v10}, Lcom/android/server/pm/PreinstallApp;->systemAppDeletedOrDisabled(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_4

    invoke-static {v6}, Lcom/android/server/pm/PreinstallApp;->isSystemAndNotUpdatedSystemApp(Lcom/android/server/pm/PackageSetting;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 692
    sget-object v10, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Skip copying new system updated preinstall app "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Lcom/android/server/pm/PreinstallApp$Item;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 693
    const-string/jumbo v12, ", update it after system ready"

    .line 692
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    iget-object v10, v3, Lcom/android/server/pm/PreinstallApp$Item;->app:Ljava/io/File;

    invoke-static {v10}, Lcom/android/server/pm/PackageManagerProxy;->parsePackage(Ljava/io/File;)Landroid/content/pm/PackageParser$Package;

    move-result-object v5

    .line 695
    .local v5, "pkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v5, :cond_2

    iget-object v10, v5, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    if-nez v10, :cond_3

    .line 696
    :cond_2
    sget-object v10, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Parse "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Lcom/android/server/pm/PreinstallApp$Item;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " failed, skip"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 699
    :cond_3
    iput-object v5, v3, Lcom/android/server/pm/PreinstallApp$Item;->pkg:Landroid/content/pm/PackageParser$Package;

    .line 700
    sget-object v10, Lcom/android/server/pm/PreinstallApp;->sNewUpdatedSystemPreinstallApps:Ljava/util/Set;

    invoke-interface {v10, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 704
    .end local v5    # "pkg":Landroid/content/pm/PackageParser$Package;
    :cond_4
    sget-object v10, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Copy "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Lcom/android/server/pm/PreinstallApp$Item;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    if-nez v6, :cond_7

    .line 708
    if-nez v7, :cond_6

    .line 710
    invoke-static {p0, v3}, Lcom/android/server/pm/PreinstallApp;->copyNewPreinstallApp(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PreinstallApp$Item;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 711
    invoke-static {v2, v3}, Lcom/android/server/pm/PreinstallApp;->recordHistory(Ljava/util/Map;Lcom/android/server/pm/PreinstallApp$Item;)V

    goto/16 :goto_0

    .line 713
    :cond_5
    sget-object v10, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Copy "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Lcom/android/server/pm/PreinstallApp$Item;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " failed"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 717
    :cond_6
    sget-object v10, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "User had uninstalled "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v3, Lcom/android/server/pm/PreinstallApp$Item;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", skip coping"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Lcom/android/server/pm/PreinstallApp$Item;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    invoke-static {v2, v3}, Lcom/android/server/pm/PreinstallApp;->recordHistory(Ljava/util/Map;Lcom/android/server/pm/PreinstallApp$Item;)V

    goto/16 :goto_0

    .line 721
    :cond_7
    iget-object v10, v3, Lcom/android/server/pm/PreinstallApp$Item;->pkgLite:Landroid/content/pm/PackageParser$PackageLite;

    iget v10, v10, Landroid/content/pm/PackageParser$PackageLite;->versionCode:I

    iget v11, v6, Lcom/android/server/pm/PackageSetting;->versionCode:I

    if-gt v10, v11, :cond_8

    .line 722
    sget-object v10, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/android/server/pm/PreinstallApp$Item;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " is not newer than "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 723
    iget-object v12, v6, Lcom/android/server/pm/PackageSetting;->codePathString:Ljava/lang/String;

    .line 722
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 723
    const-string/jumbo v12, "["

    .line 722
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 723
    iget v12, v6, Lcom/android/server/pm/PackageSetting;->versionCode:I

    .line 722
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 723
    const-string/jumbo v12, "]"

    .line 722
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 723
    const-string/jumbo v12, ", skip coping"

    .line 722
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    invoke-static {v2, v3}, Lcom/android/server/pm/PreinstallApp;->recordHistory(Ljava/util/Map;Lcom/android/server/pm/PreinstallApp$Item;)V

    goto/16 :goto_0

    .line 731
    :cond_8
    iget-object v10, v3, Lcom/android/server/pm/PreinstallApp$Item;->app:Ljava/io/File;

    invoke-static {v10}, Lcom/android/server/pm/PackageManagerProxy;->parsePackage(Ljava/io/File;)Landroid/content/pm/PackageParser$Package;

    move-result-object v5

    .line 732
    .restart local v5    # "pkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v5, :cond_9

    iget-object v10, v5, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    if-nez v10, :cond_a

    .line 733
    :cond_9
    sget-object v10, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Parse "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Lcom/android/server/pm/PreinstallApp$Item;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " failed, skip"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 738
    :cond_a
    iget-object v10, v5, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    .line 739
    iget-object v11, v6, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v11, v11, Lcom/android/server/pm/PackageSignatures;->mSignatures:[Landroid/content/pm/Signature;

    .line 738
    invoke-static {v10, v11}, Lcom/android/server/pm/PackageManagerService;->compareSignatures([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)I

    move-result v10

    if-nez v10, :cond_b

    const/4 v8, 0x1

    .line 740
    .local v8, "sameSignatures":Z
    :goto_1
    if-nez v8, :cond_c

    invoke-static {v6}, Lcom/android/server/pm/PreinstallApp;->isSystemApp(Lcom/android/server/pm/PackageSetting;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 741
    sget-object v10, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/android/server/pm/PreinstallApp$Item;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " mismatch signature with system app "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 742
    iget-object v12, v6, Lcom/android/server/pm/PackageSetting;->codePath:Ljava/io/File;

    .line 741
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 742
    const-string/jumbo v12, ", skip coping"

    .line 741
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    invoke-static {v2, v3}, Lcom/android/server/pm/PreinstallApp;->recordHistory(Ljava/util/Map;Lcom/android/server/pm/PreinstallApp$Item;)V

    goto/16 :goto_0

    .end local v8    # "sameSignatures":Z
    :cond_b
    move v8, v9

    .line 738
    goto :goto_1

    .line 747
    .restart local v8    # "sameSignatures":Z
    :cond_c
    if-nez v8, :cond_d

    .line 748
    sget-object v10, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/android/server/pm/PreinstallApp$Item;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " mismatch signature with "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v6, Lcom/android/server/pm/PackageSetting;->codePath:Ljava/io/File;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 749
    const-string/jumbo v12, ", delete it\'s resources and data before coping"

    .line 748
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    iget-object v10, v5, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v10, v9}, Lcom/android/server/pm/PackageManagerService;->deleteDataPackage(Ljava/lang/String;Z)Z

    move-result v10

    if-nez v10, :cond_d

    .line 752
    sget-object v10, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Delete mismatch signature app "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v3, Lcom/android/server/pm/PreinstallApp$Item;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 753
    const-string/jumbo v12, " failed, skip coping "

    .line 752
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 753
    invoke-virtual {v3}, Lcom/android/server/pm/PreinstallApp$Item;->toString()Ljava/lang/String;

    move-result-object v12

    .line 752
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 758
    :cond_d
    invoke-static {p0, v3, v6}, Lcom/android/server/pm/PreinstallApp;->copyPreinstallApp(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PreinstallApp$Item;Lcom/android/server/pm/PackageSetting;)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 759
    invoke-static {v2, v3}, Lcom/android/server/pm/PreinstallApp;->recordHistory(Ljava/util/Map;Lcom/android/server/pm/PreinstallApp$Item;)V

    goto/16 :goto_0

    .line 762
    :cond_e
    sget-object v10, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Copy "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Lcom/android/server/pm/PreinstallApp$Item;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " failed"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 766
    .end local v3    # "item":Lcom/android/server/pm/PreinstallApp$Item;
    .end local v5    # "pkg":Landroid/content/pm/PackageParser$Package;
    .end local v6    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v7    # "recorded":Z
    .end local v8    # "sameSignatures":Z
    :cond_f
    invoke-static {v2}, Lcom/android/server/pm/PreinstallApp;->writeHistory(Ljava/util/Map;)V

    .line 767
    sget-object v9, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "copy preinstall apps end, consume "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v0

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "ms"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    return-void
.end method

.method private static copyPreinstallAppsForFirstBoot(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/Settings;)V
    .locals 14
    .param p0, "pms"    # Lcom/android/server/pm/PackageManagerService;
    .param p1, "settings"    # Lcom/android/server/pm/Settings;

    .prologue
    .line 608
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 609
    .local v0, "currentTime":J
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 611
    .local v2, "history":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-static {}, Lcom/android/server/pm/PreinstallApp;->existHistory()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 614
    sget-object v9, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "Exist preinstall history, skip copying preinstall apps for first boot!"

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    return-void

    .line 617
    :cond_0
    sget-object v9, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "Copy preinstall apps start for first boot"

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 622
    .local v6, "pkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v9, Lcom/android/server/pm/PreinstallApp;->sPreinstallApps:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "item$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PreinstallApp$Item;

    .line 623
    .local v3, "item":Lcom/android/server/pm/PreinstallApp$Item;
    iget-object v9, v3, Lcom/android/server/pm/PreinstallApp$Item;->apkFile:Ljava/io/File;

    invoke-static {v9}, Lcom/android/server/pm/PreinstallApp;->signCheck(Ljava/io/File;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 624
    sget-object v9, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "Skip copying when the sign is false for first boot."

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 628
    :cond_1
    iget-object v7, v3, Lcom/android/server/pm/PreinstallApp$Item;->pkgLite:Landroid/content/pm/PackageParser$PackageLite;

    .line 629
    .local v7, "pl":Landroid/content/pm/PackageParser$PackageLite;
    iget-object v9, v7, Landroid/content/pm/PackageParser$PackageLite;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v9}, Lcom/android/server/pm/Settings;->peekPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v8

    .line 630
    .local v8, "ps":Lcom/android/server/pm/PackageSetting;
    invoke-static {v8}, Lcom/android/server/pm/PreinstallApp;->isSystemAndNotUpdatedSystemApp(Lcom/android/server/pm/PackageSetting;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 635
    sget-object v9, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Skip copying new system updated preinstall app "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Lcom/android/server/pm/PreinstallApp$Item;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 636
    const-string/jumbo v11, ", update it after system ready"

    .line 635
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    iget-object v9, v3, Lcom/android/server/pm/PreinstallApp$Item;->app:Ljava/io/File;

    invoke-static {v9}, Lcom/android/server/pm/PackageManagerProxy;->parsePackage(Ljava/io/File;)Landroid/content/pm/PackageParser$Package;

    move-result-object v5

    .line 638
    .local v5, "pkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v5, :cond_2

    .line 639
    iput-object v5, v3, Lcom/android/server/pm/PreinstallApp$Item;->pkg:Landroid/content/pm/PackageParser$Package;

    .line 640
    sget-object v9, Lcom/android/server/pm/PreinstallApp;->sNewUpdatedSystemPreinstallApps:Ljava/util/Set;

    invoke-interface {v9, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 642
    :cond_2
    sget-object v9, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Parse "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Lcom/android/server/pm/PreinstallApp$Item;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " failed, skip"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 646
    .end local v5    # "pkg":Landroid/content/pm/PackageParser$Package;
    :cond_3
    invoke-static {p0, v3, v8}, Lcom/android/server/pm/PreinstallApp;->copyPreinstallApp(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PreinstallApp$Item;Lcom/android/server/pm/PackageSetting;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 647
    sget-object v9, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Copy "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Lcom/android/server/pm/PreinstallApp$Item;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " for first boot"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    iget-object v9, v3, Lcom/android/server/pm/PreinstallApp$Item;->pkgLite:Landroid/content/pm/PackageParser$PackageLite;

    if-eqz v9, :cond_4

    iget-object v9, v3, Lcom/android/server/pm/PreinstallApp$Item;->pkgLite:Landroid/content/pm/PackageParser$PackageLite;

    iget-object v9, v9, Landroid/content/pm/PackageParser$PackageLite;->packageName:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 652
    :cond_4
    :goto_1
    invoke-static {v2, v3}, Lcom/android/server/pm/PreinstallApp;->recordHistory(Ljava/util/Map;Lcom/android/server/pm/PreinstallApp$Item;)V

    goto/16 :goto_0

    .line 650
    :cond_5
    iget-object v9, v3, Lcom/android/server/pm/PreinstallApp$Item;->pkgLite:Landroid/content/pm/PackageParser$PackageLite;

    iget-object v9, v9, Landroid/content/pm/PackageParser$PackageLite;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 654
    :cond_6
    sget-object v9, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Copy "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Lcom/android/server/pm/PreinstallApp$Item;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " failed for first boot"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 657
    .end local v3    # "item":Lcom/android/server/pm/PreinstallApp$Item;
    .end local v7    # "pl":Landroid/content/pm/PackageParser$PackageLite;
    .end local v8    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_7
    invoke-static {v2}, Lcom/android/server/pm/PreinstallApp;->writeHistory(Ljava/util/Map;)V

    .line 660
    invoke-static {v6}, Lcom/android/server/pm/PreinstallApp;->writePreinstallPackage(Ljava/util/ArrayList;)V

    .line 662
    sget-object v9, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Copy preinstall apps end for first boot, consume "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v0

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "ms"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    return-void
.end method

.method private static copyPreinstallForVersionUnder21(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PreinstallApp$Item;Lcom/android/server/pm/PackageSetting;)Z
    .locals 4
    .param p0, "pms"    # Lcom/android/server/pm/PackageManagerService;
    .param p1, "srcApp"    # Lcom/android/server/pm/PreinstallApp$Item;
    .param p2, "ps"    # Lcom/android/server/pm/PackageSetting;

    .prologue
    const/4 v1, 0x0

    .line 318
    const/4 v0, 0x0

    .line 319
    .local v0, "dstCodePath":Ljava/io/File;
    iget-object v2, p1, Lcom/android/server/pm/PreinstallApp$Item;->apkFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 321
    return v1

    .line 323
    :cond_0
    if-eqz p2, :cond_4

    invoke-static {p2}, Lcom/android/server/pm/PreinstallApp;->underData(Lcom/android/server/pm/PackageSetting;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 325
    invoke-static {p0, p2}, Lcom/android/server/pm/PackageManagerProxy;->cleanUpResource(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageSetting;)Z

    .line 326
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->codePath:Ljava/io/File;

    .line 330
    .local v0, "dstCodePath":Ljava/io/File;
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 331
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 333
    :cond_1
    iget-object v2, p1, Lcom/android/server/pm/PreinstallApp$Item;->apkFile:Ljava/io/File;

    invoke-static {v2, v0}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 334
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Ljava/io/File;->setReadable(ZZ)Z

    move-result v1

    .line 335
    .local v1, "ret":Z
    :cond_2
    if-eqz v1, :cond_3

    .line 337
    iget-object v2, p1, Lcom/android/server/pm/PreinstallApp$Item;->apkFile:Ljava/io/File;

    invoke-static {v2, v0}, Lcom/android/server/pm/PackageManagerProxy;->copyOdexFileIfExists(Ljava/io/File;Ljava/io/File;)V

    .line 339
    :cond_3
    return v1

    .line 328
    .end local v1    # "ret":Z
    .local v0, "dstCodePath":Ljava/io/File;
    :cond_4
    new-instance v0, Ljava/io/File;

    .end local v0    # "dstCodePath":Ljava/io/File;
    const-string/jumbo v2, "/data/app/"

    iget-object v3, p1, Lcom/android/server/pm/PreinstallApp$Item;->apkFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v0, "dstCodePath":Ljava/io/File;
    goto :goto_0
.end method

.method private static createIfNonexist(Ljava/io/File;)V
    .locals 3
    .param p0, "dir"    # Ljava/io/File;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 296
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 297
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 298
    invoke-virtual {p0, v1, v2}, Ljava/io/File;->setReadable(ZZ)Z

    .line 299
    invoke-virtual {p0, v1, v2}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 300
    invoke-virtual {p0, v1}, Ljava/io/File;->setWritable(Z)Z

    .line 295
    :cond_0
    return-void
.end method

.method private static dealed(Ljava/util/Map;Lcom/android/server/pm/PreinstallApp$Item;)Z
    .locals 1
    .param p1, "item"    # Lcom/android/server/pm/PreinstallApp$Item;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/android/server/pm/PreinstallApp$Item;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 529
    .local p0, "history":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    iget-object v0, p1, Lcom/android/server/pm/PreinstallApp$Item;->apkFile:Ljava/io/File;

    invoke-static {p0, v0}, Lcom/android/server/pm/PreinstallApp;->dealed(Ljava/util/Map;Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method private static dealed(Ljava/util/Map;Ljava/io/File;)Z
    .locals 6
    .param p1, "apkFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/io/File;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p0, "history":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    const/4 v1, 0x0

    .line 523
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 524
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    .line 525
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "/system/data-app"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 523
    :goto_0
    return v0

    .line 525
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 523
    goto :goto_0
.end method

.method private static deleteContents(Ljava/io/File;)Z
    .locals 8
    .param p0, "dir"    # Ljava/io/File;

    .prologue
    .line 272
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 273
    .local v1, "files":[Ljava/io/File;
    const/4 v2, 0x1

    .line 274
    .local v2, "success":Z
    if-eqz v1, :cond_2

    .line 275
    const/4 v3, 0x0

    array-length v4, v1

    .end local v2    # "success":Z
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v0, v1, v3

    .line 276
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 277
    invoke-static {v0}, Lcom/android/server/pm/PreinstallApp;->deleteContents(Ljava/io/File;)Z

    move-result v5

    and-int/2addr v2, v5

    .line 279
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v5

    if-nez v5, :cond_1

    .line 280
    sget-object v5, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Failed to delete "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    const/4 v2, 0x0

    .line 275
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 285
    .end local v0    # "file":Ljava/io/File;
    :cond_2
    return v2
.end method

.method private static deleteFileOrDirectory(Ljava/io/File;)V
    .locals 1
    .param p0, "f"    # Ljava/io/File;

    .prologue
    .line 289
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    invoke-static {p0}, Lcom/android/server/pm/PreinstallApp;->deleteContents(Ljava/io/File;)Z

    .line 292
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 288
    return-void
.end method

.method private static existHistory()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 262
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/data/app/preinstall_history"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    return v2

    .line 265
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/data/system/preinstall_history"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 266
    return v2

    .line 268
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private static getAllPreinstallApplist()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 503
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/pm/PreinstallApp;->getPreinstallApplist(Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private static getApkFile(Ljava/io/File;)Ljava/io/File;
    .locals 1
    .param p0, "app"    # Ljava/io/File;

    .prologue
    .line 309
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 310
    invoke-static {p0}, Lcom/android/server/pm/PreinstallApp;->getBaseApkFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    return-object v0

    .line 312
    :cond_0
    return-object p0
.end method

.method private static getBaseApkFile(Ljava/io/File;)Ljava/io/File;
    .locals 3
    .param p0, "dir"    # Ljava/io/File;

    .prologue
    .line 431
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".apk"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private static getCustomizePreinstallAppList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 499
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/server/pm/PreinstallApp;->getPreinstallApplist(Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private static getPackageManager()Landroid/content/pm/IPackageManager;
    .locals 1

    .prologue
    .line 149
    const-string/jumbo v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    return-object v0
.end method

.method public static getPeinstalledChannelList()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 983
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 984
    .local v2, "preinstalledChannelList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Lmiui/util/CustomizeUtil;->getMiuiCustVariantDir()Ljava/io/File;

    move-result-object v0

    .line 985
    .local v0, "custVariantDir":Ljava/io/File;
    if-eqz v0, :cond_0

    .line 986
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 988
    .local v1, "custVariantPath":Ljava/lang/String;
    sget-object v3, Lcom/android/server/pm/PreinstallApp;->CUSTOMIZED_APP_DIR:Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 989
    const-string/jumbo v5, "/customized_channellist"

    .line 988
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 987
    invoke-static {v2, v3, v4}, Lcom/android/server/pm/PreinstallApp;->addPreinstallChannelToList(Ljava/util/List;Ljava/io/File;Ljava/lang/String;)V

    .line 991
    sget-object v3, Lcom/android/server/pm/PreinstallApp;->CUSTOMIZED_APP_DIR:Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 992
    const-string/jumbo v5, "/ota_customized_channellist"

    .line 991
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 990
    invoke-static {v2, v3, v4}, Lcom/android/server/pm/PreinstallApp;->addPreinstallChannelToList(Ljava/util/List;Ljava/io/File;Ljava/lang/String;)V

    .line 994
    sget-object v3, Lcom/android/server/pm/PreinstallApp;->RECOMMENDED_APP_DIR:Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 995
    const-string/jumbo v5, "/recommended_channellist"

    .line 994
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 993
    invoke-static {v2, v3, v4}, Lcom/android/server/pm/PreinstallApp;->addPreinstallChannelToList(Ljava/util/List;Ljava/io/File;Ljava/lang/String;)V

    .line 997
    sget-object v3, Lcom/android/server/pm/PreinstallApp;->RECOMMENDED_APP_DIR:Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 998
    const-string/jumbo v5, "/ota_recommended_channellist"

    .line 997
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 996
    invoke-static {v2, v3, v4}, Lcom/android/server/pm/PreinstallApp;->addPreinstallChannelToList(Ljava/util/List;Ljava/io/File;Ljava/lang/String;)V

    .line 1000
    .end local v1    # "custVariantPath":Ljava/lang/String;
    :cond_0
    return-object v2
.end method

.method private static getPreinstallApplist(Z)Ljava/util/ArrayList;
    .locals 7
    .param p0, "onlyCust"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 470
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 471
    .local v2, "preinstallAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 472
    .local v1, "customizedAppSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 474
    .local v3, "recommendedAppSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {}, Lmiui/util/CustomizeUtil;->getMiuiCustVariantDir()Ljava/io/File;

    move-result-object v0

    .line 475
    .local v0, "custVariantDir":Ljava/io/File;
    if-eqz v0, :cond_0

    .line 477
    new-instance v4, Ljava/io/File;

    const-string/jumbo v5, "customized_applist"

    invoke-direct {v4, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v4, v1}, Lcom/android/server/pm/PreinstallApp;->readLineToSet(Ljava/io/File;Ljava/util/Set;)V

    .line 479
    new-instance v4, Ljava/io/File;

    const-string/jumbo v5, "ota_customized_applist"

    invoke-direct {v4, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v4, v1}, Lcom/android/server/pm/PreinstallApp;->readLineToSet(Ljava/io/File;Ljava/util/Set;)V

    .line 481
    new-instance v4, Ljava/io/File;

    const-string/jumbo v5, "recommended_applist"

    invoke-direct {v4, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v4, v3}, Lcom/android/server/pm/PreinstallApp;->readLineToSet(Ljava/io/File;Ljava/util/Set;)V

    .line 483
    new-instance v4, Ljava/io/File;

    const-string/jumbo v5, "ota_recommended_applist"

    invoke-direct {v4, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v4, v3}, Lcom/android/server/pm/PreinstallApp;->readLineToSet(Ljava/io/File;Ljava/util/Set;)V

    .line 488
    :cond_0
    sget-object v4, Lcom/android/server/pm/PreinstallApp;->CUSTOMIZED_APP_DIR:Ljava/io/File;

    invoke-static {v2, v4, v1}, Lcom/android/server/pm/PreinstallApp;->addPreinstallAppToList(Ljava/util/List;Ljava/io/File;Ljava/util/Set;)V

    .line 490
    sget-object v4, Lcom/android/server/pm/PreinstallApp;->RECOMMENDED_APP_DIR:Ljava/io/File;

    invoke-static {v2, v4, v3}, Lcom/android/server/pm/PreinstallApp;->addPreinstallAppToList(Ljava/util/List;Ljava/io/File;Ljava/util/Set;)V

    .line 492
    if-nez p0, :cond_1

    .line 493
    sget-object v4, Lcom/android/server/pm/PreinstallApp;->NONCUSTOMIZED_APP_DIR:Ljava/io/File;

    invoke-static {v2, v4, v6}, Lcom/android/server/pm/PreinstallApp;->addPreinstallAppToList(Ljava/util/List;Ljava/io/File;Ljava/util/Set;)V

    .line 495
    :cond_1
    return-object v2
.end method

.method static ignorePreinstallApks(Ljava/lang/String;)V
    .locals 8
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 130
    const/4 v4, 0x3

    new-array v2, v4, [Ljava/io/File;

    .line 131
    sget-object v4, Lcom/android/server/pm/PreinstallApp;->NONCUSTOMIZED_APP_DIR:Ljava/io/File;

    aput-object v4, v2, v3

    .line 132
    sget-object v4, Lcom/android/server/pm/PreinstallApp;->CUSTOMIZED_APP_DIR:Ljava/io/File;

    const/4 v5, 0x1

    aput-object v4, v2, v5

    .line 133
    sget-object v4, Lcom/android/server/pm/PreinstallApp;->RECOMMENDED_APP_DIR:Ljava/io/File;

    const/4 v5, 0x2

    aput-object v4, v2, v5

    .line 136
    .local v2, "preinstallDirs":[Ljava/io/File;
    array-length v4, v2

    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v1, v2, v3

    .line 137
    .local v1, "dir":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 138
    .local v0, "apkFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 139
    sget-object v5, Lcom/android/server/pm/PreinstallApp;->sIgnorePreinstallApks:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 141
    :cond_0
    new-instance v0, Ljava/io/File;

    .end local v0    # "apkFile":Ljava/io/File;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ".apk"

    const-string/jumbo v7, ""

    invoke-virtual {p0, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 142
    .restart local v0    # "apkFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 143
    sget-object v5, Lcom/android/server/pm/PreinstallApp;->sIgnorePreinstallApks:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 136
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 129
    .end local v0    # "apkFile":Ljava/io/File;
    .end local v1    # "dir":Ljava/io/File;
    :cond_2
    return-void
.end method

.method public static installCustApps()V
    .locals 16

    .prologue
    .line 853
    invoke-static {}, Lcom/android/server/pm/PreinstallApp;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v9

    .line 854
    .local v9, "pm":Landroid/content/pm/IPackageManager;
    invoke-static {}, Lcom/android/server/pm/PreinstallApp;->getCustomizePreinstallAppList()Ljava/util/List;

    move-result-object v3

    .line 855
    .local v3, "custAppList":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 856
    sget-object v11, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    const-string/jumbo v12, " No cust app need to install"

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    return-void

    .line 860
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 861
    .local v4, "currentTime":J
    sget-object v11, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    const-string/jumbo v12, "Install cust apps start"

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 863
    .local v6, "history":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-static {v6}, Lcom/android/server/pm/PreinstallApp;->readHistory(Ljava/util/Map;)V

    .line 866
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 869
    .local v7, "pkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "app$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 870
    .local v1, "app":Ljava/io/File;
    invoke-static {v1}, Lcom/android/server/pm/PreinstallApp;->getApkFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 871
    .local v0, "apkFile":Ljava/io/File;
    invoke-static {v6, v0}, Lcom/android/server/pm/PreinstallApp;->dealed(Ljava/util/Map;Ljava/io/File;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 875
    const/4 v11, 0x2

    invoke-static {v9, v0, v11}, Lcom/android/server/pm/PreinstallApp;->tryInstallApp(Landroid/content/pm/IPackageManager;Ljava/io/File;I)I

    move-result v10

    .line 876
    .local v10, "result":I
    const/4 v11, 0x1

    if-ne v10, v11, :cond_4

    .line 877
    sget-object v11, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Install cust app ["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "] mtime["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v14

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "]"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    invoke-static {v0}, Lcom/android/server/pm/PackageManagerProxy;->parsePackageLite(Ljava/io/File;)Landroid/content/pm/PackageParser$PackageLite;

    move-result-object v8

    .line 880
    .local v8, "pl":Landroid/content/pm/PackageParser$PackageLite;
    if-eqz v8, :cond_2

    iget-object v11, v8, Landroid/content/pm/PackageParser$PackageLite;->packageName:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 883
    :cond_2
    :goto_1
    invoke-static {v6, v0}, Lcom/android/server/pm/PreinstallApp;->recordToHistory(Ljava/util/Map;Ljava/io/File;)V

    goto :goto_0

    .line 881
    :cond_3
    iget-object v11, v8, Landroid/content/pm/PackageParser$PackageLite;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 886
    .end local v8    # "pl":Landroid/content/pm/PackageParser$PackageLite;
    :cond_4
    sget-object v11, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Install cust app ["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "] fail, result["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "]"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 890
    .end local v0    # "apkFile":Ljava/io/File;
    .end local v1    # "app":Ljava/io/File;
    .end local v10    # "result":I
    :cond_5
    invoke-static {v6}, Lcom/android/server/pm/PreinstallApp;->writeHistory(Ljava/util/Map;)V

    .line 893
    invoke-static {v7}, Lcom/android/server/pm/PreinstallApp;->writePreinstallPackage(Ljava/util/ArrayList;)V

    .line 895
    sget-object v11, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Install cust apps end, consume "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long/2addr v14, v4

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "ms"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    return-void
.end method

.method public static installNewUpdatedSystemPreinstallApps()V
    .locals 14

    .prologue
    .line 809
    invoke-static {}, Lcom/android/server/pm/PreinstallApp;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v8

    .line 810
    .local v8, "pm":Landroid/content/pm/IPackageManager;
    sget-object v10, Lcom/android/server/pm/PreinstallApp;->sNewUpdatedSystemPreinstallApps:Ljava/util/Set;

    invoke-interface {v10}, Ljava/util/Set;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 811
    sget-object v10, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "No updated system preinstall apps need to install"

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    return-void

    .line 815
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 816
    .local v0, "currentTime":J
    sget-object v10, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "Install updated system preinstall apps start"

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 818
    .local v3, "history":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-static {v3}, Lcom/android/server/pm/PreinstallApp;->readHistory(Ljava/util/Map;)V

    .line 819
    sget-object v10, Lcom/android/server/pm/PreinstallApp;->sNewUpdatedSystemPreinstallApps:Ljava/util/Set;

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "item$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PreinstallApp$Item;

    .line 820
    .local v4, "item":Lcom/android/server/pm/PreinstallApp$Item;
    invoke-static {v3, v4}, Lcom/android/server/pm/PreinstallApp;->dealed(Ljava/util/Map;Lcom/android/server/pm/PreinstallApp$Item;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 824
    iget-object v7, v4, Lcom/android/server/pm/PreinstallApp$Item;->pkg:Landroid/content/pm/PackageParser$Package;

    .line 825
    .local v7, "pkg":Landroid/content/pm/PackageParser$Package;
    const/4 v6, 0x0

    .line 827
    .local v6, "pi":Landroid/content/pm/PackageInfo;
    :try_start_0
    iget-object v10, v7, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    const/16 v11, 0x40

    const/4 v12, 0x0

    invoke-interface {v8, v10, v11, v12}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 832
    .local v6, "pi":Landroid/content/pm/PackageInfo;
    if-eqz v6, :cond_2

    iget v10, v7, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    iget v11, v6, Landroid/content/pm/PackageInfo;->versionCode:I

    if-gt v10, v11, :cond_2

    .line 833
    sget-object v10, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/android/server/pm/PreinstallApp$Item;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " is not newer than "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v12, v12, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", skip"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 828
    .local v6, "pi":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v2

    .line 829
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 836
    .end local v2    # "e":Landroid/os/RemoteException;
    .local v6, "pi":Landroid/content/pm/PackageInfo;
    :cond_2
    iget-object v10, v4, Lcom/android/server/pm/PreinstallApp$Item;->apkFile:Ljava/io/File;

    const/4 v11, 0x2

    invoke-static {v8, v10, v11}, Lcom/android/server/pm/PreinstallApp;->tryInstallApp(Landroid/content/pm/IPackageManager;Ljava/io/File;I)I

    move-result v9

    .line 837
    .local v9, "result":I
    const/4 v10, 0x1

    if-ne v9, v10, :cond_3

    .line 838
    sget-object v10, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Install new updated system preinstall app "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Lcom/android/server/pm/PreinstallApp$Item;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    invoke-static {v3, v4}, Lcom/android/server/pm/PreinstallApp;->recordHistory(Ljava/util/Map;Lcom/android/server/pm/PreinstallApp$Item;)V

    .line 843
    :goto_1
    invoke-static {v3}, Lcom/android/server/pm/PreinstallApp;->writeHistory(Ljava/util/Map;)V

    goto/16 :goto_0

    .line 841
    :cond_3
    sget-object v10, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Install new updated system preinstall app "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Lcom/android/server/pm/PreinstallApp$Item;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " failed, result "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 845
    .end local v4    # "item":Lcom/android/server/pm/PreinstallApp$Item;
    .end local v6    # "pi":Landroid/content/pm/PackageInfo;
    .end local v7    # "pkg":Landroid/content/pm/PackageParser$Package;
    .end local v9    # "result":I
    :cond_4
    sget-object v10, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Install updated system preinstall apps end, consume "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v0

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "ms"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    return-void
.end method

.method public static installVanwardCustApps()V
    .locals 16

    .prologue
    .line 903
    invoke-static {}, Lcom/android/server/pm/PreinstallApp;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v9

    .line 904
    .local v9, "pm":Landroid/content/pm/IPackageManager;
    invoke-static {}, Lcom/android/server/pm/PreinstallApp;->getCustomizePreinstallAppList()Ljava/util/List;

    move-result-object v3

    .line 905
    .local v3, "custAppList":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    .line 907
    .local v11, "vanwardCustAppSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v12, Ljava/io/File;

    invoke-static {}, Lmiui/util/CustomizeUtil;->getMiuiAppDir()Ljava/io/File;

    move-result-object v13

    const-string/jumbo v14, "vanward_applist"

    invoke-direct {v12, v13, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 906
    invoke-static {v12, v11}, Lcom/android/server/pm/PreinstallApp;->readLineToSet(Ljava/io/File;Ljava/util/Set;)V

    .line 910
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_0

    invoke-interface {v11}, Ljava/util/Set;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 911
    :cond_0
    sget-object v12, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    const-string/jumbo v13, "No vanward cust app need to install"

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    return-void

    .line 915
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 916
    .local v4, "currentTime":J
    sget-object v12, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    const-string/jumbo v13, "Install vanward cust apps start"

    invoke-static {v12, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 918
    .local v6, "history":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-static {v6}, Lcom/android/server/pm/PreinstallApp;->readHistory(Ljava/util/Map;)V

    .line 921
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 924
    .local v7, "pkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "app$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 925
    .local v1, "app":Ljava/io/File;
    invoke-static {v1}, Lcom/android/server/pm/PreinstallApp;->getApkFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 926
    .local v0, "apkFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 927
    invoke-static {v6, v0}, Lcom/android/server/pm/PreinstallApp;->dealed(Ljava/util/Map;Ljava/io/File;)Z

    move-result v12

    .line 926
    if-nez v12, :cond_2

    .line 930
    const/4 v12, 0x2

    invoke-static {v9, v0, v12}, Lcom/android/server/pm/PreinstallApp;->tryInstallApp(Landroid/content/pm/IPackageManager;Ljava/io/File;I)I

    move-result v10

    .line 931
    .local v10, "result":I
    const/4 v12, 0x1

    if-ne v10, v12, :cond_5

    .line 932
    sget-object v12, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "install vanward cust app ["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "] mtime["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "]"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    invoke-static {v0}, Lcom/android/server/pm/PackageManagerProxy;->parsePackageLite(Ljava/io/File;)Landroid/content/pm/PackageParser$PackageLite;

    move-result-object v8

    .line 935
    .local v8, "pl":Landroid/content/pm/PackageParser$PackageLite;
    if-eqz v8, :cond_3

    iget-object v12, v8, Landroid/content/pm/PackageParser$PackageLite;->packageName:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 938
    :cond_3
    :goto_1
    invoke-static {v6, v0}, Lcom/android/server/pm/PreinstallApp;->recordToHistory(Ljava/util/Map;Ljava/io/File;)V

    goto :goto_0

    .line 936
    :cond_4
    iget-object v12, v8, Landroid/content/pm/PackageParser$PackageLite;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 941
    .end local v8    # "pl":Landroid/content/pm/PackageParser$PackageLite;
    :cond_5
    sget-object v12, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Install vanward cust app ["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "] fail, result["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "]"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 945
    .end local v0    # "apkFile":Ljava/io/File;
    .end local v1    # "app":Ljava/io/File;
    .end local v10    # "result":I
    :cond_6
    invoke-static {v6}, Lcom/android/server/pm/PreinstallApp;->writeHistory(Ljava/util/Map;)V

    .line 948
    invoke-static {v7}, Lcom/android/server/pm/PreinstallApp;->writePreinstallPackage(Ljava/util/ArrayList;)V

    .line 950
    sget-object v12, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Install vanward cust apps end, consume "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long/2addr v14, v4

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "ms"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    return-void
.end method

.method private static final isApkFile(Ljava/io/File;)Z
    .locals 2
    .param p0, "apkFile"    # Ljava/io/File;

    .prologue
    .line 388
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ".apk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isSamePackage(Ljava/io/File;Ljava/io/File;)Z
    .locals 6
    .param p0, "appFileA"    # Ljava/io/File;
    .param p1, "appFileB"    # Ljava/io/File;

    .prologue
    const/4 v5, 0x0

    .line 1029
    invoke-static {p0}, Lcom/android/server/pm/PackageManagerProxy;->parsePackageLite(Ljava/io/File;)Landroid/content/pm/PackageParser$PackageLite;

    move-result-object v0

    .line 1030
    .local v0, "plA":Landroid/content/pm/PackageParser$PackageLite;
    invoke-static {p1}, Lcom/android/server/pm/PackageManagerProxy;->parsePackageLite(Ljava/io/File;)Landroid/content/pm/PackageParser$PackageLite;

    move-result-object v1

    .line 1032
    .local v1, "plB":Landroid/content/pm/PackageParser$PackageLite;
    if-eqz v0, :cond_0

    iget-object v2, v0, Landroid/content/pm/PackageParser$PackageLite;->packageName:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 1033
    :cond_0
    sget-object v2, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Parse "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " failed, return false"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1034
    return v5

    .line 1037
    :cond_1
    if-eqz v1, :cond_2

    iget-object v2, v1, Landroid/content/pm/PackageParser$PackageLite;->packageName:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 1038
    :cond_2
    sget-object v2, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Parse "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " failed, return false"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    return v5

    .line 1042
    :cond_3
    iget-object v2, v0, Landroid/content/pm/PackageParser$PackageLite;->packageName:Ljava/lang/String;

    iget-object v3, v1, Landroid/content/pm/PackageParser$PackageLite;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1043
    const/4 v2, 0x1

    return v2

    .line 1045
    :cond_4
    sget-object v2, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "isSamePackage return false."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1046
    return v5
.end method

.method private static isSystemAndNotUpdatedSystemApp(Lcom/android/server/pm/PackageSetting;)Z
    .locals 2
    .param p0, "ps"    # Lcom/android/server/pm/PackageSetting;

    .prologue
    const/4 v0, 0x0

    .line 515
    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/android/server/pm/PreinstallApp;->isSystemApp(Lcom/android/server/pm/PackageSetting;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/android/server/pm/PreinstallApp;->isUpdatedSystemApp(Lcom/android/server/pm/PackageSetting;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isSystemApp(Lcom/android/server/pm/PackageSetting;)Z
    .locals 2
    .param p0, "ps"    # Lcom/android/server/pm/PackageSetting;

    .prologue
    const/4 v0, 0x0

    .line 507
    iget v1, p0, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private static isUpdatedSystemApp(Lcom/android/server/pm/PackageSetting;)Z
    .locals 2
    .param p0, "ps"    # Lcom/android/server/pm/PackageSetting;

    .prologue
    .line 511
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->codePathString:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->codePathString:Ljava/lang/String;

    const-string/jumbo v1, "/data/app/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isValidIme(Ljava/lang/String;Ljava/util/Locale;)Z
    .locals 5
    .param p0, "locale"    # Ljava/lang/String;
    .param p1, "curLocale"    # Ljava/util/Locale;

    .prologue
    .line 954
    const-string/jumbo v2, ","

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 955
    .local v1, "locales":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 956
    aget-object v2, v1, v0

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 957
    aget-object v2, v1, v0

    const-string/jumbo v3, "*"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 956
    if-nez v2, :cond_0

    .line 958
    aget-object v2, v1, v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "_*"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    .line 956
    if-eqz v2, :cond_1

    .line 959
    :cond_0
    const/4 v2, 0x1

    return v2

    .line 955
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 962
    :cond_2
    const/4 v2, 0x0

    return v2
.end method

.method private static parseAndDeleteDuplicatePreinstallApps()V
    .locals 16

    .prologue
    const/4 v14, 0x0

    .line 571
    invoke-static {}, Lcom/android/server/pm/PreinstallApp;->getAllPreinstallApplist()Ljava/util/List;

    move-result-object v9

    .line 572
    .local v9, "preinstallAppFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 573
    .local v0, "currentTime":J
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "pa$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/File;

    .line 574
    .local v5, "pa":Ljava/io/File;
    invoke-static {v5}, Lcom/android/server/pm/PackageManagerProxy;->parsePackageLite(Ljava/io/File;)Landroid/content/pm/PackageParser$PackageLite;

    move-result-object v8

    .line 575
    .local v8, "pl":Landroid/content/pm/PackageParser$PackageLite;
    if-eqz v8, :cond_0

    iget-object v11, v8, Landroid/content/pm/PackageParser$PackageLite;->packageName:Ljava/lang/String;

    if-nez v11, :cond_1

    .line 576
    :cond_0
    sget-object v11, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Parse "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " failed, skip"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 580
    :cond_1
    iget-object v7, v8, Landroid/content/pm/PackageParser$PackageLite;->packageName:Ljava/lang/String;

    .line 581
    .local v7, "packageName":Ljava/lang/String;
    new-instance v2, Lcom/android/server/pm/PreinstallApp$Item;

    invoke-direct {v2, v7, v5, v8, v14}, Lcom/android/server/pm/PreinstallApp$Item;-><init>(Ljava/lang/String;Ljava/io/File;Landroid/content/pm/PackageParser$PackageLite;Landroid/content/pm/PackageParser$Package;)V

    .line 582
    .local v2, "newItem":Lcom/android/server/pm/PreinstallApp$Item;
    sget-object v11, Lcom/android/server/pm/PreinstallApp;->sPreinstallApps:Ljava/util/Map;

    invoke-interface {v11, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 583
    sget-object v11, Lcom/android/server/pm/PreinstallApp;->sPreinstallApps:Ljava/util/Map;

    invoke-interface {v11, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 585
    :cond_2
    sget-object v11, Lcom/android/server/pm/PreinstallApp;->sPreinstallApps:Ljava/util/Map;

    invoke-interface {v11, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PreinstallApp$Item;

    .line 586
    .local v4, "oldItem":Lcom/android/server/pm/PreinstallApp$Item;
    invoke-static {v2, v4}, Lcom/android/server/pm/PreinstallApp$Item;->betterThan(Lcom/android/server/pm/PreinstallApp$Item;Lcom/android/server/pm/PreinstallApp$Item;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 587
    sget-object v11, Lcom/android/server/pm/PreinstallApp;->sPreinstallApps:Ljava/util/Map;

    invoke-interface {v11, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 600
    :goto_1
    sget-object v11, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/server/pm/PreinstallApp$Item;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " is better than "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v4}, Lcom/android/server/pm/PreinstallApp$Item;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 601
    const-string/jumbo v13, ", ignore "

    .line 600
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 601
    invoke-virtual {v4}, Lcom/android/server/pm/PreinstallApp$Item;->toString()Ljava/lang/String;

    move-result-object v13

    .line 600
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 601
    const-string/jumbo v13, " !!!"

    .line 600
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 591
    :cond_3
    move-object v10, v2

    .line 592
    .local v10, "tmp":Lcom/android/server/pm/PreinstallApp$Item;
    move-object v3, v4

    .line 593
    .end local v2    # "newItem":Lcom/android/server/pm/PreinstallApp$Item;
    .local v3, "newItem":Lcom/android/server/pm/PreinstallApp$Item;
    move-object v4, v2

    move-object v2, v3

    .end local v3    # "newItem":Lcom/android/server/pm/PreinstallApp$Item;
    .restart local v2    # "newItem":Lcom/android/server/pm/PreinstallApp$Item;
    goto :goto_1

    .line 604
    .end local v2    # "newItem":Lcom/android/server/pm/PreinstallApp$Item;
    .end local v4    # "oldItem":Lcom/android/server/pm/PreinstallApp$Item;
    .end local v5    # "pa":Ljava/io/File;
    .end local v7    # "packageName":Ljava/lang/String;
    .end local v8    # "pl":Landroid/content/pm/PackageParser$PackageLite;
    .end local v10    # "tmp":Lcom/android/server/pm/PreinstallApp$Item;
    :cond_4
    sget-object v11, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Parse preinstall apps, consume "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long/2addr v14, v0

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "ms"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    return-void
.end method

.method private static readFromPreinstallList(Ljava/util/ArrayList;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1051
    .local p0, "preinstallPackages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 1052
    .local v3, "reader":Ljava/io/BufferedReader;
    const/4 v2, 0x1

    .line 1055
    .local v2, "readPreinstallSuccess":Z
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    const-string/jumbo v6, "/data/system/preinstall.list"

    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1056
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .local v4, "reader":Ljava/io/BufferedReader;
    const/4 v1, 0x0

    .line 1057
    :goto_0
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .local v1, "pkgname":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 1058
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 1060
    .end local v1    # "pkgname":Ljava/lang/String;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    move-object v3, v4

    .line 1061
    .end local v4    # "reader":Ljava/io/BufferedReader;
    :goto_1
    :try_start_2
    sget-object v5, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "deleteFromPreinstallList failed while read preinstall.list + "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1062
    const/4 v2, 0x0

    .line 1064
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1067
    .end local v0    # "e":Ljava/io/IOException;
    :goto_2
    return v2

    .line 1064
    .restart local v1    # "pkgname":Ljava/lang/String;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :cond_0
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move-object v3, v4

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .local v3, "reader":Ljava/io/BufferedReader;
    goto :goto_2

    .line 1063
    .end local v1    # "pkgname":Ljava/lang/String;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    :catchall_0
    move-exception v5

    .line 1064
    :goto_3
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1063
    throw v5

    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    goto :goto_3

    .line 1060
    .local v3, "reader":Ljava/io/BufferedReader;
    :catch_1
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    goto :goto_1
.end method

.method private static readHistory(Ljava/lang/String;Ljava/util/Map;)V
    .locals 22
    .param p0, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 154
    .local p1, "preinstallHistoryMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    :try_start_0
    new-instance v10, Ljava/io/File;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 156
    .local v10, "installHistoryFile":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v19

    if-nez v19, :cond_0

    .line 157
    return-void

    .line 160
    :cond_0
    new-instance v9, Ljava/io/FileReader;

    invoke-direct {v9, v10}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 161
    .local v9, "fileReader":Ljava/io/FileReader;
    new-instance v5, Ljava/io/BufferedReader;

    invoke-direct {v5, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 162
    .local v5, "bufferReader":Ljava/io/BufferedReader;
    const/4 v11, 0x0

    .line 163
    .local v11, "line":Ljava/lang/String;
    const/16 v17, 0x0

    .line 165
    .end local v11    # "line":Ljava/lang/String;
    :cond_1
    :goto_0
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v11

    .local v11, "line":Ljava/lang/String;
    if-eqz v11, :cond_4

    .line 166
    const-string/jumbo v19, ":"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 167
    .local v18, "ss":[Ljava/lang/String;
    if-eqz v18, :cond_1

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v19, v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    .line 171
    const-wide/16 v12, 0x0

    .line 173
    .local v12, "mtime":J
    const/16 v19, 0x1

    :try_start_1
    aget-object v19, v18, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v12

    .line 177
    const/16 v19, 0x0

    :try_start_2
    aget-object v19, v18, v19

    sget-object v20, Lcom/android/server/pm/PreinstallApp;->OLD_PREINSTALL_APP_DIR:Ljava/io/File;

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 181
    const/16 v19, 0x0

    aget-object v19, v18, v19

    sget-object v20, Lcom/android/server/pm/PreinstallApp;->OLD_PREINSTALL_APP_DIR:Ljava/io/File;

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v20

    sget-object v21, Lcom/android/server/pm/PreinstallApp;->CUSTOMIZED_APP_DIR:Ljava/io/File;

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v17

    .line 182
    .local v17, "possibleNewPath":Ljava/lang/String;
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    const/16 v19, 0x0

    aget-object v19, v18, v19

    sget-object v20, Lcom/android/server/pm/PreinstallApp;->OLD_PREINSTALL_APP_DIR:Ljava/io/File;

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v20

    sget-object v21, Lcom/android/server/pm/PreinstallApp;->NONCUSTOMIZED_APP_DIR:Ljava/io/File;

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v17

    .line 184
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 211
    .end local v5    # "bufferReader":Ljava/io/BufferedReader;
    .end local v9    # "fileReader":Ljava/io/FileReader;
    .end local v10    # "installHistoryFile":Ljava/io/File;
    .end local v11    # "line":Ljava/lang/String;
    .end local v12    # "mtime":J
    .end local v17    # "possibleNewPath":Ljava/lang/String;
    .end local v18    # "ss":[Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 152
    :goto_1
    return-void

    .line 186
    .restart local v5    # "bufferReader":Ljava/io/BufferedReader;
    .restart local v9    # "fileReader":Ljava/io/FileReader;
    .restart local v10    # "installHistoryFile":Ljava/io/File;
    .restart local v11    # "line":Ljava/lang/String;
    .restart local v12    # "mtime":J
    .restart local v18    # "ss":[Ljava/lang/String;
    :cond_2
    sget v19, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v20, 0x15

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_3

    .line 188
    const/16 v19, 0x0

    aget-object v19, v18, v19

    const-string/jumbo v20, "/"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 189
    .local v16, "paths":[Ljava/lang/String;
    if-eqz v16, :cond_3

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v19, v0

    const/16 v20, 0x7

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_3

    .line 190
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    aget-object v8, v16, v19

    .line 191
    .local v8, "fileName":Ljava/lang/String;
    const-string/jumbo v19, ".apk"

    const-string/jumbo v20, ""

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v8, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 192
    .local v4, "apkName":Ljava/lang/String;
    const/16 v19, 0x0

    aget-object v19, v18, v19

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 193
    const-string/jumbo v21, "/"

    .line 192
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v8, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v17

    .line 198
    .restart local v17    # "possibleNewPath":Ljava/lang/String;
    new-instance v15, Ljava/io/File;

    const/16 v19, 0x0

    aget-object v19, v18, v19

    move-object/from16 v0, v19

    invoke-direct {v15, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 199
    .local v15, "oldAppFile":Ljava/io/File;
    new-instance v14, Ljava/io/File;

    move-object/from16 v0, v17

    invoke-direct {v14, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 200
    .local v14, "newAppFile":Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v19

    if-eqz v19, :cond_3

    .line 201
    invoke-static {v15, v14}, Lcom/android/server/pm/PreinstallApp;->isSamePackage(Ljava/io/File;Ljava/io/File;)Z

    move-result v19

    .line 200
    if-eqz v19, :cond_3

    .line 202
    const/16 v19, 0x0

    aput-object v17, v18, v19

    .line 206
    .end local v4    # "apkName":Ljava/lang/String;
    .end local v8    # "fileName":Ljava/lang/String;
    .end local v14    # "newAppFile":Ljava/io/File;
    .end local v15    # "oldAppFile":Ljava/io/File;
    .end local v16    # "paths":[Ljava/lang/String;
    .end local v17    # "possibleNewPath":Ljava/lang/String;
    :cond_3
    const/16 v19, 0x0

    aget-object v19, v18, v19

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 209
    .end local v12    # "mtime":J
    .end local v18    # "ss":[Ljava/lang/String;
    :cond_4
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 210
    invoke-virtual {v9}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 174
    .restart local v12    # "mtime":J
    .restart local v18    # "ss":[Ljava/lang/String;
    :catch_1
    move-exception v7

    .local v7, "e":Ljava/lang/NumberFormatException;
    goto/16 :goto_0
.end method

.method private static readHistory(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 216
    .local p0, "preinstallHistoryMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    const-string/jumbo v0, "/data/system/preinstall_history"

    invoke-static {v0, p0}, Lcom/android/server/pm/PreinstallApp;->readHistory(Ljava/lang/String;Ljava/util/Map;)V

    .line 217
    const-string/jumbo v0, "/data/app/preinstall_history"

    invoke-static {v0, p0}, Lcom/android/server/pm/PreinstallApp;->readHistory(Ljava/lang/String;Ljava/util/Map;)V

    .line 215
    return-void
.end method

.method private static readLineToSet(Ljava/io/File;Ljava/util/Set;)V
    .locals 11
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 392
    .local p1, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 393
    const/4 v1, 0x0

    .line 395
    .local v1, "buffer":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    .line 396
    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 395
    invoke-direct {v9, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 398
    .end local v1    # "buffer":Ljava/io/BufferedReader;
    .local v2, "buffer":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "vanward_applist"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 399
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 400
    .local v0, "am":Landroid/app/IActivityManager;
    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget-object v3, v9, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 401
    .local v3, "curLocale":Ljava/util/Locale;
    :cond_0
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .local v7, "line":Ljava/lang/String;
    if-eqz v7, :cond_3

    .line 402
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "\\s+"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 403
    .local v8, "ss":[Ljava/lang/String;
    array-length v9, v8

    const/4 v10, 0x2

    if-ne v9, v10, :cond_0

    const/4 v9, 0x1

    aget-object v9, v8, v9

    invoke-static {v9, v3}, Lcom/android/server/pm/PreinstallApp;->isValidIme(Ljava/lang/String;Ljava/util/Locale;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 404
    const/4 v9, 0x0

    aget-object v9, v8, v9

    invoke-interface {p1, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 412
    .end local v0    # "am":Landroid/app/IActivityManager;
    .end local v3    # "curLocale":Ljava/util/Locale;
    .end local v7    # "line":Ljava/lang/String;
    .end local v8    # "ss":[Ljava/lang/String;
    :catch_0
    move-exception v5

    .local v5, "e":Ljava/io/FileNotFoundException;
    move-object v1, v2

    .line 413
    .end local v2    # "buffer":Ljava/io/BufferedReader;
    :goto_1
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 420
    if-eqz v1, :cond_1

    .line 421
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    .line 391
    .end local v5    # "e":Ljava/io/FileNotFoundException;
    :cond_1
    :goto_2
    return-void

    .line 408
    .restart local v2    # "buffer":Ljava/io/BufferedReader;
    :cond_2
    :goto_3
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "line":Ljava/lang/String;
    if-eqz v7, :cond_3

    .line 409
    invoke-interface {p1, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_a
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    .line 414
    .end local v7    # "line":Ljava/lang/String;
    :catch_1
    move-exception v6

    .local v6, "e":Ljava/io/IOException;
    move-object v1, v2

    .line 415
    .end local v2    # "buffer":Ljava/io/BufferedReader;
    :goto_4
    :try_start_5
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 420
    if-eqz v1, :cond_1

    .line 421
    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_2

    .line 423
    :catch_2
    move-exception v6

    .line 424
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 420
    .end local v6    # "e":Ljava/io/IOException;
    .restart local v2    # "buffer":Ljava/io/BufferedReader;
    .restart local v7    # "line":Ljava/lang/String;
    :cond_3
    if-eqz v2, :cond_1

    .line 421
    :try_start_7
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_2

    .line 423
    :catch_3
    move-exception v6

    .line 424
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 416
    .end local v2    # "buffer":Ljava/io/BufferedReader;
    .end local v6    # "e":Ljava/io/IOException;
    .end local v7    # "line":Ljava/lang/String;
    .restart local v1    # "buffer":Ljava/io/BufferedReader;
    :catch_4
    move-exception v4

    .line 417
    .end local v1    # "buffer":Ljava/io/BufferedReader;
    .local v4, "e":Landroid/os/RemoteException;
    :goto_5
    :try_start_8
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 420
    if-eqz v1, :cond_1

    .line 421
    :try_start_9
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    goto :goto_2

    .line 423
    :catch_5
    move-exception v6

    .line 424
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 423
    .end local v4    # "e":Landroid/os/RemoteException;
    .end local v6    # "e":Ljava/io/IOException;
    .restart local v5    # "e":Ljava/io/FileNotFoundException;
    :catch_6
    move-exception v6

    .line 424
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 418
    .end local v5    # "e":Ljava/io/FileNotFoundException;
    .end local v6    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    .line 420
    :goto_6
    if-eqz v1, :cond_4

    .line 421
    :try_start_a
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    .line 418
    :cond_4
    :goto_7
    throw v9

    .line 423
    :catch_7
    move-exception v6

    .line 424
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 418
    .end local v6    # "e":Ljava/io/IOException;
    .restart local v2    # "buffer":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v9

    move-object v1, v2

    .end local v2    # "buffer":Ljava/io/BufferedReader;
    .local v1, "buffer":Ljava/io/BufferedReader;
    goto :goto_6

    .line 412
    .local v1, "buffer":Ljava/io/BufferedReader;
    :catch_8
    move-exception v5

    .restart local v5    # "e":Ljava/io/FileNotFoundException;
    goto :goto_1

    .line 414
    .end local v5    # "e":Ljava/io/FileNotFoundException;
    :catch_9
    move-exception v6

    .restart local v6    # "e":Ljava/io/IOException;
    goto :goto_4

    .line 416
    .end local v1    # "buffer":Ljava/io/BufferedReader;
    .end local v6    # "e":Ljava/io/IOException;
    .restart local v2    # "buffer":Ljava/io/BufferedReader;
    :catch_a
    move-exception v4

    .restart local v4    # "e":Landroid/os/RemoteException;
    move-object v1, v2

    .end local v2    # "buffer":Ljava/io/BufferedReader;
    .local v1, "buffer":Ljava/io/BufferedReader;
    goto :goto_5
.end method

.method private static recordHistory(Ljava/util/Map;Lcom/android/server/pm/PreinstallApp$Item;)V
    .locals 1
    .param p1, "item"    # Lcom/android/server/pm/PreinstallApp$Item;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/android/server/pm/PreinstallApp$Item;",
            ")V"
        }
    .end annotation

    .prologue
    .line 258
    .local p0, "history":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    iget-object v0, p1, Lcom/android/server/pm/PreinstallApp$Item;->apkFile:Ljava/io/File;

    invoke-static {p0, v0}, Lcom/android/server/pm/PreinstallApp;->recordToHistory(Ljava/util/Map;Ljava/io/File;)V

    .line 257
    return-void
.end method

.method private static recordToHistory(Ljava/util/Map;Ljava/io/File;)V
    .locals 4
    .param p1, "apkFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .prologue
    .line 254
    .local p0, "history":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    return-void
.end method

.method private static recorded(Ljava/util/Map;Lcom/android/server/pm/PreinstallApp$Item;)Z
    .locals 1
    .param p1, "item"    # Lcom/android/server/pm/PreinstallApp$Item;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/android/server/pm/PreinstallApp$Item;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 537
    .local p0, "history":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    iget-object v0, p1, Lcom/android/server/pm/PreinstallApp$Item;->apkFile:Ljava/io/File;

    invoke-static {p0, v0}, Lcom/android/server/pm/PreinstallApp;->recorded(Ljava/util/Map;Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method private static recorded(Ljava/util/Map;Ljava/io/File;)Z
    .locals 1
    .param p1, "apkFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/io/File;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 533
    .local p0, "history":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static removeFromPreinstallList(Ljava/lang/String;)V
    .locals 17
    .param p0, "pkg"    # Ljava/lang/String;

    .prologue
    .line 1072
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1073
    .local v7, "preinstallPackages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {v7}, Lcom/android/server/pm/PreinstallApp;->readFromPreinstallList(Ljava/util/ArrayList;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 1074
    return-void

    .line 1078
    :cond_0
    new-instance v11, Ljava/io/File;

    const-string/jumbo v13, "/data/system/preinstall.list.tmp"

    invoke-direct {v11, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1079
    .local v11, "tempFile":Ljava/io/File;
    new-instance v5, Lcom/android/internal/util/JournaledFile;

    new-instance v13, Ljava/io/File;

    const-string/jumbo v14, "/data/system/preinstall.list"

    invoke-direct {v13, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v13, v11}, Lcom/android/internal/util/JournaledFile;-><init>(Ljava/io/File;Ljava/io/File;)V

    .line 1080
    .local v5, "journal":Lcom/android/internal/util/JournaledFile;
    invoke-virtual {v5}, Lcom/android/internal/util/JournaledFile;->chooseForWrite()Ljava/io/File;

    move-result-object v12

    .line 1081
    .local v12, "writeTarget":Ljava/io/File;
    const/4 v2, 0x0

    .line 1082
    .local v2, "fstr":Ljava/io/FileOutputStream;
    const/4 v9, 0x0

    .line 1084
    .local v9, "str":Ljava/io/BufferedOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1085
    .end local v2    # "fstr":Ljava/io/FileOutputStream;
    .local v3, "fstr":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v10, Ljava/io/BufferedOutputStream;

    invoke-direct {v10, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1086
    .local v10, "str":Ljava/io/BufferedOutputStream;
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    .end local v9    # "str":Ljava/io/BufferedOutputStream;
    move-result-object v13

    const/16 v14, 0x1a0

    const/16 v15, 0x3e8

    const/16 v16, 0x408

    invoke-static/range {v13 .. v16}, Landroid/os/FileUtils;->setPermissions(Ljava/io/FileDescriptor;III)I

    .line 1087
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 1088
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1089
    .local v6, "prePkg":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 1090
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1105
    .end local v4    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v6    # "prePkg":Ljava/lang/String;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    move-object v9, v10

    .end local v10    # "str":Ljava/io/BufferedOutputStream;
    .local v9, "str":Ljava/io/BufferedOutputStream;
    move-object v2, v3

    .line 1106
    .end local v3    # "fstr":Ljava/io/FileOutputStream;
    .end local v9    # "str":Ljava/io/BufferedOutputStream;
    :goto_1
    :try_start_3
    sget-object v13, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    const-string/jumbo v14, "Failed to write preinstall.list + "

    invoke-static {v13, v14, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1107
    invoke-virtual {v5}, Lcom/android/internal/util/JournaledFile;->rollback()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1109
    invoke-static {v9}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1112
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2
    invoke-static/range {p0 .. p0}, Lmiui/os/MiuiInit;->removeFromPreinstallList(Ljava/lang/String;)V

    .line 1113
    sget-object v13, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Delete package:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " from preinstall.list"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    return-void

    .line 1094
    .restart local v3    # "fstr":Ljava/io/FileOutputStream;
    .restart local v4    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v10    # "str":Ljava/io/BufferedOutputStream;
    :cond_2
    :try_start_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 1095
    .local v8, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 1096
    const/4 v13, 0x0

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1097
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1098
    const-string/jumbo v13, "\n"

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1099
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/io/BufferedOutputStream;->write([B)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    .line 1108
    .end local v4    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v8    # "sb":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v13

    move-object v9, v10

    .end local v10    # "str":Ljava/io/BufferedOutputStream;
    .restart local v9    # "str":Ljava/io/BufferedOutputStream;
    move-object v2, v3

    .line 1109
    .end local v3    # "fstr":Ljava/io/FileOutputStream;
    .end local v9    # "str":Ljava/io/BufferedOutputStream;
    :goto_4
    invoke-static {v9}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1108
    throw v13

    .line 1102
    .restart local v3    # "fstr":Ljava/io/FileOutputStream;
    .restart local v4    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v8    # "sb":Ljava/lang/StringBuilder;
    .restart local v10    # "str":Ljava/io/BufferedOutputStream;
    :cond_3
    :try_start_5
    invoke-virtual {v10}, Ljava/io/BufferedOutputStream;->flush()V

    .line 1103
    invoke-static {v3}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 1104
    invoke-virtual {v5}, Lcom/android/internal/util/JournaledFile;->commit()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1109
    invoke-static {v10}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move-object v9, v10

    .end local v10    # "str":Ljava/io/BufferedOutputStream;
    .restart local v9    # "str":Ljava/io/BufferedOutputStream;
    move-object v2, v3

    .end local v3    # "fstr":Ljava/io/FileOutputStream;
    .local v2, "fstr":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 1108
    .end local v2    # "fstr":Ljava/io/FileOutputStream;
    .end local v4    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v8    # "sb":Ljava/lang/StringBuilder;
    .end local v9    # "str":Ljava/io/BufferedOutputStream;
    :catchall_1
    move-exception v13

    goto :goto_4

    .restart local v3    # "fstr":Ljava/io/FileOutputStream;
    .local v9, "str":Ljava/io/BufferedOutputStream;
    :catchall_2
    move-exception v13

    move-object v2, v3

    .end local v3    # "fstr":Ljava/io/FileOutputStream;
    .restart local v2    # "fstr":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 1105
    .local v2, "fstr":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v1

    .restart local v1    # "e":Ljava/lang/Exception;
    goto :goto_1

    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "fstr":Ljava/io/FileOutputStream;
    .restart local v3    # "fstr":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v1

    .restart local v1    # "e":Ljava/lang/Exception;
    move-object v2, v3

    .end local v3    # "fstr":Ljava/io/FileOutputStream;
    .local v2, "fstr":Ljava/io/FileOutputStream;
    goto/16 :goto_1
.end method

.method private static signCheck(Ljava/io/File;)Z
    .locals 6
    .param p0, "apkFile"    # Ljava/io/File;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 554
    sget-boolean v1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v1, :cond_0

    .line 555
    return v4

    .line 557
    :cond_0
    invoke-static {}, Lmiui/util/PreinstallAppUtils;->supportSignVerifyInCust()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "/cust/app"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 558
    :goto_0
    sget-object v1, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Sign support is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    if-eqz v0, :cond_2

    invoke-static {}, Lmiui/os/CustVerifier;->getInstance()Lmiui/os/CustVerifier;

    move-result-object v1

    if-nez v1, :cond_2

    .line 560
    sget-object v1, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "CustVerifier init error !"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " will not be installed."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    return v5

    .line 557
    :cond_1
    const/4 v0, 0x0

    .local v0, "custAppSupportSign":Z
    goto :goto_0

    .line 563
    .end local v0    # "custAppSupportSign":Z
    :cond_2
    if-eqz v0, :cond_3

    invoke-static {}, Lmiui/os/CustVerifier;->getInstance()Lmiui/os/CustVerifier;

    move-result-object v1

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Lmiui/os/CustVerifier;->verifyApkSignatue(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 567
    :cond_3
    return v4

    .line 564
    :cond_4
    sget-object v1, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " verify failed!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    return v5
.end method

.method private static systemAppDeletedOrDisabled(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)Z
    .locals 1
    .param p0, "pms"    # Lcom/android/server/pm/PackageManagerService;
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 519
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static tryInstallApp(Landroid/content/pm/IPackageManager;Ljava/io/File;I)I
    .locals 7
    .param p0, "pm"    # Landroid/content/pm/IPackageManager;
    .param p1, "apkFile"    # Ljava/io/File;
    .param p2, "retryCnt"    # I

    .prologue
    .line 790
    const/4 v1, 0x0

    .local v1, "n":I
    move v2, v1

    .line 793
    .end local v1    # "n":I
    .local v2, "n":I
    :goto_0
    if-eqz v2, :cond_0

    sget-object v4, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Try install "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", retry time: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    :cond_0
    invoke-static {p0, p1}, Lcom/android/server/pm/PackageManagerProxy;->installApp(Landroid/content/pm/IPackageManager;Ljava/io/File;)I

    move-result v3

    .line 795
    .local v3, "result":I
    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    move v1, v2

    .line 805
    .end local v2    # "n":I
    .restart local v1    # "n":I
    :cond_1
    return v3

    .line 800
    .end local v1    # "n":I
    .restart local v2    # "n":I
    :cond_2
    const-wide/16 v4, 0x3e8

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 804
    :goto_1
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "n":I
    .restart local v1    # "n":I
    if-ge v2, p2, :cond_1

    move v2, v1

    .end local v1    # "n":I
    .restart local v2    # "n":I
    goto :goto_0

    .line 801
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/InterruptedException;
    goto :goto_1
.end method

.method private static underData(Lcom/android/server/pm/PackageSetting;)Z
    .locals 2
    .param p0, "ps"    # Lcom/android/server/pm/PackageSetting;

    .prologue
    .line 305
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->codePathString:Ljava/lang/String;

    const-string/jumbo v1, "/data/app/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static writeHistory(Ljava/lang/String;Ljava/util/Map;)V
    .locals 8
    .param p0, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 222
    .local p1, "preinstallHistoryMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 224
    .local v3, "installHistoryFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 225
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 228
    :cond_0
    new-instance v2, Ljava/io/FileWriter;

    const/4 v6, 0x0

    invoke-direct {v2, v3, v6}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    .line 229
    .local v2, "fileWriter":Ljava/io/FileWriter;
    new-instance v0, Ljava/io/BufferedWriter;

    invoke-direct {v0, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 231
    .local v0, "bufferWriter":Ljava/io/BufferedWriter;
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "r$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 232
    .local v4, "r":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    new-instance v7, Ljava/io/File;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 235
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 236
    const-string/jumbo v6, "\n"

    invoke-virtual {v0, v6}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 241
    .end local v0    # "bufferWriter":Ljava/io/BufferedWriter;
    .end local v2    # "fileWriter":Ljava/io/FileWriter;
    .end local v3    # "installHistoryFile":Ljava/io/File;
    .end local v4    # "r":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v5    # "r$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v1

    .line 220
    :goto_1
    return-void

    .line 239
    .restart local v0    # "bufferWriter":Ljava/io/BufferedWriter;
    .restart local v2    # "fileWriter":Ljava/io/FileWriter;
    .restart local v3    # "installHistoryFile":Ljava/io/File;
    .restart local v5    # "r$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    .line 240
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method private static writeHistory(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 246
    .local p0, "preinstallHistoryMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/data/system/preinstall_history"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 247
    .local v0, "old":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 248
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 250
    :cond_0
    const-string/jumbo v1, "/data/app/preinstall_history"

    invoke-static {v1, p0}, Lcom/android/server/pm/PreinstallApp;->writeHistory(Ljava/lang/String;Ljava/util/Map;)V

    .line 245
    return-void
.end method

.method private static writePreinstallPackage(Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 966
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v5, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "Write preinstalled package name into /data/system/preinstall.list"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 968
    :cond_0
    return-void

    .line 970
    :cond_1
    const/4 v0, 0x0

    .line 972
    .local v0, "bufferWriter":Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v5, Ljava/io/FileWriter;

    const-string/jumbo v6, "/data/system/preinstall.list"

    const/4 v7, 0x1

    invoke-direct {v5, v6, v7}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v1, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 973
    .local v1, "bufferWriter":Ljava/io/BufferedWriter;
    :try_start_1
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .end local v0    # "bufferWriter":Ljava/io/BufferedWriter;
    move-result-object v4

    .local v4, "pkg$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 974
    .local v3, "pkg":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 977
    .end local v3    # "pkg":Ljava/lang/String;
    .end local v4    # "pkg$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/io/IOException;
    move-object v0, v1

    .line 978
    .end local v1    # "bufferWriter":Ljava/io/BufferedWriter;
    :goto_1
    sget-object v5, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "Error occurs when to write preinstalled package name."

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 965
    .end local v2    # "e":Ljava/io/IOException;
    :goto_2
    return-void

    .line 976
    .restart local v1    # "bufferWriter":Ljava/io/BufferedWriter;
    .restart local v4    # "pkg$iterator":Ljava/util/Iterator;
    :cond_2
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v0, v1

    .end local v1    # "bufferWriter":Ljava/io/BufferedWriter;
    .local v0, "bufferWriter":Ljava/io/BufferedWriter;
    goto :goto_2

    .line 977
    .end local v4    # "pkg$iterator":Ljava/util/Iterator;
    .local v0, "bufferWriter":Ljava/io/BufferedWriter;
    :catch_1
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    goto :goto_1
.end method
