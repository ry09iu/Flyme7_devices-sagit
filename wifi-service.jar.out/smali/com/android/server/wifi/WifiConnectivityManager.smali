.class public Lcom/android/server/wifi/WifiConnectivityManager;
.super Ljava/lang/Object;
.source "WifiConnectivityManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiConnectivityManager$1;,
        Lcom/android/server/wifi/WifiConnectivityManager$2;,
        Lcom/android/server/wifi/WifiConnectivityManager$3;,
        Lcom/android/server/wifi/WifiConnectivityManager$AllSingleScanListener;,
        Lcom/android/server/wifi/WifiConnectivityManager$PeriodicScanListener;,
        Lcom/android/server/wifi/WifiConnectivityManager$PnoScanListener;,
        Lcom/android/server/wifi/WifiConnectivityManager$RestartSingleScanListener;,
        Lcom/android/server/wifi/WifiConnectivityManager$SingleScanListener;
    }
.end annotation


# static fields
.field private static final CHANNEL_LIST_AGE_MS:I = 0x36ee80

.field private static final CONNECTED_PNO_SCAN_INTERVAL_MS:I = 0x27100

.field private static final DISCONNECTED_PNO_SCAN_INTERVAL_MS:I = 0x4e20

.field private static final ENABLE_BACKGROUND_SCAN:Z = false

.field private static final ENABLE_CONNECTED_PNO_SCAN:Z = false

.field private static final LOW_RSSI_NETWORK_RETRY_MAX_DELAY_MS:I = 0x13880

.field private static final LOW_RSSI_NETWORK_RETRY_START_DELAY_MS:I = 0x4e20

.field public static final MAX_CONNECTION_ATTEMPTS_RATE:I = 0x6

.field public static final MAX_CONNECTION_ATTEMPTS_TIME_INTERVAL_MS:I = 0x3a980

.field public static final MAX_PERIODIC_SCAN_INTERVAL_MS:I = 0x27100

.field public static final MAX_SCAN_RESTART_ALLOWED:I = 0x5

.field public static final PERIODIC_SCAN_INTERVAL_MS:I = 0x4e20

.field public static final PERIODIC_SCAN_TIMER_TAG:Ljava/lang/String; = "WifiConnectivityManager Schedule Periodic Scan Timer"

.field private static final RESET_TIME_STAMP:J = -0x8000000000000000L

.field public static final RESTART_CONNECTIVITY_SCAN_TIMER_TAG:Ljava/lang/String; = "WifiConnectivityManager Restart Scan"

.field private static final RESTART_SCAN_DELAY_MS:I = 0x7d0

.field public static final RESTART_SINGLE_SCAN_TIMER_TAG:Ljava/lang/String; = "WifiConnectivityManager Restart Single Scan"

.field private static final SCAN_IMMEDIATELY:Z = true

.field private static final SCAN_ON_SCHEDULE:Z = false

.field private static final TAG:Ljava/lang/String; = "WifiConnectivityManager"

.field private static final WATCHDOG_INTERVAL_MS:I = 0x124f80

.field public static final WATCHDOG_TIMER_TAG:Ljava/lang/String; = "WifiConnectivityManager Schedule Watchdog Timer"

.field public static final WIFI_STATE_CONNECTED:I = 0x1

.field public static final WIFI_STATE_DISCONNECTED:I = 0x2

.field public static final WIFI_STATE_TRANSITIONING:I = 0x3

.field public static final WIFI_STATE_UNKNOWN:I


# instance fields
.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private final mAllSingleScanListener:Lcom/android/server/wifi/WifiConnectivityManager$AllSingleScanListener;

.field private mBand5GHzBonus:I

.field private final mClock:Lcom/android/server/wifi/Clock;

.field private final mConfigManager:Lcom/android/server/wifi/WifiConfigManager;

.field private final mConnectionAttemptTimeStamps:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentConnectionBonus:I

.field private mDbg:Z

.field private final mEventHandler:Landroid/os/Handler;

.field private mInitialScoreMax:I

.field private mLastConnectionAttemptBssid:Ljava/lang/String;

.field private mLastPeriodicSingleScanTimeStamp:J

.field private final mLocalLog:Landroid/util/LocalLog;

.field private mMin24GHzRssi:I

.field private mMin5GHzRssi:I

.field private final mPeriodicScanListener:Lcom/android/server/wifi/WifiConnectivityManager$PeriodicScanListener;

.field private final mPeriodicScanTimerListener:Landroid/app/AlarmManager$OnAlarmListener;

.field private mPeriodicScanTimerSet:Z

.field private mPeriodicSingleScanInterval:I

.field private final mPnoScanListener:Lcom/android/server/wifi/WifiConnectivityManager$PnoScanListener;

.field private mPnoScanStarted:Z

.field private final mQualifiedNetworkSelector:Lcom/android/server/wifi/WifiQualifiedNetworkSelector;

.field private final mRestartScanListener:Landroid/app/AlarmManager$OnAlarmListener;

.field private mSameNetworkBonus:I

.field private mScanRestartCount:I

.field private final mScanner:Landroid/net/wifi/WifiScanner;

.field private mScreenOn:Z

.field private mSecureBonus:I

.field private mSingleScanRestartCount:I

.field private final mStateMachine:Lcom/android/server/wifi/WifiStateMachine;

.field private mTotalConnectivityAttemptsRateLimited:I

.field private mUntrustedConnectionAllowed:Z

.field private mWaitForFullBandScanResults:Z

.field private final mWatchdogListener:Landroid/app/AlarmManager$OnAlarmListener;

.field private mWifiConnectivityManagerEnabled:Z

.field private mWifiEnabled:Z

.field private final mWifiInfo:Landroid/net/wifi/WifiInfo;

.field private final mWifiLastResortWatchdog:Lcom/android/server/wifi/WifiLastResortWatchdog;

.field private final mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

.field private mWifiState:I


# direct methods
.method static synthetic -get0(Lcom/android/server/wifi/WifiConnectivityManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mDbg:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/server/wifi/WifiConnectivityManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mPnoScanStarted:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/server/wifi/WifiConnectivityManager;)I
    .locals 1

    iget v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mScanRestartCount:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/server/wifi/WifiConnectivityManager;)I
    .locals 1

    iget v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mSingleScanRestartCount:I

    return v0
.end method

.method static synthetic -get4(Lcom/android/server/wifi/WifiConnectivityManager;)Lcom/android/server/wifi/WifiStateMachine;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/wifi/WifiConnectivityManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWaitForFullBandScanResults:Z

    return v0
.end method

