.class public Lcom/android/server/am/PKTopWindowData;
.super Ljava/lang/Object;
.source "PKTopWindowData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/PKTopWindowData$GetDataASyncListener;,
        Lcom/android/server/am/PKTopWindowData$PostDataASyncListener;
    }
.end annotation


# static fields
.field public static final EVENT_ADVIEW_CLICKED:Ljava/lang/String; = "ADVIEW_CLICKED"

.field public static final EVENT_ADVIEW_CLICKED_ACTUAL:Ljava/lang/String; = "ADVIEW_CLICKED_ACTUAL"

.field public static final EVENT_ADVIEW_VIEWED:Ljava/lang/String; = "ADVIEW_VIEWED"

.field public static final EVENT_ROM_USERSTAT:Ljava/lang/String; = "ROM_USERSTAT"

.field public static final FILE_BACKUPSERVER:Ljava/lang/String; = "pk_backupserver.dat"

.field public static final FILE_BACKUPURL_ENABLED:Ljava/lang/String; = "pk_backupurl_enabled.dat"

.field public static final FILE_FREQ:Ljava/lang/String; = "pk_freq.dat"

.field public static final FILE_FULLJSON:Ljava/lang/String; = "pk_fulljson.dat"

.field public static final FILE_PKICON_MD5:Ljava/lang/String; = "pk_iconsmd5.dat"

.field public static final FILE_WHITEPACKS:Ljava/lang/String; = "pk_whitepacks.dat"

.field public static final FILE_WHITEPACKS_SWITCH:Ljava/lang/String; = "pk_whitepacksswitch.dat"

.field public static final KEY_FAILTIMES:Ljava/lang/String; = "key_failtimes"

.field public static final KEY_LASTSUCCESS_TIME:Ljava/lang/String; = "key_lastsuccess_time"

.field public static final KEY_SUCCESSTIMES:Ljava/lang/String; = "key_successtimes"

.field public static final LOCAL_WHITEPACKS:Ljava/lang/String; = "com.xiaomi.market,com.oneplus.market"

.field public static final PREFS_NAME:Ljava/lang/String; = "pk_prefs"

.field private static final TAG:Ljava/lang/String; = "PKTopWindowData"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mGetDataASyncListener:Lcom/android/server/am/PKTopWindowData$GetDataASyncListener;

.field private mHandler:Landroid/os/Handler;

.field private mOkHttpClient:Lokhttp3/OkHttpClient;

.field private mPostDataASyncListener:Lcom/android/server/am/PKTopWindowData$PostDataASyncListener;


