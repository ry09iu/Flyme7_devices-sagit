.class public Lcom/android/server/wifi/WifiQualifiedNetworkSelector;
.super Ljava/lang/Object;
.source "WifiQualifiedNetworkSelector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiQualifiedNetworkSelector$BssidBlacklistStatus;,
        Lcom/android/server/wifi/WifiQualifiedNetworkSelector$ExternalScoreEvaluator;
    }
.end annotation


# static fields
.field public static final BAND_AWARD_5GHz:I = 0x28

.field public static final BSSID_BLACKLIST_EXPIRE_TIME:I = 0x493e0

.field public static final BSSID_BLACKLIST_THRESHOLD:I = 0x3

.field private static final FORCE_DEBUG:Z = true

.field private static final INVALID_TIME_STAMP:I = -0x1

.field public static final LAST_SELECTION_AWARD:I = 0x1e0

.field public static final MINIMUM_2G_ACCEPT_RSSI:I = -0x55

.field public static final MINIMUM_5G_ACCEPT_RSSI:I = -0x52

.field private static final MINIMUM_QUALIFIED_NETWORK_SELECTION_INTERVAL:I = 0x2710

.field public static final PASSPOINT_SECURITY_AWARD:I = 0x28

.field public static final QUALIFIED_RSSI_24G_BAND:I = -0x49

.field public static final QUALIFIED_RSSI_5G_BAND:I = -0x46

.field public static final RSSI_SATURATION_2G_BAND:I = -0x3c

.field public static final RSSI_SATURATION_5G_BAND:I = -0x39

.field public static final RSSI_SCORE_OFFSET:I = 0x55

.field public static final RSSI_SCORE_SLOPE:I = 0x4

.field public static final SAME_BSSID_AWARD:I = 0x18

.field public static final SAME_NETWORK_AWARD:I = 0x10

.field public static final SCAN_RESULT_MAXIMUNM_AGE:I = 0x9c40

.field public static final SECURITY_AWARD:I = 0x50

.field private static final TAG:Ljava/lang/String; = "WifiQualifiedNetworkSelector:"


# instance fields
.field private mBssidBlacklist:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/wifi/WifiQualifiedNetworkSelector$BssidBlacklistStatus;",
            ">;"
        }
    .end annotation
.end field

.field private mClock:Lcom/android/server/wifi/Clock;

.field private mCurrentBssid:Ljava/lang/String;

.field private mCurrentConnectedNetwork:Landroid/net/wifi/WifiConfiguration;

.field private mDbg:Z

.field private volatile mFilteredScanDetails:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Lcom/android/server/wifi/ScanDetail;",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;>;"
        }
    .end annotation
.end field

.field private mLastQualifiedNetworkSelectionTimeStamp:J

.field private mLastSelectionAward:I

.field private final mLocalLog:Landroid/util/LocalLog;

.field private mNetworkScoreCache:Lcom/android/server/wifi/WifiNetworkScoreCache;

.field private final mNoIntnetPenalty:I

.field private mPasspointSecurityAward:I

.field private mRssiScoreOffset:I

.field private mRssiScoreSlope:I

.field private mSameBssidAward:I

.field private mScanDetails:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/ScanDetail;",
            ">;"
        }
    .end annotation
.end field

.field private mScoreManager:Landroid/net/NetworkScoreManager;

.field private mSecurityAward:I

.field private mUserPreferedBand:I

.field private mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

.field private mWifiInfo:Landroid/net/wifi/WifiInfo;

.field private skipQualifiedNetworkSelectionForAutoConnect:Z


