.class public Lcom/baidu/mobstat/CooperService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/mobstat/ICooperService;


# static fields
.field private static a:Lcom/baidu/mobstat/CooperService;


# instance fields
.field private b:Lcom/baidu/mobstat/HeadObject;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lcom/baidu/mobstat/HeadObject;

    invoke-direct {v0}, Lcom/baidu/mobstat/HeadObject;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    return-void
.end method

.method private static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 98
    invoke-static {p0}, Lcom/baidu/mobstat/ff;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 99
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 103
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v1, ":"

    const-string/jumbo v2, ""

    .line 100
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 2

    .prologue
    .line 167
    if-nez p2, :cond_0

    .line 170
    invoke-static {p1}, Lcom/baidu/mobstat/CooperService;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 173
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 177
    :goto_1
    return-object v0

    .line 168
    :cond_0
    invoke-static {p1}, Lcom/baidu/mobstat/CooperService;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string/jumbo v0, ""

    goto :goto_1
.end method

.method private static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 107
    invoke-static {p0}, Lcom/baidu/mobstat/ff;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 108
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 112
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v1, ":"

    const-string/jumbo v2, ""

    .line 109
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 116
    invoke-static {p0}, Lcom/baidu/mobstat/ff;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 117
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 121
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v1, ":"

    const-string/jumbo v2, ""

    .line 118
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private d(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 342
    invoke-static {}, Lcom/baidu/mobstat/BasicStoreTools;->getInstance()Lcom/baidu/mobstat/BasicStoreTools;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/BasicStoreTools;->getGenerateDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 343
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 344
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 345
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "hol"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 346
    invoke-static {}, Lcom/baidu/mobstat/BasicStoreTools;->getInstance()Lcom/baidu/mobstat/BasicStoreTools;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/baidu/mobstat/BasicStoreTools;->setGenerateDeviceId(Landroid/content/Context;Ljava/lang/String;)V

    .line 349
    :goto_0
    return-object v0

    :cond_1
    const-string/jumbo v1, "000000000000000"

    .line 343
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0
.end method

.method private e(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 443
    :try_start_0
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget-object v0, v0, Lcom/baidu/mobstat/HeadObject;->l:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 444
    :cond_0
    invoke-static {}, Lcom/baidu/mobstat/BasicStoreTools;->getInstance()Lcom/baidu/mobstat/BasicStoreTools;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/BasicStoreTools;->getAppChannelWithCode(Landroid/content/Context;)Z

    move-result v0

    .line 445
    if-nez v0, :cond_3

    .line 450
    :goto_0
    if-nez v0, :cond_4

    .line 451
    :cond_1
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    const-string/jumbo v1, "BaiduMobAd_CHANNEL"

    invoke-static {p1, v1}, Lcom/baidu/mobstat/ff;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/mobstat/HeadObject;->l:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 459
    :goto_1
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget-object v0, v0, Lcom/baidu/mobstat/HeadObject;->l:Ljava/lang/String;

    return-object v0

    .line 443
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget-object v0, v0, Lcom/baidu/mobstat/HeadObject;->l:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 446
    :cond_3
    iget-object v1, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    invoke-static {}, Lcom/baidu/mobstat/BasicStoreTools;->getInstance()Lcom/baidu/mobstat/BasicStoreTools;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/baidu/mobstat/BasicStoreTools;->getAppChannelWithPreference(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/baidu/mobstat/HeadObject;->l:Ljava/lang/String;

    goto :goto_0

    .line 457
    :catch_0
    move-exception v0

    goto :goto_1

    .line 450
    :cond_4
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget-object v0, v0, Lcom/baidu/mobstat/HeadObject;->l:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget-object v0, v0, Lcom/baidu/mobstat/HeadObject;->l:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1
.end method

.method public static declared-synchronized instance()Lcom/baidu/mobstat/CooperService;
    .locals 2

    .prologue
    const-class v1, Lcom/baidu/mobstat/CooperService;

    monitor-enter v1

    .line 39
    :try_start_0
    sget-object v0, Lcom/baidu/mobstat/CooperService;->a:Lcom/baidu/mobstat/CooperService;

    if-eqz v0, :cond_0

    .line 43
    :goto_0
    sget-object v0, Lcom/baidu/mobstat/CooperService;->a:Lcom/baidu/mobstat/CooperService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 40
    :cond_0
    :try_start_1
    new-instance v0, Lcom/baidu/mobstat/CooperService;

    invoke-direct {v0}, Lcom/baidu/mobstat/CooperService;-><init>()V

    sput-object v0, Lcom/baidu/mobstat/CooperService;->a:Lcom/baidu/mobstat/CooperService;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public checkCellLocationSetting(Landroid/content/Context;)Z
    .locals 2

    .prologue
    const-string/jumbo v0, ""

    const-string/jumbo v0, "BaiduMobAd_CELL_LOCATION"

    .line 597
    invoke-static {p1, v0}, Lcom/baidu/mobstat/ff;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    .line 600
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public checkGPSLocationSetting(Landroid/content/Context;)Z
    .locals 2

    .prologue
    const-string/jumbo v0, ""

    const-string/jumbo v0, "BaiduMobAd_GPS_LOCATION"

    .line 588
    invoke-static {p1, v0}, Lcom/baidu/mobstat/ff;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    .line 591
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public checkWifiLocationSetting(Landroid/content/Context;)Z
    .locals 2

    .prologue
    const-string/jumbo v0, ""

    const-string/jumbo v0, "BaiduMobAd_WIFI_LOCATION"

    .line 579
    invoke-static {p1, v0}, Lcom/baidu/mobstat/ff;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    .line 582
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public enableDeviceMac(Landroid/content/Context;Z)V
    .locals 1

    .prologue
    .line 620
    invoke-static {}, Lcom/baidu/mobstat/BasicStoreTools;->getInstance()Lcom/baidu/mobstat/BasicStoreTools;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/baidu/mobstat/BasicStoreTools;->setMacEnabledTrick(Landroid/content/Context;Z)V

    .line 621
    return-void
.end method

.method public getAppChannel(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 383
    invoke-direct {p0, p1}, Lcom/baidu/mobstat/CooperService;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 464
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget-object v0, v0, Lcom/baidu/mobstat/HeadObject;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 469
    :goto_0
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget-object v0, v0, Lcom/baidu/mobstat/HeadObject;->e:Ljava/lang/String;

    return-object v0

    .line 465
    :cond_0
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    const-string/jumbo v1, "BaiduMobAd_STAT_ID"

    invoke-static {p1, v1}, Lcom/baidu/mobstat/ff;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/mobstat/HeadObject;->e:Ljava/lang/String;

    goto :goto_0
.end method

.method public getAppVersionCode(Landroid/content/Context;)I
    .locals 2

    .prologue
    .line 480
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget v0, v0, Lcom/baidu/mobstat/HeadObject;->g:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 484
    :goto_0
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget v0, v0, Lcom/baidu/mobstat/HeadObject;->g:I

    return v0

    .line 481
    :cond_0
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    invoke-static {p1}, Lcom/baidu/mobstat/ff;->f(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Lcom/baidu/mobstat/HeadObject;->g:I

    goto :goto_0
.end method

.method public getAppVersionName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 488
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget-object v0, v0, Lcom/baidu/mobstat/HeadObject;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 492
    :goto_0
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget-object v0, v0, Lcom/baidu/mobstat/HeadObject;->h:Ljava/lang/String;

    return-object v0

    .line 489
    :cond_0
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    invoke-static {p1}, Lcom/baidu/mobstat/ff;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/mobstat/HeadObject;->h:Ljava/lang/String;

    goto :goto_0
.end method

.method public getCUID(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 218
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget-object v0, v0, Lcom/baidu/mobstat/HeadObject;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 236
    :goto_0
    if-nez p2, :cond_3

    .line 240
    :try_start_0
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget-object v0, v0, Lcom/baidu/mobstat/HeadObject;->f:Ljava/lang/String;

    .line 241
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    if-eqz v1, :cond_4

    .line 248
    :goto_1
    return-object v3

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    invoke-static {}, Lcom/baidu/mobstat/BasicStoreTools;->getInstance()Lcom/baidu/mobstat/BasicStoreTools;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/baidu/mobstat/BasicStoreTools;->getGenerateDeviceCUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/mobstat/HeadObject;->f:Ljava/lang/String;

    .line 220
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget-object v0, v0, Lcom/baidu/mobstat/HeadObject;->f:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 222
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    invoke-static {p1}, Lcom/baidu/mobstat/fh;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/mobstat/HeadObject;->f:Ljava/lang/String;

    const-string/jumbo v0, "\\s*|\t|\r|\n"

    .line 223
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 225
    iget-object v1, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget-object v1, v1, Lcom/baidu/mobstat/HeadObject;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 226
    iget-object v1, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/baidu/mobstat/HeadObject;->f:Ljava/lang/String;

    .line 228
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget-object v1, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget-object v1, v1, Lcom/baidu/mobstat/HeadObject;->f:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/baidu/mobstat/CooperService;->getSecretValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/mobstat/HeadObject;->f:Ljava/lang/String;

    .line 229
    invoke-static {}, Lcom/baidu/mobstat/BasicStoreTools;->getInstance()Lcom/baidu/mobstat/BasicStoreTools;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget-object v1, v1, Lcom/baidu/mobstat/HeadObject;->f:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/baidu/mobstat/BasicStoreTools;->setGenerateDeviceCUID(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 232
    :catch_0
    move-exception v0

    goto :goto_0

    :cond_2
    const-string/jumbo v0, ""

    .line 220
    iget-object v1, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget-object v1, v1, Lcom/baidu/mobstat/HeadObject;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 237
    :cond_3
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget-object v0, v0, Lcom/baidu/mobstat/HeadObject;->f:Ljava/lang/String;

    return-object v0

    .line 242
    :cond_4
    :try_start_2
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mobstat/ey;->a([B)[B

    move-result-object v0

    invoke-static {v2, v0}, Lcom/baidu/mobstat/ev$b;->b(I[B)[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-object v1

    .line 246
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public getDevicImei(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    const-string/jumbo v1, ""

    :try_start_0
    const-string/jumbo v0, "phone"

    .line 264
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 265
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 270
    :goto_0
    return-object v0

    .line 268
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method public getDeviceId(Landroid/telephony/TelephonyManager;Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 284
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget-object v0, v0, Lcom/baidu/mobstat/HeadObject;->i:Ljava/lang/String;

    .line 285
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 294
    invoke-static {}, Lcom/baidu/mobstat/BasicStoreTools;->getInstance()Lcom/baidu/mobstat/BasicStoreTools;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/baidu/mobstat/BasicStoreTools;->getForTV(Landroid/content/Context;)Z

    move-result v1

    .line 295
    if-nez v1, :cond_3

    .line 301
    if-eqz p1, :cond_4

    const-string/jumbo v1, "\\s*|\t|\r|\n"

    .line 305
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 307
    :try_start_0
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 308
    if-nez v2, :cond_5

    .line 317
    :goto_0
    if-nez v0, :cond_6

    .line 318
    :cond_0
    invoke-static {p2}, Lcom/baidu/mobstat/CooperService;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 321
    :goto_1
    invoke-static {p2}, Lcom/baidu/mobstat/ff;->w(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 331
    :goto_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 332
    :cond_1
    invoke-direct {p0, p2}, Lcom/baidu/mobstat/CooperService;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 335
    :goto_3
    iget-object v1, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iput-object v0, v1, Lcom/baidu/mobstat/HeadObject;->i:Ljava/lang/String;

    .line 336
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget-object v1, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget-object v1, v1, Lcom/baidu/mobstat/HeadObject;->i:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/baidu/mobstat/CooperService;->getSecretValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/mobstat/HeadObject;->i:Ljava/lang/String;

    .line 338
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget-object v0, v0, Lcom/baidu/mobstat/HeadObject;->i:Ljava/lang/String;

    return-object v0

    .line 286
    :cond_2
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget-object v0, v0, Lcom/baidu/mobstat/HeadObject;->i:Ljava/lang/String;

    return-object v0

    .line 296
    :cond_3
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    invoke-virtual {p0, p2}, Lcom/baidu/mobstat/CooperService;->getMacIdForTv(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/mobstat/HeadObject;->i:Ljava/lang/String;

    .line 297
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget-object v0, v0, Lcom/baidu/mobstat/HeadObject;->i:Ljava/lang/String;

    return-object v0

    .line 302
    :cond_4
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget-object v0, v0, Lcom/baidu/mobstat/HeadObject;->i:Ljava/lang/String;

    return-object v0

    .line 309
    :cond_5
    :try_start_1
    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    const-string/jumbo v2, ""

    .line 310
    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_0

    :cond_6
    const-string/jumbo v1, "000000000000000"

    .line 317
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 322
    :cond_7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 324
    :cond_8
    :try_start_2
    invoke-static {p2}, Lcom/baidu/mobstat/CooperService;->c(Landroid/content/Context;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    goto :goto_2

    :cond_9
    const-string/jumbo v1, "000000000000000"

    .line 322
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_2

    .line 327
    :catch_0
    move-exception v1

    goto :goto_2

    :cond_a
    const-string/jumbo v1, "000000000000000"

    .line 331
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_3

    .line 314
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public getHeadObject()Lcom/baidu/mobstat/HeadObject;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    return-object v0
.end method

.method public getHeaderExt(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 59
    invoke-static {}, Lcom/baidu/mobstat/BasicStoreTools;->getInstance()Lcom/baidu/mobstat/BasicStoreTools;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/BasicStoreTools;->getHeaderExt(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 61
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 62
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 70
    :goto_0
    return-object v0

    .line 64
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 67
    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/baidu/mobstat/Config;->LOG_SEND_URL:Ljava/lang/String;

    return-object v0
.end method

.method public getLinkedWay(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 532
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget-object v0, v0, Lcom/baidu/mobstat/HeadObject;->r:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 536
    :goto_0
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget-object v0, v0, Lcom/baidu/mobstat/HeadObject;->r:Ljava/lang/String;

    return-object v0

    .line 533
    :cond_0
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    invoke-static {p1}, Lcom/baidu/mobstat/ff;->r(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/mobstat/HeadObject;->r:Ljava/lang/String;

    goto :goto_0
.end method

.method public getMTJSDKVersion()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "3.9.0.6"

    .line 476
    return-object v0
.end method

.method public getMacAddress(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 3

    .prologue
    const-string/jumbo v0, "02:00:00:00:00:00"

    const-string/jumbo v1, ":"

    const-string/jumbo v2, ""

    .line 133
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 135
    if-eqz p2, :cond_2

    .line 140
    :cond_0
    iget-object v1, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget-object v1, v1, Lcom/baidu/mobstat/HeadObject;->s:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 144
    invoke-static {}, Lcom/baidu/mobstat/BasicStoreTools;->getInstance()Lcom/baidu/mobstat/BasicStoreTools;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/baidu/mobstat/BasicStoreTools;->getAppDeviceMac(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 145
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 150
    invoke-direct {p0, p1, p2}, Lcom/baidu/mobstat/CooperService;->a(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v1

    .line 153
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 161
    :cond_1
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    const-string/jumbo v1, ""

    iput-object v1, v0, Lcom/baidu/mobstat/HeadObject;->s:Ljava/lang/String;

    .line 162
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget-object v0, v0, Lcom/baidu/mobstat/HeadObject;->s:Ljava/lang/String;

    return-object v0

    .line 135
    :cond_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_0

    .line 136
    invoke-virtual {p0, v0}, Lcom/baidu/mobstat/CooperService;->getSecretValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 137
    return-object v0

    .line 141
    :cond_3
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget-object v0, v0, Lcom/baidu/mobstat/HeadObject;->s:Ljava/lang/String;

    return-object v0

    .line 146
    :cond_4
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iput-object v1, v0, Lcom/baidu/mobstat/HeadObject;->s:Ljava/lang/String;

    .line 147
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget-object v0, v0, Lcom/baidu/mobstat/HeadObject;->s:Ljava/lang/String;

    return-object v0

    .line 153
    :cond_5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 154
    invoke-virtual {p0, v1}, Lcom/baidu/mobstat/CooperService;->getSecretValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 156
    iget-object v1, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iput-object v0, v1, Lcom/baidu/mobstat/HeadObject;->s:Ljava/lang/String;

    .line 157
    invoke-static {}, Lcom/baidu/mobstat/BasicStoreTools;->getInstance()Lcom/baidu/mobstat/BasicStoreTools;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget-object v1, v1, Lcom/baidu/mobstat/HeadObject;->s:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/baidu/mobstat/BasicStoreTools;->setAppDeviceMac(Landroid/content/Context;Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget-object v0, v0, Lcom/baidu/mobstat/HeadObject;->s:Ljava/lang/String;

    return-object v0
.end method

.method public getMacIdForTv(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget-object v0, v0, Lcom/baidu/mobstat/HeadObject;->t:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    invoke-static {}, Lcom/baidu/mobstat/BasicStoreTools;->getInstance()Lcom/baidu/mobstat/BasicStoreTools;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/BasicStoreTools;->getAppDeviceMacTv(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 191
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 197
    invoke-static {v0, p1}, Lcom/baidu/mobstat/ff;->c(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 198
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 204
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    const-string/jumbo v1, ""

    iput-object v1, v0, Lcom/baidu/mobstat/HeadObject;->t:Ljava/lang/String;

    .line 205
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget-object v0, v0, Lcom/baidu/mobstat/HeadObject;->t:Ljava/lang/String;

    return-object v0

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget-object v0, v0, Lcom/baidu/mobstat/HeadObject;->t:Ljava/lang/String;

    return-object v0

    .line 192
    :cond_1
    iget-object v1, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iput-object v0, v1, Lcom/baidu/mobstat/HeadObject;->t:Ljava/lang/String;

    .line 193
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget-object v0, v0, Lcom/baidu/mobstat/HeadObject;->t:Ljava/lang/String;

    return-object v0

    .line 199
    :cond_2
    iget-object v1, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iput-object v0, v1, Lcom/baidu/mobstat/HeadObject;->t:Ljava/lang/String;

    .line 200
    invoke-static {}, Lcom/baidu/mobstat/BasicStoreTools;->getInstance()Lcom/baidu/mobstat/BasicStoreTools;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/baidu/mobstat/BasicStoreTools;->setAppDeviceMacTv(Landroid/content/Context;Ljava/lang/String;)V

    .line 201
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget-object v0, v0, Lcom/baidu/mobstat/HeadObject;->t:Ljava/lang/String;

    return-object v0
.end method

.method public getManufacturer()Ljava/lang/String;
    .locals 2

    .prologue
    .line 569
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget-object v0, v0, Lcom/baidu/mobstat/HeadObject;->o:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 573
    :goto_0
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget-object v0, v0, Lcom/baidu/mobstat/HeadObject;->o:Ljava/lang/String;

    return-object v0

    .line 570
    :cond_0
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/mobstat/HeadObject;->o:Ljava/lang/String;

    goto :goto_0
.end method

.method public getOSSysVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 553
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget-object v0, v0, Lcom/baidu/mobstat/HeadObject;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 557
    :goto_0
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget-object v0, v0, Lcom/baidu/mobstat/HeadObject;->c:Ljava/lang/String;

    return-object v0

    .line 554
    :cond_0
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/mobstat/HeadObject;->c:Ljava/lang/String;

    goto :goto_0
.end method

.method public getOSVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 545
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget-object v0, v0, Lcom/baidu/mobstat/HeadObject;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 549
    :goto_0
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget-object v0, v0, Lcom/baidu/mobstat/HeadObject;->b:Ljava/lang/String;

    return-object v0

    .line 546
    :cond_0
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/mobstat/HeadObject;->b:Ljava/lang/String;

    goto :goto_0
.end method

.method public getOperator(Landroid/telephony/TelephonyManager;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 517
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget-object v0, v0, Lcom/baidu/mobstat/HeadObject;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 521
    :goto_0
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget-object v0, v0, Lcom/baidu/mobstat/HeadObject;->m:Ljava/lang/String;

    return-object v0

    .line 518
    :cond_0
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/mobstat/HeadObject;->m:Ljava/lang/String;

    goto :goto_0
.end method

.method public getPhoneModel()Ljava/lang/String;
    .locals 2

    .prologue
    .line 561
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget-object v0, v0, Lcom/baidu/mobstat/HeadObject;->n:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 565
    :goto_0
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget-object v0, v0, Lcom/baidu/mobstat/HeadObject;->n:Ljava/lang/String;

    return-object v0

    .line 562
    :cond_0
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/mobstat/HeadObject;->n:Ljava/lang/String;

    goto :goto_0
.end method

.method public getPlainDeviceIdForCar(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 353
    invoke-static {p1}, Lcom/baidu/mobstat/CarUUID;->optUUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 355
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 359
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    :goto_1
    return-object v0

    .line 356
    :cond_0
    invoke-direct {p0, p1}, Lcom/baidu/mobstat/CooperService;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string/jumbo v0, ""

    goto :goto_1
.end method

.method public getSecretValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 604
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/mobstat/ev$b;->c(I[B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTagValue()I
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 258
    return v0
.end method

.method public getUUID()Ljava/lang/String;
    .locals 3

    .prologue
    .line 608
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "-"

    const-string/jumbo v2, ""

    .line 609
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserId(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 648
    invoke-static {}, Lcom/baidu/mobstat/BasicStoreTools;->getInstance()Lcom/baidu/mobstat/BasicStoreTools;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/BasicStoreTools;->getUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public installHeader(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/mobstat/HeadObject;->installHeader(Landroid/content/Context;Lorg/json/JSONObject;)V

    .line 56
    return-void
.end method

.method public isDeviceMacEnabled(Landroid/content/Context;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 627
    invoke-static {}, Lcom/baidu/mobstat/BasicStoreTools;->getInstance()Lcom/baidu/mobstat/BasicStoreTools;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/baidu/mobstat/BasicStoreTools;->getMacEnabledTrick(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public resetHeadSign()V
    .locals 2

    .prologue
    .line 613
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/mobstat/CooperService;->getUUID()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/mobstat/HeadObject;->z:Ljava/lang/String;

    .line 614
    return-void
.end method

.method public setAppVersionName(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 502
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 506
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iput-object p2, v0, Lcom/baidu/mobstat/HeadObject;->h:Ljava/lang/String;

    .line 507
    return-void

    .line 503
    :cond_0
    return-void
.end method

.method public setHeaderExt(Landroid/content/Context;Lcom/baidu/mobstat/ExtraInfo;)V
    .locals 3

    .prologue
    .line 74
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 75
    if-nez p2, :cond_0

    .line 78
    :goto_0
    iget-object v1, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    invoke-virtual {v1, v0}, Lcom/baidu/mobstat/HeadObject;->setHeaderExt(Lorg/json/JSONObject;)V

    .line 79
    invoke-static {}, Lcom/baidu/mobstat/BasicStoreTools;->getInstance()Lcom/baidu/mobstat/BasicStoreTools;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/baidu/mobstat/BasicStoreTools;->setHeaderExt(Landroid/content/Context;Ljava/lang/String;)V

    const-string/jumbo v1, ""

    .line 82
    if-nez p2, :cond_1

    const-string/jumbo v0, "Clear global ExtraInfo"

    .line 87
    :goto_1
    invoke-static {}, Lcom/baidu/mobstat/eh;->c()Lcom/baidu/mobstat/eh;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/mobstat/eh;->a(Ljava/lang/String;)V

    .line 88
    return-void

    .line 76
    :cond_0
    invoke-virtual {p2}, Lcom/baidu/mobstat/ExtraInfo;->dumpToJson()Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0

    .line 83
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Set global ExtraInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public setUserId(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/16 v2, 0x100

    const/4 v1, 0x0

    .line 632
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 636
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, v2, :cond_1

    .line 640
    :goto_1
    invoke-static {}, Lcom/baidu/mobstat/BasicStoreTools;->getInstance()Lcom/baidu/mobstat/BasicStoreTools;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/baidu/mobstat/BasicStoreTools;->setUserId(Landroid/content/Context;Ljava/lang/String;)V

    .line 641
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    invoke-virtual {v0, p2}, Lcom/baidu/mobstat/HeadObject;->setUserId(Ljava/lang/String;)V

    .line 643
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Set user id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 644
    invoke-static {}, Lcom/baidu/mobstat/eh;->c()Lcom/baidu/mobstat/eh;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/mobstat/eh;->a(Ljava/lang/String;)V

    .line 645
    return-void

    :cond_0
    const-string/jumbo p2, ""

    goto :goto_0

    .line 637
    :cond_1
    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    goto :goto_1
.end method
