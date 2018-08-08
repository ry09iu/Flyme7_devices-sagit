.class public Lcom/baidu/mobstat/BasicStoreTools;
.super Lcom/baidu/mobstat/ew;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lcom/baidu/mobstat/BasicStoreTools;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string/jumbo v0, "__Baidu_Stat_SDK_SendRem"

    .line 17
    sput-object v0, Lcom/baidu/mobstat/BasicStoreTools;->a:Ljava/lang/String;

    .line 50
    new-instance v0, Lcom/baidu/mobstat/BasicStoreTools;

    invoke-direct {v0}, Lcom/baidu/mobstat/BasicStoreTools;-><init>()V

    sput-object v0, Lcom/baidu/mobstat/BasicStoreTools;->b:Lcom/baidu/mobstat/BasicStoreTools;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/baidu/mobstat/ew;-><init>()V

    .line 53
    return-void
.end method

.method public static getInstance()Lcom/baidu/mobstat/BasicStoreTools;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/baidu/mobstat/BasicStoreTools;->b:Lcom/baidu/mobstat/BasicStoreTools;

    return-object v0
.end method


# virtual methods
.method public getAppChannelWithCode(Landroid/content/Context;)Z
    .locals 2

    .prologue
    const-string/jumbo v0, "setchannelwithcode"

    .line 220
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/baidu/mobstat/BasicStoreTools;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getAppChannelWithPreference(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    const-string/jumbo v0, "setchannelwithcodevalue"

    const/4 v1, 0x0

    .line 199
    invoke-virtual {p0, p1, v0, v1}, Lcom/baidu/mobstat/BasicStoreTools;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppDeviceMac(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    const-string/jumbo v0, "mtjsdkmacss2_1"

    const/4 v1, 0x0

    .line 262
    invoke-virtual {p0, p1, v0, v1}, Lcom/baidu/mobstat/BasicStoreTools;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppDeviceMacTv(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    const-string/jumbo v0, "mtjsdkmacsstv_1"

    const/4 v1, 0x0

    .line 325
    invoke-virtual {p0, p1, v0, v1}, Lcom/baidu/mobstat/BasicStoreTools;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    const-string/jumbo v0, "mjsetappkey"

    const/4 v1, 0x0

    .line 241
    invoke-virtual {p0, p1, v0, v1}, Lcom/baidu/mobstat/BasicStoreTools;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAutoTraceConfigFetchTime(Landroid/content/Context;)J
    .locals 4

    .prologue
    const-string/jumbo v0, "autotrace_config_fetch_time"

    const-wide/16 v2, 0x0

    .line 418
    invoke-virtual {p0, p1, v0, v2, v3}, Lcom/baidu/mobstat/BasicStoreTools;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getAutoTraceTrackJsFetchInterval(Landroid/content/Context;)J
    .locals 4

    .prologue
    const-string/jumbo v0, "autotrace_track_js_fetch_interval"

    const-wide/16 v2, 0x0

    .line 400
    invoke-virtual {p0, p1, v0, v2, v3}, Lcom/baidu/mobstat/BasicStoreTools;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getAutoTraceTrackJsFetchTime(Landroid/content/Context;)J
    .locals 4

    .prologue
    const-string/jumbo v0, "autotrace_track_js_fetch_time"

    const-wide/16 v2, 0x0

    .line 382
    invoke-virtual {p0, p1, v0, v2, v3}, Lcom/baidu/mobstat/BasicStoreTools;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getForTV(Landroid/content/Context;)Z
    .locals 2

    .prologue
    const-string/jumbo v0, "mtjtv"

    .line 304
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/baidu/mobstat/BasicStoreTools;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getGenerateDeviceCUID(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    const-string/jumbo v0, "cuidsec_1"

    const/4 v1, 0x0

    .line 178
    invoke-virtual {p0, p1, v0, v1}, Lcom/baidu/mobstat/BasicStoreTools;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGenerateDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    const-string/jumbo v0, "device_id_1"

    const/4 v1, 0x0

    .line 153
    invoke-virtual {p0, p1, v0, v1}, Lcom/baidu/mobstat/BasicStoreTools;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderExt(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    const-string/jumbo v0, "he.ext"

    const/4 v1, 0x0

    .line 346
    invoke-virtual {p0, p1, v0, v1}, Lcom/baidu/mobstat/BasicStoreTools;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLastData(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    const-string/jumbo v0, "lastdata"

    const/4 v1, 0x0

    .line 283
    invoke-virtual {p0, p1, v0, v1}, Lcom/baidu/mobstat/BasicStoreTools;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMacEnabledTrick(Landroid/content/Context;)Z
    .locals 2

    .prologue
    const-string/jumbo v0, "mtjsdkmactrick"

    .line 363
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/baidu/mobstat/BasicStoreTools;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getOnlyWifiChannel(Landroid/content/Context;)Z
    .locals 2

    .prologue
    const-string/jumbo v0, "onlywifi"

    .line 131
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/baidu/mobstat/BasicStoreTools;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getSendStrategy(Landroid/content/Context;)I
    .locals 2

    .prologue
    const-string/jumbo v0, "sendLogtype"

    const/4 v1, 0x0

    .line 87
    invoke-virtual {p0, p1, v0, v1}, Lcom/baidu/mobstat/BasicStoreTools;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getSendStrategyTime(Landroid/content/Context;)I
    .locals 2

    .prologue
    const-string/jumbo v0, "timeinterval"

    const/4 v1, 0x1

    .line 109
    invoke-virtual {p0, p1, v0, v1}, Lcom/baidu/mobstat/BasicStoreTools;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    .prologue
    .line 65
    sget-object v0, Lcom/baidu/mobstat/BasicStoreTools;->a:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public getUserId(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    const-string/jumbo v0, "custom_userid"

    const-string/jumbo v1, ""

    .line 441
    invoke-virtual {p0, p1, v0, v1}, Lcom/baidu/mobstat/BasicStoreTools;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setAppChannelWithCode(Landroid/content/Context;Z)V
    .locals 1

    .prologue
    const-string/jumbo v0, "setchannelwithcode"

    .line 209
    invoke-virtual {p0, p1, v0, p2}, Lcom/baidu/mobstat/BasicStoreTools;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 210
    return-void
.end method

.method public setAppChannelWithPreference(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "setchannelwithcodevalue"

    .line 188
    invoke-virtual {p0, p1, v0, p2}, Lcom/baidu/mobstat/BasicStoreTools;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    return-void
.end method

.method public setAppDeviceMac(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "mtjsdkmacss2_1"

    .line 251
    invoke-virtual {p0, p1, v0, p2}, Lcom/baidu/mobstat/BasicStoreTools;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    return-void
.end method

.method public setAppDeviceMacTv(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "mtjsdkmacsstv_1"

    .line 314
    invoke-virtual {p0, p1, v0, p2}, Lcom/baidu/mobstat/BasicStoreTools;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    return-void
.end method

.method public setAppKey(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "mjsetappkey"

    .line 230
    invoke-virtual {p0, p1, v0, p2}, Lcom/baidu/mobstat/BasicStoreTools;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    return-void
.end method

.method public setAutoTraceConfigFetchTime(Landroid/content/Context;J)V
    .locals 2

    .prologue
    const-string/jumbo v0, "autotrace_config_fetch_time"

    .line 409
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/baidu/mobstat/BasicStoreTools;->putLong(Landroid/content/Context;Ljava/lang/String;J)V

    .line 410
    return-void
.end method

.method public setAutoTraceTrackJsFetchInterval(Landroid/content/Context;J)V
    .locals 2

    .prologue
    const-string/jumbo v0, "autotrace_track_js_fetch_interval"

    .line 391
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/baidu/mobstat/BasicStoreTools;->putLong(Landroid/content/Context;Ljava/lang/String;J)V

    .line 392
    return-void
.end method

.method public setAutoTraceTrackJsFetchTime(Landroid/content/Context;J)V
    .locals 2

    .prologue
    const-string/jumbo v0, "autotrace_track_js_fetch_time"

    .line 373
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/baidu/mobstat/BasicStoreTools;->putLong(Landroid/content/Context;Ljava/lang/String;J)V

    .line 374
    return-void
.end method

.method public setForTV(Landroid/content/Context;Z)V
    .locals 1

    .prologue
    const-string/jumbo v0, "mtjtv"

    .line 293
    invoke-virtual {p0, p1, v0, p2}, Lcom/baidu/mobstat/BasicStoreTools;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 294
    return-void
.end method

.method public setGenerateDeviceCUID(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const-string/jumbo v0, "cuid"

    .line 163
    invoke-virtual {p0, p1, v0, v1}, Lcom/baidu/mobstat/BasicStoreTools;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 164
    if-nez v0, :cond_0

    :goto_0
    const-string/jumbo v0, "cuidsec_1"

    .line 167
    invoke-virtual {p0, p1, v0, p2}, Lcom/baidu/mobstat/BasicStoreTools;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    return-void

    :cond_0
    const-string/jumbo v0, "cuid"

    .line 165
    invoke-virtual {p0, p1, v0}, Lcom/baidu/mobstat/BasicStoreTools;->removeString(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setGenerateDeviceId(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "device_id_1"

    .line 142
    invoke-virtual {p0, p1, v0, p2}, Lcom/baidu/mobstat/BasicStoreTools;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    return-void
.end method

.method public setHeaderExt(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "he.ext"

    .line 335
    invoke-virtual {p0, p1, v0, p2}, Lcom/baidu/mobstat/BasicStoreTools;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    return-void
.end method

.method public setLastData(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "lastdata"

    .line 272
    invoke-virtual {p0, p1, v0, p2}, Lcom/baidu/mobstat/BasicStoreTools;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    return-void
.end method

.method public setMacEnabledTrick(Landroid/content/Context;Z)V
    .locals 1

    .prologue
    const-string/jumbo v0, "mtjsdkmactrick"

    .line 354
    invoke-virtual {p0, p1, v0, p2}, Lcom/baidu/mobstat/BasicStoreTools;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 355
    return-void
.end method

.method public setOnlyWifi(Landroid/content/Context;Z)V
    .locals 1

    .prologue
    const-string/jumbo v0, "onlywifi"

    .line 120
    invoke-virtual {p0, p1, v0, p2}, Lcom/baidu/mobstat/BasicStoreTools;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 121
    return-void
.end method

.method public setSendStrategy(Landroid/content/Context;I)V
    .locals 1

    .prologue
    const-string/jumbo v0, "sendLogtype"

    .line 76
    invoke-virtual {p0, p1, v0, p2}, Lcom/baidu/mobstat/BasicStoreTools;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 77
    return-void
.end method

.method public setSendStrategyTime(Landroid/content/Context;I)V
    .locals 1

    .prologue
    const-string/jumbo v0, "timeinterval"

    .line 98
    invoke-virtual {p0, p1, v0, p2}, Lcom/baidu/mobstat/BasicStoreTools;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 99
    return-void
.end method

.method public setUserId(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 428
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    const-string/jumbo v0, "custom_userid"

    .line 432
    invoke-virtual {p0, p1, v0, p2}, Lcom/baidu/mobstat/BasicStoreTools;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    return-void

    :cond_0
    const-string/jumbo p2, ""

    goto :goto_0
.end method