# direct methods
.method static synthetic -get0(Lcom/android/server/am/PKTopWindowData;)Lcom/android/server/am/PKTopWindowData$GetDataASyncListener;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/PKTopWindowData;->mGetDataASyncListener:Lcom/android/server/am/PKTopWindowData$GetDataASyncListener;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/am/PKTopWindowData;)Lcom/android/server/am/PKTopWindowData$PostDataASyncListener;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/PKTopWindowData;->mPostDataASyncListener:Lcom/android/server/am/PKTopWindowData$PostDataASyncListener;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/android/server/am/PKTopWindowData;->mContext:Landroid/content/Context;

    .line 65
    iput-object p2, p0, Lcom/android/server/am/PKTopWindowData;->mHandler:Landroid/os/Handler;

    .line 66
    new-instance v3, Lokhttp3/OkHttpClient;

    invoke-direct {v3}, Lokhttp3/OkHttpClient;-><init>()V

    iput-object v3, p0, Lcom/android/server/am/PKTopWindowData;->mOkHttpClient:Lokhttp3/OkHttpClient;

    .line 67
    invoke-static {v6}, Landroid/os/Environment;->setUserRequired(Z)V

    .line 68
    const-string/jumbo v3, "e711cddce9"

    invoke-static {v3}, Lcom/baidu/mobstat/StatService;->setAppKey(Ljava/lang/String;)V

    .line 69
    iget-object v3, p0, Lcom/android/server/am/PKTopWindowData;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/android/server/am/PKTopWindowConfig;->STAT_SERVICE_CHANNEL:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/baidu/mobstat/StatService;->setAppChannel(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 70
    const-string/jumbo v0, "other"

    .line 71
    .local v0, "appVersionName":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/PKTopWindowCommonData;->getRomtype()Ljava/lang/String;

    move-result-object v1

    .line 72
    .local v1, "romType":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 73
    const-string/jumbo v1, "other"

    .line 75
    :cond_0
    invoke-static {}, Lcom/android/server/am/PKTopWindowCommonData;->getRomer()Ljava/lang/String;

    move-result-object v2

    .line 76
    .local v2, "romerId":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 77
    const-string/jumbo v2, "other"

    .line 79
    :cond_1
    const-string/jumbo v3, "other"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 80
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/android/server/am/PKTopWindowUtils;->getOsVersionName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 82
    :cond_2
    iget-object v3, p0, Lcom/android/server/am/PKTopWindowData;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/baidu/mobstat/StatService;->setAppVersionName(Landroid/content/Context;Ljava/lang/String;)V

    .line 83
    iget-object v3, p0, Lcom/android/server/am/PKTopWindowData;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/android/server/am/PKTopWindowConfig;->STAT_DEF_USERID:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/baidu/mobstat/StatService;->setUserId(Landroid/content/Context;Ljava/lang/String;)V

    .line 84
    iget-object v3, p0, Lcom/android/server/am/PKTopWindowData;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v5}, Lcom/baidu/mobstat/StatService;->enableDeviceMac(Landroid/content/Context;Z)V

    .line 85
    iget-object v3, p0, Lcom/android/server/am/PKTopWindowData;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/baidu/mobstat/StatService;->start(Landroid/content/Context;)V

    .line 87
    iget-object v3, p0, Lcom/android/server/am/PKTopWindowData;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v5, v6}, Lcom/baidu/mobstat/StatService;->autoTrace(Landroid/content/Context;ZZ)V

    .line 63
    return-void
.end method