.method static synthetic -get6(Lcom/android/server/wifi/WifiConnectivityManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiConnectivityManagerEnabled:Z

    return v0
.end method

.method static synthetic -get7(Lcom/android/server/wifi/WifiConnectivityManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiEnabled:Z

    return v0
.end method

.method static synthetic -get8(Lcom/android/server/wifi/WifiConnectivityManager;)Lcom/android/server/wifi/WifiMetrics;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/wifi/WifiConnectivityManager;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mScanRestartCount:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/server/wifi/WifiConnectivityManager;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mSingleScanRestartCount:I

    return p1
.end method

.method static synthetic -set2(Lcom/android/server/wifi/WifiConnectivityManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWaitForFullBandScanResults:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/wifi/WifiConnectivityManager;Ljava/util/List;Ljava/lang/String;)Z
    .locals 1
    .param p1, "scanDetails"    # Ljava/util/List;
    .param p2, "listenerName"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiConnectivityManager;->handleScanResults(Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/wifi/WifiConnectivityManager;Ljava/lang/String;)V
    .locals 0
    .param p1, "log"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/wifi/WifiConnectivityManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager;->periodicScanTimerHandler()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/wifi/WifiConnectivityManager;I)V
    .locals 0
    .param p1, "msFromNow"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConnectivityManager;->scheduleDelayedConnectivityScan(I)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/wifi/WifiConnectivityManager;Z)V
    .locals 0
    .param p1, "isFullBandScan"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConnectivityManager;->scheduleDelayedSingleScan(Z)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/wifi/WifiConnectivityManager;Z)V
    .locals 0
    .param p1, "scanImmediately"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConnectivityManager;->startConnectivityScan(Z)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/wifi/WifiConnectivityManager;Z)V
    .locals 0
    .param p1, "isFullBandScan"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConnectivityManager;->startSingleScan(Z)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/wifi/WifiConnectivityManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager;->watchdogHandler()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiScanner;Lcom/android/server/wifi/WifiConfigManager;Landroid/net/wifi/WifiInfo;Lcom/android/server/wifi/WifiQualifiedNetworkSelector;Lcom/android/server/wifi/WifiInjector;Landroid/os/Looper;Z)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "stateMachine"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p3, "scanner"    # Landroid/net/wifi/WifiScanner;
    .param p4, "configManager"    # Lcom/android/server/wifi/WifiConfigManager;
    .param p5, "wifiInfo"    # Landroid/net/wifi/WifiInfo;
    .param p6, "qualifiedNetworkSelector"    # Lcom/android/server/wifi/WifiQualifiedNetworkSelector;
    .param p7, "wifiInjector"    # Lcom/android/server/wifi/WifiInjector;
    .param p8, "looper"    # Landroid/os/Looper;
    .param p9, "enable"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 543
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    new-instance v1, Landroid/util/LocalLog;

    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x80

    :goto_0
    invoke-direct {v1, v0}, Landroid/util/LocalLog;-><init>(I)V

    .line 135
    iput-object v1, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mLocalLog:Landroid/util/LocalLog;

    .line 139
    iput-boolean v2, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mDbg:Z

    .line 140
    iput-boolean v2, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiEnabled:Z

    .line 141
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiConnectivityManagerEnabled:Z

    .line 142
    iput-boolean v2, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mScreenOn:Z

    .line 143
    iput v2, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiState:I

    .line 144
    iput-boolean v2, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mUntrustedConnectionAllowed:Z

    .line 145
    iput v2, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mScanRestartCount:I

    .line 146
    iput v2, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mSingleScanRestartCount:I

    .line 147
    iput v2, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mTotalConnectivityAttemptsRateLimited:I

    .line 148
    iput-object v3, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mLastConnectionAttemptBssid:Ljava/lang/String;

    .line 149
    const/16 v0, 0x4e20

    iput v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mPeriodicSingleScanInterval:I

    .line 150
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mLastPeriodicSingleScanTimeStamp:J

    .line 151
    iput-boolean v2, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mPnoScanStarted:Z

    .line 152
    iput-boolean v2, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mPeriodicScanTimerSet:Z

    .line 153
    iput-boolean v2, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWaitForFullBandScanResults:Z

    .line 176
    new-instance v0, Lcom/android/server/wifi/WifiConnectivityManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/WifiConnectivityManager$1;-><init>(Lcom/android/server/wifi/WifiConnectivityManager;)V

    .line 175
    iput-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mRestartScanListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 203
    new-instance v0, Lcom/android/server/wifi/WifiConnectivityManager$2;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/WifiConnectivityManager$2;-><init>(Lcom/android/server/wifi/WifiConnectivityManager;)V

    .line 202
    iput-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWatchdogListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 212
    new-instance v0, Lcom/android/server/wifi/WifiConnectivityManager$3;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/WifiConnectivityManager$3;-><init>(Lcom/android/server/wifi/WifiConnectivityManager;)V

    .line 211
    iput-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mPeriodicScanTimerListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 303
    new-instance v0, Lcom/android/server/wifi/WifiConnectivityManager$PeriodicScanListener;

    invoke-direct {v0, p0, v3}, Lcom/android/server/wifi/WifiConnectivityManager$PeriodicScanListener;-><init>(Lcom/android/server/wifi/WifiConnectivityManager;Lcom/android/server/wifi/WifiConnectivityManager$PeriodicScanListener;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mPeriodicScanListener:Lcom/android/server/wifi/WifiConnectivityManager$PeriodicScanListener;

    .line 384
    new-instance v0, Lcom/android/server/wifi/WifiConnectivityManager$AllSingleScanListener;

    invoke-direct {v0, p0, v3}, Lcom/android/server/wifi/WifiConnectivityManager$AllSingleScanListener;-><init>(Lcom/android/server/wifi/WifiConnectivityManager;Lcom/android/server/wifi/WifiConnectivityManager$AllSingleScanListener;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mAllSingleScanListener:Lcom/android/server/wifi/WifiConnectivityManager$AllSingleScanListener;

    .line 538
    new-instance v0, Lcom/android/server/wifi/WifiConnectivityManager$PnoScanListener;

    invoke-direct {v0, p0, v3}, Lcom/android/server/wifi/WifiConnectivityManager$PnoScanListener;-><init>(Lcom/android/server/wifi/WifiConnectivityManager;Lcom/android/server/wifi/WifiConnectivityManager$PnoScanListener;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mPnoScanListener:Lcom/android/server/wifi/WifiConnectivityManager$PnoScanListener;

    .line 547
    iput-object p2, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    .line 548
    iput-object p3, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mScanner:Landroid/net/wifi/WifiScanner;

    .line 549
    iput-object p4, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    .line 550
    iput-object p5, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 551
    iput-object p6, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mQualifiedNetworkSelector:Lcom/android/server/wifi/WifiQualifiedNetworkSelector;

    .line 552
    invoke-virtual {p7}, Lcom/android/server/wifi/WifiInjector;->getWifiLastResortWatchdog()Lcom/android/server/wifi/WifiLastResortWatchdog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiLastResortWatchdog:Lcom/android/server/wifi/WifiLastResortWatchdog;

    .line 553
    invoke-virtual {p7}, Lcom/android/server/wifi/WifiInjector;->getWifiMetrics()Lcom/android/server/wifi/WifiMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    .line 554
    const-string/jumbo v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mAlarmManager:Landroid/app/AlarmManager;

    .line 555
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p8}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mEventHandler:Landroid/os/Handler;

    .line 556
    invoke-virtual {p7}, Lcom/android/server/wifi/WifiInjector;->getClock()Lcom/android/server/wifi/Clock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mClock:Lcom/android/server/wifi/Clock;

    .line 557
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mConnectionAttemptTimeStamps:Ljava/util/LinkedList;

    .line 559
    const/16 v0, -0x52

    iput v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mMin5GHzRssi:I

    .line 560
    const/16 v0, -0x55

    iput v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mMin24GHzRssi:I

    .line 561
    const/16 v0, 0x28

    iput v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mBand5GHzBonus:I

    .line 562
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigManager;->mCurrentNetworkBoost:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mCurrentConnectionBonus:I

    .line 563
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 564
    const v1, 0x10e001c

    .line 563
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mSameNetworkBonus:I

    .line 565
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 566
    const v1, 0x10e001f

    .line 565
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mSecureBonus:I

    .line 567
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigManager;->mThresholdSaturatedRssi24:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    add-int/lit8 v0, v0, 0x55

    mul-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mInitialScoreMax:I

    .line 571
    const-string/jumbo v0, "WifiConnectivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "PNO settings: min5GHzRssi "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mMin5GHzRssi:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 572
    const-string/jumbo v2, " min24GHzRssi "

    .line 571
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 572
    iget v2, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mMin24GHzRssi:I

    .line 571
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 573
    const-string/jumbo v2, " currentConnectionBonus "

    .line 571
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 573
    iget v2, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mCurrentConnectionBonus:I

    .line 571
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 574
    const-string/jumbo v2, " sameNetworkBonus "

    .line 571
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 574
    iget v2, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mSameNetworkBonus:I

    .line 571
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 575
    const-string/jumbo v2, " secureNetworkBonus "

    .line 571
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 575
    iget v2, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mSecureBonus:I

    .line 571
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 576
    const-string/jumbo v2, " initialScoreMax "

    .line 571
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 576
    iget v2, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mInitialScoreMax:I

    .line 571
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mScanner:Landroid/net/wifi/WifiScanner;

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mAllSingleScanListener:Lcom/android/server/wifi/WifiConnectivityManager$AllSingleScanListener;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiScanner;->registerScanListener(Landroid/net/wifi/WifiScanner$ScanListener;)V

    .line 581
    iput-boolean p9, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiConnectivityManagerEnabled:Z

    .line 583
    const-string/jumbo v1, "WifiConnectivityManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ConnectivityScanManager initialized and "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 584
    if-eqz p9, :cond_1

    const-string/jumbo v0, "enabled"

    .line 583
    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    return-void

    .line 136
    :cond_0
    const/16 v0, 0x100

    goto/16 :goto_0

    .line 584
    :cond_1
    const-string/jumbo v0, "disabled"

    goto :goto_1
.end method

.method private cancelPeriodicScanTimer()V
    .locals 2

    .prologue
    .line 1008
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mPeriodicScanTimerSet:Z

    if-eqz v0, :cond_0

    .line 1009
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mPeriodicScanTimerListener:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 1010
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mPeriodicScanTimerSet:Z

    .line 1007
    :cond_0
    return-void
.end method

.method private clearConnectionAttemptTimeStamps()V
    .locals 1

    .prologue
    .line 621
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mConnectionAttemptTimeStamps:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 620
    return-void
.end method

.method private connectToNetwork(Landroid/net/wifi/WifiConfiguration;)V
    .locals 9
    .param p1, "candidate"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 631
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getCandidate()Landroid/net/wifi/ScanResult;

    move-result-object v3

    .line 632
    .local v3, "scanResultCandidate":Landroid/net/wifi/ScanResult;
    if-nez v3, :cond_0

    .line 633
    const-string/jumbo v6, "WifiConnectivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "connectToNetwork: bad candidate - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 634
    const-string/jumbo v8, " scanResult: "

    .line 633
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    return-void

    .line 638
    :cond_0
    iget-object v5, v3, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 639
    .local v5, "targetBssid":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 645
    .local v4, "targetAssociationId":Ljava/lang/String;
    if-eqz v5, :cond_2

    .line 646
    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mLastConnectionAttemptBssid:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 647
    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 645
    if-eqz v6, :cond_2

    .line 648
    :cond_1
    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v6

    invoke-static {v6}, Landroid/net/wifi/SupplicantState;->isConnecting(Landroid/net/wifi/SupplicantState;)Z

    move-result v6

    .line 645
    if-eqz v6, :cond_2

    .line 649
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "connectToNetwork: Either already connected or is connecting to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    .line 651
    return-void

    .line 654
    :cond_2
    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v6}, Lcom/android/server/wifi/Clock;->elapsedRealtime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 655
    .local v2, "elapsedTimeMillis":Ljava/lang/Long;
    iget-boolean v6, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mScreenOn:Z

    if-nez v6, :cond_3

    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiConnectivityManager;->shouldSkipConnectionAttempt(Ljava/lang/Long;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 656
    const-string/jumbo v6, "connectToNetwork: Too many connection attempts. Skipping this attempt!"

    invoke-direct {p0, v6}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    .line 657
    iget v6, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mTotalConnectivityAttemptsRateLimited:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mTotalConnectivityAttemptsRateLimited:I

    .line 658
    return-void

    .line 660
    :cond_3
    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiConnectivityManager;->noteConnectionAttempt(Ljava/lang/Long;)V

    .line 662
    iput-object v5, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mLastConnectionAttemptBssid:Ljava/lang/String;

    .line 664
    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    .line 665
    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v7

    .line 664
    invoke-virtual {v6, v7}, Lcom/android/server/wifi/WifiConfigManager;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 666
    .local v1, "currentConnectedNetwork":Landroid/net/wifi/WifiConfiguration;
    if-nez v1, :cond_5

    const-string/jumbo v0, "Disconnected"

    .line 669
    .local v0, "currentAssociationId":Ljava/lang/String;
    :goto_0
    if-eqz v1, :cond_6

    .line 670
    iget v6, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iget v7, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-eq v6, v7, :cond_4

    .line 671
    invoke-virtual {v1, p1}, Landroid/net/wifi/WifiConfiguration;->isLinked(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v6

    .line 669
    if-eqz v6, :cond_6

    .line 672
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "connectToNetwork: Roaming from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    .line 674
    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget v7, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v6, v7, v3}, Lcom/android/server/wifi/WifiStateMachine;->autoRoamToNetwork(ILandroid/net/wifi/ScanResult;)V

    .line 630
    :goto_1
    return-void

    .line 667
    .end local v0    # "currentAssociationId":Ljava/lang/String;
    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "currentAssociationId":Ljava/lang/String;
    goto :goto_0

    .line 676
    :cond_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "connectToNetwork: Reconnect from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    .line 678
    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget v7, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iget-object v8, v3, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lcom/android/server/wifi/WifiStateMachine;->autoConnectToNetwork(ILjava/lang/String;)V

    goto :goto_1
.end method

.method private getScanBand()I
    .locals 1

    .prologue
    .line 684
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConnectivityManager;->getScanBand(Z)I

    move-result v0

    return v0
.end method

.method private getScanBand(Z)I
    .locals 3
    .param p1, "isFullBandScan"    # Z

    .prologue
    const/4 v2, 0x1

    .line 688
    if-eqz p1, :cond_2

    .line 689
    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiStateMachine;->getFrequencyBand()I

    move-result v0

    .line 690
    .local v0, "freqBand":I
    if-ne v0, v2, :cond_0

    .line 691
    const/4 v1, 0x6

    return v1

    .line 692
    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 693
    return v2

    .line 695
    :cond_1
    const/4 v1, 0x7

    return v1

    .line 699
    .end local v0    # "freqBand":I
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method private handleScanResults(Ljava/util/List;Ljava/lang/String;)Z
    .locals 9
    .param p2, "listenerName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/ScanDetail;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, "scanDetails":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/ScanDetail;>;"
    const/4 v1, 0x0

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " onResults: start QNS"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mQualifiedNetworkSelector:Lcom/android/server/wifi/WifiQualifiedNetworkSelector;

    .line 230
    iget-boolean v2, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mUntrustedConnectionAllowed:Z

    .line 231
    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiStateMachine;->isLinkDebouncing()Z

    move-result v4

    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiStateMachine;->isConnected()Z

    move-result v5

    .line 232
    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiStateMachine;->isDisconnected()Z

    move-result v6

    .line 233
    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiStateMachine;->isSupplicantTransientState()Z

    move-result v7

    move-object v3, p1

    .line 229
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->selectQualifiedNetwork(ZZLjava/util/List;ZZZZ)Landroid/net/wifi/WifiConfiguration;

    move-result-object v8

    .line 234
    .local v8, "candidate":Landroid/net/wifi/WifiConfiguration;
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiLastResortWatchdog:Lcom/android/server/wifi/WifiLastResortWatchdog;

    .line 235
    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mQualifiedNetworkSelector:Lcom/android/server/wifi/WifiQualifiedNetworkSelector;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->getFilteredScanDetails()Ljava/util/List;

    move-result-object v2

    .line 234
    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiLastResortWatchdog;->updateAvailableNetworks(Ljava/util/List;)V

    .line 236
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiMetrics;->countScanResults(Ljava/util/List;)V

    .line 239
    if-eqz v8, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigManager;->mWifiAutoConnController:Lcom/android/server/wifi/WifiAutoConnController;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiAutoConnController;->shouldEnableAllNetworks()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ": QNS candidate-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v8, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    .line 241
    invoke-direct {p0, v8}, Lcom/android/server/wifi/WifiConnectivityManager;->connectToNetwork(Landroid/net/wifi/WifiConfiguration;)V

    .line 242
    const/4 v0, 0x1

    return v0

    .line 244
    :cond_0
    return v1
.end method

.method private localLog(Ljava/lang/String;)V
    .locals 1
    .param p1, "log"    # Ljava/lang/String;

    .prologue
    .line 167
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mDbg:Z

    if-eqz v0, :cond_0

    .line 168
    const-string/jumbo v0, "WifiConnectivityManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 166
    return-void
.end method

.method private noteConnectionAttempt(Ljava/lang/Long;)V
    .locals 1
    .param p1, "timeMillis"    # Ljava/lang/Long;

    .prologue
    .line 613
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mConnectionAttemptTimeStamps:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 612
    return-void
.end method

.method private periodicScanTimerHandler()V
    .locals 1

    .prologue
    .line 815
    const-string/jumbo v0, "periodicScanTimerHandler"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    .line 818
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mScreenOn:Z

    if-eqz v0, :cond_0

    .line 819
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager;->startPeriodicSingleScan()V

    .line 814
    :cond_0
    return-void
.end method

.method private populateFreqList(Landroid/net/wifi/WifiScanner$ScanSettings;)Z
    .locals 8
    .param p1, "settings"    # Landroid/net/wifi/WifiScanner$ScanSettings;

    .prologue
    const/4 v6, 0x0

    .line 704
    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    invoke-virtual {v5}, Lcom/android/server/wifi/WifiConfigManager;->getConfiguredChannelList()Ljava/util/HashSet;

    move-result-object v2

    .line 705
    .local v2, "freqs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v5

    if-eqz v5, :cond_1

    .line 706
    const/4 v3, 0x0

    .line 707
    .local v3, "index":I
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v5

    new-array v5, v5, [Landroid/net/wifi/WifiScanner$ChannelSpec;

    iput-object v5, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    .line 708
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "freq$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 709
    .local v0, "freq":Ljava/lang/Integer;
    iget-object v5, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "index":I
    .local v4, "index":I
    new-instance v6, Landroid/net/wifi/WifiScanner$ChannelSpec;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-direct {v6, v7}, Landroid/net/wifi/WifiScanner$ChannelSpec;-><init>(I)V

    aput-object v6, v5, v3

    move v3, v4

    .end local v4    # "index":I
    .restart local v3    # "index":I
    goto :goto_0

    .line 711
    .end local v0    # "freq":Ljava/lang/Integer;
    :cond_0
    const/4 v5, 0x1

    return v5

    .line 713
    .end local v1    # "freq$iterator":Ljava/util/Iterator;
    .end local v3    # "index":I
    :cond_1
    return v6
.end method

.method private resetLastPeriodicSingleScanTimeStamp()V
    .locals 2

    .prologue
    .line 810
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mLastPeriodicSingleScanTimeStamp:J

    .line 809
    return-void
.end method

.method private scheduleDelayedConnectivityScan(I)V
    .locals 7
    .param p1, "msFromNow"    # I

    .prologue
    .line 1028
    const-string/jumbo v0, "scheduleDelayedConnectivityScan"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    .line 1030
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mAlarmManager:Landroid/app/AlarmManager;

    .line 1031
    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v1}, Lcom/android/server/wifi/Clock;->elapsedRealtime()J

    move-result-wide v2

    int-to-long v4, p1

    add-long/2addr v2, v4

    .line 1032
    const-string/jumbo v4, "WifiConnectivityManager Restart Scan"

    .line 1033
    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mRestartScanListener:Landroid/app/AlarmManager$OnAlarmListener;

    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mEventHandler:Landroid/os/Handler;

    .line 1030
    const/4 v1, 0x2

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 1027
    return-void
.end method

.method private scheduleDelayedSingleScan(Z)V
    .locals 8
    .param p1, "isFullBandScan"    # Z

    .prologue
    .line 1016
    const-string/jumbo v0, "scheduleDelayedSingleScan"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    .line 1019
    new-instance v5, Lcom/android/server/wifi/WifiConnectivityManager$RestartSingleScanListener;

    invoke-direct {v5, p0, p1}, Lcom/android/server/wifi/WifiConnectivityManager$RestartSingleScanListener;-><init>(Lcom/android/server/wifi/WifiConnectivityManager;Z)V

    .line 1020
    .local v5, "restartSingleScanListener":Lcom/android/server/wifi/WifiConnectivityManager$RestartSingleScanListener;
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mAlarmManager:Landroid/app/AlarmManager;

    .line 1021
    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v1}, Lcom/android/server/wifi/Clock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v6, 0x7d0

    add-long/2addr v2, v6

    .line 1022
    const-string/jumbo v4, "WifiConnectivityManager Restart Single Scan"

    .line 1023
    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mEventHandler:Landroid/os/Handler;

    .line 1020
    const/4 v1, 0x2

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 1015
    return-void
.end method

.method private schedulePeriodicScanTimer(I)V
    .locals 7
    .param p1, "intervalMs"    # I

    .prologue
    .line 999
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mAlarmManager:Landroid/app/AlarmManager;

    .line 1000
    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v1}, Lcom/android/server/wifi/Clock;->elapsedRealtime()J

    move-result-wide v2

    int-to-long v4, p1

    add-long/2addr v2, v4

    .line 1001
    const-string/jumbo v4, "WifiConnectivityManager Schedule Periodic Scan Timer"

    .line 1002
    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mPeriodicScanTimerListener:Landroid/app/AlarmManager$OnAlarmListener;

    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mEventHandler:Landroid/os/Handler;

    .line 999
    const/4 v1, 0x2

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 1003
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mPeriodicScanTimerSet:Z

    .line 998
    return-void
