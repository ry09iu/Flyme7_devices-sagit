.class public Landroid/content/pm/PackageHideManager;
.super Ljava/lang/Object;
.source "PackageHideManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/PackageHideManager$AppHideConfig;,
        Landroid/content/pm/PackageHideManager$AppHideItem;
    }
.end annotation


# static fields
.field private static final APP_HIDE_SWITCH_FILE:Ljava/lang/String; = "/data/system/app_hide_switch.xml"

.field private static final APP_HIDE_SWITCH_FILE_VERSION:I = 0x2

.field private static TAG:Ljava/lang/String;

.field private static appHideConfig:Landroid/content/pm/PackageHideManager$AppHideConfig;

.field private static mFile:Ljava/io/File;

.field private static volatile sInstance:Landroid/content/pm/PackageHideManager;


# instance fields
.field private mShouldHideApks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageHideManager$AppHideItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Landroid/content/pm/PackageHideManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/content/pm/PackageHideManager;->TAG:Ljava/lang/String;

    .line 74
    const/4 v0, 0x0

    sput-object v0, Landroid/content/pm/PackageHideManager;->sInstance:Landroid/content/pm/PackageHideManager;

    .line 38
    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "isFirstBoot"    # Z

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/content/pm/PackageHideManager;->mShouldHideApks:Ljava/util/Map;

    .line 91
    invoke-direct {p0, p1}, Landroid/content/pm/PackageHideManager;->init(Z)V

    .line 90
    return-void
.end method