.method private getASync(Lokhttp3/OkHttpClient;Ljava/lang/String;)V
    .locals 3
    .param p1, "client"    # Lokhttp3/OkHttpClient;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 190
    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v1, p2}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 191
    .local v0, "request":Lokhttp3/Request;
    invoke-virtual {p1, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v1

    new-instance v2, Lcom/android/server/am/PKTopWindowData$2;

    invoke-direct {v2, p0}, Lcom/android/server/am/PKTopWindowData$2;-><init>(Lcom/android/server/am/PKTopWindowData;)V

    invoke-interface {v1, v2}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 189
    return-void
.end method

.method private getMD(Landroid/content/Context;Lcom/android/server/am/PKTopWindowUtils;ZLjava/lang/String;)Lcom/android/server/am/PKTopWindowRequest$MD;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "utils"    # Lcom/android/server/am/PKTopWindowUtils;
    .param p3, "pri"    # Z
    .param p4, "packageName"    # Ljava/lang/String;

    .prologue
    .line 279
    new-instance v5, Lcom/android/server/am/PKTopWindowRequest$MD;

    invoke-direct {v5}, Lcom/android/server/am/PKTopWindowRequest$MD;-><init>()V

    .line 280
    .local v5, "md":Lcom/android/server/am/PKTopWindowRequest$MD;
    invoke-virtual {p2}, Lcom/android/server/am/PKTopWindowUtils;->getImei()Ljava/lang/String;

    move-result-object v2

    .line 281
    .local v2, "imei":Ljava/lang/String;
    invoke-virtual {p2}, Lcom/android/server/am/PKTopWindowUtils;->getOsApiVersion()Ljava/lang/String;

    move-result-object v1

    .line 282
    .local v1, "api_version":Ljava/lang/String;
    invoke-virtual {p2}, Lcom/android/server/am/PKTopWindowUtils;->getAndroidId()Ljava/lang/String;

    move-result-object v0

    .line 283
    .local v0, "android_id":Ljava/lang/String;
    invoke-virtual {v5, v2}, Lcom/android/server/am/PKTopWindowRequest$MD;->setImei(Ljava/lang/String;)V

    .line 284
    invoke-virtual {v5, v2}, Lcom/android/server/am/PKTopWindowRequest$MD;->setDevice_id(Ljava/lang/String;)V

    .line 285
    invoke-virtual {v5, v1}, Lcom/android/server/am/PKTopWindowRequest$MD;->setApi_version(Ljava/lang/String;)V

    .line 288
    invoke-static {p1}, Lcom/android/server/am/PKTopWindowUtils$LocationUtils;->getInstance(Landroid/content/Context;)Lcom/android/server/am/PKTopWindowUtils$LocationUtils;

    move-result-object v4

    .line 289
    .local v4, "locationUtils":Lcom/android/server/am/PKTopWindowUtils$LocationUtils;
    invoke-virtual {v4}, Lcom/android/server/am/PKTopWindowUtils$LocationUtils;->showLocation()Landroid/location/Location;

    move-result-object v3

    .line 290
    .local v3, "location":Landroid/location/Location;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v6

    :goto_0
    invoke-virtual {v5, v6}, Lcom/android/server/am/PKTopWindowRequest$MD;->setLongitude(Ljava/lang/String;)V

    .line 291
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v6

    :goto_1
    invoke-virtual {v5, v6}, Lcom/android/server/am/PKTopWindowRequest$MD;->setLatitude(Ljava/lang/String;)V

    .line 292
    if-eqz v3, :cond_0

    .line 293
    const-string/jumbo v6, "PKTopWindowData"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "location.getLongitude(): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", location.getLatitude(): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/am/PKTopWindowConfig$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    :cond_0
    invoke-virtual {v4}, Lcom/android/server/am/PKTopWindowUtils$LocationUtils;->removeLocationUpdatesListener()V

    .line 297
    invoke-virtual {p2}, Lcom/android/server/am/PKTopWindowUtils;->getApps()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/am/PKTopWindowRequest$MD;->setApps(Ljava/lang/String;)V

    .line 298
    invoke-virtual {p2}, Lcom/android/server/am/PKTopWindowUtils;->getAppActiveList()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/am/PKTopWindowRequest$MD;->setApp_active_list(Ljava/lang/String;)V

    .line 299
    invoke-virtual {p2}, Lcom/android/server/am/PKTopWindowUtils;->getOs()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/am/PKTopWindowRequest$MD;->setOs(Ljava/lang/String;)V

    .line 300
    invoke-virtual {p2}, Lcom/android/server/am/PKTopWindowUtils;->getNetworkType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/am/PKTopWindowRequest$MD;->setNt(Ljava/lang/String;)V

    .line 301
    if-eqz p3, :cond_1

    .line 302
    invoke-virtual {v5, p4}, Lcom/android/server/am/PKTopWindowRequest$MD;->setBid(Ljava/lang/String;)V

    .line 303
    invoke-virtual {p2}, Lcom/android/server/am/PKTopWindowUtils;->getMacAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/am/PKTopWindowRequest$MD;->setMac(Ljava/lang/String;)V

    .line 304
    invoke-virtual {p2}, Lcom/android/server/am/PKTopWindowUtils;->getSwidth()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/am/PKTopWindowRequest$MD;->setSwidth(Ljava/lang/String;)V

    .line 305
    invoke-virtual {p2}, Lcom/android/server/am/PKTopWindowUtils;->getSheight()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/am/PKTopWindowRequest$MD;->setSheigth(Ljava/lang/String;)V

    .line 306
    invoke-virtual {p2}, Lcom/android/server/am/PKTopWindowUtils;->getBrand()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/am/PKTopWindowRequest$MD;->setBrand(Ljava/lang/String;)V

    .line 307
    invoke-virtual {p2}, Lcom/android/server/am/PKTopWindowUtils;->getModel()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/am/PKTopWindowRequest$MD;->setModel(Ljava/lang/String;)V

    .line 308
    invoke-virtual {p2}, Lcom/android/server/am/PKTopWindowUtils;->getOsVersion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/am/PKTopWindowRequest$MD;->setOs_version(Ljava/lang/String;)V

    .line 309
    invoke-virtual {v5, v1}, Lcom/android/server/am/PKTopWindowRequest$MD;->setOs_api_version(Ljava/lang/String;)V

    .line 310
    invoke-virtual {v5, v0}, Lcom/android/server/am/PKTopWindowRequest$MD;->setAid(Ljava/lang/String;)V

    .line 311
    invoke-virtual {p2}, Lcom/android/server/am/PKTopWindowUtils;->getScreenDpi()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/am/PKTopWindowRequest$MD;->setDpi(Ljava/lang/String;)V

    .line 312
    invoke-virtual {p2}, Lcom/android/server/am/PKTopWindowUtils;->getIsp()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/am/PKTopWindowRequest$MD;->setIsp(Ljava/lang/String;)V

    .line 313
    invoke-virtual {p2}, Lcom/android/server/am/PKTopWindowUtils;->getLang()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/am/PKTopWindowRequest$MD;->setLang(Ljava/lang/String;)V

    .line 314
    invoke-virtual {p2}, Lcom/android/server/am/PKTopWindowUtils;->getRootStatus()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/am/PKTopWindowRequest$MD;->setRoot(Ljava/lang/String;)V

    .line 315
    invoke-static {}, Lcom/android/server/am/PKTopWindowCommonData;->getRommodel()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/am/PKTopWindowRequest$MD;->setRommodel(Ljava/lang/String;)V

    .line 316
    invoke-static {}, Lcom/android/server/am/PKTopWindowCommonData;->getRomer()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/am/PKTopWindowRequest$MD;->setRomer(Ljava/lang/String;)V

    .line 317
    invoke-static {}, Lcom/android/server/am/PKTopWindowCommonData;->getRomvc()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/am/PKTopWindowRequest$MD;->setRomvc(Ljava/lang/String;)V

    .line 318
    invoke-static {}, Lcom/android/server/am/PKTopWindowCommonData;->getRomtype()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/am/PKTopWindowRequest$MD;->setRomtype(Ljava/lang/String;)V

    .line 319
    invoke-static {}, Lcom/android/server/am/PKTopWindowCommonData;->getSmalivc()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/am/PKTopWindowRequest$MD;->setSmalivc(Ljava/lang/String;)V

    .line 320
    invoke-virtual {v5, p4}, Lcom/android/server/am/PKTopWindowRequest$MD;->setClickpkg(Ljava/lang/String;)V

    .line 321
    invoke-static {}, Lcom/android/server/am/PKTopWindowCommonData;->getDeveloperAppkey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/am/PKTopWindowRequest$MD;->setRomappkey(Ljava/lang/String;)V

    .line 322
    invoke-static {}, Lcom/android/server/am/PKTopWindowCommonData;->getDeveloperAdslotId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/am/PKTopWindowRequest$MD;->setRomadslotId(Ljava/lang/String;)V

    .line 323
    invoke-virtual {v5, v0}, Lcom/android/server/am/PKTopWindowRequest$MD;->setRomaid(Ljava/lang/String;)V

    .line 324
    invoke-virtual {v5, v2}, Lcom/android/server/am/PKTopWindowRequest$MD;->setRomimei(Ljava/lang/String;)V

    .line 325
    invoke-static {}, Lcom/android/server/am/PKTopWindowUtils;->getOsVersionName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/am/PKTopWindowRequest$MD;->setRomandroidvc(Ljava/lang/String;)V

    .line 327
    :cond_1
    return-object v5

    .line 290
    :cond_2
    const-string/jumbo v6, ""

    goto/16 :goto_0

    .line 291
    :cond_3
    const-string/jumbo v6, ""

    goto/16 :goto_1
.end method

.method private getSignature(Landroid/content/Context;ZLjava/lang/String;)Ljava/lang/String;
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pri"    # Z
    .param p3, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 331
    new-instance v11, Lcom/android/server/am/PKTopWindowUtils;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Lcom/android/server/am/PKTopWindowUtils;-><init>(Landroid/content/Context;)V

    .line 332
    .local v11, "utils":Lcom/android/server/am/PKTopWindowUtils;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 334
    .local v6, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v4, "3WokhEx8XwpayzPb3CjdxoZshNHSFokfgrcBgZw"

    .line 335
    .local v4, "appSecret":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v11, v2, v3}, Lcom/android/server/am/PKTopWindowData;->getMD(Landroid/content/Context;Lcom/android/server/am/PKTopWindowUtils;ZLjava/lang/String;)Lcom/android/server/am/PKTopWindowRequest$MD;

    move-result-object v13

    invoke-static {v13}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Lcom/android/server/am/PKTopWindowUtils;->getEncodedMD(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 336
    .local v7, "md":Ljava/lang/String;
    invoke-virtual {v11}, Lcom/android/server/am/PKTopWindowUtils;->getTimestamp()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    .line 337
    .local v10, "timestamp":Ljava/lang/String;
    invoke-virtual {v11}, Lcom/android/server/am/PKTopWindowUtils;->getNonce()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    .line 339
    .local v8, "nonce":Ljava/lang/String;
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 340
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 341
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 342
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 343
    invoke-static {v6}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 345
    const-string/jumbo v9, ""

    .line 346
    .local v9, "str":Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v5, v13, :cond_4

    .line 347
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 348
    .local v12, "value":Ljava/lang/String;
    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 349
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "&appSecret="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 346
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 350
    :cond_1
    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 351
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "&md="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    .line 352
    :cond_2
    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 353
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "&timestamp="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    .line 354
    :cond_3
    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 355
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "&nonce="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    .line 358
    .end local v12    # "value":Ljava/lang/String;
    :cond_4
    const-string/jumbo v13, "PKTopWindowData"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "signature: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v9, v0, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/server/am/PKTopWindowConfig$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v13

    const/4 v14, 0x1

    invoke-virtual {v9, v14, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Lcom/android/server/am/PKTopWindowUtils;->getSHA1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    return-object v13
.end method

.method private getSync(Lokhttp3/OkHttpClient;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "client"    # Lokhttp3/OkHttpClient;
    .param p2, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 136
    new-instance v3, Lokhttp3/Request$Builder;

    invoke-direct {v3}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v3, p2}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 139
    .local v0, "request":Lokhttp3/Request;
    const/4 v1, 0x0

    .local v1, "response":Lokhttp3/Response;
    :try_start_0
    invoke-virtual {p1, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v3

    invoke-interface {v3}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v1

    .line 140
    .local v1, "response":Lokhttp3/Response;
    invoke-virtual {v1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v2

    .line 141
    .local v2, "result":Ljava/lang/String;
    const-string/jumbo v3, "PKTopWindowData"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getSync result: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/server/am/PKTopWindowConfig$Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 142
    if-eqz v2, :cond_1

    .line 143
    .end local v2    # "result":Ljava/lang/String;
    :goto_0
    if-eqz v1, :cond_0

    :try_start_1
    invoke-virtual {v1}, Lokhttp3/Response;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_1
    if-eqz v4, :cond_2

    throw v4

    .line 142
    .restart local v2    # "result":Ljava/lang/String;
    :cond_1
    :try_start_2
    const-string/jumbo v2, ""
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 143
    .end local v2    # "result":Ljava/lang/String;
    :catch_0
    move-exception v4

    goto :goto_1

    .line 142
    :cond_2
    return-object v2

    .line 143
    .end local v1    # "response":Lokhttp3/Response;
    :catch_1
    move-exception v3

    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v4

    move-object v7, v4

    move-object v4, v3

    move-object v3, v7

    :goto_2
    if-eqz v1, :cond_3

    :try_start_4
    invoke-virtual {v1}, Lokhttp3/Response;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    :cond_3
    :goto_3
    if-eqz v4, :cond_5

    throw v4

    :catch_2
    move-exception v5

    if-nez v4, :cond_4

    move-object v4, v5

    goto :goto_3

    :cond_4
    if-eq v4, v5, :cond_3

    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_5
    throw v3

    :catchall_1
    move-exception v3

    goto :goto_2
.end method

.method private postASync(Lokhttp3/OkHttpClient;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "client"    # Lokhttp3/OkHttpClient;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "json"    # Ljava/lang/String;

    .prologue
    .line 155
    const-string/jumbo v2, "application/json; charset=utf-8"

    invoke-static {v2}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v2

    invoke-static {v2, p3}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v0

    .line 156
    .local v0, "body":Lokhttp3/RequestBody;
    new-instance v2, Lokhttp3/Request$Builder;

    invoke-direct {v2}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v2, p2}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v1

    .line 160
    .local v1, "request":Lokhttp3/Request;
    invoke-virtual {p1, v1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v2

    new-instance v3, Lcom/android/server/am/PKTopWindowData$1;

    invoke-direct {v3, p0}, Lcom/android/server/am/PKTopWindowData$1;-><init>(Lcom/android/server/am/PKTopWindowData;)V

    invoke-interface {v2, v3}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 154
    return-void
.end method

.method private postSync(Lokhttp3/OkHttpClient;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "client"    # Lokhttp3/OkHttpClient;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "json"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 112
    const-string/jumbo v4, "application/json; charset=utf-8"

    invoke-static {v4}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v4

    invoke-static {v4, p3}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v0

    .line 113
    .local v0, "body":Lokhttp3/RequestBody;
    new-instance v4, Lokhttp3/Request$Builder;

    invoke-direct {v4}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v4, p2}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v4

    invoke-virtual {v4, v0}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v1

    .line 117
    .local v1, "request":Lokhttp3/Request;
    invoke-virtual {p1, v1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v4

    invoke-interface {v4}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v2

    .line 118
    .local v2, "response":Lokhttp3/Response;
    invoke-virtual {v2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v3

    .line 119
    .local v3, "result":Ljava/lang/String;
    const-string/jumbo v4, "PKTopWindowData"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "postSync result: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/am/PKTopWindowConfig$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    if-eqz v3, :cond_0

    .end local v3    # "result":Ljava/lang/String;
    :goto_0
    return-object v3

    .restart local v3    # "result":Ljava/lang/String;
    :cond_0
    const-string/jumbo v3, ""

    goto :goto_0
.end method


# virtual methods
.method public getDataASync(Lcom/android/server/am/PKTopWindowData$GetDataASyncListener;Ljava/lang/String;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/server/am/PKTopWindowData$GetDataASyncListener;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/server/am/PKTopWindowData;->mOkHttpClient:Lokhttp3/OkHttpClient;

    if-nez v0, :cond_0

    .line 183
    return-void

    .line 185
    :cond_0
    iput-object p1, p0, Lcom/android/server/am/PKTopWindowData;->mGetDataASyncListener:Lcom/android/server/am/PKTopWindowData$GetDataASyncListener;

    .line 186
    iget-object v0, p0, Lcom/android/server/am/PKTopWindowData;->mOkHttpClient:Lokhttp3/OkHttpClient;

    invoke-direct {p0, v0, p2}, Lcom/android/server/am/PKTopWindowData;->getASync(Lokhttp3/OkHttpClient;Ljava/lang/String;)V

    .line 181
    return-void
.end method

.method public getDataSync(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 124
    iget-object v1, p0, Lcom/android/server/am/PKTopWindowData;->mOkHttpClient:Lokhttp3/OkHttpClient;

    if-nez v1, :cond_0

    .line 125
    const-string/jumbo v1, ""

    return-object v1

    .line 128
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/PKTopWindowData;->mOkHttpClient:Lokhttp3/OkHttpClient;

    invoke-direct {p0, v1, p1}, Lcom/android/server/am/PKTopWindowData;->getSync(Lokhttp3/OkHttpClient;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 129
    :catch_0
    move-exception v0

    .line 130
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v0}, Lcom/android/server/am/PKTopWindowConfig$StackTrace;->print(Ljava/lang/Exception;)V

    .line 132
    const-string/jumbo v1, ""

    return-object v1
.end method

.method public getUserStat(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 363
    new-instance v1, Lcom/android/server/am/PKTopWindowRequest$UserStat;

    invoke-direct {v1}, Lcom/android/server/am/PKTopWindowRequest$UserStat;-><init>()V

    .line 364
    .local v1, "stat":Lcom/android/server/am/PKTopWindowRequest$UserStat;
    new-instance v3, Lcom/android/server/am/PKTopWindowUtils;

    iget-object v4, p0, Lcom/android/server/am/PKTopWindowData;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/server/am/PKTopWindowUtils;-><init>(Landroid/content/Context;)V

    .line 365
    .local v3, "utils":Lcom/android/server/am/PKTopWindowUtils;
    invoke-static {}, Lcom/android/server/am/PKTopWindowCommonData;->getRommodel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/server/am/PKTopWindowRequest$UserStat;->setRommodel(Ljava/lang/String;)V

    .line 366
    invoke-static {}, Lcom/android/server/am/PKTopWindowCommonData;->getRomer()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/server/am/PKTopWindowRequest$UserStat;->setRomer(Ljava/lang/String;)V

    .line 367
    invoke-static {}, Lcom/android/server/am/PKTopWindowCommonData;->getRomvc()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/server/am/PKTopWindowRequest$UserStat;->setRomvc(Ljava/lang/String;)V

    .line 368
    invoke-static {}, Lcom/android/server/am/PKTopWindowCommonData;->getRomtype()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/server/am/PKTopWindowRequest$UserStat;->setRomtype(Ljava/lang/String;)V

    .line 369
    invoke-static {}, Lcom/android/server/am/PKTopWindowCommonData;->getSmalivc()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/server/am/PKTopWindowRequest$UserStat;->setSmalivc(Ljava/lang/String;)V

    .line 370
    invoke-virtual {v1, p1}, Lcom/android/server/am/PKTopWindowRequest$UserStat;->setClickpkg(Ljava/lang/String;)V

    .line 371
    invoke-static {}, Lcom/android/server/am/PKTopWindowCommonData;->getDeveloperAppkey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/server/am/PKTopWindowRequest$UserStat;->setRomappkey(Ljava/lang/String;)V

    .line 372
    invoke-static {}, Lcom/android/server/am/PKTopWindowCommonData;->getDeveloperAdslotId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/server/am/PKTopWindowRequest$UserStat;->setRomadslotId(Ljava/lang/String;)V

    .line 373
    invoke-virtual {v3}, Lcom/android/server/am/PKTopWindowUtils;->getAndroidId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/server/am/PKTopWindowRequest$UserStat;->setRomaid(Ljava/lang/String;)V

    .line 374
    invoke-virtual {v3}, Lcom/android/server/am/PKTopWindowUtils;->getImei()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/server/am/PKTopWindowRequest$UserStat;->setRomimei(Ljava/lang/String;)V

    .line 375
    invoke-static {}, Lcom/android/server/am/PKTopWindowUtils;->getOsVersionName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/server/am/PKTopWindowRequest$UserStat;->setRomandroidvc(Ljava/lang/String;)V

    .line 376
    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 377
    .local v2, "statJson":Ljava/lang/String;
    invoke-static {v2}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 378
    .local v0, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v4, "PKTopWindowData"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "statJson: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", statJsonToMap: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Lcom/android/server/am/PKTopWindowCommonData;->jsonToMap(Lcom/alibaba/fastjson/JSONObject;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/am/PKTopWindowConfig$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    invoke-static {v0}, Lcom/android/server/am/PKTopWindowCommonData;->jsonToMap(Lcom/alibaba/fastjson/JSONObject;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public mtjPageEnd(Ljava/lang/String;)V
    .locals 1
    .param p1, "event"    # Ljava/lang/String;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/server/am/PKTopWindowData;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/baidu/mobstat/StatService;->onPageEnd(Landroid/content/Context;Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method public mtjPageStart(Ljava/lang/String;)V
    .locals 1
    .param p1, "event"    # Ljava/lang/String;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/server/am/PKTopWindowData;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/baidu/mobstat/StatService;->onPageStart(Landroid/content/Context;Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method public postDataASync(Lcom/android/server/am/PKTopWindowData$PostDataASyncListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/server/am/PKTopWindowData$PostDataASyncListener;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "json"    # Ljava/lang/String;

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/server/am/PKTopWindowData;->mOkHttpClient:Lokhttp3/OkHttpClient;

    if-nez v0, :cond_0

    .line 148
    return-void

    .line 150
    :cond_0
    iput-object p1, p0, Lcom/android/server/am/PKTopWindowData;->mPostDataASyncListener:Lcom/android/server/am/PKTopWindowData$PostDataASyncListener;

    .line 151
    iget-object v0, p0, Lcom/android/server/am/PKTopWindowData;->mOkHttpClient:Lokhttp3/OkHttpClient;

    invoke-direct {p0, v0, p2, p3}, Lcom/android/server/am/PKTopWindowData;->postASync(Lokhttp3/OkHttpClient;Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    return-void
.end method

.method public postDataSync(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "json"    # Ljava/lang/String;

    .prologue
    .line 99
    iget-object v1, p0, Lcom/android/server/am/PKTopWindowData;->mOkHttpClient:Lokhttp3/OkHttpClient;

    if-nez v1, :cond_0

    .line 100
    const-string/jumbo v1, ""

    return-object v1

    .line 104
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/PKTopWindowData;->mOkHttpClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v1}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    const-wide/16 v2, 0x3

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    const-wide/16 v2, 0x3

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    const-wide/16 v2, 0x3

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v1

    invoke-direct {p0, v1, p1, p2}, Lcom/android/server/am/PKTopWindowData;->postSync(Lokhttp3/OkHttpClient;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v0}, Lcom/android/server/am/PKTopWindowConfig$StackTrace;->print(Ljava/lang/Exception;)V

    .line 108
    const-string/jumbo v1, ""

    return-object v1
.end method

.method public requestJson(ZLjava/lang/String;)[Ljava/lang/String;
    .locals 8
    .param p1, "pri"    # Z
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 218
    new-instance v4, Lcom/android/server/am/PKTopWindowUtils;

    iget-object v5, p0, Lcom/android/server/am/PKTopWindowData;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/server/am/PKTopWindowUtils;-><init>(Landroid/content/Context;)V

    .line 219
    .local v4, "utils":Lcom/android/server/am/PKTopWindowUtils;
    new-instance v3, Lcom/android/server/am/PKTopWindowRequest;

    invoke-direct {v3}, Lcom/android/server/am/PKTopWindowRequest;-><init>()V

    .line 220
    .local v3, "request":Lcom/android/server/am/PKTopWindowRequest;
    invoke-static {}, Lcom/android/server/am/PKTopWindowCommonData;->getDeveloperAdslotId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/server/am/PKTopWindowRequest;->setAdslotId(Ljava/lang/String;)V

    .line 221
    invoke-static {}, Lcom/android/server/am/PKTopWindowCommonData;->getDeveloperAppkey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/server/am/PKTopWindowRequest;->setAppkey(Ljava/lang/String;)V

    .line 222
    invoke-virtual {v4}, Lcom/android/server/am/PKTopWindowUtils;->getImei()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/server/am/PKTopWindowRequest;->setDeviceId(Ljava/lang/String;)V

    .line 223
    invoke-virtual {v4}, Lcom/android/server/am/PKTopWindowUtils;->getNonce()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lcom/android/server/am/PKTopWindowRequest;->setNonce(J)V

    .line 224
    iget-object v5, p0, Lcom/android/server/am/PKTopWindowData;->mContext:Landroid/content/Context;

    invoke-direct {p0, v5, v4, p1, p2}, Lcom/android/server/am/PKTopWindowData;->getMD(Landroid/content/Context;Lcom/android/server/am/PKTopWindowUtils;ZLjava/lang/String;)Lcom/android/server/am/PKTopWindowRequest$MD;

    move-result-object v5

    invoke-static {v5}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 225
    .local v2, "md":Ljava/lang/String;
    invoke-virtual {v4, v2}, Lcom/android/server/am/PKTopWindowUtils;->getEncodedMD(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/server/am/PKTopWindowRequest;->setMd(Ljava/lang/String;)V

    .line 233
    invoke-virtual {v4}, Lcom/android/server/am/PKTopWindowUtils;->getTimestamp()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lcom/android/server/am/PKTopWindowRequest;->setTimestamp(J)V

    .line 234
    invoke-static {v3}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 235
    .local v0, "json":Ljava/lang/String;
    invoke-static {v0}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 236
    .local v1, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v5, "PKTopWindowData"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "requestJson: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", md: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", requestJsonToMap: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1}, Lcom/android/server/am/PKTopWindowCommonData;->jsonToMap(Lcom/alibaba/fastjson/JSONObject;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/am/PKTopWindowConfig$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    invoke-static {v1}, Lcom/android/server/am/PKTopWindowCommonData;->jsonToMap(Lcom/alibaba/fastjson/JSONObject;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const/4 v6, 0x1

    aput-object v2, v5, v6

    return-object v5
.end method