.end method

.method private scheduleWatchdogTimer()V
    .locals 7

    .prologue
    .line 989
    const-string/jumbo v0, "WifiConnectivityManager"

    const-string/jumbo v1, "scheduleWatchdogTimer"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mAlarmManager:Landroid/app/AlarmManager;

    .line 992
    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v1}, Lcom/android/server/wifi/Clock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/32 v4, 0x124f80

    add-long/2addr v2, v4

    .line 993
    const-string/jumbo v4, "WifiConnectivityManager Schedule Watchdog Timer"

    .line 994
    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWatchdogListener:Landroid/app/AlarmManager$OnAlarmListener;

    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mEventHandler:Landroid/os/Handler;

    .line 991
    const/4 v1, 0x2

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 988
    return-void
.end method

.method private setScanChannels(Landroid/net/wifi/WifiScanner$ScanSettings;)Z
    .locals 9
    .param p1, "settings"    # Landroid/net/wifi/WifiScanner$ScanSettings;

    .prologue
    const/4 v8, 0x0

    .line 719
    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 721
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_0

    .line 722
    return v8

    .line 725
    :cond_0
    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    const v7, 0x36ee80

    invoke-virtual {v6, v0, v7}, Lcom/android/server/wifi/WifiConfigManager;->makeChannelList(Landroid/net/wifi/WifiConfiguration;I)Ljava/util/HashSet;

    move-result-object v3

    .line 727
    .local v3, "freqs":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v6

    if-eqz v6, :cond_2

    .line 728
    const/4 v4, 0x0

    .line 729
    .local v4, "index":I
    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v6

    new-array v6, v6, [Landroid/net/wifi/WifiScanner$ChannelSpec;

    iput-object v6, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    .line 730
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "freq$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 731
    .local v1, "freq":Ljava/lang/Integer;
    iget-object v6, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "index":I
    .local v5, "index":I
    new-instance v7, Landroid/net/wifi/WifiScanner$ChannelSpec;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-direct {v7, v8}, Landroid/net/wifi/WifiScanner$ChannelSpec;-><init>(I)V

    aput-object v7, v6, v4

    move v4, v5

    .end local v5    # "index":I
    .restart local v4    # "index":I
    goto :goto_0

    .line 733
    .end local v1    # "freq":Ljava/lang/Integer;
    :cond_1
    const/4 v6, 0x1

    return v6

    .line 735
    .end local v2    # "freq$iterator":Ljava/util/Iterator;
    .end local v4    # "index":I
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "No scan channels for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ". Perform full band scan"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    .line 736
    return v8
.end method

.method private shouldSkipConnectionAttempt(Ljava/lang/Long;)Z
    .locals 6
    .param p1, "timeMillis"    # Ljava/lang/Long;

    .prologue
    .line 593
    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mConnectionAttemptTimeStamps:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 595
    .local v0, "attemptIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 596
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 597
    .local v1, "connectionAttemptTimeMillis":Ljava/lang/Long;
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 598
    const-wide/32 v4, 0x3a980

    .line 597
    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 599
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 606
    .end local v1    # "connectionAttemptTimeMillis":Ljava/lang/Long;
    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mConnectionAttemptTimeStamps:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    const/4 v3, 0x6

    if-lt v2, v3, :cond_1

    const/4 v2, 0x1

    :goto_1
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private startConnectedPnoScan()V
    .locals 0

    .prologue
    .line 938
    return-void
.end method

.method private startConnectivityScan(Z)V
    .locals 3
    .param p1, "scanImmediately"    # Z

    .prologue
    const/4 v2, 0x1

    .line 1040
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startConnectivityScan: screenOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mScreenOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1041
    const-string/jumbo v1, " wifiState="

    .line 1040
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1041
    iget v1, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiState:I

    .line 1040
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1042
    const-string/jumbo v1, " scanImmediately="

    .line 1040
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1043
    const-string/jumbo v1, " wifiEnabled="

    .line 1040
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1043
    iget-boolean v1, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiEnabled:Z

    .line 1040
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1044
    const-string/jumbo v1, " wifiConnectivityManagerEnabled="

    .line 1040
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1045
    iget-boolean v1, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiConnectivityManagerEnabled:Z

    .line 1040
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    .line 1047
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiConnectivityManagerEnabled:Z

    if-eqz v0, :cond_0

    .line 1052
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager;->stopConnectivityScan()V

    .line 1056
    iget v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiState:I

    if-eq v0, v2, :cond_1

    iget v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 1057
    return-void

    .line 1048
    :cond_0
    return-void

    .line 1060
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mScreenOn:Z

    if-eqz v0, :cond_2

    .line 1061
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConnectivityManager;->startPeriodicScan(Z)V

    .line 1039
    :goto_0
    return-void

    .line 1063
    :cond_2
    iget v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiState:I

    if-ne v0, v2, :cond_3

    .line 1064
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager;->startConnectedPnoScan()V

    goto :goto_0

    .line 1066
    :cond_3
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager;->startDisconnectedPnoScan()V

    goto :goto_0
.end method

.method private startDisconnectedPnoScan()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 898
    new-instance v2, Landroid/net/wifi/WifiScanner$PnoSettings;

    invoke-direct {v2}, Landroid/net/wifi/WifiScanner$PnoSettings;-><init>()V

    .line 900
    .local v2, "pnoSettings":Landroid/net/wifi/WifiScanner$PnoSettings;
    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiConfigManager;->retrieveDisconnectedPnoNetworkList()Ljava/util/ArrayList;

    move-result-object v1

    .line 901
    .local v1, "pnoNetworkList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 903
    .local v0, "listSize":I
    if-nez v0, :cond_0

    .line 905
    const-string/jumbo v4, "No saved network for starting disconnected PNO."

    invoke-direct {p0, v4}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    .line 906
    return-void

    .line 909
    :cond_0
    new-array v4, v0, [Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;

    iput-object v4, v2, Landroid/net/wifi/WifiScanner$PnoSettings;->networkList:[Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;

    .line 910
    iget-object v4, v2, Landroid/net/wifi/WifiScanner$PnoSettings;->networkList:[Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;

    iput-object v4, v2, Landroid/net/wifi/WifiScanner$PnoSettings;->networkList:[Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;

    .line 911
    iget v4, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mMin5GHzRssi:I

    iput v4, v2, Landroid/net/wifi/WifiScanner$PnoSettings;->min5GHzRssi:I

    .line 912
    iget v4, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mMin24GHzRssi:I

    iput v4, v2, Landroid/net/wifi/WifiScanner$PnoSettings;->min24GHzRssi:I

    .line 913
    iget v4, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mInitialScoreMax:I

    iput v4, v2, Landroid/net/wifi/WifiScanner$PnoSettings;->initialScoreMax:I

    .line 914
    iget v4, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mCurrentConnectionBonus:I

    iput v4, v2, Landroid/net/wifi/WifiScanner$PnoSettings;->currentConnectionBonus:I

    .line 915
    iget v4, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mSameNetworkBonus:I

    iput v4, v2, Landroid/net/wifi/WifiScanner$PnoSettings;->sameNetworkBonus:I

    .line 916
    iget v4, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mSecureBonus:I

    iput v4, v2, Landroid/net/wifi/WifiScanner$PnoSettings;->secureBonus:I

    .line 917
    iget v4, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mBand5GHzBonus:I

    iput v4, v2, Landroid/net/wifi/WifiScanner$PnoSettings;->band5GHzBonus:I

    .line 920
    new-instance v3, Landroid/net/wifi/WifiScanner$ScanSettings;

    invoke-direct {v3}, Landroid/net/wifi/WifiScanner$ScanSettings;-><init>()V

    .line 921
    .local v3, "scanSettings":Landroid/net/wifi/WifiScanner$ScanSettings;
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager;->getScanBand()I

    move-result v4

    iput v4, v3, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    .line 922
    const/4 v4, 0x4

    iput v4, v3, Landroid/net/wifi/WifiScanner$ScanSettings;->reportEvents:I

    .line 923
    iput v5, v3, Landroid/net/wifi/WifiScanner$ScanSettings;->numBssidsPerScan:I

    .line 924
    const/16 v4, 0x4e20

    iput v4, v3, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    .line 928
    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mPnoScanListener:Lcom/android/server/wifi/WifiConnectivityManager$PnoScanListener;

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiConnectivityManager$PnoScanListener;->clearScanDetails()V

    .line 930
    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mScanner:Landroid/net/wifi/WifiScanner;

    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mPnoScanListener:Lcom/android/server/wifi/WifiConnectivityManager$PnoScanListener;

    invoke-virtual {v4, v3, v2, v5}, Landroid/net/wifi/WifiScanner;->startDisconnectedPnoScan(Landroid/net/wifi/WifiScanner$ScanSettings;Landroid/net/wifi/WifiScanner$PnoSettings;Landroid/net/wifi/WifiScanner$PnoScanListener;)V

    .line 931
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mPnoScanStarted:Z

    .line 896
    return-void
.end method

.method private startPeriodicScan(Z)V
    .locals 2
    .param p1, "scanImmediately"    # Z

    .prologue
    .line 866
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mPnoScanListener:Lcom/android/server/wifi/WifiConnectivityManager$PnoScanListener;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiConnectivityManager$PnoScanListener;->resetLowRssiNetworkRetryDelay()V

    .line 869
    iget v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 870
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiConfigManager;->getEnableAutoJoinWhenAssociated()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 877
    :cond_0
    if-eqz p1, :cond_1

    .line 878
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager;->resetLastPeriodicSingleScanTimeStamp()V

    .line 880
    :cond_1
    const/16 v0, 0x4e20

    iput v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mPeriodicSingleScanInterval:I

    .line 881
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager;->startPeriodicSingleScan()V

    .line 865
    return-void

    .line 871
    :cond_2
    return-void
.end method

.method private startPeriodicSingleScan()V
    .locals 12

    .prologue
    const v11, 0x27100

    const/4 v10, 0x1

    .line 757
    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v3}, Lcom/android/server/wifi/Clock;->elapsedRealtime()J

    move-result-wide v0

    .line 759
    .local v0, "currentTimeStamp":J
    iget-wide v6, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mLastPeriodicSingleScanTimeStamp:J

    const-wide/high16 v8, -0x8000000000000000L

    cmp-long v3, v6, v8

    if-eqz v3, :cond_0

    .line 760
    iget-wide v6, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mLastPeriodicSingleScanTimeStamp:J

    sub-long v4, v0, v6

    .line 761
    .local v4, "msSinceLastScan":J
    const-wide/16 v6, 0x4e20

    cmp-long v3, v4, v6

    if-gez v3, :cond_0

    .line 762
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Last periodic single scan started "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 763
    const-string/jumbo v6, "ms ago, defer this new scan request."

    .line 762
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    .line 764
    long-to-int v3, v4

    rsub-int v3, v3, 0x4e20

    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiConnectivityManager;->schedulePeriodicScanTimer(I)V

    .line 765
    return-void

    .line 769
    .end local v4    # "msSinceLastScan":J
    :cond_0
    const/4 v2, 0x1

    .line 772
    .local v2, "isFullBandScan":Z
    iget v3, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiState:I

    if-ne v3, v10, :cond_2

    .line 773
    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    iget-wide v6, v3, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    .line 774
    const-wide/high16 v8, 0x4020000000000000L    # 8.0

    .line 773
    cmpl-double v3, v6, v8

    if-gtz v3, :cond_1

    .line 775
    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    iget-wide v6, v3, Landroid/net/wifi/WifiInfo;->rxSuccessRate:D

    .line 776
    const-wide/high16 v8, 0x4030000000000000L    # 16.0

    .line 775
    cmpl-double v3, v6, v8

    if-lez v3, :cond_2

    .line 777
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "No full band scan due to heavy traffic, txSuccessRate="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 778
    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    iget-wide v6, v6, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    .line 777
    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 778
    const-string/jumbo v6, " rxSuccessRate="

    .line 777
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 779
    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    iget-wide v6, v6, Landroid/net/wifi/WifiInfo;->rxSuccessRate:D

    .line 777
    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    .line 780
    const/4 v2, 0x0

    .line 783
    :cond_2
    iput-wide v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mLastPeriodicSingleScanTimeStamp:J

    .line 784
    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiStateMachine;->getScanCount()I

    move-result v3

    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiStateMachine;->getMaxConfiguredScanCount()I

    move-result v6

    if-ge v3, v6, :cond_3

    .line 785
    const/4 v2, 0x0

    .line 787
    :cond_3
    iget v3, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiState:I

    if-ne v3, v10, :cond_6

    .line 788
    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    iget-wide v6, v3, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    .line 789
    const-wide/high16 v8, 0x4044000000000000L    # 40.0

    .line 788
    cmpl-double v3, v6, v8

    if-gtz v3, :cond_4

    .line 790
    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    iget-wide v6, v3, Landroid/net/wifi/WifiInfo;->rxSuccessRate:D

    .line 791
    const-wide/high16 v8, 0x4054000000000000L    # 80.0

    .line 790
    cmpl-double v3, v6, v8

    if-lez v3, :cond_6

    .line 792
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Ignore scan due to heavy traffic, txSuccessRate="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 793
    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    iget-wide v6, v6, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    .line 792
    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 793
    const-string/jumbo v6, " rxSuccessRate="

    .line 792
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 794
    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    iget-wide v6, v6, Landroid/net/wifi/WifiInfo;->rxSuccessRate:D

    .line 792
    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    .line 798
    :goto_0
    iget v3, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mPeriodicSingleScanInterval:I

    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiConnectivityManager;->schedulePeriodicScanTimer(I)V

    .line 801
    iget v3, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mPeriodicSingleScanInterval:I

    mul-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mPeriodicSingleScanInterval:I

    .line 802
    iget v3, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mPeriodicSingleScanInterval:I

    if-le v3, v11, :cond_5

    .line 803
    iput v11, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mPeriodicSingleScanInterval:I

    .line 756
    :cond_5
    return-void

    .line 796
    :cond_6
    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiConnectivityManager;->startSingleScan(Z)V

    goto :goto_0
.end method

.method private startSingleScan(Z)V
    .locals 10
    .param p1, "isFullBandScan"    # Z

    .prologue
    const/4 v9, 0x0

    .line 825
    iget-boolean v7, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiEnabled:Z

    if-eqz v7, :cond_1

    iget-boolean v7, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiConnectivityManagerEnabled:Z

    if-eqz v7, :cond_1

    .line 829
    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mPnoScanListener:Lcom/android/server/wifi/WifiConnectivityManager$PnoScanListener;

    invoke-virtual {v7}, Lcom/android/server/wifi/WifiConnectivityManager$PnoScanListener;->resetLowRssiNetworkRetryDelay()V

    .line 831
    new-instance v5, Landroid/net/wifi/WifiScanner$ScanSettings;

    invoke-direct {v5}, Landroid/net/wifi/WifiScanner$ScanSettings;-><init>()V

    .line 832
    .local v5, "settings":Landroid/net/wifi/WifiScanner$ScanSettings;
    if-nez p1, :cond_0

    .line 833
    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v7}, Lcom/android/server/wifi/WifiStateMachine;->getScanCount()I

    move-result v7

    iget-object v8, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v8}, Lcom/android/server/wifi/WifiStateMachine;->getMaxConfiguredScanCount()I

    move-result v8

    if-ge v7, v8, :cond_2

    .line 834
    invoke-direct {p0, v5}, Lcom/android/server/wifi/WifiConnectivityManager;->populateFreqList(Landroid/net/wifi/WifiScanner$ScanSettings;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 835
    const/4 p1, 0x1

    .line 841
    .end local p1    # "isFullBandScan":Z
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConnectivityManager;->getScanBand(Z)I

    move-result v7

    iput v7, v5, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    .line 842
    const/4 v7, 0x3

    iput v7, v5, Landroid/net/wifi/WifiScanner$ScanSettings;->reportEvents:I

    .line 844
    iput v9, v5, Landroid/net/wifi/WifiScanner$ScanSettings;->numBssidsPerScan:I

    .line 847
    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    invoke-virtual {v7}, Lcom/android/server/wifi/WifiConfigManager;->getHiddenConfiguredNetworkIds()Ljava/util/Set;

    move-result-object v0

    .line 848
    .local v0, "hiddenNetworkIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v7

    if-lez v7, :cond_3

    .line 849
    const/4 v1, 0x0

    .line 850
    .local v1, "i":I
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v7

    new-array v7, v7, [I

    iput-object v7, v5, Landroid/net/wifi/WifiScanner$ScanSettings;->hiddenNetworkIds:[I

    .line 851
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "netId$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 852
    .local v3, "netId":Ljava/lang/Integer;
    iget-object v7, v5, Landroid/net/wifi/WifiScanner$ScanSettings;->hiddenNetworkIds:[I

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aput v8, v7, v1

    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_1

    .line 826
    .end local v0    # "hiddenNetworkIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v1    # "i":I
    .end local v3    # "netId":Ljava/lang/Integer;
    .end local v4    # "netId$iterator":Ljava/util/Iterator;
    .end local v5    # "settings":Landroid/net/wifi/WifiScanner$ScanSettings;
    .restart local p1    # "isFullBandScan":Z
    :cond_1
    return-void

    .line 837
    .restart local v5    # "settings":Landroid/net/wifi/WifiScanner$ScanSettings;
    :cond_2
    invoke-direct {p0, v5}, Lcom/android/server/wifi/WifiConnectivityManager;->setScanChannels(Landroid/net/wifi/WifiScanner$ScanSettings;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 838
    const/4 p1, 0x1

    .local p1, "isFullBandScan":Z
    goto :goto_0

    .line 860
    .end local p1    # "isFullBandScan":Z
    .restart local v0    # "hiddenNetworkIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_3
    new-instance v6, Lcom/android/server/wifi/WifiConnectivityManager$SingleScanListener;

    invoke-direct {v6, p0, p1}, Lcom/android/server/wifi/WifiConnectivityManager$SingleScanListener;-><init>(Lcom/android/server/wifi/WifiConnectivityManager;Z)V

    .line 861
    .local v6, "singleScanListener":Lcom/android/server/wifi/WifiConnectivityManager$SingleScanListener;
    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mScanner:Landroid/net/wifi/WifiScanner;

    sget-object v8, Lcom/android/server/wifi/WifiStateMachine;->WIFI_WORK_SOURCE:Landroid/os/WorkSource;

    invoke-virtual {v7, v5, v6, v8}, Landroid/net/wifi/WifiScanner;->startScan(Landroid/net/wifi/WifiScanner$ScanSettings;Landroid/net/wifi/WifiScanner$ScanListener;Landroid/os/WorkSource;)V

    .line 824
    return-void
.end method

.method private stopConnectivityScan()V
    .locals 1

    .prologue
    .line 1076
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager;->cancelPeriodicScanTimer()V

    .line 1080
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager;->stopPnoScan()V

    .line 1081
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mScanRestartCount:I

    .line 1072
    return-void
.end method

.method private stopPnoScan()V
    .locals 2

    .prologue
    .line 980
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mPnoScanStarted:Z

    if-eqz v0, :cond_0

    .line 981
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mScanner:Landroid/net/wifi/WifiScanner;

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mPnoScanListener:Lcom/android/server/wifi/WifiConnectivityManager$PnoScanListener;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiScanner;->stopPnoScan(Landroid/net/wifi/WifiScanner$ScanListener;)V

    .line 984
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mPnoScanStarted:Z

    .line 979
    return-void
.end method

.method private watchdogHandler()V
    .locals 2

    .prologue
    .line 742
    const-string/jumbo v0, "watchdogHandler"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    .line 747
    iget v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 748
    const-string/jumbo v0, "WifiConnectivityManager"

    const-string/jumbo v1, "start a single scan from watchdogHandler"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager;->scheduleWatchdogTimer()V

    .line 751
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConnectivityManager;->startSingleScan(Z)V

    .line 741
    :cond_0
    return-void
.end method


# virtual methods
.method public connectToUserSelectNetwork(IZ)V
    .locals 3
    .param p1, "netId"    # I
    .param p2, "persistent"    # Z

    .prologue
    .line 1129
    const-string/jumbo v0, "WifiConnectivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "connectToUserSelectNetwork: netId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1130
    const-string/jumbo v2, " persist="

    .line 1129
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1132
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mQualifiedNetworkSelector:Lcom/android/server/wifi/WifiQualifiedNetworkSelector;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->userSelectNetwork(IZ)Z

    .line 1134
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager;->clearConnectionAttemptTimeStamps()V

    .line 1128
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1223
    const-string/jumbo v0, "Dump of WifiConnectivityManager"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1224
    const-string/jumbo v0, "WifiConnectivityManager - Log Begin ----"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "WifiConnectivityManager - Number of connectivity attempts rate limited: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1226
    iget v1, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mTotalConnectivityAttemptsRateLimited:I

    .line 1225
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1227
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p1, p2, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1228
    const-string/jumbo v0, "WifiConnectivityManager - Log End ----"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1222
    return-void
.end method

.method public enable(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 1198
    const-string/jumbo v1, "WifiConnectivityManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Set WiFiConnectivityManager "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_1

    const-string/jumbo v0, "enabled"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1200
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiConnectivityManagerEnabled:Z

    .line 1202
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiConnectivityManagerEnabled:Z

    if-nez v0, :cond_2

    .line 1203
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager;->stopConnectivityScan()V

    .line 1204
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager;->resetLastPeriodicSingleScanTimeStamp()V

    .line 1205
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mLastConnectionAttemptBssid:Ljava/lang/String;

    .line 1206
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWaitForFullBandScanResults:Z

    .line 1197
    :cond_0
    :goto_1
    return-void

    .line 1198
    :cond_1
    const-string/jumbo v0, "disabled"

    goto :goto_0

    .line 1207
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiEnabled:Z

    if-eqz v0, :cond_0

    .line 1208
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConnectivityManager;->startConnectivityScan(Z)V

    goto :goto_1
.end method

.method public enableVerboseLogging(I)V
    .locals 1
    .param p1, "verbose"    # I

    .prologue
    const/4 v0, 0x0

    .line 1216
    if-lez p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mDbg:Z

    .line 1215
    return-void
.end method

.method public forceConnectivityScan()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1141
    const-string/jumbo v0, "WifiConnectivityManager"

    const-string/jumbo v1, "forceConnectivityScan"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1143
    iput-boolean v2, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWaitForFullBandScanResults:Z

    .line 1144
    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiConnectivityManager;->startSingleScan(Z)V

    .line 1140
    return-void
.end method

.method getLastPeriodicSingleScanTimeStamp()J
    .locals 2

    .prologue
    .line 1238
    iget-wide v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mLastPeriodicSingleScanTimeStamp:J

    return-wide v0
.end method

.method getLowRssiNetworkRetryDelay()I
    .locals 1

    .prologue
    .line 1233
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mPnoScanListener:Lcom/android/server/wifi/WifiConnectivityManager$PnoScanListener;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiConnectivityManager$PnoScanListener;->getLowRssiNetworkRetryDelay()I

    move-result v0

    return v0
.end method

.method public handleConnectionStateChanged(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 1099
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "handleConnectionStateChanged: state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    .line 1101
    iput p1, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiState:I

    .line 1105
    iget v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1106
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mLastConnectionAttemptBssid:Ljava/lang/String;

    .line 1107
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager;->scheduleWatchdogTimer()V

    .line 1110
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConnectivityManager;->startConnectivityScan(Z)V

    .line 1098
    return-void
.end method

.method public handleScreenStateChanged(Z)V
    .locals 2
    .param p1, "screenOn"    # Z

    .prologue
    .line 1088
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "handleScreenStateChanged: screenOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    .line 1090
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mScreenOn:Z

    .line 1092
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConnectivityManager;->startConnectivityScan(Z)V

    .line 1087
    return-void
.end method

.method public setUntrustedConnectionAllowed(Z)V
    .locals 3
    .param p1, "allowed"    # Z

    .prologue
    .line 1117
    const-string/jumbo v0, "WifiConnectivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setUntrustedConnectionAllowed: allowed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1119
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mUntrustedConnectionAllowed:Z

    if-eq v0, p1, :cond_0

    .line 1120
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mUntrustedConnectionAllowed:Z

    .line 1121
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConnectivityManager;->startConnectivityScan(Z)V

    .line 1116
    :cond_0
    return-void
.end method

.method public setUserPreferredBand(I)V
    .locals 3
    .param p1, "band"    # I

    .prologue
    .line 1170
    const-string/jumbo v0, "WifiConnectivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "User band preference: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1172
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mQualifiedNetworkSelector:Lcom/android/server/wifi/WifiQualifiedNetworkSelector;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->setUserPreferredBand(I)V

    .line 1173
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConnectivityManager;->startConnectivityScan(Z)V

    .line 1169
    return-void
.end method

.method public setWifiEnabled(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 1180
    const-string/jumbo v1, "WifiConnectivityManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Set WiFi "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_1

    const-string/jumbo v0, "enabled"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1182
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiEnabled:Z

    .line 1184
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiEnabled:Z

    if-nez v0, :cond_2

    .line 1185
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager;->stopConnectivityScan()V

    .line 1186
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager;->resetLastPeriodicSingleScanTimeStamp()V

    .line 1187
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mLastConnectionAttemptBssid:Ljava/lang/String;

    .line 1188
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWaitForFullBandScanResults:Z

    .line 1179
    :cond_0
    :goto_1
    return-void

    .line 1180
    :cond_1
    const-string/jumbo v0, "disabled"

    goto :goto_0

    .line 1189
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiConnectivityManagerEnabled:Z

    if-eqz v0, :cond_0

    .line 1190
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConnectivityManager;->startConnectivityScan(Z)V

    goto :goto_1
.end method

.method public trackBssid(Ljava/lang/String;Z)Z
    .locals 4
    .param p1, "bssid"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    .prologue
    .line 1151
    const-string/jumbo v2, "WifiConnectivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "trackBssid: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p2, :cond_1

    const-string/jumbo v1, "enable "

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1153
    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mQualifiedNetworkSelector:Lcom/android/server/wifi/WifiQualifiedNetworkSelector;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->enableBssidForQualityNetworkSelection(Ljava/lang/String;Z)Z

    move-result v0

    .line 1156
    .local v0, "ret":Z
    if-eqz v0, :cond_0

    if-eqz p2, :cond_2

    .line 1163
    :cond_0
    :goto_1
    return v0

    .line 1151
    .end local v0    # "ret":Z
    :cond_1
    const-string/jumbo v1, "disable "

    goto :goto_0

    .line 1160
    .restart local v0    # "ret":Z
    :cond_2
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiConnectivityManager;->startConnectivityScan(Z)V

    goto :goto_1
.end method