.method private clearUserAleadyInstalled(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 365
    iget-object v2, p0, Landroid/content/pm/PackageHideManager;->mShouldHideApks:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "item$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageHideManager$AppHideItem;

    .line 366
    .local v0, "item":Landroid/content/pm/PackageHideManager$AppHideItem;
    invoke-direct {p0, p1, v0}, Landroid/content/pm/PackageHideManager;->clearUserAleadyInstalled(Landroid/content/Context;Landroid/content/pm/PackageHideManager$AppHideItem;)V

    goto :goto_0

    .line 364
    .end local v0    # "item":Landroid/content/pm/PackageHideManager$AppHideItem;
    :cond_0
    return-void
.end method

.method private clearUserAleadyInstalled(Landroid/content/Context;Landroid/content/pm/PackageHideManager$AppHideItem;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "item"    # Landroid/content/pm/PackageHideManager$AppHideItem;

    .prologue
    const/4 v5, 0x0

    .line 371
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 374
    .local v3, "packageManager":Landroid/content/pm/PackageManager;
    :try_start_0
    iget-object v6, p2, Landroid/content/pm/PackageHideManager$AppHideItem;->packageName:Ljava/lang/String;

    const/4 v7, 0x0

    .line 373
    invoke-virtual {v3, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 375
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_2

    iget-object v6, p2, Landroid/content/pm/PackageHideManager$AppHideItem;->pathArray:[Ljava/lang/String;

    if-eqz v6, :cond_2

    .line 376
    iget-object v6, p2, Landroid/content/pm/PackageHideManager$AppHideItem;->pathArray:[Ljava/lang/String;

    array-length v7, v6

    :goto_0
    if-ge v5, v7, :cond_2

    aget-object v4, v6, v5

    .line 377
    .local v4, "path":Ljava/lang/String;
    iget-object v8, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    if-eqz v8, :cond_0

    .line 378
    iget-object v8, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v8, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 376
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 380
    :cond_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 381
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 382
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 387
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "file":Ljava/io/File;
    .end local v4    # "path":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 370
    :cond_2
    return-void
.end method

.method public static getInstance(Z)Landroid/content/pm/PackageHideManager;
    .locals 2
    .param p0, "isFirstBoot"    # Z

    .prologue
    .line 80
    sget-object v0, Landroid/content/pm/PackageHideManager;->sInstance:Landroid/content/pm/PackageHideManager;

    if-nez v0, :cond_1

    .line 81
    const-class v1, Landroid/content/pm/PackageHideManager;

    monitor-enter v1

    .line 82
    :try_start_0
    sget-object v0, Landroid/content/pm/PackageHideManager;->sInstance:Landroid/content/pm/PackageHideManager;

    if-nez v0, :cond_0

    .line 83
    new-instance v0, Landroid/content/pm/PackageHideManager;

    invoke-direct {v0, p0}, Landroid/content/pm/PackageHideManager;-><init>(Z)V

    sput-object v0, Landroid/content/pm/PackageHideManager;->sInstance:Landroid/content/pm/PackageHideManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 87
    :cond_1
    sget-object v0, Landroid/content/pm/PackageHideManager;->sInstance:Landroid/content/pm/PackageHideManager;

    return-object v0

    .line 81
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private init(Z)V
    .locals 5
    .param p1, "isFirstBoot"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x2

    .line 95
    invoke-static {}, Landroid/content/pm/PackageHideManager;->isValidDevice()Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    return-void

    .line 98
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/data/system/app_hide_switch.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/content/pm/PackageHideManager;->mFile:Ljava/io/File;

    .line 99
    invoke-direct {p0}, Landroid/content/pm/PackageHideManager;->readAppHideConfig()V

    .line 100
    sget-object v0, Landroid/content/pm/PackageHideManager;->appHideConfig:Landroid/content/pm/PackageHideManager$AppHideConfig;

    if-nez v0, :cond_1

    .line 101
    new-instance v0, Landroid/content/pm/PackageHideManager$AppHideConfig;

    invoke-direct {v0}, Landroid/content/pm/PackageHideManager$AppHideConfig;-><init>()V

    sput-object v0, Landroid/content/pm/PackageHideManager;->appHideConfig:Landroid/content/pm/PackageHideManager$AppHideConfig;

    .line 102
    sget-object v0, Landroid/content/pm/PackageHideManager;->appHideConfig:Landroid/content/pm/PackageHideManager$AppHideConfig;

    iput-boolean v3, v0, Landroid/content/pm/PackageHideManager$AppHideConfig;->isFunctionOpen:Z

    .line 103
    sget-object v0, Landroid/content/pm/PackageHideManager;->appHideConfig:Landroid/content/pm/PackageHideManager$AppHideConfig;

    iput-boolean v3, v0, Landroid/content/pm/PackageHideManager$AppHideConfig;->isHide:Z

    .line 104
    sget-object v0, Landroid/content/pm/PackageHideManager;->appHideConfig:Landroid/content/pm/PackageHideManager$AppHideConfig;

    iput v2, v0, Landroid/content/pm/PackageHideManager$AppHideConfig;->version:I

    .line 106
    :cond_1
    if-eqz p1, :cond_3

    .line 107
    sget-object v0, Landroid/content/pm/PackageHideManager;->appHideConfig:Landroid/content/pm/PackageHideManager$AppHideConfig;

    iput-boolean v4, v0, Landroid/content/pm/PackageHideManager$AppHideConfig;->isFunctionOpen:Z

    .line 108
    sget-object v0, Landroid/content/pm/PackageHideManager;->appHideConfig:Landroid/content/pm/PackageHideManager$AppHideConfig;

    iput-boolean v4, v0, Landroid/content/pm/PackageHideManager$AppHideConfig;->isHide:Z

    .line 109
    invoke-direct {p0}, Landroid/content/pm/PackageHideManager;->initHideApks()V

    .line 110
    invoke-direct {p0}, Landroid/content/pm/PackageHideManager;->writeAppHideConfig()Z

    .line 94
    :cond_2
    :goto_0
    return-void

    .line 111
    :cond_3
    sget-object v0, Landroid/content/pm/PackageHideManager;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 113
    sget-object v0, Landroid/content/pm/PackageHideManager;->appHideConfig:Landroid/content/pm/PackageHideManager$AppHideConfig;

    iget v0, v0, Landroid/content/pm/PackageHideManager$AppHideConfig;->version:I

    if-eq v0, v2, :cond_2

    .line 114
    sget-object v0, Landroid/content/pm/PackageHideManager;->appHideConfig:Landroid/content/pm/PackageHideManager$AppHideConfig;

    iput v2, v0, Landroid/content/pm/PackageHideManager$AppHideConfig;->version:I

    .line 115
    invoke-direct {p0}, Landroid/content/pm/PackageHideManager;->initHideApks()V

    .line 116
    invoke-direct {p0}, Landroid/content/pm/PackageHideManager;->writeAppHideConfig()Z

    goto :goto_0
.end method

.method private initHideApks()V
    .locals 9

    .prologue
    .line 287
    iget-object v4, p0, Landroid/content/pm/PackageHideManager;->mShouldHideApks:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 288
    const-string/jumbo v4, "hidden_app_packagename_list"

    invoke-static {v4}, Lmiui/util/FeatureParser;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 289
    .local v3, "pkgNameList":[Ljava/lang/String;
    const-string/jumbo v4, "hidden_app_path_list"

    invoke-static {v4}, Lmiui/util/FeatureParser;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 290
    .local v0, "appPathList":[Ljava/lang/String;
    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    array-length v4, v3

    array-length v5, v0

    if-ne v4, v5, :cond_0

    .line 291
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_0

    .line 292
    aget-object v4, v0, v1

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 293
    .local v2, "paths":[Ljava/lang/String;
    iget-object v4, p0, Landroid/content/pm/PackageHideManager;->mShouldHideApks:Ljava/util/Map;

    aget-object v5, v3, v1

    new-instance v6, Landroid/content/pm/PackageHideManager$AppHideItem;

    aget-object v7, v3, v1

    const/4 v8, 0x1

    invoke-direct {v6, v7, v8, v2}, Landroid/content/pm/PackageHideManager$AppHideItem;-><init>(Ljava/lang/String;Z[Ljava/lang/String;)V

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 286
    .end local v1    # "i":I
    .end local v2    # "paths":[Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private isSystemServer()Z
    .locals 2

    .prologue
    .line 283
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isValidDevice()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 419
    const-string/jumbo v1, "support_app_hiding"

    invoke-static {v1, v0}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 420
    sget-boolean v0, Lmiui/os/Build;->IS_CM_CUSTOMIZATION:Z

    .line 419
    :cond_0
    return v0
.end method

.method private moveToNextStartTag(Lorg/xmlpull/v1/XmlPullParser;)Z
    .locals 4
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 268
    if-nez p1, :cond_0

    .line 269
    return v1

    .line 272
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .local v0, "type":I
    if-eq v0, v3, :cond_1

    .line 273
    if-ne v0, v2, :cond_0

    .line 276
    :cond_1
    if-eq v0, v3, :cond_2

    .line 277
    return v1

    .line 279
    :cond_2
    return v2
.end method

.method private readAppHideConfig()V
    .locals 21

    .prologue
    .line 198
    sget-object v17, Landroid/content/pm/PackageHideManager;->mFile:Ljava/io/File;

    if-nez v17, :cond_0

    .line 199
    return-void

    .line 201
    :cond_0
    sget-object v17, Landroid/content/pm/PackageHideManager;->TAG:Ljava/lang/String;

    const-string/jumbo v18, "start readAppHideConfig()"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    sget-object v18, Landroid/content/pm/PackageHideManager;->mFile:Ljava/io/File;

    monitor-enter v18

    .line 203
    const/4 v14, 0x0

    .line 205
    .local v14, "stream":Ljava/io/InputStream;
    :try_start_0
    invoke-direct/range {p0 .. p0}, Landroid/content/pm/PackageHideManager;->isSystemServer()Z

    move-result v17

    if-eqz v17, :cond_4

    .line 206
    new-instance v15, Ljava/io/FileInputStream;

    sget-object v17, Landroid/content/pm/PackageHideManager;->mFile:Ljava/io/File;

    move-object/from16 v0, v17

    invoke-direct {v15, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .local v15, "stream":Ljava/io/InputStream;
    move-object v14, v15

    .line 214
    .end local v15    # "stream":Ljava/io/InputStream;
    .local v14, "stream":Ljava/io/InputStream;
    :goto_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v12

    .line 215
    .local v12, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-interface {v12, v14, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 216
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Landroid/content/pm/PackageHideManager;->moveToNextStartTag(Lorg/xmlpull/v1/XmlPullParser;)Z

    .line 217
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v16

    .line 218
    .local v16, "tagName":Ljava/lang/String;
    const-string/jumbo v17, "app-hide"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 219
    new-instance v17, Landroid/content/pm/PackageHideManager$AppHideConfig;

    invoke-direct/range {v17 .. v17}, Landroid/content/pm/PackageHideManager$AppHideConfig;-><init>()V

    sput-object v17, Landroid/content/pm/PackageHideManager;->appHideConfig:Landroid/content/pm/PackageHideManager$AppHideConfig;

    .line 220
    sget-object v17, Landroid/content/pm/PackageHideManager;->appHideConfig:Landroid/content/pm/PackageHideManager$AppHideConfig;

    .line 221
    const-string/jumbo v19, "isFunctionOpen"

    const/16 v20, 0x0

    .line 220
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v17

    iput-boolean v0, v1, Landroid/content/pm/PackageHideManager$AppHideConfig;->isFunctionOpen:Z

    .line 222
    sget-object v17, Landroid/content/pm/PackageHideManager;->appHideConfig:Landroid/content/pm/PackageHideManager$AppHideConfig;

    .line 223
    const-string/jumbo v19, "version"

    .line 222
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v17

    iput v0, v1, Landroid/content/pm/PackageHideManager$AppHideConfig;->version:I

    .line 224
    sget-object v17, Landroid/content/pm/PackageHideManager;->appHideConfig:Landroid/content/pm/PackageHideManager$AppHideConfig;

    .line 225
    const-string/jumbo v19, "isHide"

    .line 224
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v17

    iput-boolean v0, v1, Landroid/content/pm/PackageHideManager$AppHideConfig;->isHide:Z

    .line 227
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Landroid/content/pm/PackageHideManager;->moveToNextStartTag(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 228
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v16

    .line 229
    const-string/jumbo v17, "item"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 230
    const-string/jumbo v17, "package"

    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 231
    .local v11, "packageName":Ljava/lang/String;
    const-string/jumbo v17, "path"

    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 233
    .local v13, "path":Ljava/lang/String;
    const-string/jumbo v17, "isHide"

    .line 232
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 234
    .local v10, "isHide":Z
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_2

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 238
    :cond_2
    :goto_2
    sget-object v17, Landroid/content/pm/PackageHideManager;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "read item: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, ": "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 241
    .end local v10    # "isHide":Z
    .end local v11    # "packageName":Ljava/lang/String;
    .end local v12    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v13    # "path":Ljava/lang/String;
    .end local v14    # "stream":Ljava/io/InputStream;
    .end local v16    # "tagName":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 242
    .local v5, "e":Ljava/lang/IllegalStateException;
    :try_start_1
    sget-object v17, Landroid/content/pm/PackageHideManager;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Failed parsing "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 257
    if-eqz v14, :cond_3

    .line 258
    :try_start_2
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_e
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .end local v5    # "e":Ljava/lang/IllegalStateException;
    :cond_3
    :goto_3
    monitor-exit v18

    .line 197
    return-void

    .line 208
    .local v14, "stream":Ljava/io/InputStream;
    :cond_4
    :try_start_3
    sget-object v17, Landroid/content/pm/PackageHideManager;->mFile:Ljava/io/File;

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/miui/Shell;->readByteArray(Ljava/lang/String;)[B
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_a
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v2

    .line 209
    .local v2, "bytes":[B
    if-nez v2, :cond_5

    monitor-exit v18

    .line 210
    return-void

    .line 212
    :cond_5
    :try_start_4
    new-instance v15, Ljava/io/ByteArrayInputStream;

    invoke-direct {v15, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .restart local v15    # "stream":Ljava/io/InputStream;
    move-object v14, v15

    .end local v15    # "stream":Ljava/io/InputStream;
    .local v14, "stream":Ljava/io/InputStream;
    goto/16 :goto_0

    .line 235
    .end local v2    # "bytes":[B
    .restart local v10    # "isHide":Z
    .restart local v11    # "packageName":Ljava/lang/String;
    .restart local v12    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v13    # "path":Ljava/lang/String;
    .restart local v16    # "tagName":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageHideManager;->mShouldHideApks:Ljava/util/Map;

    move-object/from16 v17, v0

    new-instance v19, Landroid/content/pm/PackageHideManager$AppHideItem;

    .line 236
    const-string/jumbo v20, ";"

    move-object/from16 v0, v20

    invoke-static {v13, v0}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    .line 235
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v0, v11, v10, v1}, Landroid/content/pm/PackageHideManager$AppHideItem;-><init>(Ljava/lang/String;Z[Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-interface {v0, v11, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_a
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_2

    .line 243
    .end local v10    # "isHide":Z
    .end local v11    # "packageName":Ljava/lang/String;
    .end local v12    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v13    # "path":Ljava/lang/String;
    .end local v14    # "stream":Ljava/io/InputStream;
    .end local v16    # "tagName":Ljava/lang/String;
    :catch_1
    move-exception v7

    .line 244
    .local v7, "e":Ljava/lang/NullPointerException;
    :try_start_5
    sget-object v17, Landroid/content/pm/PackageHideManager;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Failed parsing "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 257
    if-eqz v14, :cond_3

    .line 258
    :try_start_6
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_3

    .line 260
    :catch_2
    move-exception v3

    .local v3, "e":Ljava/io/IOException;
    goto :goto_3

    .line 257
    .end local v3    # "e":Ljava/io/IOException;
    .end local v7    # "e":Ljava/lang/NullPointerException;
    .restart local v12    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v14    # "stream":Ljava/io/InputStream;
    .restart local v16    # "tagName":Ljava/lang/String;
    :cond_7
    if-eqz v14, :cond_3

    .line 258
    :try_start_7
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_3

    .line 260
    :catch_3
    move-exception v3

    .restart local v3    # "e":Ljava/io/IOException;
    goto :goto_3

    .line 253
    .end local v3    # "e":Ljava/io/IOException;
    .end local v12    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v14    # "stream":Ljava/io/InputStream;
    .end local v16    # "tagName":Ljava/lang/String;
    :catch_4
    move-exception v4

    .line 254
    .local v4, "e":Ljava/lang/Exception;
    :try_start_8
    sget-object v17, Landroid/content/pm/PackageHideManager;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Failed parsing "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 257
    if-eqz v14, :cond_3

    .line 258
    :try_start_9
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto/16 :goto_3

    .line 260
    :catch_5
    move-exception v3

    .restart local v3    # "e":Ljava/io/IOException;
    goto/16 :goto_3

    .line 251
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_6
    move-exception v6

    .line 252
    .local v6, "e":Ljava/lang/IndexOutOfBoundsException;
    :try_start_a
    sget-object v17, Landroid/content/pm/PackageHideManager;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Failed parsing "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 257
    if-eqz v14, :cond_3

    .line 258
    :try_start_b
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto/16 :goto_3

    .line 260
    :catch_7
    move-exception v3

    .restart local v3    # "e":Ljava/io/IOException;
    goto/16 :goto_3

    .line 249
    .end local v3    # "e":Ljava/io/IOException;
    .end local v6    # "e":Ljava/lang/IndexOutOfBoundsException;
    :catch_8
    move-exception v3

    .line 250
    .restart local v3    # "e":Ljava/io/IOException;
    :try_start_c
    sget-object v17, Landroid/content/pm/PackageHideManager;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Failed parsing "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 257
    if-eqz v14, :cond_3

    .line 258
    :try_start_d
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_9
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto/16 :goto_3

    .line 260
    :catch_9
    move-exception v3

    goto/16 :goto_3

    .line 247
    .end local v3    # "e":Ljava/io/IOException;
    :catch_a
    move-exception v9

    .line 248
    .local v9, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_e
    sget-object v17, Landroid/content/pm/PackageHideManager;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Failed parsing "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 257
    if-eqz v14, :cond_3

    .line 258
    :try_start_f
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_b
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    goto/16 :goto_3

    .line 260
    :catch_b
    move-exception v3

    .restart local v3    # "e":Ljava/io/IOException;
    goto/16 :goto_3

    .line 245
    .end local v3    # "e":Ljava/io/IOException;
    .end local v9    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_c
    move-exception v8

    .line 246
    .local v8, "e":Ljava/lang/NumberFormatException;
    :try_start_10
    sget-object v17, Landroid/content/pm/PackageHideManager;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Failed parsing "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 257
    if-eqz v14, :cond_3

    .line 258
    :try_start_11
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_d
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    goto/16 :goto_3

    .line 260
    :catch_d
    move-exception v3

    .restart local v3    # "e":Ljava/io/IOException;
    goto/16 :goto_3

    .end local v3    # "e":Ljava/io/IOException;
    .end local v8    # "e":Ljava/lang/NumberFormatException;
    .restart local v5    # "e":Ljava/lang/IllegalStateException;
    :catch_e
    move-exception v3

    .restart local v3    # "e":Ljava/io/IOException;
    goto/16 :goto_3

    .line 255
    .end local v3    # "e":Ljava/io/IOException;
    .end local v5    # "e":Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v17

    .line 257
    if-eqz v14, :cond_8

    .line 258
    :try_start_12
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_f
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    .line 255
    :cond_8
    :goto_4
    :try_start_13
    throw v17
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    .line 202
    :catchall_1
    move-exception v17

    monitor-exit v18

    throw v17

    .line 260
    :catch_f
    move-exception v3

    .restart local v3    # "e":Ljava/io/IOException;
    goto :goto_4
.end method

.method private writeAppHideConfig()Z
    .locals 14

    .prologue
    const/4 v11, 0x0

    .line 129
    sget-object v10, Landroid/content/pm/PackageHideManager;->mFile:Ljava/io/File;

    if-nez v10, :cond_0

    .line 130
    return v11

    .line 132
    :cond_0
    sget-object v10, Landroid/content/pm/PackageHideManager;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "start writeAppHideConfig()"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    const/4 v7, 0x0

    .line 134
    .local v7, "stream":Ljava/io/OutputStream;
    const/4 v6, 0x1

    .line 135
    .local v6, "result":Z
    invoke-direct {p0}, Landroid/content/pm/PackageHideManager;->isSystemServer()Z

    move-result v10

    if-eqz v10, :cond_4

    sget-object v10, Landroid/content/pm/PackageHideManager;->mFile:Ljava/io/File;

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    .line 138
    .local v9, "tmpPath":Ljava/lang/String;
    :goto_0
    :try_start_0
    invoke-direct {p0}, Landroid/content/pm/PackageHideManager;->isSystemServer()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 139
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .local v8, "stream":Ljava/io/OutputStream;
    move-object v7, v8

    .line 144
    .end local v8    # "stream":Ljava/io/OutputStream;
    .local v7, "stream":Ljava/io/OutputStream;
    :goto_1
    new-instance v5, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v5}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 145
    .local v5, "out":Lorg/xmlpull/v1/XmlSerializer;
    const-string/jumbo v10, "utf-8"

    invoke-interface {v5, v7, v10}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 146
    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {v5, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 147
    const-string/jumbo v10, "app-hide"

    const/4 v11, 0x0

    invoke-interface {v5, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 149
    const-string/jumbo v10, "isFunctionOpen"

    sget-object v11, Landroid/content/pm/PackageHideManager;->appHideConfig:Landroid/content/pm/PackageHideManager$AppHideConfig;

    iget-boolean v11, v11, Landroid/content/pm/PackageHideManager$AppHideConfig;->isFunctionOpen:Z

    invoke-static {v11}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-interface {v5, v12, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 150
    const-string/jumbo v10, "version"

    sget-object v11, Landroid/content/pm/PackageHideManager;->appHideConfig:Landroid/content/pm/PackageHideManager$AppHideConfig;

    iget v11, v11, Landroid/content/pm/PackageHideManager$AppHideConfig;->version:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-interface {v5, v12, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 151
    const-string/jumbo v10, "isHide"

    sget-object v11, Landroid/content/pm/PackageHideManager;->appHideConfig:Landroid/content/pm/PackageHideManager$AppHideConfig;

    iget-boolean v11, v11, Landroid/content/pm/PackageHideManager$AppHideConfig;->isHide:Z

    invoke-static {v11}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-interface {v5, v12, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 153
    iget-object v10, p0, Landroid/content/pm/PackageHideManager;->mShouldHideApks:Ljava/util/Map;

    if-eqz v10, :cond_6

    .line 154
    iget-object v10, p0, Landroid/content/pm/PackageHideManager;->mShouldHideApks:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "item$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageHideManager$AppHideItem;

    .line 155
    .local v3, "item":Landroid/content/pm/PackageHideManager$AppHideItem;
    iget-object v10, v3, Landroid/content/pm/PackageHideManager$AppHideItem;->packageName:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 156
    invoke-virtual {v3}, Landroid/content/pm/PackageHideManager$AppHideItem;->getJoinPath()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    .line 155
    if-nez v10, :cond_1

    .line 159
    const-string/jumbo v10, "item"

    const/4 v11, 0x0

    invoke-interface {v5, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 160
    const-string/jumbo v10, "package"

    iget-object v11, v3, Landroid/content/pm/PackageHideManager$AppHideItem;->packageName:Ljava/lang/String;

    const/4 v12, 0x0

    invoke-interface {v5, v12, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 161
    const-string/jumbo v10, "path"

    invoke-virtual {v3}, Landroid/content/pm/PackageHideManager$AppHideItem;->getJoinPath()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-interface {v5, v12, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 162
    const-string/jumbo v10, "isHide"

    iget-boolean v11, v3, Landroid/content/pm/PackageHideManager$AppHideItem;->isHide:Z

    invoke-static {v11}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-interface {v5, v12, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 163
    const-string/jumbo v10, "item"

    const/4 v11, 0x0

    invoke-interface {v5, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 172
    .end local v3    # "item":Landroid/content/pm/PackageHideManager$AppHideItem;
    .end local v4    # "item$iterator":Ljava/util/Iterator;
    .end local v5    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v7    # "stream":Ljava/io/OutputStream;
    :catch_0
    move-exception v2

    .line 173
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    sget-object v10, Landroid/content/pm/PackageHideManager;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "Failed to write state, restoring backup."

    invoke-static {v10, v11, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 174
    const/4 v6, 0x0

    .line 176
    if-eqz v7, :cond_2

    .line 178
    :try_start_2
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 184
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v6    # "result":Z
    :cond_2
    :goto_3
    if-eqz v6, :cond_3

    invoke-direct {p0}, Landroid/content/pm/PackageHideManager;->isSystemServer()Z

    move-result v10

    if-eqz v10, :cond_9

    .line 194
    :cond_3
    :goto_4
    return v6

    .line 135
    .end local v9    # "tmpPath":Ljava/lang/String;
    .restart local v6    # "result":Z
    .local v7, "stream":Ljava/io/OutputStream;
    :cond_4
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Landroid/content/pm/PackageHideManager;->mFile:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 136
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 135
    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 136
    const-string/jumbo v11, "_.bak"

    .line 135
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .restart local v9    # "tmpPath":Ljava/lang/String;
    goto/16 :goto_0

    .line 141
    :cond_5
    :try_start_3
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .restart local v8    # "stream":Ljava/io/OutputStream;
    move-object v7, v8

    .end local v8    # "stream":Ljava/io/OutputStream;
    .local v7, "stream":Ljava/io/OutputStream;
    goto/16 :goto_1

    .line 166
    .restart local v5    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :cond_6
    const-string/jumbo v10, "app-hide"

    const/4 v11, 0x0

    invoke-interface {v5, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 167
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 168
    invoke-direct {p0}, Landroid/content/pm/PackageHideManager;->isSystemServer()Z

    move-result v10

    if-nez v10, :cond_7

    .line 170
    move-object v0, v7

    check-cast v0, Ljava/io/ByteArrayOutputStream;

    move-object v10, v0

    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    .line 169
    const/4 v11, 0x0

    invoke-static {v9, v11, v10}, Landroid/miui/Shell;->writeByteArray(Ljava/lang/String;Z[B)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v6

    .line 176
    .end local v6    # "result":Z
    :cond_7
    if-eqz v7, :cond_2

    .line 178
    :try_start_4
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    .line 179
    :catch_1
    move-exception v2

    .line 180
    .end local v5    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v7    # "stream":Ljava/io/OutputStream;
    .restart local v2    # "e":Ljava/lang/Exception;
    :goto_5
    const/4 v6, 0x0

    .restart local v6    # "result":Z
    goto :goto_3

    .line 179
    :catch_2
    move-exception v2

    goto :goto_5

    .line 175
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v10

    .line 176
    if-eqz v7, :cond_8

    .line 178
    :try_start_5
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 175
    :cond_8
    :goto_6
    throw v10

    .line 179
    :catch_3
    move-exception v2

    .line 180
    .restart local v2    # "e":Ljava/lang/Exception;
    const/4 v6, 0x0

    goto :goto_6

    .line 186
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v6    # "result":Z
    :cond_9
    :try_start_6
    sget-object v11, Landroid/content/pm/PackageHideManager;->mFile:Ljava/io/File;

    monitor-enter v11
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 187
    :try_start_7
    sget-object v10, Landroid/content/pm/PackageHideManager;->mFile:Ljava/io/File;

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/miui/Shell;->move(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-result v6

    .local v6, "result":Z
    :try_start_8
    monitor-exit v11
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_4

    .line 189
    .end local v6    # "result":Z
    :catch_4
    move-exception v2

    .line 190
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-static {v9}, Landroid/miui/Shell;->remove(Ljava/lang/String;)Z

    .line 191
    const/4 v6, 0x0

    .local v6, "result":Z
    goto :goto_4

    .line 186
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v6    # "result":Z
    :catchall_1
    move-exception v10

    :try_start_9
    monitor-exit v11

    throw v10
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4
.end method


# virtual methods
.method public getIgnoreApkPathList()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 337
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 338
    .local v3, "pathList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/content/pm/PackageHideManager;->isAppHide()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 339
    iget-object v4, p0, Landroid/content/pm/PackageHideManager;->mShouldHideApks:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "item$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageHideManager$AppHideItem;

    .line 340
    .local v0, "item":Landroid/content/pm/PackageHideManager$AppHideItem;
    iget-boolean v4, v0, Landroid/content/pm/PackageHideManager$AppHideItem;->isHide:Z

    if-eqz v4, :cond_0

    iget-object v4, v0, Landroid/content/pm/PackageHideManager$AppHideItem;->pathArray:[Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 341
    iget-object v5, v0, Landroid/content/pm/PackageHideManager$AppHideItem;->pathArray:[Ljava/lang/String;

    const/4 v4, 0x0

    array-length v6, v5

    :goto_0
    if-ge v4, v6, :cond_0

    aget-object v2, v5, v4

    .line 342
    .local v2, "path":Ljava/lang/String;
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 341
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 347
    .end local v0    # "item":Landroid/content/pm/PackageHideManager$AppHideItem;
    .end local v1    # "item$iterator":Ljava/util/Iterator;
    .end local v2    # "path":Ljava/lang/String;
    :cond_1
    return-object v3
.end method

.method public getIgnoreApkPkgNameList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 351
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 352
    .local v3, "pkgNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v4, p0, Landroid/content/pm/PackageHideManager;->mShouldHideApks:Ljava/util/Map;

    if-eqz v4, :cond_0

    .line 353
    iget-object v4, p0, Landroid/content/pm/PackageHideManager;->mShouldHideApks:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 354
    .local v0, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "pkg$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 355
    .local v1, "pkg":Ljava/lang/String;
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 358
    .end local v0    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v1    # "pkg":Ljava/lang/String;
    .end local v2    # "pkg$iterator":Ljava/util/Iterator;
    :cond_0
    return-object v3
.end method

.method public isAppHide()Z
    .locals 1

    .prologue
    .line 400
    invoke-static {}, Landroid/content/pm/PackageHideManager;->isValidDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/content/pm/PackageHideManager;->appHideConfig:Landroid/content/pm/PackageHideManager$AppHideConfig;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/content/pm/PackageHideManager;->appHideConfig:Landroid/content/pm/PackageHideManager$AppHideConfig;

    iget-boolean v0, v0, Landroid/content/pm/PackageHideManager$AppHideConfig;->isFunctionOpen:Z

    if-eqz v0, :cond_0

    .line 401
    sget-object v0, Landroid/content/pm/PackageHideManager;->appHideConfig:Landroid/content/pm/PackageHideManager$AppHideConfig;

    iget-boolean v0, v0, Landroid/content/pm/PackageHideManager$AppHideConfig;->isHide:Z

    .line 400
    if-eqz v0, :cond_0

    .line 402
    const/4 v0, 0x1

    return v0

    .line 404
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isAppHide(Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 408
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/content/pm/PackageHideManager;->isAppHide()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 411
    iget-object v1, p0, Landroid/content/pm/PackageHideManager;->mShouldHideApks:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageHideManager$AppHideItem;

    .line 412
    .local v0, "item":Landroid/content/pm/PackageHideManager$AppHideItem;
    if-eqz v0, :cond_1

    iget-boolean v1, v0, Landroid/content/pm/PackageHideManager$AppHideItem;->isHide:Z

    if-eqz v1, :cond_1

    .line 413
    const/4 v1, 0x1

    return v1

    .line 409
    .end local v0    # "item":Landroid/content/pm/PackageHideManager$AppHideItem;
    :cond_0
    return v2

    .line 415
    .restart local v0    # "item":Landroid/content/pm/PackageHideManager$AppHideItem;
    :cond_1
    return v2
.end method

.method public isFunctionOpen()Z
    .locals 1

    .prologue
    .line 393
    invoke-static {}, Landroid/content/pm/PackageHideManager;->isValidDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/content/pm/PackageHideManager;->appHideConfig:Landroid/content/pm/PackageHideManager$AppHideConfig;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/content/pm/PackageHideManager;->appHideConfig:Landroid/content/pm/PackageHideManager$AppHideConfig;

    iget-boolean v0, v0, Landroid/content/pm/PackageHideManager$AppHideConfig;->isFunctionOpen:Z

    if-eqz v0, :cond_0

    .line 394
    const/4 v0, 0x1

    return v0

    .line 396
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setHideApp(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "hide"    # Z

    .prologue
    const/4 v6, 0x0

    .line 316
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Landroid/content/pm/PackageHideManager;->isValidDevice()Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Landroid/content/pm/PackageHideManager;->appHideConfig:Landroid/content/pm/PackageHideManager$AppHideConfig;

    if-nez v3, :cond_1

    .line 317
    :cond_0
    return v6

    .line 319
    :cond_1
    iget-object v3, p0, Landroid/content/pm/PackageHideManager;->mShouldHideApks:Ljava/util/Map;

    invoke-interface {v3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageHideManager$AppHideItem;

    .line 320
    .local v1, "item":Landroid/content/pm/PackageHideManager$AppHideItem;
    if-eqz v1, :cond_3

    iget-boolean v3, v1, Landroid/content/pm/PackageHideManager$AppHideItem;->isHide:Z

    if-eq v3, p3, :cond_3

    .line 321
    iput-boolean p3, v1, Landroid/content/pm/PackageHideManager$AppHideItem;->isHide:Z

    .line 322
    if-nez p3, :cond_2

    .line 323
    invoke-direct {p0, p1, v1}, Landroid/content/pm/PackageHideManager;->clearUserAleadyInstalled(Landroid/content/Context;Landroid/content/pm/PackageHideManager$AppHideItem;)V

    .line 326
    :cond_2
    :try_start_0
    const-string/jumbo v3, "security"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/security/SecurityManager;

    .line 327
    .local v2, "sm":Lmiui/security/SecurityManager;
    invoke-virtual {v2, p3}, Lmiui/security/SecurityManager;->writeAppHideConfig(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 328
    .end local v2    # "sm":Lmiui/security/SecurityManager;
    :catch_0
    move-exception v0

    .line 329
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Landroid/content/pm/PackageHideManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Failed to writeAppHideConfig: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    return v6

    .line 333
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    return v6
.end method

.method public setHideApp(Landroid/content/Context;Z)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hide"    # Z

    .prologue
    const/4 v5, 0x0

    .line 299
    invoke-static {}, Landroid/content/pm/PackageHideManager;->isValidDevice()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Landroid/content/pm/PackageHideManager;->appHideConfig:Landroid/content/pm/PackageHideManager$AppHideConfig;

    if-nez v2, :cond_1

    .line 300
    :cond_0
    return v5

    .line 299
    :cond_1
    sget-object v2, Landroid/content/pm/PackageHideManager;->appHideConfig:Landroid/content/pm/PackageHideManager$AppHideConfig;

    iget-boolean v2, v2, Landroid/content/pm/PackageHideManager$AppHideConfig;->isHide:Z

    if-eq v2, p2, :cond_0

    .line 302
    sget-object v2, Landroid/content/pm/PackageHideManager;->appHideConfig:Landroid/content/pm/PackageHideManager$AppHideConfig;

    iput-boolean p2, v2, Landroid/content/pm/PackageHideManager$AppHideConfig;->isHide:Z

    .line 303
    if-nez p2, :cond_2

    .line 304
    invoke-direct {p0, p1}, Landroid/content/pm/PackageHideManager;->clearUserAleadyInstalled(Landroid/content/Context;)V

    .line 307
    :cond_2
    :try_start_0
    const-string/jumbo v2, "security"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/security/SecurityManager;

    .line 308
    .local v1, "sm":Lmiui/security/SecurityManager;
    invoke-virtual {v1, p2}, Lmiui/security/SecurityManager;->writeAppHideConfig(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 309
    .end local v1    # "sm":Lmiui/security/SecurityManager;
    :catch_0
    move-exception v0

    .line 310
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Landroid/content/pm/PackageHideManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to writeAppHideConfig: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    return v5
.end method

.method public writeAppHideConfig(Z)Z
    .locals 1
    .param p1, "hide"    # Z

    .prologue
    .line 121
    sget-object v0, Landroid/content/pm/PackageHideManager;->mFile:Ljava/io/File;

    if-nez v0, :cond_0

    .line 122
    const/4 v0, 0x0

    return v0

    .line 124
    :cond_0
    sget-object v0, Landroid/content/pm/PackageHideManager;->appHideConfig:Landroid/content/pm/PackageHideManager$AppHideConfig;

    iput-boolean p1, v0, Landroid/content/pm/PackageHideManager$AppHideConfig;->isHide:Z

    .line 125
    invoke-direct {p0}, Landroid/content/pm/PackageHideManager;->writeAppHideConfig()Z

    move-result v0

    return v0
.end method