# direct methods
.method static synthetic -wrap0(Landroid/net/wifi/ScanResult;)Ljava/lang/String;
    .locals 1
    .param p0, "scanResult"    # Landroid/net/wifi/ScanResult;

    .prologue
    invoke-static {p0}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->toScanId(Landroid/net/wifi/ScanResult;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method constructor <init>(Lcom/android/server/wifi/WifiConfigManager;Landroid/content/Context;Landroid/net/wifi/WifiInfo;Lcom/android/server/wifi/Clock;)V
    .locals 5
    .param p1, "configureStore"    # Lcom/android/server/wifi/WifiConfigManager;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "wifiInfo"    # Landroid/net/wifi/WifiInfo;
    .param p4, "clock"    # Lcom/android/server/wifi/Clock;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-boolean v3, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->skipQualifiedNetworkSelectionForAutoConnect:Z

    .line 60
    iput-boolean v4, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mDbg:Z

    .line 61
    iput-object v2, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mCurrentConnectedNetwork:Landroid/net/wifi/WifiConfiguration;

    .line 62
    iput-object v2, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mCurrentBssid:Ljava/lang/String;

    .line 64
    iput-object v2, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mScanDetails:Ljava/util/List;

    .line 67
    iput-object v2, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mFilteredScanDetails:Ljava/util/List;

    .line 100
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mLastQualifiedNetworkSelectionTimeStamp:J

    .line 102
    new-instance v0, Landroid/util/LocalLog;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mLocalLog:Landroid/util/LocalLog;

    .line 103
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mRssiScoreSlope:I

    .line 104
    const/16 v0, 0x55

    iput v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mRssiScoreOffset:I

    .line 105
    const/16 v0, 0x18

    iput v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mSameBssidAward:I

    .line 106
    const/16 v0, 0x1e0

    iput v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mLastSelectionAward:I

    .line 107
    const/16 v0, 0x28

    iput v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mPasspointSecurityAward:I

    .line 108
    const/16 v0, 0x50

    iput v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mSecurityAward:I

    .line 109
    iput v3, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mUserPreferedBand:I

    .line 111
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 110
    iput-object v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mBssidBlacklist:Ljava/util/Map;

    .line 167
    iput-object p1, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    .line 168
    iput-object p3, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 169
    iput-object p4, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mClock:Lcom/android/server/wifi/Clock;

    .line 171
    const-string/jumbo v0, "network_score"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkScoreManager;

    .line 170
    iput-object v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mScoreManager:Landroid/net/NetworkScoreManager;

    .line 172
    iget-object v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mScoreManager:Landroid/net/NetworkScoreManager;

    if-eqz v0, :cond_0

    .line 173
    new-instance v0, Lcom/android/server/wifi/WifiNetworkScoreCache;

    invoke-direct {v0, p2}, Lcom/android/server/wifi/WifiNetworkScoreCache;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mNetworkScoreCache:Lcom/android/server/wifi/WifiNetworkScoreCache;

    .line 174
    iget-object v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mScoreManager:Landroid/net/NetworkScoreManager;

    iget-object v1, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mNetworkScoreCache:Lcom/android/server/wifi/WifiNetworkScoreCache;

    invoke-virtual {v0, v4, v1}, Landroid/net/NetworkScoreManager;->registerNetworkScoreCache(ILandroid/net/INetworkScoreCache;)V

    .line 181
    :goto_0
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 182
    const v1, 0x10e001b

    .line 181
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mRssiScoreSlope:I

    .line 183
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 184
    const v1, 0x10e001a

    .line 183
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mRssiScoreOffset:I

    .line 185
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 186
    const v1, 0x10e001c

    .line 185
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mSameBssidAward:I

    .line 187
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 188
    const v1, 0x10e001d

    .line 187
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mLastSelectionAward:I

    .line 189
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 190
    const v1, 0x10e001e

    .line 189
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mPasspointSecurityAward:I

    .line 191
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 192
    const v1, 0x10e001f

    .line 191
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mSecurityAward:I

    .line 193
    iget-object v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigManager;->mThresholdSaturatedRssi24:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget v1, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mRssiScoreOffset:I

    add-int/2addr v0, v1

    .line 194
    iget v1, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mRssiScoreSlope:I

    .line 193
    mul-int/2addr v0, v1

    .line 194
    iget-object v1, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget-object v1, v1, Lcom/android/server/wifi/WifiConfigManager;->mBandAward5Ghz:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    .line 193
    add-int/2addr v0, v1

    .line 195
    iget-object v1, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget-object v1, v1, Lcom/android/server/wifi/WifiConfigManager;->mCurrentNetworkBoost:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    .line 193
    add-int/2addr v0, v1

    .line 195
    iget v1, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mSameBssidAward:I

    .line 193
    add-int/2addr v0, v1

    .line 195
    iget v1, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mSecurityAward:I

    .line 193
    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mNoIntnetPenalty:I

    .line 166
    return-void

    .line 176
    :cond_0
    const-string/jumbo v0, "No network score service: Couldn\'t register as a WiFi score Manager, type=1 service= network_score"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLoge(Ljava/lang/String;)V

    .line 178
    iput-object v2, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mNetworkScoreCache:Lcom/android/server/wifi/WifiNetworkScoreCache;

    goto :goto_0
.end method

.method private getNetworkString(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;
    .locals 2
    .param p1, "network"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v0, 0x0

    .line 203
    if-nez p1, :cond_0

    .line 204
    return-object v0

    .line 207
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isNetworkQualified(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 4
    .param p1, "currentNetwork"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v3, 0x0

    .line 220
    if-nez p1, :cond_0

    .line 221
    const-string/jumbo v1, "Disconnected"

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    .line 222
    return v3

    .line 224
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Current network is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ,ID is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 225
    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 224
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    .line 230
    iget-boolean v1, p1, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    if-eqz v1, :cond_1

    .line 231
    const-string/jumbo v1, "Current is ephemeral. Start reselect"

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    .line 232
    return v3

    .line 236
    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    invoke-virtual {v1, p1}, Lcom/android/server/wifi/WifiConfigManager;->isOpenNetwork(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 237
    const-string/jumbo v1, "Current network is open network"

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    .line 238
    return v3

    .line 244
    :cond_2
    iget-object v1, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->is24GHz()Z

    move-result v1

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mUserPreferedBand:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    .line 245
    iget v1, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mUserPreferedBand:I

    if-eqz v1, :cond_4

    .line 246
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Current band dose not match user preference. Start Qualified Network Selection Current band = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 247
    iget-object v1, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->is24GHz()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "2.4GHz band"

    .line 246
    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 248
    const-string/jumbo v2, "UserPreference band = "

    .line 246
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 248
    iget v2, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mUserPreferedBand:I

    .line 246
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    .line 249
    return v3

    .line 248
    :cond_3
    const-string/jumbo v1, "5GHz band"

    goto :goto_0

    .line 252
    :cond_4
    iget-object v1, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v0

    .line 253
    .local v0, "currentRssi":I
    iget-object v1, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->is24GHz()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 254
    iget-object v1, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget-object v1, v1, Lcom/android/server/wifi/WifiConfigManager;->mThresholdQualifiedRssi24:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-ge v0, v1, :cond_6

    .line 257
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Current band = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->is24GHz()Z

    move-result v1

    if-eqz v1, :cond_8

    const-string/jumbo v1, "2.4GHz band"

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 258
    const-string/jumbo v2, "current RSSI is: "

    .line 257
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    .line 259
    return v3

    .line 255
    :cond_6
    iget-object v1, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->is5GHz()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 256
    iget-object v1, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget-object v1, v1, Lcom/android/server/wifi/WifiConfigManager;->mThresholdQualifiedRssi5:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-lt v0, v1, :cond_5

    .line 262
    :cond_7
    const/4 v1, 0x1

    return v1

    .line 257
    :cond_8
    const-string/jumbo v1, "5GHz band"

    goto :goto_1
.end method

.method private localLog(Ljava/lang/String;)V
    .locals 1
    .param p1, "log"    # Ljava/lang/String;

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mDbg:Z

    if-eqz v0, :cond_0

    .line 125
    const-string/jumbo v0, "WifiQualifiedNetworkSelector:"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 123
    :cond_0
    return-void
.end method

.method private localLoge(Ljava/lang/String;)V
    .locals 1
    .param p1, "log"    # Ljava/lang/String;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 130
    return-void
.end method

.method private needQualifiedNetworkSelection(ZZZZ)Z
    .locals 10
    .param p1, "isLinkDebouncing"    # Z
    .param p2, "isConnected"    # Z
    .param p3, "isDisconnected"    # Z
    .param p4, "isSupplicantTransientState"    # Z

    .prologue
    const/4 v9, 0x1

    const/4 v4, 0x0

    const/4 v8, 0x0

    .line 284
    iget-object v1, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mScanDetails:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 285
    const-string/jumbo v1, "empty scan result"

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    .line 286
    return v8

    .line 290
    :cond_0
    if-eqz p1, :cond_1

    .line 291
    const-string/jumbo v1, "Need not Qualified Network Selection during L2 debouncing"

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    .line 292
    return v8

    .line 294
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->skipQualifiedNetworkSelectionForAutoConnect:Z

    if-eqz v1, :cond_2

    .line 295
    const-string/jumbo v1, "Skip network selction, since auto connection disabled"

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    .line 296
    return v8

    .line 299
    :cond_2
    if-eqz p2, :cond_7

    .line 303
    iget-object v1, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiConfigManager;->getEnableAutoJoinWhenAssociated()Z

    move-result v1

    if-nez v1, :cond_3

    .line 304
    const-string/jumbo v1, "Switch network under connection is not allowed"

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    .line 305
    return v8

    .line 310
    :cond_3
    iget-wide v4, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mLastQualifiedNetworkSelectionTimeStamp:J

    const-wide/16 v6, -0x1

    cmp-long v1, v4, v6

    if-eqz v1, :cond_4

    .line 311
    iget-object v1, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v1}, Lcom/android/server/wifi/Clock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mLastQualifiedNetworkSelectionTimeStamp:J

    sub-long v2, v4, v6

    .line 312
    .local v2, "gap":J
    const-wide/16 v4, 0x2710

    cmp-long v1, v2, v4

    if-gez v1, :cond_4

    .line 313
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Too short to last successful Qualified Network Selection Gap is:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 314
    const-string/jumbo v4, " ms!"

    .line 313
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    .line 315
    return v8

    .line 320
    .end local v2    # "gap":J
    :cond_4
    iget-object v1, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget-object v4, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/server/wifi/WifiConfigManager;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 321
    .local v0, "currentNetwork":Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_5

    .line 325
    return v8

    .line 328
    :cond_5
    iget-object v1, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mCurrentConnectedNetwork:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->isNetworkQualified(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 330
    const-string/jumbo v1, "Current network is not qualified"

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    .line 331
    return v9

    .line 333
    :cond_6
    return v8

    .line 335
    .end local v0    # "currentNetwork":Landroid/net/wifi/WifiConfiguration;
    :cond_7
    if-eqz p3, :cond_8

    .line 336
    iput-object v4, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mCurrentConnectedNetwork:Landroid/net/wifi/WifiConfiguration;

    .line 337
    iput-object v4, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mCurrentBssid:Ljava/lang/String;

    .line 339
    if-eqz p4, :cond_9

    .line 340
    return v8

    .line 344
    :cond_8
    const-string/jumbo v1, "WifiStateMachine is not on connected or disconnected state"

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    .line 345
    return v8

    .line 348
    :cond_9
    return v9
.end method

.method private static toScanId(Landroid/net/wifi/ScanResult;)Ljava/lang/String;
    .locals 4
    .param p0, "scanResult"    # Landroid/net/wifi/ScanResult;

    .prologue
    .line 988
    if-nez p0, :cond_0

    const-string/jumbo v0, "NULL"

    :goto_0
    return-object v0

    .line 989
    :cond_0
    const-string/jumbo v0, "%s:%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private updateBssidBlacklist()V
    .locals 6

    .prologue
    .line 576
    iget-object v2, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mBssidBlacklist:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 577
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/wifi/WifiQualifiedNetworkSelector$BssidBlacklistStatus;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 578
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$BssidBlacklistStatus;

    .line 579
    .local v1, "status":Lcom/android/server/wifi/WifiQualifiedNetworkSelector$BssidBlacklistStatus;
    if-eqz v1, :cond_0

    iget-boolean v2, v1, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$BssidBlacklistStatus;->mIsBlacklisted:Z

    if-eqz v2, :cond_0

    .line 580
    iget-object v2, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v2}, Lcom/android/server/wifi/Clock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, v1, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$BssidBlacklistStatus;->mBlacklistedTimeStamp:J

    sub-long/2addr v2, v4

    .line 581
    const-wide/32 v4, 0x493e0

    .line 580
    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 582
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 575
    .end local v1    # "status":Lcom/android/server/wifi/WifiQualifiedNetworkSelector$BssidBlacklistStatus;
    :cond_1
    return-void
.end method

.method private updateSavedNetworkSelectionStatus()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 420
    iget-object v7, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    invoke-virtual {v7}, Lcom/android/server/wifi/WifiConfigManager;->getSavedNetworks()Ljava/util/List;

    move-result-object v4

    .line 421
    .local v4, "savedNetworks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_0

    .line 422
    const-string/jumbo v7, "no saved network"

    invoke-direct {p0, v7}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    .line 423
    return-void

    .line 426
    :cond_0
    new-instance v5, Ljava/lang/StringBuffer;

    const-string/jumbo v7, "Saved Network List\n"

    invoke-direct {v5, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 427
    .local v5, "sbuf":Ljava/lang/StringBuffer;
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "network$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    .line 428
    .local v2, "network":Landroid/net/wifi/WifiConfiguration;
    iget-object v7, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget v8, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v7, v8}, Lcom/android/server/wifi/WifiConfigManager;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 430
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v6

    .line 433
    .local v6, "status":Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
    invoke-virtual {v6}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->isNetworkTemporaryDisabled()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 434
    iget-object v7, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget v8, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v7, v8}, Lcom/android/server/wifi/WifiConfigManager;->tryEnableQualifiedNetwork(I)Z

    .line 438
    :cond_1
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setCandidate(Landroid/net/wifi/ScanResult;)V

    .line 439
    const/high16 v7, -0x80000000

    invoke-virtual {v6, v7}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setCandidateScore(I)V

    .line 440
    invoke-virtual {v6, v10}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setSeenInLastQualifiedNetworkSelection(Z)V

    .line 443
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "    "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->getNetworkString(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " User Preferred BSSID:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 444
    iget-object v8, v2, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    .line 443
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 444
    const-string/jumbo v8, " FQDN:"

    .line 443
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 444
    iget-object v8, v2, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    .line 443
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 444
    const-string/jumbo v8, " "

    .line 443
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 445
    invoke-virtual {v6}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkStatusString()Ljava/lang/String;

    move-result-object v8

    .line 443
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 445
    const-string/jumbo v8, " Disable account: "

    .line 443
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 446
    const/4 v1, 0x0

    .line 447
    .local v1, "index":I
    :goto_1
    const/16 v7, 0xa

    .line 446
    if-ge v1, v7, :cond_2

    .line 448
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getDisableReasonCounter(I)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 447
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 450
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Connect Choice:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getConnectChoice()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " set time:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 451
    invoke-virtual {v6}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getConnectChoiceTimestamp()J

    move-result-wide v8

    .line 450
    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 452
    const-string/jumbo v7, "\n"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 454
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v1    # "index":I
    .end local v2    # "network":Landroid/net/wifi/WifiConfiguration;
    .end local v6    # "status":Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
    :cond_3
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    .line 419
    return-void
.end method


# virtual methods
.method calculateBssidScore(Landroid/net/wifi/ScanResult;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;ZZLjava/lang/StringBuffer;)I
    .locals 12
    .param p1, "scanResult"    # Landroid/net/wifi/ScanResult;
    .param p2, "network"    # Landroid/net/wifi/WifiConfiguration;
    .param p3, "currentNetwork"    # Landroid/net/wifi/WifiConfiguration;
    .param p4, "sameBssid"    # Z
    .param p5, "sameSelect"    # Z
    .param p6, "sbuf"    # Ljava/lang/StringBuffer;

    .prologue
    .line 357
    iget v5, p1, Landroid/net/wifi/ScanResult;->level:I

    iget-object v8, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget-object v8, v8, Lcom/android/server/wifi/WifiConfigManager;->mThresholdSaturatedRssi24:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v8

    if-gt v5, v8, :cond_7

    .line 358
    iget v3, p1, Landroid/net/wifi/ScanResult;->level:I

    .line 359
    .local v3, "rssi":I
    :goto_0
    iget v5, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mRssiScoreOffset:I

    add-int/2addr v5, v3

    iget v8, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mRssiScoreSlope:I

    mul-int/2addr v5, v8

    add-int/lit8 v4, v5, 0x0

    .line 360
    .local v4, "score":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, " RSSI score: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p6

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 361
    invoke-virtual {p1}, Landroid/net/wifi/ScanResult;->is5GHz()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 363
    iget-object v5, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget-object v5, v5, Lcom/android/server/wifi/WifiConfigManager;->mBandAward5Ghz:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    add-int/2addr v4, v5

    .line 364
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, " 5GHz bonus: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v8, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget-object v8, v8, Lcom/android/server/wifi/WifiConfigManager;->mBandAward5Ghz:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p6

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 368
    :cond_0
    if-eqz p5, :cond_1

    .line 369
    iget-object v5, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v5}, Lcom/android/server/wifi/Clock;->elapsedRealtime()J

    move-result-wide v8

    .line 370
    iget-object v5, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    invoke-virtual {v5}, Lcom/android/server/wifi/WifiConfigManager;->getLastSelectedTimeStamp()J

    move-result-wide v10

    .line 369
    sub-long v6, v8, v10

    .line 372
    .local v6, "timeDifference":J
    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-lez v5, :cond_1

    .line 373
    iget v5, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mLastSelectionAward:I

    const-wide/16 v8, 0x3e8

    div-long v8, v6, v8

    const-wide/16 v10, 0x3c

    div-long/2addr v8, v10

    long-to-int v8, v8

    sub-int v2, v5, v8

    .line 374
    .local v2, "bonus":I
    if-lez v2, :cond_8

    move v5, v2

    :goto_1
    add-int/2addr v4, v5

    .line 375
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, " User selected it last time "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-wide/16 v8, 0x3e8

    div-long v8, v6, v8

    const-wide/16 v10, 0x3c

    div-long/2addr v8, v10

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 376
    const-string/jumbo v8, " minutes ago, bonus:"

    .line 375
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p6

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 381
    .end local v2    # "bonus":I
    .end local v6    # "timeDifference":J
    :cond_1
    if-eq p2, p3, :cond_2

    invoke-virtual {p2, p3}, Landroid/net/wifi/WifiConfiguration;->isLinked(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 382
    :cond_2
    iget-object v5, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget-object v5, v5, Lcom/android/server/wifi/WifiConfigManager;->mCurrentNetworkBoost:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    add-int/2addr v4, v5

    .line 383
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, " Same network with current associated. Bonus: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 384
    iget-object v8, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget-object v8, v8, Lcom/android/server/wifi/WifiConfigManager;->mCurrentNetworkBoost:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v8

    .line 383
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p6

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 388
    :cond_3
    if-eqz p4, :cond_4

    .line 389
    iget v5, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mSameBssidAward:I

    add-int/2addr v4, v5

    .line 390
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, " Same BSSID with current association. Bonus: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v8, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mSameBssidAward:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p6

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 394
    :cond_4
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 395
    iget v5, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mPasspointSecurityAward:I

    add-int/2addr v4, v5

    .line 396
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, " Passpoint Bonus:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v8, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mPasspointSecurityAward:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p6

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 404
    :cond_5
    :goto_2
    iget v5, p2, Landroid/net/wifi/WifiConfiguration;->numNoInternetAccessReports:I

    if-lez v5, :cond_6

    iget-boolean v5, p2, Landroid/net/wifi/WifiConfiguration;->validatedInternetAccess:Z

    if-eqz v5, :cond_a

    .line 410
    :cond_6
    :goto_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, " Score for scanResult: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, " and Network ID: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 411
    iget v8, p2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 410
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 411
    const-string/jumbo v8, " final score:"

    .line 410
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 411
    const-string/jumbo v8, "\n\n"

    .line 410
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p6

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 413
    return v4

    .line 358
    .end local v3    # "rssi":I
    .end local v4    # "score":I
    :cond_7
    iget-object v5, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget-object v5, v5, Lcom/android/server/wifi/WifiConfigManager;->mThresholdSaturatedRssi24:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    .restart local v3    # "rssi":I
    goto/16 :goto_0

    .line 374
    .restart local v2    # "bonus":I
    .restart local v4    # "score":I
    .restart local v6    # "timeDifference":J
    :cond_8
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 397
    .end local v2    # "bonus":I
    .end local v6    # "timeDifference":J
    :cond_9
    iget-object v5, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    invoke-virtual {v5, p2}, Lcom/android/server/wifi/WifiConfigManager;->isOpenNetwork(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 398
    iget v5, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mSecurityAward:I

    add-int/2addr v4, v5

    .line 399
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, " Secure network Bonus:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v8, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mSecurityAward:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p6

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 405
    :cond_a
    iget v5, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mNoIntnetPenalty:I

    sub-int/2addr v4, v5

    .line 406
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, " No internet Penalty:-"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v8, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mNoIntnetPenalty:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p6

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_3
.end method

.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 994
    const-string/jumbo v0, "Dump of WifiQualifiedNetworkSelector"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 995
    const-string/jumbo v0, "WifiQualifiedNetworkSelector - Log Begin ----"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 996
    iget-object v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p1, p2, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 997
    const-string/jumbo v0, "WifiQualifiedNetworkSelector - Log End ----"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 993
    return-void
.end method

.method public enableBssidForQualityNetworkSelection(Ljava/lang/String;Z)Z
    .locals 6
    .param p1, "bssid"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 546
    if-eqz p2, :cond_1

    .line 547
    iget-object v4, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mBssidBlacklist:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0

    .line 549
    :cond_1
    if-eqz p1, :cond_2

    .line 550
    iget-object v4, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mBssidBlacklist:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$BssidBlacklistStatus;

    .line 551
    .local v1, "status":Lcom/android/server/wifi/WifiQualifiedNetworkSelector$BssidBlacklistStatus;
    if-nez v1, :cond_3

    .line 553
    new-instance v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$BssidBlacklistStatus;

    invoke-direct {v0, v5}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$BssidBlacklistStatus;-><init>(Lcom/android/server/wifi/WifiQualifiedNetworkSelector$BssidBlacklistStatus;)V

    .line 554
    .local v0, "newStatus":Lcom/android/server/wifi/WifiQualifiedNetworkSelector$BssidBlacklistStatus;
    iget v2, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$BssidBlacklistStatus;->mCounter:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$BssidBlacklistStatus;->mCounter:I

    .line 555
    iget-object v2, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mBssidBlacklist:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 566
    .end local v0    # "newStatus":Lcom/android/server/wifi/WifiQualifiedNetworkSelector$BssidBlacklistStatus;
    .end local v1    # "status":Lcom/android/server/wifi/WifiQualifiedNetworkSelector$BssidBlacklistStatus;
    :cond_2
    return v3

    .line 556
    .restart local v1    # "status":Lcom/android/server/wifi/WifiQualifiedNetworkSelector$BssidBlacklistStatus;
    :cond_3
    iget-boolean v4, v1, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$BssidBlacklistStatus;->mIsBlacklisted:Z

    if-nez v4, :cond_2

    .line 557
    iget v4, v1, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$BssidBlacklistStatus;->mCounter:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v1, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$BssidBlacklistStatus;->mCounter:I

    .line 558
    iget v4, v1, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$BssidBlacklistStatus;->mCounter:I

    const/4 v5, 0x3

    if-lt v4, v5, :cond_2

    .line 559
    iput-boolean v2, v1, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$BssidBlacklistStatus;->mIsBlacklisted:Z

    .line 560
    iget-object v3, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v3}, Lcom/android/server/wifi/Clock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, v1, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$BssidBlacklistStatus;->mBlacklistedTimeStamp:J

    .line 561
    return v2
.end method

.method enableVerboseLogging(I)V
    .locals 1
    .param p1, "verbose"    # I

    .prologue
    const/4 v0, 0x1

    .line 199
    if-gtz p1, :cond_0

    :cond_0
    iput-boolean v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mDbg:Z

    .line 198
    return-void
.end method

.method public getConnetionTargetNetwork()Landroid/net/wifi/WifiConfiguration;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mCurrentConnectedNetwork:Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method getExternalScoreCandidate(Lcom/android/server/wifi/WifiQualifiedNetworkSelector$ExternalScoreEvaluator;)Landroid/net/wifi/WifiConfiguration;
    .locals 10
    .param p1, "scoreEvaluator"    # Lcom/android/server/wifi/WifiQualifiedNetworkSelector$ExternalScoreEvaluator;

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 920
    const/4 v0, 0x0

    .line 921
    .local v0, "networkCandidate":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p1}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$ExternalScoreEvaluator;->getBestCandidateType()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 961
    const-string/jumbo v4, "Unhandled ExternalScoreEvaluator case. No candidate selected."

    invoke-direct {p0, v4}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLoge(Ljava/lang/String;)V

    .line 964
    .end local v0    # "networkCandidate":Landroid/net/wifi/WifiConfiguration;
    :goto_0
    return-object v0

    .line 924
    .restart local v0    # "networkCandidate":Landroid/net/wifi/WifiConfiguration;
    :pswitch_0
    invoke-virtual {p1}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$ExternalScoreEvaluator;->getScanResultCandidate()Landroid/net/wifi/ScanResult;

    move-result-object v3

    .line 926
    .local v3, "untrustedScanResultCandidate":Landroid/net/wifi/ScanResult;
    iget-object v4, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    invoke-virtual {v4, v3}, Lcom/android/server/wifi/WifiConfigManager;->wifiConfigurationFromScanResult(Landroid/net/wifi/ScanResult;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    .line 930
    .local v2, "unTrustedNetworkCandidate":Landroid/net/wifi/WifiConfiguration;
    iput-boolean v7, v2, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    .line 931
    iget-object v4, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mNetworkScoreCache:Lcom/android/server/wifi/WifiNetworkScoreCache;

    if-eqz v4, :cond_0

    .line 933
    iget-object v4, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mNetworkScoreCache:Lcom/android/server/wifi/WifiNetworkScoreCache;

    invoke-virtual {v4, v3}, Lcom/android/server/wifi/WifiNetworkScoreCache;->getMeteredHint(Landroid/net/wifi/ScanResult;)Z

    move-result v4

    .line 932
    iput-boolean v4, v2, Landroid/net/wifi/WifiConfiguration;->meteredHint:Z

    .line 935
    :cond_0
    iget-object v4, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    .line 936
    const/4 v5, -0x1

    .line 935
    invoke-virtual {v4, v2, v5}, Lcom/android/server/wifi/WifiConfigManager;->saveNetwork(Landroid/net/wifi/WifiConfiguration;I)Lcom/android/server/wifi/NetworkUpdateResult;

    .line 938
    const-string/jumbo v4, "new ephemeral candidate %s network ID:%d, meteredHint=%b"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    .line 940
    invoke-static {v3}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->toScanId(Landroid/net/wifi/ScanResult;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    iget v6, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    .line 941
    iget-boolean v6, v2, Landroid/net/wifi/WifiConfiguration;->meteredHint:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v9

    .line 938
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    .line 943
    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setCandidate(Landroid/net/wifi/ScanResult;)V

    .line 945
    move-object v0, v2

    .line 946
    .local v0, "networkCandidate":Landroid/net/wifi/WifiConfiguration;
    goto :goto_0

    .line 949
    .end local v2    # "unTrustedNetworkCandidate":Landroid/net/wifi/WifiConfiguration;
    .end local v3    # "untrustedScanResultCandidate":Landroid/net/wifi/ScanResult;
    .local v0, "networkCandidate":Landroid/net/wifi/WifiConfiguration;
    :pswitch_1
    invoke-virtual {p1}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$ExternalScoreEvaluator;->getScanResultCandidate()Landroid/net/wifi/ScanResult;

    move-result-object v1

    .line 950
    .local v1, "scanResultCandidate":Landroid/net/wifi/ScanResult;
    invoke-virtual {p1}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$ExternalScoreEvaluator;->getSavedConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 951
    .local v0, "networkCandidate":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setCandidate(Landroid/net/wifi/ScanResult;)V

    .line 952
    const-string/jumbo v4, "new scored candidate %s network ID:%d"

    new-array v5, v9, [Ljava/lang/Object;

    .line 953
    invoke-static {v1}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->toScanId(Landroid/net/wifi/ScanResult;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    .line 952
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    goto :goto_0

    .line 957
    .end local v1    # "scanResultCandidate":Landroid/net/wifi/ScanResult;
    .local v0, "networkCandidate":Landroid/net/wifi/WifiConfiguration;
    :pswitch_2
    const-string/jumbo v4, "ExternalScoreEvaluator did not see any good candidates."

    invoke-direct {p0, v4}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    goto :goto_0

    .line 921
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getFilteredScanDetails()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Lcom/android/server/wifi/ScanDetail;",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mFilteredScanDetails:Ljava/util/List;

    return-object v0
.end method

.method getNetworkScore(Landroid/net/wifi/ScanResult;Z)Ljava/lang/Integer;
    .locals 3
    .param p1, "scanResult"    # Landroid/net/wifi/ScanResult;
    .param p2, "isActiveNetwork"    # Z

    .prologue
    const/4 v2, 0x0

    .line 976
    iget-object v1, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mNetworkScoreCache:Lcom/android/server/wifi/WifiNetworkScoreCache;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mNetworkScoreCache:Lcom/android/server/wifi/WifiNetworkScoreCache;

    invoke-virtual {v1, p1}, Lcom/android/server/wifi/WifiNetworkScoreCache;->isScoredNetwork(Landroid/net/wifi/ScanResult;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 977
    iget-object v1, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mNetworkScoreCache:Lcom/android/server/wifi/WifiNetworkScoreCache;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wifi/WifiNetworkScoreCache;->getNetworkScore(Landroid/net/wifi/ScanResult;Z)I

    move-result v0

    .line 978
    .local v0, "networkScore":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->toScanId(Landroid/net/wifi/ScanResult;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " has score: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    .line 979
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    .line 981
    .end local v0    # "networkScore":I
    :cond_0
    return-object v2
.end method

.method public isBssidDisabled(Ljava/lang/String;)Z
    .locals 2
    .param p1, "bssid"    # Ljava/lang/String;

    .prologue
    .line 595
    iget-object v1, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mBssidBlacklist:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$BssidBlacklistStatus;

    .line 596
    .local v0, "status":Lcom/android/server/wifi/WifiQualifiedNetworkSelector$BssidBlacklistStatus;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    iget-boolean v1, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$BssidBlacklistStatus;->mIsBlacklisted:Z

    goto :goto_0
.end method

.method public selectQualifiedNetwork(ZZLjava/util/List;ZZZZ)Landroid/net/wifi/WifiConfiguration;
    .locals 48
    .param p1, "forceSelectNetwork"    # Z
    .param p2, "isUntrustedConnectionsAllowed"    # Z
    .param p4, "isLinkDebouncing"    # Z
    .param p5, "isConnected"    # Z
    .param p6, "isDisconnected"    # Z
    .param p7, "isSupplicantTransient"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/ScanDetail;",
            ">;ZZZZ)",
            "Landroid/net/wifi/WifiConfiguration;"
        }
    .end annotation

    .prologue
    .line 626
    .local p3, "scanDetails":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/ScanDetail;>;"
    const-string/jumbo v6, "==========start qualified Network Selection=========="

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    .line 627
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mScanDetails:Ljava/util/List;

    .line 628
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 629
    .local v19, "filteredScanDetails":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Lcom/android/server/wifi/ScanDetail;Landroid/net/wifi/WifiConfiguration;>;>;"
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mCurrentConnectedNetwork:Landroid/net/wifi/WifiConfiguration;

    if-nez v6, :cond_0

    .line 631
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v9}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v9

    invoke-virtual {v6, v9}, Lcom/android/server/wifi/WifiConfigManager;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v6

    .line 630
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mCurrentConnectedNetwork:Landroid/net/wifi/WifiConfiguration;

    .line 636
    :cond_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mCurrentBssid:Ljava/lang/String;

    .line 638
    if-nez p1, :cond_1

    move-object/from16 v0, p0

    move/from16 v1, p4

    move/from16 v2, p5

    move/from16 v3, p6

    move/from16 v4, p7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->needQualifiedNetworkSelection(ZZZZ)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 646
    :cond_1
    const/high16 v16, -0x80000000

    .line 647
    .local v16, "currentHighestScore":I
    const/16 v37, 0x0

    .line 648
    .local v37, "scanResultCandidate":Landroid/net/wifi/ScanResult;
    const/16 v27, 0x0

    .line 650
    .local v27, "networkCandidate":Landroid/net/wifi/WifiConfiguration;
    new-instance v18, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$ExternalScoreEvaluator;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mLocalLog:Landroid/util/LocalLog;

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mDbg:Z

    move-object/from16 v0, v18

    invoke-direct {v0, v6, v9}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$ExternalScoreEvaluator;-><init>(Landroid/util/LocalLog;Z)V

    .line 651
    .local v18, "externalScoreEvaluator":Lcom/android/server/wifi/WifiQualifiedNetworkSelector$ExternalScoreEvaluator;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiConfigManager;->getLastSelectedConfiguration()Ljava/lang/String;

    move-result-object v22

    .line 653
    .local v22, "lastUserSelectedNetWorkKey":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Lcom/android/server/wifi/WifiConfigManager;->getWifiConfiguration(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v23

    .line 654
    .local v23, "lastUserSelectedNetwork":Landroid/net/wifi/WifiConfiguration;
    if-eqz v23, :cond_2

    .line 655
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Last selection is "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v23

    iget-object v9, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v9, " Time to now: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 656
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v9}, Lcom/android/server/wifi/Clock;->elapsedRealtime()J

    move-result-wide v10

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    invoke-virtual {v9}, Lcom/android/server/wifi/WifiConfigManager;->getLastSelectedTimeStamp()J

    move-result-wide v46

    sub-long v10, v10, v46

    .line 657
    const-wide/16 v46, 0x3e8

    .line 656
    div-long v10, v10, v46

    .line 657
    const-wide/16 v46, 0x3c

    .line 656
    div-long v10, v10, v46

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 657
    const-string/jumbo v9, " minutes"

    .line 656
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 655
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    .line 660
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->updateSavedNetworkSelectionStatus()V

    .line 661
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->updateBssidBlacklist()V

    .line 663
    new-instance v24, Ljava/lang/StringBuffer;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuffer;-><init>()V

    .line 664
    .local v24, "lowSignalScan":Ljava/lang/StringBuffer;
    new-instance v29, Ljava/lang/StringBuffer;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuffer;-><init>()V

    .line 665
    .local v29, "notSavedScan":Ljava/lang/StringBuffer;
    new-instance v28, Ljava/lang/StringBuffer;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuffer;-><init>()V

    .line 666
    .local v28, "noValidSsid":Ljava/lang/StringBuffer;
    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    .line 667
    .local v12, "scoreHistory":Ljava/lang/StringBuffer;
    new-instance v44, Ljava/util/ArrayList;

    invoke-direct/range {v44 .. v44}, Ljava/util/ArrayList;-><init>()V

    .line 670
    .local v44, "unscoredNetworks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/NetworkKey;>;"
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mScanDetails:Ljava/util/List;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v35

    .end local v27    # "networkCandidate":Landroid/net/wifi/WifiConfiguration;
    .end local v37    # "scanResultCandidate":Landroid/net/wifi/ScanResult;
    .local v35, "scanDetail$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_20

    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/android/server/wifi/ScanDetail;

    .line 671
    .local v34, "scanDetail":Lcom/android/server/wifi/ScanDetail;
    invoke-virtual/range {v34 .. v34}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    move-result-object v7

    .line 673
    .local v7, "scanResult":Landroid/net/wifi/ScanResult;
    iget-object v6, v7, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-eqz v6, :cond_4

    iget-object v6, v7, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 674
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mDbg:Z

    if-eqz v6, :cond_3

    .line 676
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v7, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v9, " / "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 640
    .end local v7    # "scanResult":Landroid/net/wifi/ScanResult;
    .end local v12    # "scoreHistory":Ljava/lang/StringBuffer;
    .end local v16    # "currentHighestScore":I
    .end local v18    # "externalScoreEvaluator":Lcom/android/server/wifi/WifiQualifiedNetworkSelector$ExternalScoreEvaluator;
    .end local v22    # "lastUserSelectedNetWorkKey":Ljava/lang/String;
    .end local v23    # "lastUserSelectedNetwork":Landroid/net/wifi/WifiConfiguration;
    .end local v24    # "lowSignalScan":Ljava/lang/StringBuffer;
    .end local v28    # "noValidSsid":Ljava/lang/StringBuffer;
    .end local v29    # "notSavedScan":Ljava/lang/StringBuffer;
    .end local v34    # "scanDetail":Lcom/android/server/wifi/ScanDetail;
    .end local v35    # "scanDetail$iterator":Ljava/util/Iterator;
    .end local v44    # "unscoredNetworks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/NetworkKey;>;"
    :cond_5
    const-string/jumbo v6, "Quit qualified Network Selection since it is not forced and current network is qualified already"

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    .line 642
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mFilteredScanDetails:Ljava/util/List;

    .line 643
    const/4 v6, 0x0

    return-object v6

    .line 681
    .restart local v7    # "scanResult":Landroid/net/wifi/ScanResult;
    .restart local v12    # "scoreHistory":Ljava/lang/StringBuffer;
    .restart local v16    # "currentHighestScore":I
    .restart local v18    # "externalScoreEvaluator":Lcom/android/server/wifi/WifiQualifiedNetworkSelector$ExternalScoreEvaluator;
    .restart local v22    # "lastUserSelectedNetWorkKey":Ljava/lang/String;
    .restart local v23    # "lastUserSelectedNetwork":Landroid/net/wifi/WifiConfiguration;
    .restart local v24    # "lowSignalScan":Ljava/lang/StringBuffer;
    .restart local v28    # "noValidSsid":Ljava/lang/StringBuffer;
    .restart local v29    # "notSavedScan":Ljava/lang/StringBuffer;
    .restart local v34    # "scanDetail":Lcom/android/server/wifi/ScanDetail;
    .restart local v35    # "scanDetail$iterator":Ljava/util/Iterator;
    .restart local v44    # "unscoredNetworks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/NetworkKey;>;"
    :cond_6
    invoke-static {v7}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->toScanId(Landroid/net/wifi/ScanResult;)Ljava/lang/String;

    move-result-object v36

    .line 683
    .local v36, "scanId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget-object v9, v7, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v6, v9}, Lcom/android/server/wifi/WifiConfigManager;->isBssidBlacklisted(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 684
    iget-object v6, v7, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->isBssidDisabled(Ljava/lang/String;)Z

    move-result v6

    .line 683
    if-eqz v6, :cond_8

    .line 686
    :cond_7
    const-string/jumbo v6, "WifiQualifiedNetworkSelector:"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v36

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " is in blacklist."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 691
    :cond_8
    invoke-virtual {v7}, Landroid/net/wifi/ScanResult;->is24GHz()Z

    move-result v6

    if-eqz v6, :cond_a

    iget v6, v7, Landroid/net/wifi/ScanResult;->level:I

    .line 692
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget-object v9, v9, Lcom/android/server/wifi/WifiConfigManager;->mThresholdMinimumRssi24:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v9

    .line 691
    if-ge v6, v9, :cond_a

    .line 695
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mDbg:Z

    if-eqz v6, :cond_3

    .line 696
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v36

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v9, "("

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Landroid/net/wifi/ScanResult;->is24GHz()Z

    move-result v6

    if-eqz v6, :cond_e

    const-string/jumbo v6, "2.4GHz"

    :goto_1
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 697
    const-string/jumbo v9, ")"

    .line 696
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 697
    iget v9, v7, Landroid/net/wifi/ScanResult;->level:I

    .line 696
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 697
    const-string/jumbo v9, " / "

    .line 696
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 693
    :cond_a
    invoke-virtual {v7}, Landroid/net/wifi/ScanResult;->is5GHz()Z

    move-result v6

    if-eqz v6, :cond_b

    iget v6, v7, Landroid/net/wifi/ScanResult;->level:I

    .line 694
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget-object v9, v9, Lcom/android/server/wifi/WifiConfigManager;->mThresholdMinimumRssi5:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v9

    .line 693
    if-lt v6, v9, :cond_9

    .line 703
    :cond_b
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mNetworkScoreCache:Lcom/android/server/wifi/WifiNetworkScoreCache;

    if-eqz v6, :cond_c

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mNetworkScoreCache:Lcom/android/server/wifi/WifiNetworkScoreCache;

    invoke-virtual {v6, v7}, Lcom/android/server/wifi/WifiNetworkScoreCache;->isScoredNetwork(Landroid/net/wifi/ScanResult;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 719
    :cond_c
    :goto_2
    const/16 v33, 0x0

    .line 721
    .local v33, "potentiallyEphemeral":Z
    const/16 v32, 0x0

    .line 723
    .local v32, "potentialEphemeralCandidate":Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    .line 724
    if-nez p7, :cond_10

    if-nez p5, :cond_10

    move/from16 v6, p4

    .line 723
    :goto_3
    move-object/from16 v0, v34

    invoke-virtual {v9, v0, v6}, Lcom/android/server/wifi/WifiConfigManager;->updateSavedNetworkWithNewScanDetail(Lcom/android/server/wifi/ScanDetail;Z)Ljava/util/List;

    move-result-object v13

    .line 725
    .local v13, "associatedWifiConfigurations":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-nez v13, :cond_11

    .line 726
    const/16 v33, 0x1

    .line 727
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mDbg:Z

    if-eqz v6, :cond_d

    .line 728
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v36

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v9, " / "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 741
    .end local v32    # "potentialEphemeralCandidate":Landroid/net/wifi/WifiConfiguration;
    :cond_d
    :goto_4
    if-eqz v33, :cond_12

    .line 742
    if-eqz p2, :cond_3

    .line 743
    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v6}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->getNetworkScore(Landroid/net/wifi/ScanResult;Z)Ljava/lang/Integer;

    move-result-object v25

    .line 744
    .local v25, "netScore":Ljava/lang/Integer;
    if-eqz v25, :cond_3

    .line 745
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget-object v9, v7, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v6, v9}, Lcom/android/server/wifi/WifiConfigManager;->wasEphemeralNetworkDeleted(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 746
    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v7}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$ExternalScoreEvaluator;->evalUntrustedCandidate(Ljava/lang/Integer;Landroid/net/wifi/ScanResult;)V

    .line 748
    move-object/from16 v0, v34

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    move-object/from16 v0, v19

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 696
    .end local v13    # "associatedWifiConfigurations":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .end local v25    # "netScore":Ljava/lang/Integer;
    .end local v33    # "potentiallyEphemeral":Z
    :cond_e
    const-string/jumbo v6, "5GHz"

    goto/16 :goto_1

    .line 708
    :cond_f
    :try_start_0
    new-instance v45, Landroid/net/WifiKey;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "\""

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v9, v7, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v9, "\""

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v9, v7, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v0, v45

    invoke-direct {v0, v6, v9}, Landroid/net/WifiKey;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    .local v45, "wifiKey":Landroid/net/WifiKey;
    new-instance v30, Landroid/net/NetworkKey;

    move-object/from16 v0, v30

    move-object/from16 v1, v45

    invoke-direct {v0, v1}, Landroid/net/NetworkKey;-><init>(Landroid/net/WifiKey;)V

    .line 711
    .local v30, "ntwkKey":Landroid/net/NetworkKey;
    move-object/from16 v0, v44

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 712
    .end local v30    # "ntwkKey":Landroid/net/NetworkKey;
    .end local v45    # "wifiKey":Landroid/net/WifiKey;
    :catch_0
    move-exception v17

    .line 713
    .local v17, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v6, "WifiQualifiedNetworkSelector:"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Invalid SSID="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v7, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " BSSID="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v7, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 714
    const-string/jumbo v10, " for network score. Skip."

    .line 713
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 724
    .end local v17    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v32    # "potentialEphemeralCandidate":Landroid/net/wifi/WifiConfiguration;
    .restart local v33    # "potentiallyEphemeral":Z
    :cond_10
    const/4 v6, 0x1

    goto/16 :goto_3

    .line 730
    .restart local v13    # "associatedWifiConfigurations":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :cond_11
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v6

    const/4 v9, 0x1

    if-ne v6, v9, :cond_d

    .line 732
    const/4 v6, 0x0

    invoke-interface {v13, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/wifi/WifiConfiguration;

    .line 733
    .local v8, "network":Landroid/net/wifi/WifiConfiguration;
    iget-boolean v6, v8, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    if-eqz v6, :cond_d

    .line 734
    move-object/from16 v32, v8

    .line 735
    .local v32, "potentialEphemeralCandidate":Landroid/net/wifi/WifiConfiguration;
    const/16 v33, 0x1

    goto/16 :goto_4

    .line 758
    .end local v8    # "network":Landroid/net/wifi/WifiConfiguration;
    .end local v32    # "potentialEphemeralCandidate":Landroid/net/wifi/WifiConfiguration;
    :cond_12
    const/high16 v20, -0x80000000

    .line 760
    .local v20, "highestScore":I
    const/4 v14, 0x0

    .line 761
    .local v14, "configurationCandidateForThisScan":Landroid/net/wifi/WifiConfiguration;
    const/16 v31, 0x0

    .line 762
    .local v31, "potentialCandidate":Landroid/net/wifi/WifiConfiguration;
    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v26

    .end local v14    # "configurationCandidateForThisScan":Landroid/net/wifi/WifiConfiguration;
    .end local v31    # "potentialCandidate":Landroid/net/wifi/WifiConfiguration;
    .local v26, "network$iterator":Ljava/util/Iterator;
    :cond_13
    :goto_5
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1e

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/wifi/WifiConfiguration;

    .line 764
    .restart local v8    # "network":Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget-object v6, v6, Lcom/android/server/wifi/WifiConfigManager;->mWifiAutoConnController:Lcom/android/server/wifi/WifiAutoConnController;

    if-eqz v6, :cond_14

    .line 765
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget-object v6, v6, Lcom/android/server/wifi/WifiConfigManager;->mWifiAutoConnController:Lcom/android/server/wifi/WifiAutoConnController;

    iget-object v9, v8, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v6, v9}, Lcom/android/server/wifi/WifiAutoConnController;->isDisableByUser(Ljava/lang/String;)Z

    move-result v6

    .line 764
    if-eqz v6, :cond_14

    .line 766
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mCurrentConnectedNetwork:Landroid/net/wifi/WifiConfiguration;

    if-eqz v6, :cond_13

    .line 767
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mCurrentConnectedNetwork:Landroid/net/wifi/WifiConfiguration;

    iget v6, v6, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iget v9, v8, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v6, v9, :cond_13

    .line 772
    :cond_14
    invoke-virtual {v8}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v39

    .line 773
    .local v39, "status":Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
    const/4 v6, 0x1

    move-object/from16 v0, v39

    invoke-virtual {v0, v6}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setSeenInLastQualifiedNetworkSelection(Z)V

    .line 774
    if-nez v31, :cond_15

    .line 775
    move-object/from16 v31, v8

    .line 777
    :cond_15
    invoke-virtual/range {v39 .. v39}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->isNetworkEnabled()Z

    move-result v6

    if-eqz v6, :cond_13

    .line 779
    iget-object v6, v8, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    if-eqz v6, :cond_16

    iget-object v6, v8, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    const-string/jumbo v9, "any"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 790
    :cond_16
    iget-boolean v6, v8, Landroid/net/wifi/WifiConfiguration;->useExternalScores:Z

    if-eqz v6, :cond_18

    .line 791
    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v6}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->getNetworkScore(Landroid/net/wifi/ScanResult;Z)Ljava/lang/Integer;

    move-result-object v25

    .line 792
    .restart local v25    # "netScore":Ljava/lang/Integer;
    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v8, v7}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$ExternalScoreEvaluator;->evalSavedCandidate(Ljava/lang/Integer;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/ScanResult;)V

    goto :goto_5

    .line 780
    .end local v25    # "netScore":Ljava/lang/Integer;
    :cond_17
    iget-object v6, v8, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    iget-object v9, v7, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_16

    .line 783
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Network: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->getNetworkString(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v9, " has specified"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v9, "BSSID:"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 784
    iget-object v9, v8, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    .line 783
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 784
    const-string/jumbo v9, ". Skip "

    .line 783
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 784
    iget-object v9, v7, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 783
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 796
    :cond_18
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mCurrentConnectedNetwork:Landroid/net/wifi/WifiConfiguration;

    .line 797
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mCurrentBssid:Ljava/lang/String;

    if-nez v6, :cond_1c

    const/4 v10, 0x0

    .line 798
    :goto_6
    if-nez v23, :cond_1d

    :cond_19
    const/4 v11, 0x0

    :goto_7
    move-object/from16 v6, p0

    .line 796
    invoke-virtual/range {v6 .. v12}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->calculateBssidScore(Landroid/net/wifi/ScanResult;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;ZZLjava/lang/StringBuffer;)I

    move-result v38

    .line 800
    .local v38, "score":I
    move/from16 v0, v38

    move/from16 v1, v20

    if-le v0, v1, :cond_1a

    .line 801
    move/from16 v20, v38

    .line 802
    move-object v14, v8

    .line 803
    .local v14, "configurationCandidateForThisScan":Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v31, v8

    .line 806
    .end local v14    # "configurationCandidateForThisScan":Landroid/net/wifi/WifiConfiguration;
    :cond_1a
    invoke-virtual/range {v39 .. v39}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getCandidateScore()I

    move-result v6

    move/from16 v0, v38

    if-gt v0, v6, :cond_1b

    invoke-virtual/range {v39 .. v39}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getCandidateScore()I

    move-result v6

    move/from16 v0, v38

    if-ne v0, v6, :cond_13

    .line 807
    invoke-virtual/range {v39 .. v39}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getCandidate()Landroid/net/wifi/ScanResult;

    move-result-object v6

    if-eqz v6, :cond_13

    .line 808
    iget v6, v7, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual/range {v39 .. v39}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getCandidate()Landroid/net/wifi/ScanResult;

    move-result-object v9

    iget v9, v9, Landroid/net/wifi/ScanResult;->level:I

    if-le v6, v9, :cond_13

    .line 809
    :cond_1b
    move-object/from16 v0, v39

    invoke-virtual {v0, v7}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setCandidate(Landroid/net/wifi/ScanResult;)V

    .line 810
    move-object/from16 v0, v39

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setCandidateScore(I)V

    goto/16 :goto_5

    .line 797
    .end local v38    # "score":I
    :cond_1c
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mCurrentBssid:Ljava/lang/String;

    iget-object v10, v7, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    goto :goto_6

    .line 798
    :cond_1d
    move-object/from16 v0, v23

    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 799
    iget v11, v8, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 798
    if-ne v6, v11, :cond_19

    const/4 v11, 0x1

    goto :goto_7

    .line 814
    .end local v8    # "network":Landroid/net/wifi/WifiConfiguration;
    .end local v39    # "status":Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
    :cond_1e
    move-object/from16 v0, v34

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    move-object/from16 v0, v19

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 816
    move/from16 v0, v20

    move/from16 v1, v16

    if-gt v0, v1, :cond_1f

    move/from16 v0, v20

    move/from16 v1, v16

    if-ne v0, v1, :cond_3

    .line 817
    if-eqz v37, :cond_3

    .line 818
    iget v6, v7, Landroid/net/wifi/ScanResult;->level:I

    move-object/from16 v0, v37

    iget v9, v0, Landroid/net/wifi/ScanResult;->level:I

    if-le v6, v9, :cond_3

    .line 819
    :cond_1f
    move/from16 v16, v20

    .line 820
    move-object/from16 v37, v7

    .line 821
    .local v37, "scanResultCandidate":Landroid/net/wifi/ScanResult;
    move-object/from16 v27, v14

    .line 822
    .local v27, "networkCandidate":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {v14}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setCandidate(Landroid/net/wifi/ScanResult;)V

    goto/16 :goto_0

    .line 826
    .end local v7    # "scanResult":Landroid/net/wifi/ScanResult;
    .end local v13    # "associatedWifiConfigurations":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .end local v20    # "highestScore":I
    .end local v26    # "network$iterator":Ljava/util/Iterator;
    .end local v27    # "networkCandidate":Landroid/net/wifi/WifiConfiguration;
    .end local v33    # "potentiallyEphemeral":Z
    .end local v34    # "scanDetail":Lcom/android/server/wifi/ScanDetail;
    .end local v36    # "scanId":Ljava/lang/String;
    .end local v37    # "scanResultCandidate":Landroid/net/wifi/ScanResult;
    :cond_20
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mFilteredScanDetails:Ljava/util/List;

    .line 829
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mScoreManager:Landroid/net/NetworkScoreManager;

    if-eqz v6, :cond_21

    invoke-virtual/range {v44 .. v44}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eqz v6, :cond_21

    .line 831
    invoke-virtual/range {v44 .. v44}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Landroid/net/NetworkKey;

    move-object/from16 v0, v44

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v43

    check-cast v43, [Landroid/net/NetworkKey;

    .line 832
    .local v43, "unscoredNetworkKeys":[Landroid/net/NetworkKey;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mScoreManager:Landroid/net/NetworkScoreManager;

    move-object/from16 v0, v43

    invoke-virtual {v6, v0}, Landroid/net/NetworkScoreManager;->requestScores([Landroid/net/NetworkKey;)Z

    .line 835
    .end local v43    # "unscoredNetworkKeys":[Landroid/net/NetworkKey;
    :cond_21
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mDbg:Z

    if-eqz v6, :cond_22

    .line 836
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v9, " skipped due to low signal\n"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    .line 837
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v9, " skipped due to not saved\n "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    .line 838
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v9, " skipped due to not valid SSID\n"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    .line 839
    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    .line 843
    :cond_22
    if-eqz v37, :cond_25

    .line 844
    move-object/from16 v41, v27

    .line 846
    .local v41, "tempConfig":Landroid/net/wifi/WifiConfiguration;
    :cond_23
    :goto_8
    invoke-virtual/range {v41 .. v41}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getConnectChoice()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_24

    .line 847
    invoke-virtual/range {v41 .. v41}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getConnectChoice()Ljava/lang/String;

    move-result-object v21

    .line 849
    .local v21, "key":Ljava/lang/String;
    invoke-virtual/range {v41 .. v41}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_27

    .line 850
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Connect choice: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v9, " is itself: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v41 .. v41}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLoge(Ljava/lang/String;)V

    .line 869
    .end local v21    # "key":Ljava/lang/String;
    :cond_24
    :goto_9
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "After user choice adjust, the final candidate is:"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 870
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->getNetworkString(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v9

    .line 869
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 870
    const-string/jumbo v9, " : "

    .line 869
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 870
    move-object/from16 v0, v37

    iget-object v9, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 869
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    .line 875
    .end local v41    # "tempConfig":Landroid/net/wifi/WifiConfiguration;
    :cond_25
    if-nez v37, :cond_26

    .line 876
    const-string/jumbo v6, "Checking the externalScoreEvaluator for candidates..."

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    .line 877
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->getExternalScoreCandidate(Lcom/android/server/wifi/WifiQualifiedNetworkSelector$ExternalScoreEvaluator;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v27

    .line 878
    .restart local v27    # "networkCandidate":Landroid/net/wifi/WifiConfiguration;
    if-eqz v27, :cond_26

    .line 879
    invoke-virtual/range {v27 .. v27}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getCandidate()Landroid/net/wifi/ScanResult;

    move-result-object v37

    .line 883
    .end local v27    # "networkCandidate":Landroid/net/wifi/WifiConfiguration;
    :cond_26
    if-nez v37, :cond_29

    .line 884
    const-string/jumbo v6, "Can not find any suitable candidates"

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    .line 885
    const/4 v6, 0x0

    return-object v6

    .line 854
    .restart local v21    # "key":Ljava/lang/String;
    .restart local v41    # "tempConfig":Landroid/net/wifi/WifiConfiguration;
    :cond_27
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Lcom/android/server/wifi/WifiConfigManager;->getWifiConfiguration(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v41

    .line 856
    if-eqz v41, :cond_28

    .line 858
    invoke-virtual/range {v41 .. v41}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v42

    .line 859
    .local v42, "tempStatus":Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
    invoke-virtual/range {v42 .. v42}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getCandidate()Landroid/net/wifi/ScanResult;

    move-result-object v6

    if-eqz v6, :cond_23

    invoke-virtual/range {v42 .. v42}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->isNetworkEnabled()Z

    move-result v6

    if-eqz v6, :cond_23

    .line 860
    invoke-virtual/range {v42 .. v42}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getCandidate()Landroid/net/wifi/ScanResult;

    move-result-object v37

    .line 861
    .restart local v37    # "scanResultCandidate":Landroid/net/wifi/ScanResult;
    move-object/from16 v27, v41

    .restart local v27    # "networkCandidate":Landroid/net/wifi/WifiConfiguration;
    goto/16 :goto_8

    .line 865
    .end local v27    # "networkCandidate":Landroid/net/wifi/WifiConfiguration;
    .end local v37    # "scanResultCandidate":Landroid/net/wifi/ScanResult;
    .end local v42    # "tempStatus":Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
    :cond_28
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Connect choice: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v9, " has no corresponding saved config"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLoge(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 888
    .end local v21    # "key":Ljava/lang/String;
    .end local v41    # "tempConfig":Landroid/net/wifi/WifiConfiguration;
    :cond_29
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mCurrentConnectedNetwork:Landroid/net/wifi/WifiConfiguration;

    if-nez v6, :cond_2b

    const-string/jumbo v15, "Disconnected"

    .line 890
    .local v15, "currentAssociationId":Ljava/lang/String;
    :goto_a
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->getNetworkString(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v40

    .line 893
    .local v40, "targetAssociationId":Ljava/lang/String;
    invoke-virtual/range {v27 .. v27}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v6

    if-eqz v6, :cond_2a

    .line 895
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "\""

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v37

    iget-object v9, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v9, "\""

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v27

    iput-object v6, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 899
    :cond_2a
    move-object/from16 v0, v37

    iget-object v6, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mCurrentBssid:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2c

    .line 900
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v9, " is already the best choice!"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    .line 909
    :goto_b
    move-object/from16 v0, v37

    iget-object v6, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mCurrentBssid:Ljava/lang/String;

    .line 910
    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mCurrentConnectedNetwork:Landroid/net/wifi/WifiConfiguration;

    .line 911
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v6}, Lcom/android/server/wifi/Clock;->elapsedRealtime()J

    move-result-wide v10

    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mLastQualifiedNetworkSelectionTimeStamp:J

    .line 912
    return-object v27

    .line 889
    .end local v15    # "currentAssociationId":Ljava/lang/String;
    .end local v40    # "targetAssociationId":Ljava/lang/String;
    :cond_2b
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mCurrentConnectedNetwork:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->getNetworkString(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v15

    .restart local v15    # "currentAssociationId":Ljava/lang/String;
    goto :goto_a

    .line 901
    .restart local v40    # "targetAssociationId":Ljava/lang/String;
    :cond_2c
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mCurrentConnectedNetwork:Landroid/net/wifi/WifiConfiguration;

    if-eqz v6, :cond_2e

    .line 902
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mCurrentConnectedNetwork:Landroid/net/wifi/WifiConfiguration;

    iget v6, v6, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move-object/from16 v0, v27

    iget v9, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-eq v6, v9, :cond_2d

    .line 903
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mCurrentConnectedNetwork:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v0, v27

    invoke-virtual {v6, v0}, Landroid/net/wifi/WifiConfiguration;->isLinked(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v6

    .line 901
    if-eqz v6, :cond_2e

    .line 904
    :cond_2d
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Roaming from "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v9, " to "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v40

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    goto :goto_b

    .line 906
    :cond_2e
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "reconnect from "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v9, " to "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v40

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    goto/16 :goto_b
.end method

.method public setUserPreferredBand(I)V
    .locals 0
    .param p1, "band"    # I

    .prologue
    .line 162
    iput p1, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mUserPreferedBand:I

    .line 161
    return-void
.end method

.method setWifiNetworkScoreCache(Lcom/android/server/wifi/WifiNetworkScoreCache;)V
    .locals 0
    .param p1, "cache"    # Lcom/android/server/wifi/WifiNetworkScoreCache;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mNetworkScoreCache:Lcom/android/server/wifi/WifiNetworkScoreCache;

    .line 135
    return-void
.end method

.method public skipQualifiedNetworkSelectionForAutoConnect(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 266
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->skipQualifiedNetworkSelectionForAutoConnect:Z

    .line 265
    return-void
.end method

.method public userSelectNetwork(IZ)Z
    .locals 16
    .param p1, "netId"    # I
    .param p2, "persist"    # Z

    .prologue
    .line 474
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Lcom/android/server/wifi/WifiConfigManager;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v10

    .line 475
    .local v10, "selected":Landroid/net/wifi/WifiConfiguration;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "userSelectNetwork:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " persist:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    .line 476
    if-eqz v10, :cond_0

    iget-object v12, v10, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-nez v12, :cond_1

    .line 477
    :cond_0
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "userSelectNetwork: Bad configuration with nid="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLoge(Ljava/lang/String;)V

    .line 478
    const/4 v12, 0x0

    return v12

    .line 482
    :cond_1
    invoke-virtual {v10}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->isNetworkEnabled()Z

    move-result v12

    if-nez v12, :cond_2

    .line 483
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    .line 484
    const/4 v13, 0x0

    .line 483
    move/from16 v0, p1

    invoke-virtual {v12, v0, v13}, Lcom/android/server/wifi/WifiConfigManager;->updateNetworkSelectionStatus(II)Z

    .line 487
    :cond_2
    if-nez p2, :cond_3

    .line 488
    const-string/jumbo v12, "User has no privilege to overwrite the current priority"

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    .line 489
    const/4 v12, 0x0

    return v12

    .line 492
    :cond_3
    const/4 v2, 0x0

    .line 493
    .local v2, "change":Z
    invoke-virtual {v10}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v6

    .line 495
    .local v6, "key":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v12}, Lcom/android/server/wifi/Clock;->currentTimeMillis()J

    move-result-wide v4

    .line 496
    .local v4, "currentTime":J
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    invoke-virtual {v12}, Lcom/android/server/wifi/WifiConfigManager;->getSavedNetworks()Ljava/util/List;

    move-result-object v9

    .line 498
    .local v9, "savedNetworks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "network$iterator":Ljava/util/Iterator;
    :cond_4
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiConfiguration;

    .line 499
    .local v7, "network":Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget v13, v7, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v12, v13}, Lcom/android/server/wifi/WifiConfigManager;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    .line 500
    .local v3, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v11

    .line 503
    .local v11, "status":Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 504
    invoke-virtual {v11}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getConnectChoice()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_4

    .line 505
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Remove user selection preference of "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v11}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getConnectChoice()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 506
    const-string/jumbo v13, " Set Time: "

    .line 505
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 506
    invoke-virtual {v11}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getConnectChoiceTimestamp()J

    move-result-wide v14

    .line 505
    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 506
    const-string/jumbo v13, " from "

    .line 505
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 507
    iget-object v13, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 505
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 507
    const-string/jumbo v13, " : "

    .line 505
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 507
    iget v13, v3, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 505
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    .line 508
    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setConnectChoice(Ljava/lang/String;)V

    .line 509
    const-wide/16 v12, -0x1

    invoke-virtual {v11, v12, v13}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setConnectChoiceTimestamp(J)V

    .line 511
    const/4 v2, 0x1

    goto :goto_0

    .line 516
    :cond_5
    invoke-virtual {v11}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getSeenInLastQualifiedNetworkSelection()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 517
    invoke-virtual {v11}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getConnectChoice()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_6

    .line 518
    invoke-virtual {v11}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getConnectChoice()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_4

    .line 519
    :cond_6
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Add key:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " Set Time: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " to "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 520
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->getNetworkString(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v13

    .line 519
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    .line 521
    invoke-virtual {v11, v6}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setConnectChoice(Ljava/lang/String;)V

    .line 522
    invoke-virtual {v11, v4, v5}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setConnectChoiceTimestamp(J)V

    .line 523
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 527
    .end local v3    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v7    # "network":Landroid/net/wifi/WifiConfiguration;
    .end local v11    # "status":Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
    :cond_7
    if-eqz v2, :cond_8

    .line 528
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    invoke-virtual {v12}, Lcom/android/server/wifi/WifiConfigManager;->writeKnownNetworkHistory()V

    .line 529
    const/4 v12, 0x1

    return v12

    .line 532
    :cond_8
    const/4 v12, 0x0

    return v12
.end method
