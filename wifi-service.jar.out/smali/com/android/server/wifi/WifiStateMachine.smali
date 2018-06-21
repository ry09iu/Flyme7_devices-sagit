.class public Lcom/android/server/wifi/WifiStateMachine;
.super Lcom/android/internal/util/StateMachine;
.source "WifiStateMachine.java"

# interfaces
.implements Lcom/android/server/wifi/WifiNative$WifiRssiEventHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;,
        Lcom/android/server/wifi/WifiStateMachine$ConnectedState;,
        Lcom/android/server/wifi/WifiStateMachine$DefaultState;,
        Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;,
        Lcom/android/server/wifi/WifiStateMachine$DisconnectingState;,
        Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;,
        Lcom/android/server/wifi/WifiStateMachine$DriverStartingState;,
        Lcom/android/server/wifi/WifiStateMachine$DriverStoppedState;,
        Lcom/android/server/wifi/WifiStateMachine$DriverStoppingState;,
        Lcom/android/server/wifi/WifiStateMachine$InitialState;,
        Lcom/android/server/wifi/WifiStateMachine$IpManagerCallback;,
        Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;,
        Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;,
        Lcom/android/server/wifi/WifiStateMachine$RoamingState;,
        Lcom/android/server/wifi/WifiStateMachine$ScanModeState;,
        Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;,
        Lcom/android/server/wifi/WifiStateMachine$SoftApState;,
        Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;,
        Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;,
        Lcom/android/server/wifi/WifiStateMachine$SupplicantStoppingState;,
        Lcom/android/server/wifi/WifiStateMachine$UntrustedWifiNetworkFactory;,
        Lcom/android/server/wifi/WifiStateMachine$WaitForP2pDisableState;,
        Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;,
        Lcom/android/server/wifi/WifiStateMachine$WifiNetworkFactory;,
        Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;
    }
.end annotation


# static fields
.field private static final ADD_OR_UPDATE_SOURCE:I = -0x3

.field static final BASE:I = 0x20000

.field static final CMD_ACCEPT_UNVALIDATED:I = 0x20099

.field static final CMD_ADD_OR_UPDATE_NETWORK:I = 0x20034

.field static final CMD_ADD_PASSPOINT_MO:I = 0x20066

.field static final CMD_AP_STOPPED:I = 0x20018

.field static final CMD_ASSOCIATED_BSSID:I = 0x20093

.field static final CMD_AUTO_CONNECT:I = 0x2008f

.field static final CMD_AUTO_ROAM:I = 0x20091

.field static final CMD_AUTO_SAVE_NETWORK:I = 0x20092

.field static final CMD_BLACKLIST_NETWORK:I = 0x20038

.field static final CMD_BLUETOOTH_ADAPTER_STATE_CHANGE:I = 0x2001f

.field public static final CMD_BOOT_COMPLETED:I = 0x20086

.field static final CMD_CLEAR_BLACKLIST:I = 0x20039

.field static final CMD_CONFIG_ND_OFFLOAD:I = 0x200cc

.field static final CMD_DELAYED_NETWORK_DISCONNECT:I = 0x20057

.field static final CMD_DISABLE_EPHEMERAL_NETWORK:I = 0x20062

.field public static final CMD_DISABLE_P2P_REQ:I = 0x20084

.field public static final CMD_DISABLE_P2P_RSP:I = 0x20085

.field static final CMD_DISCONNECT:I = 0x20049

.field static final CMD_DISCONNECTING_WATCHDOG_TIMER:I = 0x20060

.field static final CMD_DRIVER_START_TIMED_OUT:I = 0x20013

.field static final CMD_ENABLE_ALL_NETWORKS:I = 0x20037

.field static final CMD_ENABLE_AUTOJOIN_WHEN_ASSOCIATED:I = 0x200a7

.field static final CMD_ENABLE_NETWORK:I = 0x20036

.field public static final CMD_ENABLE_P2P:I = 0x20083

.field static final CMD_ENABLE_RSSI_POLL:I = 0x20052

.field static final CMD_ENABLE_TDLS:I = 0x2005c

.field static final CMD_ENABLE_WIFI_CONNECTIVITY_MANAGER:I = 0x200a6

.field static final CMD_FIRMWARE_ALERT:I = 0x20064

.field static final CMD_GET_CAPABILITY_FREQ:I = 0x2003c

.field static final CMD_GET_CONFIGURED_NETWORKS:I = 0x2003b

.field static final CMD_GET_CONNECTION_STATISTICS:I = 0x2004c

.field static final CMD_GET_LINK_LAYER_STATS:I = 0x2003f

.field static final CMD_GET_MATCHING_CONFIG:I = 0x20063

.field static final CMD_GET_PRIVILEGED_CONFIGURED_NETWORKS:I = 0x2003e

.field static final CMD_GET_SUPPORTED_FEATURES:I = 0x2003d

.field static final CMD_INSTALL_PACKET_FILTER:I = 0x200ca

.field static final CMD_IPV4_PROVISIONING_FAILURE:I = 0x200c9

.field static final CMD_IPV4_PROVISIONING_SUCCESS:I = 0x200c8

.field static final CMD_IP_CONFIGURATION_LOST:I = 0x2008b

.field static final CMD_IP_CONFIGURATION_SUCCESSFUL:I = 0x2008a

.field static final CMD_IP_REACHABILITY_LOST:I = 0x20095

.field static final CMD_IP_RECHABILITY_SESSION_END:I = 0x200cd

.field static final CMD_MATCH_PROVIDER_NETWORK:I = 0x20069

.field static final CMD_MODIFY_PASSPOINT_MO:I = 0x20067

.field static final CMD_NETWORK_STATUS:I = 0x20094

.field static final CMD_NO_NETWORKS_PERIODIC_SCAN:I = 0x20058

.field static final CMD_OBTAINING_IP_ADDRESS_WATCHDOG_TIMER:I = 0x2005d

.field static final CMD_PING_SUPPLICANT:I = 0x20033

.field static final CMD_QUERY_OSU_ICON:I = 0x20068

.field static final CMD_REASSOCIATE:I = 0x2004b

.field static final CMD_RECONNECT:I = 0x2004a

.field static final CMD_RELOAD_TLS_AND_RECONNECT:I = 0x2008e

.field static final CMD_REMOVE_APP_CONFIGURATIONS:I = 0x20061

.field static final CMD_REMOVE_NETWORK:I = 0x20035

.field static final CMD_REMOVE_USER_CONFIGURATIONS:I = 0x20098

.field static final CMD_RESET_SIM_NETWORKS:I = 0x20065

.field static final CMD_RESET_SUPPLICANT_STATE:I = 0x2006f

.field static final CMD_ROAM_WATCHDOG_TIMER:I = 0x2005e

.field static final CMD_RSSI_POLL:I = 0x20053

.field static final CMD_RSSI_THRESHOLD_BREACH:I = 0x200a4

.field static final CMD_SAVE_CONFIG:I = 0x2003a

.field static final CMD_SCREEN_STATE_CHANGED:I = 0x2005f

.field static final CMD_SET_FALLBACK_PACKET_FILTERING:I = 0x200cb

.field static final CMD_SET_FREQUENCY_BAND:I = 0x2005a

.field static final CMD_SET_HIGH_PERF_MODE:I = 0x2004d

.field static final CMD_SET_OPERATIONAL_MODE:I = 0x20048

.field static final CMD_SET_SUSPEND_OPT_ENABLED:I = 0x20056

.field static final CMD_START_AP:I = 0x20015

.field static final CMD_START_AP_FAILURE:I = 0x20016

.field static final CMD_START_DRIVER:I = 0x2000d

.field static final CMD_START_IP_PACKET_OFFLOAD:I = 0x200a0

.field static final CMD_START_RSSI_MONITORING_OFFLOAD:I = 0x200a2

.field static final CMD_START_SCAN:I = 0x20047

.field static final CMD_START_SUPPLICANT:I = 0x2000b

.field static final CMD_STATIC_IP_FAILURE:I = 0x20010

.field static final CMD_STATIC_IP_SUCCESS:I = 0x2000f

.field static final CMD_STOP_AP:I = 0x20017

.field static final CMD_STOP_DRIVER:I = 0x2000e

.field static final CMD_STOP_IP_PACKET_OFFLOAD:I = 0x200a1

.field static final CMD_STOP_RSSI_MONITORING_OFFLOAD:I = 0x200a3

.field static final CMD_STOP_SUPPLICANT:I = 0x2000c

.field static final CMD_STOP_SUPPLICANT_FAILED:I = 0x20011

.field static final CMD_TARGET_BSSID:I = 0x2008d

.field static final CMD_TEST_NETWORK_DISCONNECT:I = 0x20059

.field static final CMD_UNWANTED_NETWORK:I = 0x20090

.field static final CMD_UPDATE_ASSOCIATED_SCAN_PERMISSION:I = 0x2009e

.field static final CMD_UPDATE_LINKPROPERTIES:I = 0x2008c

.field static final CMD_USER_SWITCH:I = 0x200a5

.field public static final CONNECT_MODE:I = 0x1

.field private static final CONNECT_TIMEOUT_MSEC:I = 0xbb8

.field private static final CUSTOMIZED_SCAN_SETTING:Ljava/lang/String; = "customized_scan_settings"

.field private static final CUSTOMIZED_SCAN_WORKSOURCE:Ljava/lang/String; = "customized_scan_worksource"

.field private static DBG:Z = false

.field private static final DEBUG_PARSE:Z = false

.field public static final DFS_RESTRICTED_SCAN_REQUEST:I = -0x6

.field static final DISCONNECTING_GUARD_TIMER_MSEC:I = 0x1388

.field private static final DRIVER_START_TIME_OUT_MSECS:I = 0x2710

.field private static final ENABLE_WIFI:I = -0x5

.field private static final FAILURE:I = -0x1

.field private static final GOOGLE_OUI:Ljava/lang/String; = "DA-A1-19"

.field private static final LINK_FLAPPING_DEBOUNCE_MSEC:I = 0xfa0

.field private static final LOGD_LEVEL_DEBUG:Ljava/lang/String; = "D"

.field private static final LOGD_LEVEL_VERBOSE:Ljava/lang/String; = "V"

.field private static MESSAGE_HANDLING_STATUS_DEFERRED:I = 0x0

.field private static MESSAGE_HANDLING_STATUS_DISCARD:I = 0x0

.field private static MESSAGE_HANDLING_STATUS_FAIL:I = 0x0

.field private static MESSAGE_HANDLING_STATUS_HANDLING_ERROR:I = 0x0

.field private static MESSAGE_HANDLING_STATUS_LOOPED:I = 0x0

.field private static MESSAGE_HANDLING_STATUS_OBSOLETE:I = 0x0

.field private static MESSAGE_HANDLING_STATUS_OK:I = 0x0

.field private static MESSAGE_HANDLING_STATUS_PROCESSED:I = 0x0

.field private static MESSAGE_HANDLING_STATUS_REFUSED:I = 0x0

.field private static MESSAGE_HANDLING_STATUS_UNKNOWN:I = 0x0

.field private static final MIN_INTERVAL_ENABLE_ALL_NETWORKS_MS:I = 0x927c0

.field private static final NETWORKTYPE:Ljava/lang/String; = "WIFI"

.field private static final NETWORKTYPE_UNTRUSTED:Ljava/lang/String; = "WIFI_UT"

.field private static final NETWORK_STATUS_UNWANTED_DISABLE_AUTOJOIN:I = 0x2

.field private static final NETWORK_STATUS_UNWANTED_DISCONNECT:I = 0x0

.field private static final NETWORK_STATUS_UNWANTED_VALIDATION_FAILED:I = 0x1

.field public static final NUM_LOG_RECS_NORMAL:S = 0x64s

.field public static final NUM_LOG_RECS_VERBOSE:S = 0x3e8s

.field public static final NUM_LOG_RECS_VERBOSE_LOW_MEMORY:S = 0xc8s

.field static final OBTAINING_IP_ADDRESS_GUARD_TIMER_MSEC:I = 0x9c40

.field private static final ONE_HOUR_MILLI:I = 0x36ee80

.field private static final POLL_RSSI_INTERVAL_MSECS:I = 0xbb8

.field static final ROAM_GUARD_TIMER_MSEC:I = 0x3a98

.field public static final SCAN_ONLY_MODE:I = 0x2

.field public static final SCAN_ONLY_WITH_WIFI_OFF_MODE:I = 0x3

.field static final SCAN_PERMISSION_UPDATE_THROTTLE_MILLI:J = 0x4e20L

.field private static final SCAN_REQUEST:I = 0x0

.field private static final SCAN_REQUEST_BUFFER_MAX_SIZE:I = 0xa

.field private static final SCAN_REQUEST_TIME:Ljava/lang/String; = "scan_request_time"

.field private static final SET_ALLOW_UNTRUSTED_SOURCE:I = -0x4

.field private static final SUCCESS:I = 0x1

.field private static final SUPPLICANT_RESTART_INTERVAL_MSECS:I = 0x1388

.field private static final SUPPLICANT_RESTART_TRIES:I = 0x5

.field private static final SUSPEND_DUE_TO_DHCP:I = 0x1

.field private static final SUSPEND_DUE_TO_HIGH_PERF:I = 0x2

.field private static final SUSPEND_DUE_TO_SCREEN:I = 0x4

.field private static final SYSTEM_PROPERTY_LOG_CONTROL_WIFIHAL:Ljava/lang/String; = "log.tag.WifiHAL"

.field private static final TAG:Ljava/lang/String; = "WifiStateMachine"

.field private static final TETHER_NOTIFICATION_TIME_OUT_MSECS:I = 0x1388

.field private static final UNKNOWN_SCAN_SOURCE:I = -0x1

.field private static USE_PAUSE_SCANS:Z = false

.field private static final WIFI_AUTO_CONNECT_TYPE_AUTO:I = 0x0

.field public static final WIFI_WORK_SOURCE:Landroid/os/WorkSource;

.field private static mRandom:Ljava/util/Random; = null

.field private static final sFrameworkMinScanIntervalSaneValue:I = 0x2710

.field private static final sMessageClasses:[Ljava/lang/Class;

.field private static sScanAlarmIntentCount:I

.field private static final sSmToString:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private didBlackListBSSID:Z

.field disconnectingWatchdogCount:I

.field private lastConnectAttemptTimestamp:J

.field private lastForgetConfigurationAttempt:Landroid/net/wifi/WifiConfiguration;

.field private lastLinkLayerStatsUpdate:J

.field private lastOntimeReportTimeStamp:J

.field private lastSavedConfigurationAttempt:Landroid/net/wifi/WifiConfiguration;

.field private lastScanFreqs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private lastScreenStateChangeTimeStamp:J

.field private linkDebouncing:Z

.field private mAggressiveHandover:I

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mAutoRoaming:Z

.field private final mBackgroundScanSupported:Z

.field private final mBackupManagerProxy:Lcom/android/server/wifi/BackupManagerProxy;

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mBluetoothConnectionActive:Z

.field private final mBufferedScanMsg:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private final mBuildProperties:Lcom/android/server/wifi/BuildProperties;

.field private final mClock:Lcom/android/server/wifi/Clock;

.field private mCm:Landroid/net/ConnectivityManager;

.field private mConnectModeState:Lcom/android/internal/util/State;

.field mConnectedModeGScanOffloadStarted:Z

.field private mConnectedState:Lcom/android/internal/util/State;

.field private mConnectionReqCount:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mWifiReqCountLock"
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private final mCountryCode:Lcom/android/server/wifi/WifiCountryCode;

.field private mDataInterfaceName:Ljava/lang/String;

.field private final mDefaultFrameworkScanIntervalMs:I

.field private mDefaultState:Lcom/android/internal/util/State;

.field private final mDfltNetworkCapabilities:Landroid/net/NetworkCapabilities;

.field private mDhcpResults:Landroid/net/DhcpResults;

.field private final mDhcpResultsLock:Ljava/lang/Object;

.field private mDisconnectDelayDuration:I

.field private mDisconnectedState:Lcom/android/internal/util/State;

.field private mDisconnectedTimeStamp:J

.field private mDisconnectingState:Lcom/android/internal/util/State;

.field private mDriverRoaming:Z

.field private mDriverStartToken:I

.field private mDriverStartedState:Lcom/android/internal/util/State;

.field private mDriverStartingState:Lcom/android/internal/util/State;

.field private mDriverStoppedState:Lcom/android/internal/util/State;

.field private mDriverStoppingState:Lcom/android/internal/util/State;

.field private mEnableRssiPolling:Z

.field private mFacade:Lcom/android/server/wifi/FrameworkFacade;

.field private mFrequencyBand:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mGScanPeriodMilli:J

.field private mGScanStartTimeMilli:J

.field private mInitialState:Lcom/android/internal/util/State;

.field private final mInterfaceName:Ljava/lang/String;

.field private mIpManager:Landroid/net/ip/IpManager;

.field private mIsFullScanOngoing:Z

.field private mIsRandomMacCleared:Z

.field private mIsRunning:Z

.field private mIsScanOngoing:Z

.field private mIsWiFiIpReachabilityEnabled:Z

.field private mL2ConnectedState:Lcom/android/internal/util/State;

.field private mLastBssid:Ljava/lang/String;

.field private mLastDriverRoamAttempt:J

.field private mLastEnableAllNetworksTime:J

.field private mLastNetworkId:I

.field private final mLastRunningWifiUids:Landroid/os/WorkSource;

.field mLastScanPermissionUpdate:J

.field private mLastSignalLevel:I

.field private mLinkProperties:Landroid/net/LinkProperties;

.field private mMaxInitialSavedChannelScan:I

.field private mNetworkAgent:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

.field private final mNetworkCapabilitiesFilter:Landroid/net/NetworkCapabilities;

.field private mNetworkFactory:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkFactory;

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private final mNetworkMisc:Landroid/net/NetworkMisc;

.field private final mNoNetworksPeriodicScan:I

.field private mNumScanResultsKnown:I

.field private mNumScanResultsReturned:I

.field private mNumSelectiveChannelScan:I

.field private mNwService:Landroid/os/INetworkManagementService;

.field private mObtainingIpState:Lcom/android/internal/util/State;

.field private mOnTime:I

.field private mOnTimeLastReport:I

.field private mOnTimeScreenStateChange:I

.field private mOperationalMode:I

.field private final mP2pConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mP2pSupported:Z

.field private mPeriodicScanToken:I

.field private final mPrimaryDeviceType:Ljava/lang/String;

.field private final mPropertyService:Lcom/android/server/wifi/PropertyService;

.field private mReplyChannel:Lcom/android/internal/util/AsyncChannel;

.field private mReportedRunning:Z

.field private mRoamFailCount:I

.field private mRoamingState:Lcom/android/internal/util/State;

.field private mRssiPollToken:I

.field private mRssiRanges:[B

.field mRunningBeaconCount:I

.field private final mRunningWifiUids:Landroid/os/WorkSource;

.field private mRxTime:I

.field private mRxTimeLastReport:I

.field private mScanIntent:Landroid/app/PendingIntent;

.field private mScanModeState:Lcom/android/internal/util/State;

.field private mScanResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/ScanDetail;",
            ">;"
        }
    .end annotation
.end field

.field private final mScanResultsLock:Ljava/lang/Object;

.field private mScanWorkSource:Landroid/os/WorkSource;

.field private mScreenBroadcastReceived:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mScreenOn:Z

.field private mSendScanResultsBroadcast:Z

.field private mSoftApState:Lcom/android/internal/util/State;

.field private mSoftApStateMachine:Lcom/android/server/wifi/SoftApStateMachine;

.field private mStaAndAPConcurrency:Z

.field private mSupplicantRestartCount:I

.field private mSupplicantScanIntervalMs:J

.field private mSupplicantStartedState:Lcom/android/internal/util/State;

.field private mSupplicantStartingState:Lcom/android/internal/util/State;

.field private mSupplicantStateTracker:Lcom/android/server/wifi/SupplicantStateTracker;

.field private mSupplicantStopFailureToken:I

.field private mSupplicantStoppingState:Lcom/android/internal/util/State;

.field private mSuspendOptNeedsDisabled:I

.field private mSuspendWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mSystemUiUid:I

.field private mTargetNetworkId:I

.field private mTargetRoamBSSID:Ljava/lang/String;

.field private final mTcpBufferSizes:Ljava/lang/String;

.field private mTemporarilyDisconnectWifi:Z

.field private mTetherInterfaceName:Ljava/lang/String;

.field private mTetherToken:I

.field private mTxTime:I

.field private mTxTimeLastReport:I

.field private mUntrustedNetworkFactory:Lcom/android/server/wifi/WifiStateMachine$UntrustedWifiNetworkFactory;

.field private mUntrustedReqCount:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mWifiReqCountLock"
    .end annotation
.end field

.field private mUserWantsSuspendOpt:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mVerboseLoggingLevel:I

.field private mWaitForP2pDisableState:Lcom/android/internal/util/State;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWhiteListedSsids:[Ljava/lang/String;

.field private mWifiApConfigStore:Lcom/android/server/wifi/WifiApConfigStore;

.field private final mWifiApState:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

.field private mWifiConnectionStatistics:Landroid/net/wifi/WifiConnectionStatistics;

.field private mWifiConnectivityManager:Lcom/android/server/wifi/WifiConnectivityManager;

.field private final mWifiInfo:Landroid/net/wifi/WifiInfo;

.field private mWifiInjector:Lcom/android/server/wifi/WifiInjector;

.field private mWifiLastResortWatchdog:Lcom/android/server/wifi/WifiLastResortWatchdog;

.field private mWifiLinkLayerStatsSupported:I

.field private mWifiLogger:Lcom/android/server/wifi/BaseWifiLogger;

.field private mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

.field private mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

.field private mWifiNative:Lcom/android/server/wifi/WifiNative;

.field private mWifiP2pChannel:Lcom/android/internal/util/AsyncChannel;

.field private mWifiP2pServiceImpl:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

.field private mWifiQualifiedNetworkSelector:Lcom/android/server/wifi/WifiQualifiedNetworkSelector;

.field private final mWifiReqCountLock:Ljava/lang/Object;

.field private mWifiScanner:Landroid/net/wifi/WifiScanner;

.field mWifiScoreReport:Lcom/android/server/wifi/WifiScoreReport;

.field private final mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mWpsRunningState:Lcom/android/internal/util/State;

.field private messageHandlingStatus:I

.field obtainingIpWatchdogCount:I

.field roamWatchdogCount:I

.field private targetWificonfiguration:Landroid/net/wifi/WifiConfiguration;

.field private testNetworkDisconnect:Z

.field private testNetworkDisconnectCounter:I


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    return v0
.end method

.method static synthetic -get1()I
    .locals 1

    sget v0, Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_DEFERRED:I

    return v0
.end method

.method static synthetic -get10(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/Queue;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mBufferedScanMsg:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/ConnectivityManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mCm:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic -get12(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mConnectedState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic -get13(Lcom/android/server/wifi/WifiStateMachine;)I
    .locals 1

    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mConnectionReqCount:I

    return v0
.end method

.method static synthetic -get14(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get15(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiCountryCode;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mCountryCode:Lcom/android/server/wifi/WifiCountryCode;

    return-object v0
.end method

.method static synthetic -get16(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mDataInterfaceName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get17(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic -get18(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mDisconnectingState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic -get19(Lcom/android/server/wifi/WifiStateMachine;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mDriverRoaming:Z

    return v0
.end method

.method static synthetic -get2()I
    .locals 1

    sget v0, Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_DISCARD:I

    return v0
.end method

.method static synthetic -get20(Lcom/android/server/wifi/WifiStateMachine;)I
    .locals 1

    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mDriverStartToken:I

    return v0
.end method

.method static synthetic -get21(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mDriverStartedState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic -get22(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mDriverStartingState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic -get23(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mDriverStoppedState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic -get24(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mDriverStoppingState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic -get25(Lcom/android/server/wifi/WifiStateMachine;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mEnableRssiPolling:Z

    return v0
.end method

.method static synthetic -get26(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/FrameworkFacade;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mFacade:Lcom/android/server/wifi/FrameworkFacade;

    return-object v0
.end method

.method static synthetic -get27(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mFrequencyBand:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic -get28(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mInitialState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic -get29(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get3()I
    .locals 1

    sget v0, Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_FAIL:I

    return v0
.end method

.method static synthetic -get30(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/ip/IpManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mIpManager:Landroid/net/ip/IpManager;

    return-object v0
.end method

.method static synthetic -get31(Lcom/android/server/wifi/WifiStateMachine;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mIsFullScanOngoing:Z

    return v0
.end method

.method static synthetic -get32(Lcom/android/server/wifi/WifiStateMachine;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mIsRandomMacCleared:Z

    return v0
.end method

.method static synthetic -get33(Lcom/android/server/wifi/WifiStateMachine;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mIsWiFiIpReachabilityEnabled:Z

    return v0
.end method

.method static synthetic -get34(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get35(Lcom/android/server/wifi/WifiStateMachine;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastDriverRoamAttempt:J

    return-wide v0
.end method

.method static synthetic -get36(Lcom/android/server/wifi/WifiStateMachine;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastEnableAllNetworksTime:J

    return-wide v0
.end method

.method static synthetic -get37(Lcom/android/server/wifi/WifiStateMachine;)I
    .locals 1

    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I

    return v0
.end method

.method static synthetic -get38(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/LinkProperties;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    return-object v0
.end method

.method static synthetic -get39(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkAgent:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    return-object v0
.end method

.method static synthetic -get4()I
    .locals 1

    sget v0, Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_REFUSED:I

    return v0
.end method

.method static synthetic -get40(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/NetworkCapabilities;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkCapabilitiesFilter:Landroid/net/NetworkCapabilities;

    return-object v0
.end method

.method static synthetic -get41(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/NetworkInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method static synthetic -get42(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/NetworkMisc;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkMisc:Landroid/net/NetworkMisc;

    return-object v0
.end method

.method static synthetic -get43(Lcom/android/server/wifi/WifiStateMachine;)I
    .locals 1

    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mNoNetworksPeriodicScan:I

    return v0
.end method

.method static synthetic -get44(Lcom/android/server/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;

    return-object v0
.end method

.method static synthetic -get45(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mObtainingIpState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic -get46(Lcom/android/server/wifi/WifiStateMachine;)I
    .locals 1

    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mOperationalMode:I

    return v0
.end method

.method static synthetic -get47(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mP2pConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic -get48(Lcom/android/server/wifi/WifiStateMachine;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mP2pSupported:Z

    return v0
.end method

.method static synthetic -get49(Lcom/android/server/wifi/WifiStateMachine;)I
    .locals 1

    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mPeriodicScanToken:I

    return v0
.end method

.method static synthetic -get5(Lcom/android/server/wifi/WifiStateMachine;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->linkDebouncing:Z

    return v0
.end method

.method static synthetic -get50(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mPrimaryDeviceType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get51(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/PropertyService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mPropertyService:Lcom/android/server/wifi/PropertyService;

    return-object v0
.end method

.method static synthetic -get52(Lcom/android/server/wifi/WifiStateMachine;)I
    .locals 1

    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mRoamFailCount:I

    return v0
.end method

.method static synthetic -get53(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mRoamingState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic -get54(Lcom/android/server/wifi/WifiStateMachine;)I
    .locals 1

    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mRssiPollToken:I

    return v0
.end method

.method static synthetic -get55(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mScanModeState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic -get56(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mScreenBroadcastReceived:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic -get57(Lcom/android/server/wifi/WifiStateMachine;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mScreenOn:Z

    return v0
.end method

.method static synthetic -get58(Lcom/android/server/wifi/WifiStateMachine;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mSendScanResultsBroadcast:Z

    return v0
.end method

.method static synthetic -get59(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mSoftApState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/wifi/WifiStateMachine;)I
    .locals 1

    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mAggressiveHandover:I

    return v0
.end method

.method static synthetic -get60(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SoftApStateMachine;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mSoftApStateMachine:Lcom/android/server/wifi/SoftApStateMachine;

    return-object v0
.end method

.method static synthetic -get61(Lcom/android/server/wifi/WifiStateMachine;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mStaAndAPConcurrency:Z

    return v0
.end method

.method static synthetic -get62(Lcom/android/server/wifi/WifiStateMachine;)I
    .locals 1

    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mSupplicantRestartCount:I

    return v0
.end method

.method static synthetic -get63(Lcom/android/server/wifi/WifiStateMachine;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mSupplicantScanIntervalMs:J

    return-wide v0
.end method

.method static synthetic -get64(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStartingState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic -get65(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStateTracker:Lcom/android/server/wifi/SupplicantStateTracker;

    return-object v0
.end method

.method static synthetic -get66(Lcom/android/server/wifi/WifiStateMachine;)I
    .locals 1

    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStopFailureToken:I

    return v0
.end method

.method static synthetic -get67(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStoppingState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic -get68(Lcom/android/server/wifi/WifiStateMachine;)I
    .locals 1

    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mSuspendOptNeedsDisabled:I

    return v0
.end method

.method static synthetic -get69(Lcom/android/server/wifi/WifiStateMachine;)Landroid/os/PowerManager$WakeLock;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mSuspendWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/wifi/WifiStateMachine;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mAutoRoaming:Z

    return v0
.end method

.method static synthetic -get70(Lcom/android/server/wifi/WifiStateMachine;)I
    .locals 1

    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mSystemUiUid:I

    return v0
.end method

.method static synthetic -get71(Lcom/android/server/wifi/WifiStateMachine;)I
    .locals 1

    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mTargetNetworkId:I

    return v0
.end method

.method static synthetic -get72(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mTargetRoamBSSID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get73(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mTcpBufferSizes:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get74(Lcom/android/server/wifi/WifiStateMachine;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mTemporarilyDisconnectWifi:Z

    return v0
.end method

.method static synthetic -get75(Lcom/android/server/wifi/WifiStateMachine;)I
    .locals 1

    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mUntrustedReqCount:I

    return v0
.end method

.method static synthetic -get76(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mUserWantsSuspendOpt:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic -get77(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWaitForP2pDisableState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic -get78(Lcom/android/server/wifi/WifiStateMachine;)Landroid/os/PowerManager$WakeLock;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic -get79(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiApConfigStore;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiApConfigStore:Lcom/android/server/wifi/WifiApConfigStore;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/BackupManagerProxy;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mBackupManagerProxy:Lcom/android/server/wifi/BackupManagerProxy;

    return-object v0
.end method

.method static synthetic -get80(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    return-object v0
.end method

.method static synthetic -get81(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConnectionStatistics;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConnectionStatistics:Landroid/net/wifi/WifiConnectionStatistics;

    return-object v0
.end method

.method static synthetic -get82(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConnectivityManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConnectivityManager:Lcom/android/server/wifi/WifiConnectivityManager;

    return-object v0
.end method

.method static synthetic -get83(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    return-object v0
.end method

.method static synthetic -get84(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiInjector;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInjector:Lcom/android/server/wifi/WifiInjector;

    return-object v0
.end method

.method static synthetic -get85(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiLastResortWatchdog;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiLastResortWatchdog:Lcom/android/server/wifi/WifiLastResortWatchdog;

    return-object v0
.end method

.method static synthetic -get86(Lcom/android/server/wifi/WifiStateMachine;)I
    .locals 1

    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiLinkLayerStatsSupported:I

    return v0
.end method

.method static synthetic -get87(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/BaseWifiLogger;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiLogger:Lcom/android/server/wifi/BaseWifiLogger;

    return-object v0
.end method

.method static synthetic -get88(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiMetrics;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    return-object v0
.end method

.method static synthetic -get89(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiMonitor;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/server/wifi/WifiStateMachine;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mBluetoothConnectionActive:Z

    return v0
.end method

.method static synthetic -get90(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    return-object v0
.end method

.method static synthetic -get91(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiP2pChannel:Lcom/android/internal/util/AsyncChannel;

    return-object v0
.end method

.method static synthetic -get92(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiP2pServiceImpl:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    return-object v0
.end method

.method static synthetic -get93(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiQualifiedNetworkSelector;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiQualifiedNetworkSelector:Lcom/android/server/wifi/WifiQualifiedNetworkSelector;

    return-object v0
.end method

.method static synthetic -get94(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiReqCountLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get95(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiScanner;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiScanner:Landroid/net/wifi/WifiScanner;

    return-object v0
.end method

.method static synthetic -get96(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWpsRunningState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic -get97(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->targetWificonfiguration:Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method static synthetic -get98(Lcom/android/server/wifi/WifiStateMachine;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->testNetworkDisconnect:Z

    return v0
.end method

.method static synthetic -get99(Lcom/android/server/wifi/WifiStateMachine;)I
    .locals 1

    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->testNetworkDisconnectCounter:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/server/wifi/WifiStateMachine;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wifi/WifiStateMachine;->didBlackListBSSID:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/server/wifi/WifiStateMachine;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/server/wifi/WifiStateMachine;->lastConnectAttemptTimestamp:J

    return-wide p1
.end method

.method static synthetic -set10(Lcom/android/server/wifi/WifiStateMachine;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mDriverStartToken:I

    return p1
.end method

.method static synthetic -set11(Lcom/android/server/wifi/WifiStateMachine;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mEnableRssiPolling:Z

    return p1
.end method

.method static synthetic -set12(Lcom/android/server/wifi/WifiStateMachine;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mIsFullScanOngoing:Z

    return p1
.end method

.method static synthetic -set13(Lcom/android/server/wifi/WifiStateMachine;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mIsRandomMacCleared:Z

    return p1
.end method

.method static synthetic -set14(Lcom/android/server/wifi/WifiStateMachine;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mIsRunning:Z

    return p1
.end method

.method static synthetic -set15(Lcom/android/server/wifi/WifiStateMachine;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mIsScanOngoing:Z

    return p1
.end method

.method static synthetic -set16(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set17(Lcom/android/server/wifi/WifiStateMachine;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastDriverRoamAttempt:J

    return-wide p1
.end method

.method static synthetic -set18(Lcom/android/server/wifi/WifiStateMachine;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastEnableAllNetworksTime:J

    return-wide p1
.end method

.method static synthetic -set19(Lcom/android/server/wifi/WifiStateMachine;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I

    return p1
.end method

.method static synthetic -set2(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine;->lastForgetConfigurationAttempt:Landroid/net/wifi/WifiConfiguration;

    return-object p1
.end method

.method static synthetic -set20(Lcom/android/server/wifi/WifiStateMachine;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastSignalLevel:I

    return p1
.end method

.method static synthetic -set21(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;)Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkAgent:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    return-object p1
.end method

.method static synthetic -set22(Lcom/android/server/wifi/WifiStateMachine;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mNumSelectiveChannelScan:I

    return p1
.end method

.method static synthetic -set23(Lcom/android/server/wifi/WifiStateMachine;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mOperationalMode:I

    return p1
.end method

.method static synthetic -set24(Lcom/android/server/wifi/WifiStateMachine;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mPeriodicScanToken:I

    return p1
.end method

.method static synthetic -set25(Lcom/android/server/wifi/WifiStateMachine;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mRoamFailCount:I

    return p1
.end method

.method static synthetic -set26(Lcom/android/server/wifi/WifiStateMachine;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mRssiPollToken:I

    return p1
.end method

.method static synthetic -set27(Lcom/android/server/wifi/WifiStateMachine;[B)[B
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mRssiRanges:[B

    return-object p1
.end method

.method static synthetic -set28(Lcom/android/server/wifi/WifiStateMachine;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mScanResults:Ljava/util/List;

    return-object p1
.end method

.method static synthetic -set29(Lcom/android/server/wifi/WifiStateMachine;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mSendScanResultsBroadcast:Z

    return p1
.end method

.method static synthetic -set3(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine;->lastSavedConfigurationAttempt:Landroid/net/wifi/WifiConfiguration;

    return-object p1
.end method

.method static synthetic -set30(Lcom/android/server/wifi/WifiStateMachine;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mSupplicantRestartCount:I

    return p1
.end method

.method static synthetic -set31(Lcom/android/server/wifi/WifiStateMachine;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mSupplicantScanIntervalMs:J

    return-wide p1
.end method

.method static synthetic -set32(Lcom/android/server/wifi/WifiStateMachine;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStopFailureToken:I

    return p1
.end method

.method static synthetic -set33(Lcom/android/server/wifi/WifiStateMachine;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mTargetNetworkId:I

    return p1
.end method

.method static synthetic -set34(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mTargetRoamBSSID:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set35(Lcom/android/server/wifi/WifiStateMachine;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mTemporarilyDisconnectWifi:Z

    return p1
.end method

.method static synthetic -set36(Lcom/android/server/wifi/WifiStateMachine;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mUntrustedReqCount:I

    return p1
.end method

.method static synthetic -set37(Lcom/android/server/wifi/WifiStateMachine;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWhiteListedSsids:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set38(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/server/wifi/WifiApConfigStore;)Lcom/android/server/wifi/WifiApConfigStore;
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiApConfigStore:Lcom/android/server/wifi/WifiApConfigStore;

    return-object p1
.end method

.method static synthetic -set39(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/server/wifi/WifiConnectivityManager;)Lcom/android/server/wifi/WifiConnectivityManager;
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConnectivityManager:Lcom/android/server/wifi/WifiConnectivityManager;

    return-object p1
.end method

.method static synthetic -set4(Lcom/android/server/wifi/WifiStateMachine;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wifi/WifiStateMachine;->linkDebouncing:Z

    return p1
.end method

.method static synthetic -set40(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiP2pChannel:Lcom/android/internal/util/AsyncChannel;

    return-object p1
.end method

.method static synthetic -set41(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiScanner;)Landroid/net/wifi/WifiScanner;
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiScanner:Landroid/net/wifi/WifiScanner;

    return-object p1
.end method

.method static synthetic -set42(Lcom/android/server/wifi/WifiStateMachine;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I

    return p1
.end method

.method static synthetic -set43(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine;->targetWificonfiguration:Landroid/net/wifi/WifiConfiguration;

    return-object p1
.end method

.method static synthetic -set44(Lcom/android/server/wifi/WifiStateMachine;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/wifi/WifiStateMachine;->testNetworkDisconnectCounter:I

    return p1
.end method

.method static synthetic -set5(Lcom/android/server/wifi/WifiStateMachine;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mAutoRoaming:Z

    return p1
.end method

.method static synthetic -set6(Lcom/android/server/wifi/WifiStateMachine;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mBluetoothConnectionActive:Z

    return p1
.end method

.method static synthetic -set7(Lcom/android/server/wifi/WifiStateMachine;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mConnectionReqCount:I

    return p1
.end method

.method static synthetic -set8(Lcom/android/server/wifi/WifiStateMachine;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mDisconnectedTimeStamp:J

    return-wide p1
.end method

.method static synthetic -set9(Lcom/android/server/wifi/WifiStateMachine;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mDriverRoaming:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/NetworkInfo$DetailedState;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->getNetworkDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)Landroid/net/wifi/SupplicantState;
    .locals 1
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->handleSupplicantStateChange(Landroid/os/Message;)Landroid/net/wifi/SupplicantState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap10(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)[B
    .locals 1
    .param p1, "macString"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->macAddressFromString(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap11(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap12(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->getTargetSsid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap13(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "ipAddress"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->macAddressFromRoute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap14(Lcom/android/server/wifi/WifiStateMachine;I)Ljava/lang/String;
    .locals 1
    .param p1, "timeout"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->updateDefaultRouteMacAddress(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap15(Lcom/android/server/wifi/WifiStateMachine;ILandroid/net/wifi/WifiConfiguration;)V
    .locals 0
    .param p1, "wifiCredentialEventType"    # I
    .param p2, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiStateMachine;->broadcastWifiCredentialChanged(ILandroid/net/wifi/WifiConfiguration;)V

    return-void
.end method

.method static synthetic -wrap16(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->checkAndSetConnectivityInstance()V

    return-void
.end method

.method static synthetic -wrap17(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->cleanWifiScore()V

    return-void
.end method

.method static synthetic -wrap18(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic -wrap19(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/RssiPacketCountInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/net/wifi/RssiPacketCountInfo;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->fetchPktcntNative(Landroid/net/wifi/RssiPacketCountInfo;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/wifi/WifiStateMachine;)Landroid/os/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentMessage()Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap20(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->fetchRssiLinkSpeedAndFrequencyNative()V

    return-void
.end method

.method static synthetic -wrap21(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->handleIPv4Failure()V

    return-void
.end method

.method static synthetic -wrap22(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/DhcpResults;)V
    .locals 0
    .param p1, "dhcpResults"    # Landroid/net/DhcpResults;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->handleIPv4Success(Landroid/net/DhcpResults;)V

    return-void
.end method

.method static synthetic -wrap23(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->handleIpConfigurationLost()V

    return-void
.end method

.method static synthetic -wrap24(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->handleIpReachabilityLost()V

    return-void
.end method

.method static synthetic -wrap25(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->handleNetworkDisconnect()V

    return-void
.end method

.method static synthetic -wrap26(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->handleScanRequest(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic -wrap27(Lcom/android/server/wifi/WifiStateMachine;Z)V
    .locals 0
    .param p1, "screenOn"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->handleScreenStateChanged(Z)V

    return-void
.end method

.method static synthetic -wrap28(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->handleSuccessfulIpConfiguration()V

    return-void
.end method

.method static synthetic -wrap29(Lcom/android/server/wifi/WifiStateMachine;Z)V
    .locals 0
    .param p1, "killSupplicant"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->handleSupplicantConnectionLoss(Z)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)Z
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->checkOrDeferScanAllowed(Landroid/os/Message;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap30(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;Lcom/android/internal/util/State;)V
    .locals 0
    .param p1, "message"    # Landroid/os/Message;
    .param p2, "state"    # Lcom/android/internal/util/State;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiStateMachine;->logStateAndMessage(Landroid/os/Message;Lcom/android/internal/util/State;)V

    return-void
.end method

.method static synthetic -wrap31(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->logw(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap32(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;I)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "what"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;I)V

    return-void
.end method

.method static synthetic -wrap33(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "what"    # I
    .param p3, "arg1"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V

    return-void
.end method

.method static synthetic -wrap34(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic -wrap35(Lcom/android/server/wifi/WifiStateMachine;II)V
    .locals 0
    .param p1, "level2FailureCode"    # I
    .param p2, "connectivityFailureCode"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiStateMachine;->reportConnectionAttemptEnd(II)V

    return-void
.end method

.method static synthetic -wrap36(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->sendConnectedState()V

    return-void
.end method

.method static synthetic -wrap37(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p1, "bssid"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->sendNetworkStateChangeBroadcast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap38(Lcom/android/server/wifi/WifiStateMachine;I)V
    .locals 0
    .param p1, "newRssi"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->sendRssiChangeBroadcast(I)V

    return-void
.end method

.method static synthetic -wrap39(Lcom/android/server/wifi/WifiStateMachine;Z)V
    .locals 0
    .param p1, "connected"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->sendSupplicantConnectionChangedBroadcast(Z)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/wifi/WifiStateMachine;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->clearRandomMacOui()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap40(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->setFrequencyBand()V

    return-void
.end method

.method static synthetic -wrap41(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->setScanResults()V

    return-void
.end method

.method static synthetic -wrap42(Lcom/android/server/wifi/WifiStateMachine;IZ)V
    .locals 0
    .param p1, "reason"    # I
    .param p2, "enabled"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiStateMachine;->setSuspendOptimizationsNative(IZ)V

    return-void
.end method

.method static synthetic -wrap43(Lcom/android/server/wifi/WifiStateMachine;IZ)V
    .locals 0
    .param p1, "reason"    # I
    .param p2, "enabled"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiStateMachine;->setSuspendOptimizations(IZ)V

    return-void
.end method

.method static synthetic -wrap44(Lcom/android/server/wifi/WifiStateMachine;II)V
    .locals 0
    .param p1, "wifiApState"    # I
    .param p2, "reason"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiStateMachine;->setWifiApState(II)V

    return-void
.end method

.method static synthetic -wrap45(Lcom/android/server/wifi/WifiStateMachine;I)V
    .locals 0
    .param p1, "wifiState"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->setWifiState(I)V

    return-void
.end method

.method static synthetic -wrap46(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->stopIpManager()V

    return-void
.end method

.method static synthetic -wrap47(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p1, "destState"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic -wrap48(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)V
    .locals 0
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->updateCapabilities(Landroid/net/wifi/WifiConfiguration;)V

    return-void
.end method

.method static synthetic -wrap49(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->updateDataInterface()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/wifi/WifiStateMachine;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->hasConnectionRequests()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap50(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/LinkProperties;)V
    .locals 0
    .param p1, "newLp"    # Landroid/net/LinkProperties;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->updateLinkProperties(Landroid/net/LinkProperties;)V

    return-void
.end method

.method static synthetic -wrap51(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/server/wifi/WnmData;)V
    .locals 0
    .param p1, "event"    # Lcom/android/server/wifi/WnmData;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->wnmFrameReceived(Lcom/android/server/wifi/WnmData;)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/NetworkInfo$DetailedState;)Z
    .locals 1
    .param p1, "state"    # Landroid/net/NetworkInfo$DetailedState;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->setNetworkDetailedState(Landroid/net/NetworkInfo$DetailedState;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap7(Lcom/android/server/wifi/WifiStateMachine;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->setRandomMacOui()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap8(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)Z
    .locals 1
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "bssid"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiStateMachine;->setTargetBssid(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap9(Lcom/android/server/wifi/WifiStateMachine;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->setupDriverForSoftAp()Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 161
    sput-boolean v4, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    .line 162
    sput-boolean v4, Lcom/android/server/wifi/WifiStateMachine;->USE_PAUSE_SCANS:Z

    .line 415
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Random;-><init>(J)V

    sput-object v0, Lcom/android/server/wifi/WifiStateMachine;->mRandom:Ljava/util/Random;

    .line 866
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Class;

    .line 867
    const-class v1, Lcom/android/internal/util/AsyncChannel;

    aput-object v1, v0, v4

    const-class v1, Lcom/android/server/wifi/WifiStateMachine;

    aput-object v1, v0, v5

    const-class v1, Landroid/net/dhcp/DhcpClient;

    aput-object v1, v0, v6

    .line 866
    sput-object v0, Lcom/android/server/wifi/WifiStateMachine;->sMessageClasses:[Ljava/lang/Class;

    .line 869
    sget-object v0, Lcom/android/server/wifi/WifiStateMachine;->sMessageClasses:[Ljava/lang/Class;

    invoke-static {v0}, Lcom/android/internal/util/MessageUtils;->findMessageNames([Ljava/lang/Class;)Landroid/util/SparseArray;

    move-result-object v0

    .line 868
    sput-object v0, Lcom/android/server/wifi/WifiStateMachine;->sSmToString:Landroid/util/SparseArray;

    .line 1010
    new-instance v0, Landroid/os/WorkSource;

    const/16 v1, 0x3f2

    invoke-direct {v0, v1}, Landroid/os/WorkSource;-><init>(I)V

    sput-object v0, Lcom/android/server/wifi/WifiStateMachine;->WIFI_WORK_SOURCE:Landroid/os/WorkSource;

    .line 1037
    sput v4, Lcom/android/server/wifi/WifiStateMachine;->sScanAlarmIntentCount:I

    .line 1612
    sput v6, Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_PROCESSED:I

    .line 1613
    sput v5, Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_OK:I

    .line 1614
    sput v4, Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_UNKNOWN:I

    .line 1615
    const/4 v0, -0x1

    sput v0, Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_REFUSED:I

    .line 1616
    const/4 v0, -0x2

    sput v0, Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_FAIL:I

    .line 1617
    const/4 v0, -0x3

    sput v0, Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_OBSOLETE:I

    .line 1618
    const/4 v0, -0x4

    sput v0, Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_DEFERRED:I

    .line 1619
    const/4 v0, -0x5

    sput v0, Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_DISCARD:I

    .line 1620
    const/4 v0, -0x6

    sput v0, Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_LOOPED:I

    .line 1621
    const/4 v0, -0x7

    sput v0, Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_HANDLING_ERROR:I

    .line 152
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wifi/FrameworkFacade;Landroid/os/Looper;Landroid/os/UserManager;Lcom/android/server/wifi/WifiInjector;Lcom/android/server/wifi/BackupManagerProxy;Lcom/android/server/wifi/WifiCountryCode;)V
    .locals 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "facade"    # Lcom/android/server/wifi/FrameworkFacade;
    .param p3, "looper"    # Landroid/os/Looper;
    .param p4, "userManager"    # Landroid/os/UserManager;
    .param p5, "wifiInjector"    # Lcom/android/server/wifi/WifiInjector;
    .param p6, "backupManagerProxy"    # Lcom/android/server/wifi/BackupManagerProxy;
    .param p7, "countryCode"    # Lcom/android/server/wifi/WifiCountryCode;

    .prologue
    .line 1054
    const-string/jumbo v2, "WifiStateMachine"

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v2, v1}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    .line 169
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mVerboseLoggingLevel:I

    .line 173
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wifi/WifiStateMachine;->didBlackListBSSID:Z

    .line 202
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mP2pConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 203
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mTemporarilyDisconnectWifi:Z

    .line 209
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mStaAndAPConcurrency:Z

    .line 210
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mSoftApStateMachine:Lcom/android/server/wifi/SoftApStateMachine;

    .line 213
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mNumSelectiveChannelScan:I

    .line 217
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mScanResults:Ljava/util/List;

    .line 218
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mScanResultsLock:Ljava/lang/Object;

    .line 225
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mScreenOn:Z

    .line 236
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mLastSignalLevel:I

    .line 239
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wifi/WifiStateMachine;->linkDebouncing:Z

    .line 275
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wifi/WifiStateMachine;->testNetworkDisconnect:Z

    .line 277
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mEnableRssiPolling:Z

    .line 278
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mIsRandomMacCleared:Z

    .line 279
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mRssiPollToken:I

    .line 285
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mOperationalMode:I

    .line 286
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mIsScanOngoing:Z

    .line 287
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mIsFullScanOngoing:Z

    .line 288
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mSendScanResultsBroadcast:Z

    .line 290
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mBufferedScanMsg:Ljava/util/Queue;

    .line 291
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mScanWorkSource:Landroid/os/WorkSource;

    .line 306
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mScreenBroadcastReceived:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 308
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mBluetoothConnectionActive:Z

    .line 334
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mSupplicantRestartCount:I

    .line 336
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStopFailureToken:I

    .line 344
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mTetherToken:I

    .line 352
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mDriverStartToken:I

    .line 367
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mPeriodicScanToken:I

    .line 374
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mDhcpResultsLock:Ljava/lang/Object;

    .line 383
    const/4 v2, 0x4

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiLinkLayerStatsSupported:I

    .line 386
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mAutoRoaming:Z

    .line 388
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mIsWiFiIpReachabilityEnabled:Z

    .line 389
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mDriverRoaming:Z

    .line 392
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mRoamFailCount:I

    .line 398
    const-string/jumbo v2, "any"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mTargetRoamBSSID:Ljava/lang/String;

    .line 402
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mTargetNetworkId:I

    .line 404
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mLastDriverRoamAttempt:J

    .line 406
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->targetWificonfiguration:Landroid/net/wifi/WifiConfiguration;

    .line 409
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->lastSavedConfigurationAttempt:Landroid/net/wifi/WifiConfiguration;

    .line 412
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->lastForgetConfigurationAttempt:Landroid/net/wifi/WifiConfiguration;

    .line 577
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mFrequencyBand:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 580
    new-instance v2, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v2}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;

    .line 590
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mConnectionReqCount:I

    .line 593
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mUntrustedReqCount:I

    .line 596
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiReqCountLock:Ljava/lang/Object;

    .line 598
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mWhiteListedSsids:[Ljava/lang/String;

    .line 605
    new-instance v2, Landroid/net/wifi/WifiConnectionStatistics;

    invoke-direct {v2}, Landroid/net/wifi/WifiConnectionStatistics;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConnectionStatistics:Landroid/net/wifi/WifiConnectionStatistics;

    .line 608
    new-instance v2, Landroid/net/NetworkCapabilities;

    invoke-direct {v2}, Landroid/net/NetworkCapabilities;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkCapabilitiesFilter:Landroid/net/NetworkCapabilities;

    .line 611
    new-instance v2, Landroid/net/NetworkMisc;

    invoke-direct {v2}, Landroid/net/NetworkMisc;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkMisc:Landroid/net/NetworkMisc;

    .line 711
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->testNetworkDisconnectCounter:I

    .line 726
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->roamWatchdogCount:I

    .line 765
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->obtainingIpWatchdogCount:I

    .line 771
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->disconnectingWatchdogCount:I

    .line 888
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mSuspendOptNeedsDisabled:I

    .line 895
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mUserWantsSuspendOpt:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 932
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mRunningBeaconCount:I

    .line 935
    new-instance v2, Lcom/android/server/wifi/WifiStateMachine$DefaultState;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/wifi/WifiStateMachine$DefaultState;-><init>(Lcom/android/server/wifi/WifiStateMachine;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    .line 937
    new-instance v2, Lcom/android/server/wifi/WifiStateMachine$InitialState;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/wifi/WifiStateMachine$InitialState;-><init>(Lcom/android/server/wifi/WifiStateMachine;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mInitialState:Lcom/android/internal/util/State;

    .line 939
    new-instance v2, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;-><init>(Lcom/android/server/wifi/WifiStateMachine;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStartingState:Lcom/android/internal/util/State;

    .line 941
    new-instance v2, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;-><init>(Lcom/android/server/wifi/WifiStateMachine;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStartedState:Lcom/android/internal/util/State;

    .line 943
    new-instance v2, Lcom/android/server/wifi/WifiStateMachine$SupplicantStoppingState;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/wifi/WifiStateMachine$SupplicantStoppingState;-><init>(Lcom/android/server/wifi/WifiStateMachine;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStoppingState:Lcom/android/internal/util/State;

    .line 945
    new-instance v2, Lcom/android/server/wifi/WifiStateMachine$DriverStartingState;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/wifi/WifiStateMachine$DriverStartingState;-><init>(Lcom/android/server/wifi/WifiStateMachine;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mDriverStartingState:Lcom/android/internal/util/State;

    .line 947
    new-instance v2, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;-><init>(Lcom/android/server/wifi/WifiStateMachine;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mDriverStartedState:Lcom/android/internal/util/State;

    .line 952
    new-instance v2, Lcom/android/server/wifi/WifiStateMachine$WaitForP2pDisableState;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/wifi/WifiStateMachine$WaitForP2pDisableState;-><init>(Lcom/android/server/wifi/WifiStateMachine;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mWaitForP2pDisableState:Lcom/android/internal/util/State;

    .line 954
    new-instance v2, Lcom/android/server/wifi/WifiStateMachine$DriverStoppingState;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/wifi/WifiStateMachine$DriverStoppingState;-><init>(Lcom/android/server/wifi/WifiStateMachine;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mDriverStoppingState:Lcom/android/internal/util/State;

    .line 956
    new-instance v2, Lcom/android/server/wifi/WifiStateMachine$DriverStoppedState;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/wifi/WifiStateMachine$DriverStoppedState;-><init>(Lcom/android/server/wifi/WifiStateMachine;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mDriverStoppedState:Lcom/android/internal/util/State;

    .line 958
    new-instance v2, Lcom/android/server/wifi/WifiStateMachine$ScanModeState;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/wifi/WifiStateMachine$ScanModeState;-><init>(Lcom/android/server/wifi/WifiStateMachine;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mScanModeState:Lcom/android/internal/util/State;

    .line 960
    new-instance v2, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;-><init>(Lcom/android/server/wifi/WifiStateMachine;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mConnectModeState:Lcom/android/internal/util/State;

    .line 962
    new-instance v2, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;-><init>(Lcom/android/server/wifi/WifiStateMachine;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mL2ConnectedState:Lcom/android/internal/util/State;

    .line 964
    new-instance v2, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;-><init>(Lcom/android/server/wifi/WifiStateMachine;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mObtainingIpState:Lcom/android/internal/util/State;

    .line 966
    new-instance v2, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;-><init>(Lcom/android/server/wifi/WifiStateMachine;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mConnectedState:Lcom/android/internal/util/State;

    .line 968
    new-instance v2, Lcom/android/server/wifi/WifiStateMachine$RoamingState;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/wifi/WifiStateMachine$RoamingState;-><init>(Lcom/android/server/wifi/WifiStateMachine;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mRoamingState:Lcom/android/internal/util/State;

    .line 970
    new-instance v2, Lcom/android/server/wifi/WifiStateMachine$DisconnectingState;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/wifi/WifiStateMachine$DisconnectingState;-><init>(Lcom/android/server/wifi/WifiStateMachine;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mDisconnectingState:Lcom/android/internal/util/State;

    .line 972
    new-instance v2, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;-><init>(Lcom/android/server/wifi/WifiStateMachine;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;

    .line 974
    new-instance v2, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;-><init>(Lcom/android/server/wifi/WifiStateMachine;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mWpsRunningState:Lcom/android/internal/util/State;

    .line 976
    new-instance v2, Lcom/android/server/wifi/WifiStateMachine$SoftApState;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/wifi/WifiStateMachine$SoftApState;-><init>(Lcom/android/server/wifi/WifiStateMachine;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mSoftApState:Lcom/android/internal/util/State;

    .line 994
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1003
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v3, 0xb

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiApState:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1015
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mIsRunning:Z

    .line 1020
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mReportedRunning:Z

    .line 1025
    new-instance v2, Landroid/os/WorkSource;

    invoke-direct {v2}, Landroid/os/WorkSource;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mRunningWifiUids:Landroid/os/WorkSource;

    .line 1030
    new-instance v2, Landroid/os/WorkSource;

    invoke-direct {v2}, Landroid/os/WorkSource;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mLastRunningWifiUids:Landroid/os/WorkSource;

    .line 1048
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mSystemUiUid:I

    .line 1436
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mLastScanPermissionUpdate:J

    .line 1437
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mConnectedModeGScanOffloadStarted:Z

    .line 1445
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mAggressiveHandover:I

    .line 1594
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mDisconnectedTimeStamp:J

    .line 1607
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/server/wifi/WifiStateMachine;->lastConnectAttemptTimestamp:J

    .line 1608
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->lastScanFreqs:Ljava/util/Set;

    .line 1623
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I

    .line 1637
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mOnTime:I

    .line 1638
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mTxTime:I

    .line 1639
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mRxTime:I

    .line 1641
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mOnTimeScreenStateChange:I

    .line 1642
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/server/wifi/WifiStateMachine;->lastOntimeReportTimeStamp:J

    .line 1643
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/server/wifi/WifiStateMachine;->lastScreenStateChangeTimeStamp:J

    .line 1644
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mOnTimeLastReport:I

    .line 1645
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mTxTimeLastReport:I

    .line 1646
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mRxTimeLastReport:I

    .line 1648
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/server/wifi/WifiStateMachine;->lastLinkLayerStatsUpdate:J

    .line 3397
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiScoreReport:Lcom/android/server/wifi/WifiScoreReport;

    .line 1055
    move-object/from16 v0, p5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wifi/WifiStateMachine;->mWifiInjector:Lcom/android/server/wifi/WifiInjector;

    .line 1056
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInjector:Lcom/android/server/wifi/WifiInjector;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiInjector;->getWifiMetrics()Lcom/android/server/wifi/WifiMetrics;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    .line 1057
    invoke-virtual/range {p5 .. p5}, Lcom/android/server/wifi/WifiInjector;->getWifiLastResortWatchdog()Lcom/android/server/wifi/WifiLastResortWatchdog;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiLastResortWatchdog:Lcom/android/server/wifi/WifiLastResortWatchdog;

    .line 1058
    invoke-virtual/range {p5 .. p5}, Lcom/android/server/wifi/WifiInjector;->getClock()Lcom/android/server/wifi/Clock;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mClock:Lcom/android/server/wifi/Clock;

    .line 1059
    invoke-virtual/range {p5 .. p5}, Lcom/android/server/wifi/WifiInjector;->getPropertyService()Lcom/android/server/wifi/PropertyService;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mPropertyService:Lcom/android/server/wifi/PropertyService;

    .line 1060
    invoke-virtual/range {p5 .. p5}, Lcom/android/server/wifi/WifiInjector;->getBuildProperties()Lcom/android/server/wifi/BuildProperties;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mBuildProperties:Lcom/android/server/wifi/BuildProperties;

    .line 1061
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    .line 1062
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wifi/WifiStateMachine;->mFacade:Lcom/android/server/wifi/FrameworkFacade;

    .line 1063
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->getWlanNativeInterface()Lcom/android/server/wifi/WifiNative;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    .line 1064
    move-object/from16 v0, p6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wifi/WifiStateMachine;->mBackupManagerProxy:Lcom/android/server/wifi/BackupManagerProxy;

    .line 1067
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiNative;->initContext(Landroid/content/Context;)V

    .line 1068
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiNative;->getInterfaceName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    .line 1070
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/WifiStateMachine;->updateDataInterface()V

    .line 1072
    new-instance v2, Landroid/net/NetworkInfo;

    const-string/jumbo v3, "WIFI"

    const-string/jumbo v4, ""

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-direct {v2, v5, v6, v3, v4}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 1073
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mFacade:Lcom/android/server/wifi/FrameworkFacade;

    .line 1074
    const-string/jumbo v3, "batterystats"

    .line 1073
    invoke-virtual {v2, v3}, Lcom/android/server/wifi/FrameworkFacade;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 1076
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mFacade:Lcom/android/server/wifi/FrameworkFacade;

    const-string/jumbo v3, "network_management"

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/FrameworkFacade;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v10

    .line 1077
    .local v10, "b":Landroid/os/IBinder;
    invoke-static {v10}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;

    .line 1079
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1080
    const-string/jumbo v3, "android.hardware.wifi.direct"

    .line 1079
    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mP2pSupported:Z

    .line 1082
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mFacade:Lcom/android/server/wifi/FrameworkFacade;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    .line 1085
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInjector:Lcom/android/server/wifi/WifiInjector;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiInjector;->getClock()Lcom/android/server/wifi/Clock;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInjector:Lcom/android/server/wifi/WifiInjector;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiInjector;->getKeyStore()Landroid/security/KeyStore;

    move-result-object v9

    move-object/from16 v3, p1

    move-object/from16 v5, p2

    move-object/from16 v7, p4

    .line 1082
    invoke-virtual/range {v2 .. v9}, Lcom/android/server/wifi/FrameworkFacade;->makeWifiConfigManager(Landroid/content/Context;Lcom/android/server/wifi/WifiNative;Lcom/android/server/wifi/FrameworkFacade;Lcom/android/server/wifi/Clock;Landroid/os/UserManager;Landroid/os/Handler;Landroid/security/KeyStore;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    .line 1087
    invoke-static {}, Lcom/android/server/wifi/WifiMonitor;->getInstance()Lcom/android/server/wifi/WifiMonitor;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    .line 1089
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1090
    const v3, 0x112001d

    .line 1089
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v12

    .line 1092
    .local v12, "enableFirmwareLogs":Z
    if-eqz v12, :cond_1

    .line 1093
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine;->mBuildProperties:Lcom/android/server/wifi/BuildProperties;

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/android/server/wifi/FrameworkFacade;->makeRealLogger(Landroid/content/Context;Lcom/android/server/wifi/WifiStateMachine;Lcom/android/server/wifi/WifiNative;Lcom/android/server/wifi/BuildProperties;)Lcom/android/server/wifi/BaseWifiLogger;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiLogger:Lcom/android/server/wifi/BaseWifiLogger;

    .line 1098
    :goto_0
    new-instance v2, Landroid/net/wifi/WifiInfo;

    invoke-direct {v2}, Landroid/net/wifi/WifiInfo;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 1099
    new-instance v2, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    .line 1100
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInjector:Lcom/android/server/wifi/WifiInjector;

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiInjector;->getClock()Lcom/android/server/wifi/Clock;

    move-result-object v6

    .line 1099
    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;-><init>(Lcom/android/server/wifi/WifiConfigManager;Landroid/content/Context;Landroid/net/wifi/WifiInfo;Lcom/android/server/wifi/Clock;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiQualifiedNetworkSelector:Lcom/android/server/wifi/WifiQualifiedNetworkSelector;

    .line 1101
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mFacade:Lcom/android/server/wifi/FrameworkFacade;

    .line 1102
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v4

    .line 1101
    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/server/wifi/FrameworkFacade;->makeSupplicantStateTracker(Landroid/content/Context;Lcom/android/server/wifi/WifiConfigManager;Landroid/os/Handler;)Lcom/android/server/wifi/SupplicantStateTracker;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStateTracker:Lcom/android/server/wifi/SupplicantStateTracker;

    .line 1104
    new-instance v2, Landroid/net/LinkProperties;

    invoke-direct {v2}, Landroid/net/LinkProperties;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    .line 1106
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mFacade:Lcom/android/server/wifi/FrameworkFacade;

    const-string/jumbo v3, "wifip2p"

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/FrameworkFacade;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v17

    .line 1107
    .local v17, "s1":Landroid/os/IBinder;
    invoke-static/range {v17 .. v17}, Landroid/net/wifi/p2p/IWifiP2pManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/p2p/IWifiP2pManager;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiP2pServiceImpl:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    .line 1109
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 1110
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;

    .line 1111
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I

    .line 1112
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mLastSignalLevel:I

    .line 1114
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mFacade:Lcom/android/server/wifi/FrameworkFacade;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine;->mDataInterfaceName:Ljava/lang/String;

    new-instance v5, Lcom/android/server/wifi/WifiStateMachine$IpManagerCallback;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/server/wifi/WifiStateMachine$IpManagerCallback;-><init>(Lcom/android/server/wifi/WifiStateMachine;)V

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/wifi/FrameworkFacade;->makeIpManager(Landroid/content/Context;Ljava/lang/String;Landroid/net/ip/IpManager$Callback;)Landroid/net/ip/IpManager;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mIpManager:Landroid/net/ip/IpManager;

    .line 1115
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mIpManager:Landroid/net/ip/IpManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/net/ip/IpManager;->setMulticastFilter(Z)V

    .line 1117
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mAlarmManager:Landroid/app/AlarmManager;

    .line 1120
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1121
    const v3, 0x10e0033

    .line 1120
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v15

    .line 1122
    .local v15, "period":I
    const/16 v2, 0x2710

    if-ge v15, v2, :cond_0

    .line 1123
    const/16 v15, 0x2710

    .line 1125
    :cond_0
    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/server/wifi/WifiStateMachine;->mDefaultFrameworkScanIntervalMs:I

    .line 1127
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1128
    const v3, 0x10e0034

    .line 1127
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mNoNetworksPeriodicScan:I

    .line 1130
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1131
    const v3, 0x1120019

    .line 1130
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mBackgroundScanSupported:Z

    .line 1132
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1133
    const v3, 0x112001e

    .line 1132
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mIsWiFiIpReachabilityEnabled:Z

    .line 1135
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1136
    const v3, 0x1040037

    .line 1135
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mPrimaryDeviceType:Ljava/lang/String;

    .line 1138
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1139
    const v3, 0x10e003c

    .line 1138
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mMaxInitialSavedChannelScan:I

    .line 1141
    move-object/from16 v0, p7

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wifi/WifiStateMachine;->mCountryCode:Lcom/android/server/wifi/WifiCountryCode;

    .line 1143
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mUserWantsSuspendOpt:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mFacade:Lcom/android/server/wifi/FrameworkFacade;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    .line 1144
    const-string/jumbo v5, "wifi_suspend_optimizations_enabled"

    const/4 v6, 0x1

    .line 1143
    invoke-virtual {v2, v4, v5, v6}, Lcom/android/server/wifi/FrameworkFacade;->getIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    .line 1144
    const/4 v4, 0x1

    .line 1143
    if-ne v2, v4, :cond_2

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1146
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkCapabilitiesFilter:Landroid/net/NetworkCapabilities;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/net/NetworkCapabilities;->addTransportType(I)Landroid/net/NetworkCapabilities;

    .line 1147
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkCapabilitiesFilter:Landroid/net/NetworkCapabilities;

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 1148
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkCapabilitiesFilter:Landroid/net/NetworkCapabilities;

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 1149
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkCapabilitiesFilter:Landroid/net/NetworkCapabilities;

    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 1150
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkCapabilitiesFilter:Landroid/net/NetworkCapabilities;

    const/high16 v3, 0x100000

    invoke-virtual {v2, v3}, Landroid/net/NetworkCapabilities;->setLinkUpstreamBandwidthKbps(I)V

    .line 1151
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkCapabilitiesFilter:Landroid/net/NetworkCapabilities;

    const/high16 v3, 0x100000

    invoke-virtual {v2, v3}, Landroid/net/NetworkCapabilities;->setLinkDownstreamBandwidthKbps(I)V

    .line 1153
    new-instance v2, Landroid/net/NetworkCapabilities;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkCapabilitiesFilter:Landroid/net/NetworkCapabilities;

    invoke-direct {v2, v3}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mDfltNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 1155
    new-instance v13, Landroid/content/IntentFilter;

    invoke-direct {v13}, Landroid/content/IntentFilter;-><init>()V

    .line 1156
    .local v13, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v13, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1157
    const-string/jumbo v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v13, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1158
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    .line 1159
    new-instance v3, Lcom/android/server/wifi/WifiStateMachine$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/server/wifi/WifiStateMachine$1;-><init>(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 1158
    invoke-virtual {v2, v3, v13}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1172
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1173
    const-string/jumbo v3, "wifi_suspend_optimizations_enabled"

    .line 1172
    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1174
    new-instance v4, Lcom/android/server/wifi/WifiStateMachine$2;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5}, Lcom/android/server/wifi/WifiStateMachine$2;-><init>(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Handler;)V

    .line 1173
    const/4 v5, 0x0

    .line 1172
    invoke-virtual {v2, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1182
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    .line 1183
    new-instance v3, Lcom/android/server/wifi/WifiStateMachine$3;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/server/wifi/WifiStateMachine$3;-><init>(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 1189
    new-instance v4, Landroid/content/IntentFilter;

    const-string/jumbo v5, "android.intent.action.LOCKED_BOOT_COMPLETED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1182
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1191
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1192
    const-string/jumbo v3, "wifi_auto_connect_type"

    .line 1191
    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1193
    new-instance v4, Lcom/android/server/wifi/WifiStateMachine$4;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5}, Lcom/android/server/wifi/WifiStateMachine$4;-><init>(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Handler;)V

    .line 1192
    const/4 v5, 0x0

    .line 1191
    invoke-virtual {v2, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1199
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/os/PowerManager;

    .line 1200
    .local v16, "powerManager":Landroid/os/PowerManager;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiStateMachine;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1202
    const-string/jumbo v2, "WifiSuspend"

    const/4 v3, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mSuspendWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1203
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mSuspendWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 1205
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1206
    const v3, 0x104005e

    .line 1205
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mTcpBufferSizes:Ljava/lang/String;

    .line 1209
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 1210
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mInitialState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1211
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStartingState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1212
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStartedState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1213
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mDriverStartingState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStartedState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1214
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mDriverStartedState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStartedState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1215
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mScanModeState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mDriverStartedState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1216
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mConnectModeState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mDriverStartedState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1217
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mL2ConnectedState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mConnectModeState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1218
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mObtainingIpState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mL2ConnectedState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1219
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mConnectedState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mL2ConnectedState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1220
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mRoamingState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mL2ConnectedState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1221
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mDisconnectingState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mConnectModeState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1222
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mConnectModeState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1223
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mWpsRunningState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mConnectModeState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1224
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mWaitForP2pDisableState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStartedState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1225
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mDriverStoppingState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStartedState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1226
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mDriverStoppedState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStartedState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1227
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStoppingState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1228
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mSoftApState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1231
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mInitialState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiStateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    .line 1235
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0x64

    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiStateMachine;->setLogRecSize(I)V

    .line 1236
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiStateMachine;->setLogOnlyTransitions(Z)V

    .line 1239
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiStateMachine;->start()V

    .line 1241
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v4

    const v5, 0x2008d

    invoke-virtual {v2, v3, v5, v4}, Lcom/android/server/wifi/WifiMonitor;->registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    .line 1242
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v4

    const v5, 0x20093

    invoke-virtual {v2, v3, v5, v4}, Lcom/android/server/wifi/WifiMonitor;->registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    .line 1243
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v4

    const v5, 0x2402c

    invoke-virtual {v2, v3, v5, v4}, Lcom/android/server/wifi/WifiMonitor;->registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    .line 1244
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    .line 1245
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v4

    .line 1244
    const v5, 0x2402b

    invoke-virtual {v2, v3, v5, v4}, Lcom/android/server/wifi/WifiMonitor;->registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    .line 1246
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    .line 1247
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v4

    .line 1246
    const v5, 0x24007

    invoke-virtual {v2, v3, v5, v4}, Lcom/android/server/wifi/WifiMonitor;->registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    .line 1248
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v4

    const v5, 0x2400c

    invoke-virtual {v2, v3, v5, v4}, Lcom/android/server/wifi/WifiMonitor;->registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    .line 1249
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v4

    const v5, 0x24034

    invoke-virtual {v2, v3, v5, v4}, Lcom/android/server/wifi/WifiMonitor;->registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    .line 1250
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    .line 1251
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v4

    .line 1250
    const v5, 0x24033

    invoke-virtual {v2, v3, v5, v4}, Lcom/android/server/wifi/WifiMonitor;->registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    .line 1252
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    .line 1253
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v4

    .line 1252
    const v5, 0x2403d

    invoke-virtual {v2, v3, v5, v4}, Lcom/android/server/wifi/WifiMonitor;->registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    .line 1254
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    .line 1255
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v4

    .line 1254
    const v5, 0x24003

    invoke-virtual {v2, v3, v5, v4}, Lcom/android/server/wifi/WifiMonitor;->registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    .line 1256
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    .line 1257
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v4

    .line 1256
    const v5, 0x24004

    invoke-virtual {v2, v3, v5, v4}, Lcom/android/server/wifi/WifiMonitor;->registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    .line 1258
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    .line 1259
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v4

    .line 1258
    const v5, 0x24035

    invoke-virtual {v2, v3, v5, v4}, Lcom/android/server/wifi/WifiMonitor;->registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    .line 1260
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v4

    const v5, 0x24011

    invoke-virtual {v2, v3, v5, v4}, Lcom/android/server/wifi/WifiMonitor;->registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    .line 1261
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v4

    const v5, 0x24005

    invoke-virtual {v2, v3, v5, v4}, Lcom/android/server/wifi/WifiMonitor;->registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    .line 1262
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v4

    const v5, 0x2400e

    invoke-virtual {v2, v3, v5, v4}, Lcom/android/server/wifi/WifiMonitor;->registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    .line 1263
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v4

    const v5, 0x2400d

    invoke-virtual {v2, v3, v5, v4}, Lcom/android/server/wifi/WifiMonitor;->registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    .line 1264
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v4

    const v5, 0x24001

    invoke-virtual {v2, v3, v5, v4}, Lcom/android/server/wifi/WifiMonitor;->registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    .line 1265
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    .line 1266
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v4

    .line 1265
    const v5, 0x24002

    invoke-virtual {v2, v3, v5, v4}, Lcom/android/server/wifi/WifiMonitor;->registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    .line 1267
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    .line 1268
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v4

    .line 1267
    const v5, 0x24006

    invoke-virtual {v2, v3, v5, v4}, Lcom/android/server/wifi/WifiMonitor;->registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    .line 1269
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v4

    const v5, 0x2400f

    invoke-virtual {v2, v3, v5, v4}, Lcom/android/server/wifi/WifiMonitor;->registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    .line 1270
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v4

    const v5, 0x24010

    invoke-virtual {v2, v3, v5, v4}, Lcom/android/server/wifi/WifiMonitor;->registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    .line 1271
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v4

    const v5, 0x24009

    invoke-virtual {v2, v3, v5, v4}, Lcom/android/server/wifi/WifiMonitor;->registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    .line 1272
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v4

    const v5, 0x2400a

    invoke-virtual {v2, v3, v5, v4}, Lcom/android/server/wifi/WifiMonitor;->registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    .line 1273
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v4

    const v5, 0x24008

    invoke-virtual {v2, v3, v5, v4}, Lcom/android/server/wifi/WifiMonitor;->registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    .line 1274
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v4

    const v5, 0x2400b

    invoke-virtual {v2, v3, v5, v4}, Lcom/android/server/wifi/WifiMonitor;->registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    .line 1275
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0x13d

    invoke-virtual {v2, v3, v5, v4}, Lcom/android/server/wifi/WifiMonitor;->registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    .line 1277
    new-instance v14, Landroid/content/Intent;

    const-string/jumbo v2, "wifi_scan_available"

    invoke-direct {v14, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1278
    .local v14, "intent":Landroid/content/Intent;
    const/high16 v2, 0x4000000

    invoke-virtual {v14, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1279
    const-string/jumbo v2, "scan_enabled"

    const/4 v3, 0x1

    invoke-virtual {v14, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1280
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v14, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1283
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string/jumbo v3, "com.android.systemui"

    .line 1284
    const/high16 v4, 0x100000

    const/4 v5, 0x0

    .line 1283
    invoke-virtual {v2, v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mSystemUiUid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1289
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mFacade:Lcom/android/server/wifi/FrameworkFacade;

    .line 1290
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "wifi_verbose_logging_enabled"

    const/4 v5, 0x0

    .line 1289
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/wifi/FrameworkFacade;->getIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mVerboseLoggingLevel:I

    .line 1291
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiStateMachine;->updateLoggingLevel()V

    .line 1053
    return-void

    .line 1095
    .end local v13    # "filter":Landroid/content/IntentFilter;
    .end local v14    # "intent":Landroid/content/Intent;
    .end local v15    # "period":I
    .end local v16    # "powerManager":Landroid/os/PowerManager;
    .end local v17    # "s1":Landroid/os/IBinder;
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wifi/FrameworkFacade;->makeBaseLogger()Lcom/android/server/wifi/BaseWifiLogger;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiLogger:Lcom/android/server/wifi/BaseWifiLogger;

    goto/16 :goto_0

    .line 1143
    .restart local v15    # "period":I
    .restart local v17    # "s1":Landroid/os/IBinder;
    :cond_2
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 1235
    .restart local v13    # "filter":Landroid/content/IntentFilter;
    .restart local v16    # "powerManager":Landroid/os/PowerManager;
    :cond_3
    const/16 v2, 0x3e8

    goto/16 :goto_2

    .line 1285
    .restart local v14    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v11

    .line 1286
    .local v11, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v2, "Unable to resolve SystemUI\'s UID."

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_3
.end method

.method private broadcastWifiCredentialChanged(ILandroid/net/wifi/WifiConfiguration;)V
    .locals 4
    .param p1, "wifiCredentialEventType"    # I
    .param p2, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 8158
    if-eqz p2, :cond_0

    iget-object v1, p2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 8159
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.net.wifi.WIFI_CREDENTIAL_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8160
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "ssid"

    iget-object v2, p2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 8161
    const-string/jumbo v1, "et"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 8163
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 8164
    const-string/jumbo v3, "android.permission.RECEIVE_WIFI_CREDENTIAL_CHANGE"

    .line 8163
    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 8157
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private buildIdentity(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "eapMethod"    # I
    .param p2, "imsi"    # Ljava/lang/String;
    .param p3, "mccMnc"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x6

    const/4 v5, 0x0

    const/4 v4, 0x3

    .line 6684
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6685
    :cond_0
    const-string/jumbo v3, ""

    return-object v3

    .line 6687
    :cond_1
    const/4 v3, 0x4

    if-ne p1, v3, :cond_4

    .line 6688
    const-string/jumbo v2, "1"

    .line 6697
    .local v2, "prefix":Ljava/lang/String;
    :goto_0
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 6704
    :cond_2
    invoke-virtual {p2, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 6705
    .local v0, "mcc":Ljava/lang/String;
    invoke-virtual {p2, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 6708
    .local v1, "mnc":Ljava/lang/String;
    :cond_3
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "@wlan.mnc"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ".mcc"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ".3gppnetwork.org"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 6689
    .end local v0    # "mcc":Ljava/lang/String;
    .end local v1    # "mnc":Ljava/lang/String;
    .end local v2    # "prefix":Ljava/lang/String;
    :cond_4
    const/4 v3, 0x5

    if-ne p1, v3, :cond_5

    .line 6690
    const-string/jumbo v2, "0"

    .restart local v2    # "prefix":Ljava/lang/String;
    goto :goto_0

    .line 6691
    .end local v2    # "prefix":Ljava/lang/String;
    :cond_5
    if-ne p1, v6, :cond_6

    .line 6692
    const-string/jumbo v2, "6"

    .restart local v2    # "prefix":Ljava/lang/String;
    goto :goto_0

    .line 6694
    .end local v2    # "prefix":Ljava/lang/String;
    :cond_6
    const-string/jumbo v3, ""

    return-object v3

    .line 6698
    .restart local v2    # "prefix":Ljava/lang/String;
    :cond_7
    invoke-virtual {p3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 6699
    .restart local v0    # "mcc":Ljava/lang/String;
    invoke-virtual {p3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 6700
    .restart local v1    # "mnc":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 6701
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method private checkAndSetConnectivityInstance()V
    .locals 2

    .prologue
    .line 3115
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mCm:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    .line 3116
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mCm:Landroid/net/ConnectivityManager;

    .line 3114
    :cond_0
    return-void
.end method

.method private checkOrDeferScanAllowed(Landroid/os/Message;)Z
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1628
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1629
    .local v2, "now":J
    iget-wide v4, p0, Lcom/android/server/wifi/WifiStateMachine;->lastConnectAttemptTimestamp:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_0

    iget-wide v4, p0, Lcom/android/server/wifi/WifiStateMachine;->lastConnectAttemptTimestamp:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x2710

    cmp-long v1, v4, v6

    if-gez v1, :cond_0

    .line 1630
    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    .line 1631
    .local v0, "dmsg":Landroid/os/Message;
    iget-wide v4, p0, Lcom/android/server/wifi/WifiStateMachine;->lastConnectAttemptTimestamp:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x2af8

    sub-long v4, v6, v4

    invoke-virtual {p0, v0, v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 1632
    const/4 v1, 0x0

    return v1

    .line 1634
    .end local v0    # "dmsg":Landroid/os/Message;
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method private chooseApChannel(I)I
    .locals 7
    .param p1, "apBand"    # I

    .prologue
    .line 3966
    if-nez p1, :cond_4

    .line 3968
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiApConfigStore:Lcom/android/server/wifi/WifiApConfigStore;

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiApConfigStore;->getAllowed2GChannel()Ljava/util/ArrayList;

    move-result-object v0

    .line 3969
    .local v0, "allowed2GChannel":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_3

    .line 3971
    :cond_0
    sget-boolean v4, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    if-eqz v4, :cond_1

    .line 3972
    const-string/jumbo v4, "WifiStateMachine"

    const-string/jumbo v5, "No specified 2G allowed channel list"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3974
    :cond_1
    const/4 v1, 0x6

    .line 3991
    .end local v0    # "allowed2GChannel":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local v1, "apChannel":I
    :goto_0
    sget-boolean v4, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    if-eqz v4, :cond_2

    .line 3992
    const-string/jumbo v4, "WifiStateMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "SoftAp set on channel "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3995
    :cond_2
    return v1

    .line 3976
    .end local v1    # "apChannel":I
    .restart local v0    # "allowed2GChannel":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_3
    sget-object v4, Lcom/android/server/wifi/WifiStateMachine;->mRandom:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    .line 3977
    .local v3, "index":I
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .restart local v1    # "apChannel":I
    goto :goto_0

    .line 3981
    .end local v0    # "allowed2GChannel":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v1    # "apChannel":I
    .end local v3    # "index":I
    :cond_4
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiNative;->getChannelsForBand(I)[I

    move-result-object v2

    .line 3982
    .local v2, "channel":[I
    if-eqz v2, :cond_5

    array-length v4, v2

    if-lez v4, :cond_5

    .line 3983
    sget-object v4, Lcom/android/server/wifi/WifiStateMachine;->mRandom:Ljava/util/Random;

    array-length v5, v2

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    aget v1, v2, v4

    .line 3984
    .restart local v1    # "apChannel":I
    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiStateMachine;->convertFrequencyToChannelNumber(I)I

    move-result v1

    goto :goto_0

    .line 3986
    .end local v1    # "apChannel":I
    :cond_5
    const-string/jumbo v4, "WifiStateMachine"

    const-string/jumbo v5, "SoftAp do not get available channel list"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3987
    const/4 v1, 0x0

    .restart local v1    # "apChannel":I
    goto :goto_0
.end method

.method private cleanWifiScore()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 3389
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    iput-wide v2, v0, Landroid/net/wifi/WifiInfo;->txBadRate:D

    .line 3390
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    iput-wide v2, v0, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    .line 3391
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    iput-wide v2, v0, Landroid/net/wifi/WifiInfo;->txRetriesRate:D

    .line 3392
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    iput-wide v2, v0, Landroid/net/wifi/WifiInfo;->rxSuccessRate:D

    .line 3393
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiScoreReport:Lcom/android/server/wifi/WifiScoreReport;

    .line 3388
    return-void
.end method

.method private clearLinkProperties()V
    .locals 2

    .prologue
    .line 3467
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mDhcpResultsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3468
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mDhcpResults:Landroid/net/DhcpResults;

    if-eqz v0, :cond_0

    .line 3469
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mDhcpResults:Landroid/net/DhcpResults;

    invoke-virtual {v0}, Landroid/net/DhcpResults;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 3474
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->clear()V

    .line 3475
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkAgent:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkAgent:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->sendLinkProperties(Landroid/net/LinkProperties;)V

    .line 3464
    :cond_1
    return-void

    .line 3467
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private clearRandomMacOui()Z
    .locals 2

    .prologue
    .line 1520
    const/4 v1, 0x3

    new-array v0, v1, [B

    .local v0, "ouiBytes":[B
    fill-array-data v0, :array_0

    .line 1521
    const-string/jumbo v1, "Clear random OUI"

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 1522
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/WifiNative;->setScanningMacOui([B)Z

    move-result v1

    return v1

    .line 1520
    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private static concat([B[B[B)[B
    .locals 7
    .param p0, "array1"    # [B
    .param p1, "array2"    # [B
    .param p2, "array3"    # [B

    .prologue
    const/4 v4, 0x0

    .line 8219
    array-length v5, p0

    array-length v6, p1

    add-int/2addr v5, v6

    array-length v6, p2

    add-int v2, v5, v6

    .line 8221
    .local v2, "len":I
    array-length v5, p0

    if-eqz v5, :cond_0

    .line 8222
    add-int/lit8 v2, v2, 0x1

    .line 8225
    :cond_0
    array-length v5, p1

    if-eqz v5, :cond_1

    .line 8226
    add-int/lit8 v2, v2, 0x1

    .line 8229
    :cond_1
    array-length v5, p2

    if-eqz v5, :cond_2

    .line 8230
    add-int/lit8 v2, v2, 0x1

    .line 8233
    :cond_2
    new-array v3, v2, [B

    .line 8235
    .local v3, "result":[B
    const/4 v1, 0x0

    .line 8236
    .local v1, "index":I
    array-length v5, p0

    if-eqz v5, :cond_3

    .line 8237
    array-length v5, p0

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v3, v1

    .line 8238
    const/4 v1, 0x1

    .line 8239
    array-length v6, p0

    move v5, v4

    :goto_0
    if-ge v5, v6, :cond_3

    aget-byte v0, p0, v5

    .line 8240
    .local v0, "b":B
    aput-byte v0, v3, v1

    .line 8241
    add-int/lit8 v1, v1, 0x1

    .line 8239
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 8245
    .end local v0    # "b":B
    :cond_3
    array-length v5, p1

    if-eqz v5, :cond_4

    .line 8246
    array-length v5, p1

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v3, v1

    .line 8247
    add-int/lit8 v1, v1, 0x1

    .line 8248
    array-length v6, p1

    move v5, v4

    :goto_1
    if-ge v5, v6, :cond_4

    aget-byte v0, p1, v5

    .line 8249
    .restart local v0    # "b":B
    aput-byte v0, v3, v1

    .line 8250
    add-int/lit8 v1, v1, 0x1

    .line 8248
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 8254
    .end local v0    # "b":B
    :cond_4
    array-length v5, p2

    if-eqz v5, :cond_5

    .line 8255
    array-length v5, p2

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v3, v1

    .line 8256
    add-int/lit8 v1, v1, 0x1

    .line 8257
    array-length v5, p2

    :goto_2
    if-ge v4, v5, :cond_5

    aget-byte v0, p2, v4

    .line 8258
    .restart local v0    # "b":B
    aput-byte v0, v3, v1

    .line 8259
    add-int/lit8 v1, v1, 0x1

    .line 8257
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 8262
    .end local v0    # "b":B
    :cond_5
    return-object v3
.end method

.method private static concatHex([B[B)[B
    .locals 7
    .param p0, "array1"    # [B
    .param p1, "array2"    # [B

    .prologue
    const/4 v4, 0x0

    .line 8267
    array-length v5, p0

    array-length v6, p1

    add-int v2, v5, v6

    .line 8269
    .local v2, "len":I
    new-array v3, v2, [B

    .line 8271
    .local v3, "result":[B
    const/4 v1, 0x0

    .line 8272
    .local v1, "index":I
    array-length v5, p0

    if-eqz v5, :cond_0

    .line 8273
    array-length v6, p0

    move v5, v4

    :goto_0
    if-ge v5, v6, :cond_0

    aget-byte v0, p0, v5

    .line 8274
    .local v0, "b":B
    aput-byte v0, v3, v1

    .line 8275
    add-int/lit8 v1, v1, 0x1

    .line 8273
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 8279
    .end local v0    # "b":B
    :cond_0
    array-length v5, p1

    if-eqz v5, :cond_1

    .line 8280
    array-length v5, p1

    :goto_1
    if-ge v4, v5, :cond_1

    aget-byte v0, p1, v4

    .line 8281
    .restart local v0    # "b":B
    aput-byte v0, v3, v1

    .line 8282
    add-int/lit8 v1, v1, 0x1

    .line 8280
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 8286
    .end local v0    # "b":B
    :cond_1
    return-object v3
.end method

.method private configureVerboseHalLogging(Z)V
    .locals 3
    .param p1, "enableVerbose"    # Z

    .prologue
    .line 1429
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mBuildProperties:Lcom/android/server/wifi/BuildProperties;

    invoke-interface {v0}, Lcom/android/server/wifi/BuildProperties;->isUserBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1430
    return-void

    .line 1432
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mPropertyService:Lcom/android/server/wifi/PropertyService;

    const-string/jumbo v2, "log.tag.WifiHAL"

    .line 1433
    if-eqz p1, :cond_1

    const-string/jumbo v0, "V"

    .line 1432
    :goto_0
    invoke-interface {v1, v2, v0}, Lcom/android/server/wifi/PropertyService;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1428
    return-void

    .line 1433
    :cond_1
    const-string/jumbo v0, "D"

    goto :goto_0
.end method

.method private convertFrequencyToChannelNumber(I)I
    .locals 1
    .param p1, "frequency"    # I

    .prologue
    .line 3952
    const/16 v0, 0x96c

    if-lt p1, v0, :cond_0

    const/16 v0, 0x9b4

    if-gt p1, v0, :cond_0

    .line 3953
    add-int/lit16 v0, p1, -0x96c

    div-int/lit8 v0, v0, 0x5

    add-int/lit8 v0, v0, 0x1

    return v0

    .line 3954
    :cond_0
    const/16 v0, 0x1432

    if-lt p1, v0, :cond_1

    const/16 v0, 0x16c1

    if-gt p1, v0, :cond_1

    .line 3956
    add-int/lit16 v0, p1, -0x1432

    div-int/lit8 v0, v0, 0x5

    add-int/lit8 v0, v0, 0x22

    return v0

    .line 3958
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private fetchPktcntNative(Landroid/net/wifi/RssiPacketCountInfo;)V
    .locals 9
    .param p1, "info"    # Landroid/net/wifi/RssiPacketCountInfo;

    .prologue
    const/4 v5, 0x0

    .line 3411
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiNative;->pktcntPoll()Ljava/lang/String;

    move-result-object v3

    .line 3413
    .local v3, "pktcntPoll":Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 3414
    const-string/jumbo v6, "\n"

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 3415
    .local v2, "lines":[Ljava/lang/String;
    array-length v6, v2

    :goto_0
    if-ge v5, v6, :cond_3

    aget-object v1, v2, v5

    .line 3416
    .local v1, "line":Ljava/lang/String;
    const-string/jumbo v7, "="

    invoke-virtual {v1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 3417
    .local v4, "prop":[Ljava/lang/String;
    array-length v7, v4

    const/4 v8, 0x2

    if-ge v7, v8, :cond_1

    .line 3415
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 3419
    :cond_1
    const/4 v7, 0x0

    :try_start_0
    aget-object v7, v4, v7

    const-string/jumbo v8, "TXGOOD"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 3420
    const/4 v7, 0x1

    aget-object v7, v4, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p1, Landroid/net/wifi/RssiPacketCountInfo;->txgood:I

    goto :goto_1

    .line 3424
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_1

    .line 3421
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_2
    const/4 v7, 0x0

    aget-object v7, v4, v7

    const-string/jumbo v8, "TXBAD"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 3422
    const/4 v7, 0x1

    aget-object v7, v4, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p1, Landroid/net/wifi/RssiPacketCountInfo;->txbad:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 3410
    .end local v1    # "line":Ljava/lang/String;
    .end local v2    # "lines":[Ljava/lang/String;
    .end local v4    # "prop":[Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private fetchRssiLinkSpeedAndFrequencyNative()V
    .locals 14

    .prologue
    const/16 v13, -0x7f

    const/4 v9, 0x0

    .line 3310
    const/4 v5, 0x0

    .line 3311
    .local v5, "newRssi":Ljava/lang/Integer;
    const/4 v4, 0x0

    .line 3312
    .local v4, "newLinkSpeed":Ljava/lang/Integer;
    const/4 v3, 0x0

    .line 3314
    .local v3, "newFrequency":Ljava/lang/Integer;
    iget-object v10, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v10}, Lcom/android/server/wifi/WifiNative;->signalPoll()Ljava/lang/String;

    move-result-object v8

    .line 3316
    .local v8, "signalPoll":Ljava/lang/String;
    if-eqz v8, :cond_4

    .line 3317
    const-string/jumbo v10, "\n"

    invoke-virtual {v8, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 3318
    .local v2, "lines":[Ljava/lang/String;
    array-length v10, v2

    .end local v3    # "newFrequency":Ljava/lang/Integer;
    .end local v4    # "newLinkSpeed":Ljava/lang/Integer;
    .end local v5    # "newRssi":Ljava/lang/Integer;
    :goto_0
    if-ge v9, v10, :cond_4

    aget-object v1, v2, v9

    .line 3319
    .local v1, "line":Ljava/lang/String;
    const-string/jumbo v11, "="

    invoke-virtual {v1, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 3320
    .local v7, "prop":[Ljava/lang/String;
    array-length v11, v7

    const/4 v12, 0x2

    if-ge v11, v12, :cond_1

    .line 3318
    :cond_0
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 3322
    :cond_1
    const/4 v11, 0x0

    :try_start_0
    aget-object v11, v7, v11

    const-string/jumbo v12, "RSSI"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 3323
    const/4 v11, 0x1

    aget-object v11, v7, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .local v5, "newRssi":Ljava/lang/Integer;
    goto :goto_1

    .line 3324
    .end local v5    # "newRssi":Ljava/lang/Integer;
    :cond_2
    const/4 v11, 0x0

    aget-object v11, v7, v11

    const-string/jumbo v12, "LINKSPEED"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 3325
    const/4 v11, 0x1

    aget-object v11, v7, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .local v4, "newLinkSpeed":Ljava/lang/Integer;
    goto :goto_1

    .line 3326
    .end local v4    # "newLinkSpeed":Ljava/lang/Integer;
    :cond_3
    const/4 v11, 0x0

    aget-object v11, v7, v11

    const-string/jumbo v12, "FREQUENCY"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 3327
    const/4 v11, 0x1

    aget-object v11, v7, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .local v3, "newFrequency":Ljava/lang/Integer;
    goto :goto_1

    .line 3335
    .end local v1    # "line":Ljava/lang/String;
    .end local v2    # "lines":[Ljava/lang/String;
    .end local v3    # "newFrequency":Ljava/lang/Integer;
    .end local v7    # "prop":[Ljava/lang/String;
    :cond_4
    sget-boolean v9, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    if-eqz v9, :cond_5

    .line 3336
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "fetchRssiLinkSpeedAndFrequencyNative rssi="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 3337
    const-string/jumbo v10, " linkspeed="

    .line 3336
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 3337
    const-string/jumbo v10, " freq="

    .line 3336
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 3340
    :cond_5
    if-eqz v5, :cond_c

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-le v9, v13, :cond_c

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/16 v10, 0xc8

    if-ge v9, v10, :cond_c

    .line 3345
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-lez v9, :cond_6

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v9

    add-int/lit16 v9, v9, -0x100

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 3346
    :cond_6
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/net/wifi/WifiInfo;->setRssi(I)V

    .line 3350
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/android/server/wifi/WifiMetrics;->incrementRssiPollRssiCount(I)V

    .line 3361
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/4 v10, 0x5

    invoke-static {v9, v10}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v6

    .line 3362
    .local v6, "newSignalLevel":I
    iget v9, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastSignalLevel:I

    if-eq v6, v9, :cond_7

    .line 3363
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/server/wifi/WifiStateMachine;->updateCapabilities(Landroid/net/wifi/WifiConfiguration;)V

    .line 3364
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-direct {p0, v9}, Lcom/android/server/wifi/WifiStateMachine;->sendRssiChangeBroadcast(I)V

    .line 3366
    :cond_7
    iput v6, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastSignalLevel:I

    .line 3372
    .end local v6    # "newSignalLevel":I
    :goto_2
    if-eqz v4, :cond_8

    .line 3373
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/net/wifi/WifiInfo;->setLinkSpeed(I)V

    .line 3375
    :cond_8
    if-eqz v3, :cond_b

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-lez v9, :cond_b

    .line 3376
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Landroid/net/wifi/ScanResult;->is5GHz(I)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 3377
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConnectionStatistics:Landroid/net/wifi/WifiConnectionStatistics;

    iget v10, v9, Landroid/net/wifi/WifiConnectionStatistics;->num5GhzConnected:I

    add-int/lit8 v10, v10, 0x1

    iput v10, v9, Landroid/net/wifi/WifiConnectionStatistics;->num5GhzConnected:I

    .line 3379
    :cond_9
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Landroid/net/wifi/ScanResult;->is24GHz(I)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 3380
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConnectionStatistics:Landroid/net/wifi/WifiConnectionStatistics;

    iget v10, v9, Landroid/net/wifi/WifiConnectionStatistics;->num24GhzConnected:I

    add-int/lit8 v10, v10, 0x1

    iput v10, v9, Landroid/net/wifi/WifiConnectionStatistics;->num24GhzConnected:I

    .line 3382
    :cond_a
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/net/wifi/WifiInfo;->setFrequency(I)V

    .line 3384
    :cond_b
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget-object v10, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v9, v10}, Lcom/android/server/wifi/WifiConfigManager;->updateConfiguration(Landroid/net/wifi/WifiInfo;)V

    .line 3309
    return-void

    .line 3368
    :cond_c
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v9, v13}, Landroid/net/wifi/WifiInfo;->setRssi(I)V

    .line 3369
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/server/wifi/WifiStateMachine;->updateCapabilities(Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_2

    .line 3329
    .restart local v1    # "line":Ljava/lang/String;
    .restart local v2    # "lines":[Ljava/lang/String;
    .restart local v7    # "prop":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/NumberFormatException;
    goto/16 :goto_1
.end method

.method private static getLinkPropertiesSummary(Landroid/net/LinkProperties;)Ljava/lang/String;
    .locals 2
    .param p0, "lp"    # Landroid/net/LinkProperties;

    .prologue
    .line 8556
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 8557
    .local v0, "attributes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/net/LinkProperties;->hasIPv4Address()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8558
    const-string/jumbo v1, "v4"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8560
    :cond_0
    invoke-virtual {p0}, Landroid/net/LinkProperties;->hasIPv4DefaultRoute()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8561
    const-string/jumbo v1, "v4r"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8563
    :cond_1
    invoke-virtual {p0}, Landroid/net/LinkProperties;->hasIPv4DnsServer()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 8564
    const-string/jumbo v1, "v4dns"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8566
    :cond_2
    invoke-virtual {p0}, Landroid/net/LinkProperties;->hasGlobalIPv6Address()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 8567
    const-string/jumbo v1, "v6"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8569
    :cond_3
    invoke-virtual {p0}, Landroid/net/LinkProperties;->hasIPv6DefaultRoute()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 8570
    const-string/jumbo v1, "v6r"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8572
    :cond_4
    invoke-virtual {p0}, Landroid/net/LinkProperties;->hasIPv6DnsServer()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 8573
    const-string/jumbo v1, "v6dns"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8576
    :cond_5
    const-string/jumbo v1, " "

    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getNetworkDetailedState()Landroid/net/NetworkInfo$DetailedState;
    .locals 1

    .prologue
    .line 3653
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    return-object v0
.end method

.method private getTargetSsid()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 8608
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mTargetNetworkId:I

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiConfigManager;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 8609
    .local v0, "currentConfig":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    .line 8610
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    return-object v1

    .line 8612
    :cond_0
    return-object v3
.end method

.method private getWiFiInfoForUid(I)Landroid/net/wifi/WifiInfo;
    .locals 6
    .param p1, "uid"    # I

    .prologue
    .line 3560
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 3563
    new-instance v4, Landroid/net/wifi/WifiInfo;

    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-direct {v4, v5}, Landroid/net/wifi/WifiInfo;-><init>(Landroid/net/wifi/WifiInfo;)V

    return-object v4

    .line 3566
    :cond_0
    new-instance v3, Landroid/net/wifi/WifiInfo;

    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-direct {v3, v4}, Landroid/net/wifi/WifiInfo;-><init>(Landroid/net/wifi/WifiInfo;)V

    .line 3567
    .local v3, "result":Landroid/net/wifi/WifiInfo;
    const-string/jumbo v4, "02:00:00:00:00:00"

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiInfo;->setMacAddress(Ljava/lang/String;)V

    .line 3569
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mFacade:Lcom/android/server/wifi/FrameworkFacade;

    const-string/jumbo v5, "package"

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/FrameworkFacade;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 3570
    .local v0, "binder":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v2

    .line 3573
    .local v2, "packageManager":Landroid/content/pm/IPackageManager;
    :try_start_0
    const-string/jumbo v4, "android.permission.LOCAL_MAC_ADDRESS"

    invoke-interface {v2, v4, p1}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_1

    .line 3575
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiInfo;->setMacAddress(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3581
    :cond_1
    :goto_0
    return-object v3

    .line 3577
    :catch_0
    move-exception v1

    .line 3578
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "WifiStateMachine"

    const-string/jumbo v5, "Error checking receiver permission"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private handleIPv4Failure()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 3902
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiLogger:Lcom/android/server/wifi/BaseWifiLogger;

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/BaseWifiLogger;->captureBugReportData(I)V

    .line 3903
    sget-boolean v2, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    if-eqz v2, :cond_1

    .line 3904
    const/4 v1, -0x1

    .line 3905
    .local v1, "count":I
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 3906
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    .line 3907
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getDisableReasonCounter(I)I

    move-result v1

    .line 3910
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "DHCP failure count="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 3913
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v1    # "count":I
    :cond_1
    const/16 v2, 0xa

    .line 3914
    const/4 v3, 0x2

    .line 3912
    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->reportConnectionAttemptEnd(II)V

    .line 3915
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mDhcpResultsLock:Ljava/lang/Object;

    monitor-enter v3

    .line 3916
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mDhcpResults:Landroid/net/DhcpResults;

    if-eqz v2, :cond_2

    .line 3917
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mDhcpResults:Landroid/net/DhcpResults;

    invoke-virtual {v2}, Landroid/net/DhcpResults;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit v3

    .line 3920
    sget-boolean v2, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    if-eqz v2, :cond_3

    .line 3921
    const-string/jumbo v2, "handleIPv4Failure"

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 3899
    :cond_3
    return-void

    .line 3915
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private handleIPv4Success(Landroid/net/DhcpResults;)V
    .locals 5
    .param p1, "dhcpResults"    # Landroid/net/DhcpResults;

    .prologue
    .line 3842
    sget-boolean v3, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    if-eqz v3, :cond_0

    .line 3843
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleIPv4Success <"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/DhcpResults;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 3844
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "link address "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/net/DhcpResults;->ipAddress:Landroid/net/LinkAddress;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 3848
    :cond_0
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mDhcpResultsLock:Ljava/lang/Object;

    monitor-enter v4

    .line 3849
    :try_start_0
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mDhcpResults:Landroid/net/DhcpResults;

    .line 3850
    iget-object v3, p1, Landroid/net/DhcpResults;->ipAddress:Landroid/net/LinkAddress;

    invoke-virtual {v3}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    check-cast v0, Ljava/net/Inet4Address;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v0, "addr":Ljava/net/Inet4Address;
    monitor-exit v4

    .line 3853
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->isRoaming()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3854
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v2

    .line 3855
    .local v2, "previousAddress":I
    invoke-static {v0}, Landroid/net/NetworkUtils;->inetAddressToInt(Ljava/net/Inet4Address;)I

    move-result v1

    .line 3856
    .local v1, "newAddress":I
    if-eq v2, v1, :cond_1

    .line 3857
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleIPv4Success, roaming and address changed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3858
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 3857
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3858
    const-string/jumbo v4, " got: "

    .line 3857
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 3861
    .end local v1    # "newAddress":I
    .end local v2    # "previousAddress":I
    :cond_1
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v3, v0}, Landroid/net/wifi/WifiInfo;->setInetAddress(Ljava/net/InetAddress;)V

    .line 3862
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getMeteredHint()Z

    move-result v3

    if-nez v3, :cond_2

    .line 3863
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {p1}, Landroid/net/DhcpResults;->hasMeteredHint()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiInfo;->setMeteredHint(Z)V

    .line 3865
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    iget-object v4, p1, Landroid/net/DhcpResults;->vendorInfo:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiInfo;->setVendorInfo(Ljava/lang/String;)V

    .line 3866
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiStateMachine;->updateCapabilities(Landroid/net/wifi/WifiConfiguration;)V

    .line 3841
    :cond_2
    return-void

    .line 3848
    .end local v0    # "addr":Ljava/net/Inet4Address;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private handleIpConfigurationLost()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3926
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiInfo;->setInetAddress(Ljava/net/InetAddress;)V

    .line 3927
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiInfo;->setMeteredHint(Z)V

    .line 3929
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiInfo;->setVendorInfo(Ljava/lang/String;)V

    .line 3931
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I

    .line 3932
    const/4 v2, 0x4

    .line 3931
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiConfigManager;->updateNetworkSelectionStatus(II)Z

    .line 3937
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    .line 3925
    return-void
.end method

.method private handleIpReachabilityLost()V
    .locals 2

    .prologue
    .line 3942
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiInfo;->setInetAddress(Ljava/net/InetAddress;)V

    .line 3943
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiInfo;->setMeteredHint(Z)V

    .line 3948
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    .line 3941
    return-void
.end method

.method private handleNetworkDisconnect()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 3728
    sget-boolean v0, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "handleNetworkDisconnect: Stopping DHCP and clearing IP stack:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3729
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    .line 3728
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3730
    const-string/jumbo v1, " - "

    .line 3728
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3730
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    .line 3728
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3731
    const-string/jumbo v1, " - "

    .line 3728
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3731
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    .line 3728
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3732
    const-string/jumbo v1, " - "

    .line 3728
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3732
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    .line 3728
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 3734
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->stopRssiMonitoringOffload()I

    .line 3736
    const-string/jumbo v0, "handleNetworkDisconnect"

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->clearCurrentConfigBSSID(Ljava/lang/String;)V

    .line 3737
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x112001a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3738
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->shouldAutoConnect()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3747
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->stopIpManager()V

    .line 3750
    iput-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiScoreReport:Lcom/android/server/wifi/WifiScoreReport;

    .line 3751
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->reset()V

    .line 3752
    iput-boolean v4, p0, Lcom/android/server/wifi/WifiStateMachine;->linkDebouncing:Z

    .line 3754
    iput-boolean v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mAutoRoaming:Z

    .line 3756
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->setNetworkDetailedState(Landroid/net/NetworkInfo$DetailedState;)Z

    .line 3757
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkAgent:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    if-eqz v0, :cond_2

    .line 3758
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkAgent:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->sendNetworkInfo(Landroid/net/NetworkInfo;)V

    .line 3759
    iput-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkAgent:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    .line 3761
    :cond_2
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiConfigManager;->updateStatus(ILandroid/net/NetworkInfo$DetailedState;)V

    .line 3764
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->clearLinkProperties()V

    .line 3767
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->sendNetworkStateChangeBroadcast(Ljava/lang/String;)V

    .line 3770
    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I

    const-string/jumbo v1, "any"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->autoRoamSetBSSID(ILjava/lang/String;)V

    .line 3771
    iput-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;

    .line 3772
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->registerDisconnected()V

    .line 3773
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I

    .line 3727
    return-void

    .line 3745
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->disableLastNetwork()V

    goto :goto_0
.end method

.method private handleScanRequest(Landroid/os/Message;)V
    .locals 12
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const v11, 0x20047

    const/4 v10, 0x0

    .line 1725
    const/4 v6, 0x0

    .line 1726
    .local v6, "settings":Landroid/net/wifi/ScanSettings;
    const/4 v7, 0x0

    .line 1729
    .local v7, "workSource":Landroid/os/WorkSource;
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 1731
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 1732
    const-string/jumbo v8, "customized_scan_settings"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    .end local v6    # "settings":Landroid/net/wifi/ScanSettings;
    check-cast v6, Landroid/net/wifi/ScanSettings;

    .line 1733
    .local v6, "settings":Landroid/net/wifi/ScanSettings;
    const-string/jumbo v8, "customized_scan_worksource"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    .end local v7    # "workSource":Landroid/os/WorkSource;
    check-cast v7, Landroid/os/WorkSource;

    .line 1736
    .end local v6    # "settings":Landroid/net/wifi/ScanSettings;
    :cond_0
    const/4 v3, 0x0

    .line 1737
    .local v3, "freqs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    new-instance v3, Ljava/util/HashSet;

    .end local v3    # "freqs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 1738
    .local v3, "freqs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    iget v8, p0, Lcom/android/server/wifi/WifiStateMachine;->mNumSelectiveChannelScan:I

    iget v9, p0, Lcom/android/server/wifi/WifiStateMachine;->mMaxInitialSavedChannelScan:I

    if-ge v8, v9, :cond_1

    .line 1739
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    invoke-virtual {v8}, Lcom/android/server/wifi/WifiConfigManager;->getConfiguredChannelList()Ljava/util/HashSet;

    move-result-object v3

    .line 1740
    iget v8, p0, Lcom/android/server/wifi/WifiStateMachine;->mNumSelectiveChannelScan:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/android/server/wifi/WifiStateMachine;->mNumSelectiveChannelScan:I

    .line 1742
    :cond_1
    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v8

    if-nez v8, :cond_2

    .line 1743
    const/4 v3, 0x0

    .line 1745
    .end local v3    # "freqs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_2
    if-nez v3, :cond_3

    .line 1746
    if-eqz v6, :cond_3

    iget-object v8, v6, Landroid/net/wifi/ScanSettings;->channelSet:Ljava/util/Collection;

    if-eqz v8, :cond_3

    .line 1747
    iget-object v8, v6, Landroid/net/wifi/ScanSettings;->channelSet:Ljava/util/Collection;

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "channel$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiChannel;

    .line 1748
    .local v1, "channel":Landroid/net/wifi/WifiChannel;
    iget v8, v1, Landroid/net/wifi/WifiChannel;->freqMHz:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1753
    .end local v1    # "channel":Landroid/net/wifi/WifiChannel;
    .end local v2    # "channel$iterator":Ljava/util/Iterator;
    :cond_3
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    invoke-virtual {v8}, Lcom/android/server/wifi/WifiConfigManager;->getHiddenConfiguredNetworkIds()Ljava/util/Set;

    move-result-object v4

    .line 1756
    .local v4, "hiddenNetworkIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-direct {p0, v3, v4, v7}, Lcom/android/server/wifi/WifiStateMachine;->startScanNative(Ljava/util/Set;Ljava/util/Set;Landroid/os/WorkSource;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1758
    if-nez v3, :cond_4

    .line 1759
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine;->mBufferedScanMsg:Ljava/util/Queue;

    invoke-interface {v8}, Ljava/util/Queue;->clear()V

    .line 1760
    :cond_4
    sget v8, Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_OK:I

    iput v8, p0, Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I

    .line 1761
    if-eqz v7, :cond_5

    .line 1764
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/server/wifi/WifiStateMachine;->mSendScanResultsBroadcast:Z

    .line 1766
    :cond_5
    return-void

    .line 1771
    :cond_6
    iget-boolean v8, p0, Lcom/android/server/wifi/WifiStateMachine;->mIsScanOngoing:Z

    if-nez v8, :cond_8

    .line 1775
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine;->mBufferedScanMsg:Ljava/util/Queue;

    invoke-interface {v8}, Ljava/util/Queue;->size()I

    move-result v8

    if-lez v8, :cond_7

    .line 1776
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine;->mBufferedScanMsg:Ljava/util/Queue;

    invoke-interface {v8}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/Message;

    invoke-virtual {p0, v8}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 1778
    :cond_7
    sget v8, Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_DISCARD:I

    iput v8, p0, Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I

    .line 1724
    :goto_1
    return-void

    .line 1779
    :cond_8
    iget-boolean v8, p0, Lcom/android/server/wifi/WifiStateMachine;->mIsFullScanOngoing:Z

    if-nez v8, :cond_b

    .line 1782
    if-nez v3, :cond_9

    .line 1783
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine;->mBufferedScanMsg:Ljava/util/Queue;

    invoke-interface {v8}, Ljava/util/Queue;->clear()V

    .line 1784
    :cond_9
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine;->mBufferedScanMsg:Ljava/util/Queue;

    invoke-interface {v8}, Ljava/util/Queue;->size()I

    move-result v8

    const/16 v9, 0xa

    if-ge v8, v9, :cond_a

    .line 1786
    iget v8, p1, Landroid/os/Message;->arg1:I

    iget v9, p1, Landroid/os/Message;->arg2:I

    .line 1785
    invoke-virtual {p0, v11, v8, v9, v0}, Lcom/android/server/wifi/WifiStateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 1787
    .local v5, "msg":Landroid/os/Message;
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine;->mBufferedScanMsg:Ljava/util/Queue;

    invoke-interface {v8, v5}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 1797
    :goto_2
    sget v8, Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_LOOPED:I

    iput v8, p0, Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I

    goto :goto_1

    .line 1790
    .end local v5    # "msg":Landroid/os/Message;
    :cond_a
    new-instance v0, Landroid/os/Bundle;

    .end local v0    # "bundle":Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1791
    .restart local v0    # "bundle":Landroid/os/Bundle;
    const-string/jumbo v8, "customized_scan_settings"

    invoke-virtual {v0, v8, v10}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1792
    const-string/jumbo v8, "customized_scan_worksource"

    invoke-virtual {v0, v8, v7}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1793
    iget v8, p1, Landroid/os/Message;->arg1:I

    iget v9, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v11, v8, v9, v0}, Lcom/android/server/wifi/WifiStateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 1794
    .restart local v5    # "msg":Landroid/os/Message;
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine;->mBufferedScanMsg:Ljava/util/Queue;

    invoke-interface {v8}, Ljava/util/Queue;->clear()V

    .line 1795
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine;->mBufferedScanMsg:Ljava/util/Queue;

    invoke-interface {v8, v5}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1800
    .end local v5    # "msg":Landroid/os/Message;
    :cond_b
    sget v8, Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_FAIL:I

    iput v8, p0, Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I

    goto :goto_1
.end method

.method private handleScreenStateChanged(Z)V
    .locals 7
    .param p1, "screenOn"    # Z

    .prologue
    const v6, 0x20056

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 3078
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mScreenOn:Z

    .line 3079
    sget-boolean v1, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    if-eqz v1, :cond_0

    .line 3080
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " handleScreenStateChanged Enter: screenOn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3081
    const-string/jumbo v2, " mUserWantsSuspendOpt="

    .line 3080
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3081
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mUserWantsSuspendOpt:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3080
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3082
    const-string/jumbo v2, " state "

    .line 3080
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3082
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v2

    .line 3080
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3083
    const-string/jumbo v2, " suppState:"

    .line 3080
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3083
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStateTracker:Lcom/android/server/wifi/SupplicantStateTracker;

    invoke-virtual {v2}, Lcom/android/server/wifi/SupplicantStateTracker;->getSupplicantStateName()Ljava/lang/String;

    move-result-object v2

    .line 3080
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 3085
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->enableRssiPolling(Z)V

    .line 3086
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mUserWantsSuspendOpt:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3087
    const/4 v0, 0x0

    .line 3088
    .local v0, "shouldReleaseWakeLock":I
    if-eqz p1, :cond_4

    .line 3089
    invoke-virtual {p0, v6, v4, v0}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(III)V

    .line 3099
    .end local v0    # "shouldReleaseWakeLock":I
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mScreenBroadcastReceived:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3101
    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiStateMachine;->getWifiLinkLayerStats(Z)Landroid/net/wifi/WifiLinkLayerStats;

    .line 3102
    iget v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mOnTime:I

    iput v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mOnTimeScreenStateChange:I

    .line 3103
    iget-wide v2, p0, Lcom/android/server/wifi/WifiStateMachine;->lastLinkLayerStatsUpdate:J

    iput-wide v2, p0, Lcom/android/server/wifi/WifiStateMachine;->lastScreenStateChangeTimeStamp:J

    .line 3105
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    invoke-virtual {v1, p1}, Lcom/android/server/wifi/WifiMetrics;->setScreenState(Z)V

    .line 3107
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConnectivityManager:Lcom/android/server/wifi/WifiConnectivityManager;

    if-eqz v1, :cond_2

    .line 3108
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConnectivityManager:Lcom/android/server/wifi/WifiConnectivityManager;

    invoke-virtual {v1, p1}, Lcom/android/server/wifi/WifiConnectivityManager;->handleScreenStateChanged(Z)V

    .line 3111
    :cond_2
    sget-boolean v1, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleScreenStateChanged Exit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 3077
    :cond_3
    return-void

    .line 3091
    .restart local v0    # "shouldReleaseWakeLock":I
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3093
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mSuspendWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 3094
    const/4 v0, 0x1

    .line 3096
    :cond_5
    invoke-virtual {p0, v6, v5, v0}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(III)V

    goto :goto_0
.end method

.method private handleSuccessfulIpConfiguration()V
    .locals 4

    .prologue
    .line 3871
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastSignalLevel:I

    .line 3872
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 3873
    .local v0, "c":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    .line 3875
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v2

    .line 3876
    const/4 v3, 0x4

    .line 3875
    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->clearDisableReasonCounter(I)V

    .line 3879
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->updateCapabilities(Landroid/net/wifi/WifiConfiguration;)V

    .line 3881
    :cond_0
    if-eqz v0, :cond_1

    .line 3882
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentScanResult()Landroid/net/wifi/ScanResult;

    move-result-object v1

    .line 3883
    .local v1, "result":Landroid/net/wifi/ScanResult;
    if-nez v1, :cond_2

    .line 3884
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "WifiStateMachine: handleSuccessfulIpConfiguration and no scan results"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3885
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v3

    .line 3884
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 3870
    .end local v1    # "result":Landroid/net/wifi/ScanResult;
    :cond_1
    :goto_0
    return-void

    .line 3888
    .restart local v1    # "result":Landroid/net/wifi/ScanResult;
    :cond_2
    const/4 v2, 0x0

    iput v2, v1, Landroid/net/wifi/ScanResult;->numIpConfigFailures:I

    .line 3894
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiConfigManager;->clearBssidBlacklist()V

    goto :goto_0
.end method

.method private handleSupplicantConnectionLoss(Z)V
    .locals 2
    .param p1, "killSupplicant"    # Z

    .prologue
    .line 3780
    if-eqz p1, :cond_0

    .line 3781
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    iget-boolean v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mP2pSupported:Z

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiMonitor;->killSupplicant(Z)V

    .line 3783
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiNative;->closeSupplicantConnection()V

    .line 3784
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->sendSupplicantConnectionChangedBroadcast(Z)V

    .line 3785
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->setWifiState(I)V

    .line 3776
    return-void
.end method

.method private handleSupplicantStateChange(Landroid/os/Message;)Landroid/net/wifi/SupplicantState;
    .locals 10
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/16 v6, 0x22

    .line 3657
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/wifi/StateChangeResult;

    .line 3658
    .local v3, "stateChangeResult":Lcom/android/server/wifi/StateChangeResult;
    iget-object v2, v3, Lcom/android/server/wifi/StateChangeResult;->state:Landroid/net/wifi/SupplicantState;

    .line 3663
    .local v2, "state":Landroid/net/wifi/SupplicantState;
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v4, v2}, Landroid/net/wifi/WifiInfo;->setSupplicantState(Landroid/net/wifi/SupplicantState;)V

    .line 3667
    iget-object v4, v3, Lcom/android/server/wifi/StateChangeResult;->wifiSsid:Landroid/net/wifi/WifiSsid;

    if-eqz v4, :cond_0

    .line 3668
    iget-object v4, v3, Lcom/android/server/wifi/StateChangeResult;->wifiSsid:Landroid/net/wifi/WifiSsid;

    invoke-virtual {v4}, Landroid/net/wifi/WifiSsid;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    .line 3667
    if-eqz v4, :cond_1

    .line 3668
    :cond_0
    iget-boolean v4, p0, Lcom/android/server/wifi/WifiStateMachine;->linkDebouncing:Z

    .line 3667
    if-eqz v4, :cond_1

    .line 3669
    return-object v2

    .line 3672
    :cond_1
    invoke-static {v2}, Landroid/net/wifi/SupplicantState;->isConnecting(Landroid/net/wifi/SupplicantState;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 3673
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    iget v5, v3, Lcom/android/server/wifi/StateChangeResult;->networkId:I

    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiInfo;->setNetworkId(I)V

    .line 3680
    :goto_0
    sget-object v4, Landroid/net/wifi/SupplicantState;->ASSOCIATING:Landroid/net/wifi/SupplicantState;

    if-eq v2, v4, :cond_2

    .line 3681
    sget-object v4, Landroid/net/wifi/SupplicantState;->ASSOCIATED:Landroid/net/wifi/SupplicantState;

    if-ne v2, v4, :cond_7

    .line 3684
    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    iget-object v5, v3, Lcom/android/server/wifi/StateChangeResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiInfo;->setBSSID(Ljava/lang/String;)V

    .line 3688
    :cond_3
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mWhiteListedSsids:[Ljava/lang/String;

    if-eqz v4, :cond_4

    .line 3689
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mWhiteListedSsids:[Ljava/lang/String;

    array-length v4, v4

    if-lez v4, :cond_4

    .line 3690
    iget-object v4, v3, Lcom/android/server/wifi/StateChangeResult;->wifiSsid:Landroid/net/wifi/WifiSsid;

    if-eqz v4, :cond_4

    .line 3691
    iget-object v4, v3, Lcom/android/server/wifi/StateChangeResult;->wifiSsid:Landroid/net/wifi/WifiSsid;

    invoke-virtual {v4}, Landroid/net/wifi/WifiSsid;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3692
    .local v0, "SSID":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    .line 3693
    .local v1, "currentSSID":Ljava/lang/String;
    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    const-string/jumbo v4, "<unknown ssid>"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 3712
    .end local v0    # "SSID":Ljava/lang/String;
    .end local v1    # "currentSSID":Ljava/lang/String;
    :cond_4
    :goto_2
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    iget-object v5, v3, Lcom/android/server/wifi/StateChangeResult;->wifiSsid:Landroid/net/wifi/WifiSsid;

    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiInfo;->setSSID(Landroid/net/wifi/WifiSsid;)V

    .line 3713
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/server/wifi/WifiConfigManager;->isEphemeral(I)Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiInfo;->setEphemeral(Z)V

    .line 3714
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getMeteredHint()Z

    move-result v4

    if-nez v4, :cond_5

    .line 3715
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/server/wifi/WifiConfigManager;->getMeteredHint(I)Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiInfo;->setMeteredHint(Z)V

    .line 3718
    :cond_5
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStateTracker:Lcom/android/server/wifi/SupplicantStateTracker;

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/SupplicantStateTracker;->sendMessage(Landroid/os/Message;)V

    .line 3720
    return-object v2

    .line 3675
    :cond_6
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiInfo;->setNetworkId(I)V

    goto :goto_0

    .line 3682
    :cond_7
    sget-object v4, Landroid/net/wifi/SupplicantState;->FOUR_WAY_HANDSHAKE:Landroid/net/wifi/SupplicantState;

    if-ne v2, v4, :cond_3

    goto :goto_1

    .line 3695
    .restart local v0    # "SSID":Ljava/lang/String;
    .restart local v1    # "currentSSID":Ljava/lang/String;
    :cond_8
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v4, v9, :cond_9

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v6, :cond_9

    .line 3696
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v6, :cond_9

    .line 3697
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 3699
    :cond_9
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v4, v9, :cond_a

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v6, :cond_a

    .line 3700
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v6, :cond_a

    .line 3701
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v1, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 3703
    :cond_a
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine;->mConnectedState:Lcom/android/internal/util/State;

    if-ne v4, v5, :cond_4

    .line 3704
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/wifi/WifiStateMachine;->lastConnectAttemptTimestamp:J

    .line 3706
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiConfigManager;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    .line 3705
    iput-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->targetWificonfiguration:Landroid/net/wifi/WifiConfiguration;

    .line 3707
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mRoamingState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    goto/16 :goto_2
.end method

.method private hasConnectionRequests()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 8656
    iget v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mConnectionReqCount:I

    if-gtz v2, :cond_0

    iget v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mUntrustedReqCount:I

    if-lez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private logStateAndMessage(Landroid/os/Message;Lcom/android/internal/util/State;)V
    .locals 2
    .param p1, "message"    # Landroid/os/Message;
    .param p2, "state"    # Lcom/android/internal/util/State;

    .prologue
    .line 2535
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I

    .line 2536
    sget-boolean v0, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    if-eqz v0, :cond_0

    .line 2537
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/internal/util/State;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->getLogRecString(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 2534
    :cond_0
    return-void
.end method

.method private macAddressFromRoute(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "ipAddress"    # Ljava/lang/String;

    .prologue
    .line 4047
    const/4 v5, 0x0

    .line 4048
    .local v5, "macAddress":Ljava/lang/String;
    const/4 v6, 0x0

    .line 4050
    .local v6, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/FileReader;

    const-string/jumbo v10, "/proc/net/arp"

    invoke-direct {v9, v10}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4053
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .local v7, "reader":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 4055
    .local v3, "line":Ljava/lang/String;
    :cond_0
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 4056
    const-string/jumbo v9, "[ ]+"

    invoke-virtual {v3, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 4057
    .local v8, "tokens":[Ljava/lang/String;
    array-length v9, v8

    const/4 v10, 0x6

    if-lt v9, v10, :cond_0

    .line 4063
    const/4 v9, 0x0

    aget-object v2, v8, v9

    .line 4064
    .local v2, "ip":Ljava/lang/String;
    const/4 v9, 0x3

    aget-object v4, v8, v9

    .line 4066
    .local v4, "mac":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 4067
    move-object v5, v4

    .line 4072
    .end local v2    # "ip":Ljava/lang/String;
    .end local v4    # "mac":Ljava/lang/String;
    .end local v5    # "macAddress":Ljava/lang/String;
    .end local v8    # "tokens":[Ljava/lang/String;
    :cond_1
    if-nez v5, :cond_2

    .line 4073
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Did not find remoteAddress {"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "} in "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 4074
    const-string/jumbo v10, "/proc/net/arp"

    .line 4073
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4083
    :cond_2
    if-eqz v7, :cond_3

    .line 4084
    :try_start_2
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_3
    :goto_0
    move-object v6, v7

    .line 4090
    .end local v3    # "line":Ljava/lang/String;
    .end local v7    # "reader":Ljava/io/BufferedReader;
    :cond_4
    :goto_1
    return-object v5

    .line 4086
    .restart local v3    # "line":Ljava/lang/String;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    goto :goto_0

    .line 4079
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "line":Ljava/lang/String;
    .end local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "macAddress":Ljava/lang/String;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    :catch_1
    move-exception v1

    .line 4080
    .end local v5    # "macAddress":Ljava/lang/String;
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_3
    const-string/jumbo v9, "Could not read /proc/net/arp to lookup mac address"

    invoke-virtual {p0, v9}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 4083
    if-eqz v6, :cond_4

    .line 4084
    :try_start_4
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 4086
    :catch_2
    move-exception v1

    goto :goto_1

    .line 4077
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v5    # "macAddress":Ljava/lang/String;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    :catch_3
    move-exception v0

    .line 4078
    .end local v5    # "macAddress":Ljava/lang/String;
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_3
    :try_start_5
    const-string/jumbo v9, "Could not open /proc/net/arp to lookup mac address"

    invoke-virtual {p0, v9}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 4083
    if-eqz v6, :cond_4

    .line 4084
    :try_start_6
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_1

    .line 4086
    :catch_4
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 4081
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    .line 4083
    :goto_4
    if-eqz v6, :cond_5

    .line 4084
    :try_start_7
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 4081
    :cond_5
    :goto_5
    throw v9

    .line 4086
    :catch_5
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_5

    .line 4081
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v9

    move-object v6, v7

    .end local v7    # "reader":Ljava/io/BufferedReader;
    .local v6, "reader":Ljava/io/BufferedReader;
    goto :goto_4

    .line 4077
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    :catch_6
    move-exception v0

    .restart local v0    # "e":Ljava/io/FileNotFoundException;
    move-object v6, v7

    .end local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    goto :goto_3

    .line 4079
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    :catch_7
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    move-object v6, v7

    .end local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method private macAddressFromString(Ljava/lang/String;)[B
    .locals 6
    .param p1, "macString"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x6

    .line 4030
    const-string/jumbo v4, ":"

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 4031
    .local v3, "macBytes":[Ljava/lang/String;
    array-length v4, v3

    if-eq v4, v5, :cond_0

    .line 4032
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "MAC address should be 6 bytes long!"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 4034
    :cond_0
    new-array v2, v5, [B

    .line 4035
    .local v2, "mac":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_1

    .line 4036
    aget-object v4, v3, v1

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 4037
    .local v0, "hexVal":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->byteValue()B

    move-result v4

    aput-byte v4, v2, v1

    .line 4035
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4039
    .end local v0    # "hexVal":Ljava/lang/Integer;
    :cond_1
    return-object v2
.end method

.method private static makeHex([B)Ljava/lang/String;
    .locals 8
    .param p0, "bytes"    # [B

    .prologue
    const/4 v3, 0x0

    .line 8202
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8203
    .local v1, "sb":Ljava/lang/StringBuilder;
    array-length v4, p0

    move v2, v3

    :goto_0
    if-ge v2, v4, :cond_0

    aget-byte v0, p0, v2

    .line 8204
    .local v0, "b":B
    const-string/jumbo v5, "%02x"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8203
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8206
    .end local v0    # "b":B
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static makeHex([BII)Ljava/lang/String;
    .locals 6
    .param p0, "bytes"    # [B
    .param p1, "from"    # I
    .param p2, "len"    # I

    .prologue
    .line 8210
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8211
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 8212
    const-string/jumbo v2, "%02x"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    add-int v4, p1, v0

    aget-byte v4, p0, v4

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8211
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8214
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private obtainMessageWithWhatAndArg2(Landroid/os/Message;I)Landroid/os/Message;
    .locals 2
    .param p1, "srcMsg"    # Landroid/os/Message;
    .param p2, "what"    # I

    .prologue
    .line 8146
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 8147
    .local v0, "msg":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->what:I

    .line 8148
    iget v1, p1, Landroid/os/Message;->arg2:I

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 8149
    return-object v0
.end method

.method private static parseHex(C)I
    .locals 3
    .param p0, "ch"    # C

    .prologue
    .line 8169
    const/16 v0, 0x30

    if-gt v0, p0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    .line 8170
    add-int/lit8 v0, p0, -0x30

    return v0

    .line 8171
    :cond_0
    const/16 v0, 0x61

    if-gt v0, p0, :cond_1

    const/16 v0, 0x66

    if-gt p0, v0, :cond_1

    .line 8172
    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    return v0

    .line 8173
    :cond_1
    const/16 v0, 0x41

    if-gt v0, p0, :cond_2

    const/16 v0, 0x46

    if-gt p0, v0, :cond_2

    .line 8174
    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    return v0

    .line 8176
    :cond_2
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is not a valid hex digit"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private parseHex(Ljava/lang/String;)[B
    .locals 8
    .param p1, "hex"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 8182
    if-nez p1, :cond_0

    .line 8183
    new-array v5, v6, [B

    return-object v5

    .line 8186
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    rem-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_1

    .line 8187
    new-instance v5, Ljava/lang/NumberFormatException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " is not a valid hex string"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 8190
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, 0x1

    new-array v3, v5, [B

    .line 8191
    .local v3, "result":[B
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-byte v5, v5

    aput-byte v5, v3, v6

    .line 8192
    const/4 v1, 0x0

    .local v1, "i":I
    const/4 v2, 0x1

    .local v2, "j":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 8193
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->parseHex(C)I

    move-result v5

    mul-int/lit8 v5, v5, 0x10

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lcom/android/server/wifi/WifiStateMachine;->parseHex(C)I

    move-result v6

    add-int v4, v5, v6

    .line 8194
    .local v4, "val":I
    and-int/lit16 v5, v4, 0xff

    int-to-byte v0, v5

    .line 8195
    .local v0, "b":B
    aput-byte v0, v3, v2

    .line 8192
    add-int/lit8 v1, v1, 0x2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8198
    .end local v0    # "b":B
    .end local v4    # "val":I
    :cond_2
    return-object v3
.end method

.method private replyToMessage(Landroid/os/Message;I)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "what"    # I

    .prologue
    .line 8121
    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-nez v1, :cond_0

    return-void

    .line 8122
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiStateMachine;->obtainMessageWithWhatAndArg2(Landroid/os/Message;I)Landroid/os/Message;

    move-result-object v0

    .line 8123
    .local v0, "dstMsg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;Landroid/os/Message;)V

    .line 8120
    return-void
.end method

.method private replyToMessage(Landroid/os/Message;II)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "what"    # I
    .param p3, "arg1"    # I

    .prologue
    .line 8127
    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-nez v1, :cond_0

    return-void

    .line 8128
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiStateMachine;->obtainMessageWithWhatAndArg2(Landroid/os/Message;I)Landroid/os/Message;

    move-result-object v0

    .line 8129
    .local v0, "dstMsg":Landroid/os/Message;
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 8130
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;Landroid/os/Message;)V

    .line 8126
    return-void
.end method

.method private replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 8134
    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-nez v1, :cond_0

    return-void

    .line 8135
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiStateMachine;->obtainMessageWithWhatAndArg2(Landroid/os/Message;I)Landroid/os/Message;

    move-result-object v0

    .line 8136
    .local v0, "dstMsg":Landroid/os/Message;
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 8137
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;Landroid/os/Message;)V

    .line 8133
    return-void
.end method

.method private reportConnectionAttemptEnd(II)V
    .locals 1
    .param p1, "level2FailureCode"    # I
    .param p2, "connectivityFailureCode"    # I

    .prologue
    .line 3830
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/WifiMetrics;->endConnectionEvent(II)V

    .line 3831
    sparse-switch p1, :sswitch_data_0

    .line 3837
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiLogger:Lcom/android/server/wifi/BaseWifiLogger;

    invoke-virtual {v0}, Lcom/android/server/wifi/BaseWifiLogger;->reportConnectionFailure()V

    .line 3829
    :sswitch_0
    return-void

    .line 3831
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method private sendConnectedState()V
    .locals 5

    .prologue
    .line 7172
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 7173
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    invoke-virtual {v2, v0}, Lcom/android/server/wifi/WifiConfigManager;->isLastSelectedConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 7175
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->lastConnectUid:I

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiConfigManager;->checkConfigOverridePermission(I)Z

    move-result v1

    .line 7176
    .local v1, "prompt":Z
    sget-boolean v2, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    if-eqz v2, :cond_0

    .line 7177
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Network selected by UID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->lastConnectUid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " prompt="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 7179
    :cond_0
    if-eqz v1, :cond_2

    .line 7183
    sget-boolean v2, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    if-eqz v2, :cond_1

    .line 7184
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "explictlySelected acceptUnvalidated="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, v0, Landroid/net/wifi/WifiConfiguration;->noInternetAccessExpected:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 7186
    :cond_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkAgent:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    iget-boolean v3, v0, Landroid/net/wifi/WifiConfiguration;->noInternetAccessExpected:Z

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->explicitlySelected(Z)V

    .line 7190
    .end local v1    # "prompt":Z
    :cond_2
    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiStateMachine;->setNetworkDetailedState(Landroid/net/NetworkInfo$DetailedState;)Z

    .line 7191
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wifi/WifiConfigManager;->updateStatus(ILandroid/net/NetworkInfo$DetailedState;)V

    .line 7192
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiStateMachine;->sendNetworkStateChangeBroadcast(Ljava/lang/String;)V

    .line 7169
    return-void
.end method

.method private sendLinkConfigurationChangedBroadcast()V
    .locals 4

    .prologue
    .line 3585
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3586
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3587
    const-string/jumbo v1, "linkProperties"

    new-instance v2, Landroid/net/LinkProperties;

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {v2, v3}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3588
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 3584
    return-void
.end method

.method private sendNetworkStateChangeBroadcast(Ljava/lang/String;)V
    .locals 5
    .param p1, "bssid"    # Ljava/lang/String;

    .prologue
    .line 3541
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.net.wifi.STATE_CHANGE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3542
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v2, 0x4000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3543
    const-string/jumbo v2, "networkInfo"

    new-instance v3, Landroid/net/NetworkInfo;

    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-direct {v3, v4}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3544
    const-string/jumbo v2, "linkProperties"

    new-instance v3, Landroid/net/LinkProperties;

    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {v3, v4}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3545
    if-eqz p1, :cond_0

    .line 3546
    const-string/jumbo v2, "bssid"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3547
    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->VERIFYING_POOR_LINK:Landroid/net/NetworkInfo$DetailedState;

    if-eq v2, v3, :cond_1

    .line 3548
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v2, v3, :cond_2

    .line 3551
    :cond_1
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->fetchRssiLinkSpeedAndFrequencyNative()V

    .line 3552
    new-instance v1, Landroid/net/wifi/WifiInfo;

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-direct {v1, v2}, Landroid/net/wifi/WifiInfo;-><init>(Landroid/net/wifi/WifiInfo;)V

    .line 3553
    .local v1, "sentWifiInfo":Landroid/net/wifi/WifiInfo;
    const-string/jumbo v2, "02:00:00:00:00:00"

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiInfo;->setMacAddress(Ljava/lang/String;)V

    .line 3554
    const-string/jumbo v2, "wifiInfo"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3556
    .end local v1    # "sentWifiInfo":Landroid/net/wifi/WifiInfo;
    :cond_2
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 3540
    return-void
.end method

.method private sendRssiChangeBroadcast(I)V
    .locals 4
    .param p1, "newRssi"    # I

    .prologue
    .line 3530
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v2, p1}, Lcom/android/internal/app/IBatteryStats;->noteWifiRssiChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3534
    :goto_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.net.wifi.RSSI_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3535
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3536
    const-string/jumbo v2, "newRssi"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3537
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 3528
    return-void

    .line 3531
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private sendSupplicantConnectionChangedBroadcast(Z)V
    .locals 3
    .param p1, "connected"    # Z

    .prologue
    .line 3592
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.net.wifi.supplicant.CONNECTION_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3593
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3594
    const-string/jumbo v1, "connected"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3595
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 3591
    return-void
.end method

.method private setFrequencyBand()V
    .locals 4

    .prologue
    .line 3125
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 3126
    const-string/jumbo v2, "wifi_frequency_band"

    const/4 v3, 0x0

    .line 3125
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 3128
    .local v0, "band":I
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/WifiNative;->setBand(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3129
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mFrequencyBand:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 3130
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConnectivityManager:Lcom/android/server/wifi/WifiConnectivityManager;

    if-eqz v1, :cond_0

    .line 3131
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConnectivityManager:Lcom/android/server/wifi/WifiConnectivityManager;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/WifiConnectivityManager;->setUserPreferredBand(I)V

    .line 3133
    :cond_0
    sget-boolean v1, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    if-eqz v1, :cond_1

    .line 3134
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "done set frequency band "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 3124
    :cond_1
    :goto_0
    return-void

    .line 3137
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Failed to set frequency band "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setNetworkDetailedState(Landroid/net/NetworkInfo$DetailedState;)Z
    .locals 5
    .param p1, "state"    # Landroid/net/NetworkInfo$DetailedState;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 3604
    const/4 v0, 0x0

    .line 3606
    .local v0, "hidden":Z
    iget-boolean v1, p0, Lcom/android/server/wifi/WifiStateMachine;->linkDebouncing:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->isRoaming()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3619
    :cond_0
    const/4 v0, 0x1

    .line 3621
    :cond_1
    sget-boolean v1, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    if-eqz v1, :cond_2

    .line 3622
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDetailed state, old ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3623
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    .line 3622
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3623
    const-string/jumbo v2, " and new state="

    .line 3622
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3624
    const-string/jumbo v2, " hidden="

    .line 3622
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 3626
    :cond_2
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 3627
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "<unknown ssid>"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3637
    :cond_3
    :goto_0
    if-eqz v0, :cond_6

    .line 3638
    return v4

    .line 3629
    :cond_4
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 3630
    sget-boolean v1, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    if-eqz v1, :cond_5

    .line 3631
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDetailed state send new extra info"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 3633
    :cond_5
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/NetworkInfo;->setExtraInfo(Ljava/lang/String;)V

    .line 3634
    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiStateMachine;->sendNetworkStateChangeBroadcast(Ljava/lang/String;)V

    goto :goto_0

    .line 3641
    :cond_6
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    if-eq p1, v1, :cond_8

    .line 3642
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v3, v2}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 3643
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkAgent:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    if-eqz v1, :cond_7

    .line 3644
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkAgent:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->sendNetworkInfo(Landroid/net/NetworkInfo;)V

    .line 3646
    :cond_7
    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiStateMachine;->sendNetworkStateChangeBroadcast(Ljava/lang/String;)V

    .line 3647
    const/4 v1, 0x1

    return v1

    .line 3649
    :cond_8
    return v4
.end method

.method private setRandomMacOui()Z
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/16 v5, 0x10

    .line 1506
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1040038

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1507
    .local v0, "oui":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1508
    const-string/jumbo v0, "DA-A1-19"

    .line 1510
    :cond_0
    const-string/jumbo v3, "-"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1511
    .local v2, "ouiParts":[Ljava/lang/String;
    const/4 v3, 0x3

    new-array v1, v3, [B

    .line 1512
    .local v1, "ouiBytes":[B
    aget-object v3, v2, v6

    invoke-static {v3, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v6

    .line 1513
    aget-object v3, v2, v7

    invoke-static {v3, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v7

    .line 1514
    aget-object v3, v2, v8

    invoke-static {v3, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v8

    .line 1516
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Setting OUI to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 1517
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v3, v1}, Lcom/android/server/wifi/WifiNative;->setScanningMacOui([B)Z

    move-result v3

    return v3
.end method

.method private setScanResults()V
    .locals 22

    .prologue
    .line 3238
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/WifiStateMachine;->mNumScanResultsKnown:I

    .line 3239
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/WifiStateMachine;->mNumScanResultsReturned:I

    .line 3241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/wifi/WifiNative;->getScanResults()Ljava/util/ArrayList;

    move-result-object v17

    .line 3243
    .local v17, "scanResults":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/ScanDetail;>;"
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v18

    if-eqz v18, :cond_0

    .line 3244
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wifi/WifiStateMachine;->mScanResults:Ljava/util/List;

    .line 3245
    return-void

    .line 3248
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/android/server/wifi/WifiConfigManager;->trimANQPCache(Z)V

    .line 3250
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_6

    const/4 v12, 0x1

    .line 3251
    .local v12, "connected":Z
    :goto_0
    const-wide/16 v6, 0x0

    .line 3252
    .local v6, "activeBssid":J
    if-eqz v12, :cond_1

    .line 3254
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/hotspot2/Utils;->parseMac(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    .line 3260
    .end local v12    # "connected":Z
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mScanResultsLock:Ljava/lang/Object;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 3261
    const/4 v8, 0x0

    .line 3262
    .local v8, "activeScanDetail":Lcom/android/server/wifi/ScanDetail;
    :try_start_1
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wifi/WifiStateMachine;->mScanResults:Ljava/util/List;

    .line 3263
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mScanResults:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/WifiStateMachine;->mNumScanResultsReturned:I

    .line 3264
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mScanResults:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .end local v8    # "activeScanDetail":Lcom/android/server/wifi/ScanDetail;
    .local v16, "resultDetail$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_8

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/wifi/ScanDetail;

    .line 3265
    .local v15, "resultDetail":Lcom/android/server/wifi/ScanDetail;
    if-eqz v12, :cond_4

    invoke-virtual {v15}, Lcom/android/server/wifi/ScanDetail;->getNetworkDetail()Lcom/android/server/wifi/hotspot2/NetworkDetail;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getBSSID()J

    move-result-wide v20

    cmp-long v18, v20, v6

    if-nez v18, :cond_4

    .line 3266
    if-eqz v8, :cond_3

    .line 3267
    invoke-virtual {v8}, Lcom/android/server/wifi/ScanDetail;->getNetworkDetail()Lcom/android/server/wifi/hotspot2/NetworkDetail;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getBSSID()J

    move-result-wide v20

    cmp-long v18, v20, v6

    if-eqz v18, :cond_7

    .line 3269
    :cond_3
    :goto_2
    move-object v8, v15

    .line 3277
    :cond_4
    invoke-virtual {v15}, Lcom/android/server/wifi/ScanDetail;->getNetworkDetail()Lcom/android/server/wifi/hotspot2/NetworkDetail;

    move-result-object v14

    .line 3278
    .local v14, "networkDetail":Lcom/android/server/wifi/hotspot2/NetworkDetail;
    if-eqz v14, :cond_2

    invoke-virtual {v14}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getDtimInterval()I

    move-result v18

    if-lez v18, :cond_2

    .line 3280
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Lcom/android/server/wifi/WifiConfigManager;->getSavedNetworkFromScanDetail(Lcom/android/server/wifi/ScanDetail;)Ljava/util/List;

    move-result-object v11

    .line 3281
    .local v11, "associatedWifiConfigurations":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v11, :cond_2

    .line 3282
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "associatedConf$iterator":Ljava/util/Iterator;
    :cond_5
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/WifiConfiguration;

    .line 3283
    .local v9, "associatedConf":Landroid/net/wifi/WifiConfiguration;
    if-eqz v9, :cond_5

    .line 3284
    invoke-virtual {v14}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getDtimInterval()I

    move-result v18

    move/from16 v0, v18

    iput v0, v9, Landroid/net/wifi/WifiConfiguration;->dtimInterval:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 3260
    .end local v9    # "associatedConf":Landroid/net/wifi/WifiConfiguration;
    .end local v10    # "associatedConf$iterator":Ljava/util/Iterator;
    .end local v11    # "associatedWifiConfigurations":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .end local v14    # "networkDetail":Lcom/android/server/wifi/hotspot2/NetworkDetail;
    .end local v15    # "resultDetail":Lcom/android/server/wifi/ScanDetail;
    .end local v16    # "resultDetail$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v18

    monitor-exit v19

    throw v18

    .line 3250
    .end local v6    # "activeBssid":J
    :cond_6
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 3255
    .restart local v6    # "activeBssid":J
    .restart local v12    # "connected":Z
    :catch_0
    move-exception v13

    .line 3256
    .local v13, "iae":Ljava/lang/IllegalArgumentException;
    const/4 v12, 0x0

    .local v12, "connected":Z
    goto/16 :goto_1

    .line 3268
    .end local v12    # "connected":Z
    .end local v13    # "iae":Ljava/lang/IllegalArgumentException;
    .restart local v15    # "resultDetail":Lcom/android/server/wifi/ScanDetail;
    .restart local v16    # "resultDetail$iterator":Ljava/util/Iterator;
    :cond_7
    :try_start_2
    invoke-virtual {v8}, Lcom/android/server/wifi/ScanDetail;->getNetworkDetail()Lcom/android/server/wifi/hotspot2/NetworkDetail;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getANQPElements()Ljava/util/Map;

    move-result-object v18

    if-nez v18, :cond_4

    goto :goto_2

    .line 3290
    .end local v15    # "resultDetail":Lcom/android/server/wifi/ScanDetail;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Lcom/android/server/wifi/WifiConfigManager;->setActiveScanDetail(Lcom/android/server/wifi/ScanDetail;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v19

    .line 3293
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wifi/WifiStateMachine;->linkDebouncing:Z

    move/from16 v18, v0

    if-eqz v18, :cond_9

    .line 3299
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I

    move/from16 v18, v0

    const v19, 0x20091

    const/16 v20, 0x1

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v18

    move/from16 v3, v20

    move-object/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(IIILjava/lang/Object;)V

    .line 3303
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/MiuiWifiService;->updateScanResults(Landroid/content/Context;)V

    .line 3237
    return-void
.end method

.method private setSuspendOptimizations(IZ)V
    .locals 2
    .param p1, "reason"    # I
    .param p2, "enabled"    # Z

    .prologue
    .line 3172
    sget-boolean v0, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setSuspendOptimizations: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 3173
    :cond_0
    if-eqz p2, :cond_2

    .line 3174
    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mSuspendOptNeedsDisabled:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mSuspendOptNeedsDisabled:I

    .line 3178
    :goto_0
    sget-boolean v0, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mSuspendOptNeedsDisabled "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mSuspendOptNeedsDisabled:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 3171
    :cond_1
    return-void

    .line 3176
    :cond_2
    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mSuspendOptNeedsDisabled:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mSuspendOptNeedsDisabled:I

    goto :goto_0
.end method

.method private setSuspendOptimizationsNative(IZ)V
    .locals 7
    .param p1, "reason"    # I
    .param p2, "enabled"    # Z

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 3142
    sget-boolean v0, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    if-eqz v0, :cond_0

    .line 3143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setSuspendOptimizationsNative: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3144
    const-string/jumbo v1, " -want "

    .line 3143
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3144
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mUserWantsSuspendOpt:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    .line 3143
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3145
    const-string/jumbo v1, " stack:"

    .line 3143
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3145
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    aget-object v1, v1, v3

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    .line 3143
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3146
    const-string/jumbo v1, " - "

    .line 3143
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3146
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    aget-object v1, v1, v4

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    .line 3143
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3147
    const-string/jumbo v1, " - "

    .line 3143
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3147
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    aget-object v1, v1, v5

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    .line 3143
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3148
    const-string/jumbo v1, " - "

    .line 3143
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3148
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    aget-object v1, v1, v6

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    .line 3143
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 3152
    :cond_0
    if-eqz p2, :cond_3

    .line 3153
    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mSuspendOptNeedsDisabled:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mSuspendOptNeedsDisabled:I

    .line 3155
    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mSuspendOptNeedsDisabled:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mUserWantsSuspendOpt:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3156
    sget-boolean v0, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    if-eqz v0, :cond_1

    .line 3157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setSuspendOptimizationsNative do it "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3158
    const-string/jumbo v1, " stack:"

    .line 3157
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3158
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    aget-object v1, v1, v3

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    .line 3157
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3159
    const-string/jumbo v1, " - "

    .line 3157
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3159
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    aget-object v1, v1, v4

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    .line 3157
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3160
    const-string/jumbo v1, " - "

    .line 3157
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3160
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    aget-object v1, v1, v5

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    .line 3157
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3161
    const-string/jumbo v1, " - "

    .line 3157
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3161
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    aget-object v1, v1, v6

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    .line 3157
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 3163
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiNative;->setSuspendOptimizations(Z)Z

    .line 3141
    :cond_2
    :goto_0
    return-void

    .line 3166
    :cond_3
    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mSuspendOptNeedsDisabled:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mSuspendOptNeedsDisabled:I

    .line 3167
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiNative;->setSuspendOptimizations(Z)Z

    goto :goto_0
.end method

.method private setTargetBssid(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)Z
    .locals 5
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "bssid"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 475
    if-nez p1, :cond_0

    .line 476
    return v4

    .line 479
    :cond_0
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 480
    iget-object p2, p1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    .line 481
    sget-boolean v1, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    if-eqz v1, :cond_1

    .line 482
    const-string/jumbo v1, "WifiStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "force BSSID to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "due to config"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    :cond_1
    if-nez p2, :cond_2

    .line 487
    const-string/jumbo p2, "any"

    .line 490
    :cond_2
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionBSSID()Ljava/lang/String;

    move-result-object v0

    .line 492
    .local v0, "networkSelectionBSSID":Ljava/lang/String;
    if-eqz v0, :cond_4

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 493
    sget-boolean v1, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    if-eqz v1, :cond_3

    .line 494
    const-string/jumbo v1, "WifiStateMachine"

    const-string/jumbo v2, "Current preferred BSSID is the same as the target one"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    :cond_3
    return v4

    .line 499
    :cond_4
    sget-boolean v1, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    if-eqz v1, :cond_5

    .line 500
    const-string/jumbo v1, "WifiStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "target set to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    :cond_5
    iput-object p2, p0, Lcom/android/server/wifi/WifiStateMachine;->mTargetRoamBSSID:Ljava/lang/String;

    .line 503
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wifi/WifiConfigManager;->saveWifiConfigBSSID(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V

    .line 504
    const/4 v1, 0x1

    return v1
.end method

.method private setWifiApState(II)V
    .locals 5
    .param p1, "wifiApState"    # I
    .param p2, "reason"    # I

    .prologue
    .line 3208
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiApState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    .line 3211
    .local v2, "previousWifiApState":I
    const/16 v3, 0xd

    if-ne p1, v3, :cond_3

    .line 3212
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3}, Lcom/android/internal/app/IBatteryStats;->noteWifiOn()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3221
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiApState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 3223
    sget-boolean v3, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setWifiApState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->syncGetWifiApStateByName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 3225
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3226
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v3, 0x4000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3227
    const-string/jumbo v3, "wifi_state"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3228
    const-string/jumbo v3, "previous_wifi_state"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3229
    const/16 v3, 0xe

    if-ne p1, v3, :cond_2

    .line 3231
    const-string/jumbo v3, "wifi_ap_error_code"

    invoke-virtual {v1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3234
    :cond_2
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 3207
    return-void

    .line 3213
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_3
    const/16 v3, 0xb

    if-ne p1, v3, :cond_0

    .line 3214
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3}, Lcom/android/internal/app/IBatteryStats;->noteWifiOff()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 3216
    :catch_0
    move-exception v0

    .line 3217
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "Failed to note battery stats in wifi"

    invoke-virtual {p0, v3}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setWifiState(I)V
    .locals 5
    .param p1, "wifiState"    # I

    .prologue
    .line 3182
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    .line 3185
    .local v2, "previousWifiState":I
    const/4 v3, 0x3

    if-ne p1, v3, :cond_2

    .line 3186
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3}, Lcom/android/internal/app/IBatteryStats;->noteWifiOn()V

    .line 3188
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/server/wifi/MiuiWifiService;->initWirelessConnectMode(Landroid/content/Context;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3196
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 3198
    sget-boolean v3, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setWifiState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->syncGetWifiStateByName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 3200
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3201
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v3, 0x4000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3202
    const-string/jumbo v3, "wifi_state"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3203
    const-string/jumbo v3, "previous_wifi_state"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3204
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 3181
    return-void

    .line 3189
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_2
    const/4 v3, 0x1

    if-ne p1, v3, :cond_0

    .line 3190
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3}, Lcom/android/internal/app/IBatteryStats;->noteWifiOff()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 3192
    :catch_0
    move-exception v0

    .line 3193
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "Failed to note battery stats in wifi"

    invoke-virtual {p0, v3}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setupDriverForSoftAp()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 4000
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiNative;->loadDriver()Z

    move-result v2

    if-nez v2, :cond_0

    .line 4001
    const-string/jumbo v2, "WifiStateMachine"

    const-string/jumbo v3, "Failed to load driver for softap"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4002
    return v4

    .line 4005
    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiNative;->queryInterfaceIndex(Ljava/lang/String;)I

    move-result v1

    .line 4006
    .local v1, "index":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 4007
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v2, v4}, Lcom/android/server/wifi/WifiNative;->setInterfaceUp(Z)Z

    move-result v2

    if-nez v2, :cond_2

    .line 4008
    const-string/jumbo v2, "WifiStateMachine"

    const-string/jumbo v3, "toggleInterface failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4009
    return v4

    .line 4012
    :cond_1
    sget-boolean v2, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    if-eqz v2, :cond_2

    const-string/jumbo v2, "WifiStateMachine"

    const-string/jumbo v3, "No interfaces to bring down"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4016
    :cond_2
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    const-string/jumbo v4, "AP"

    invoke-interface {v2, v3, v4}, Landroid/os/INetworkManagementService;->wifiFirmwareReload(Ljava/lang/String;Ljava/lang/String;)V

    .line 4017
    sget-boolean v2, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    if-eqz v2, :cond_3

    const-string/jumbo v2, "WifiStateMachine"

    const-string/jumbo v3, "Firmware reloaded in AP mode"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4022
    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiNative;->startHal()Z

    move-result v2

    if-nez v2, :cond_4

    .line 4024
    const-string/jumbo v2, "WifiStateMachine"

    const-string/jumbo v3, "Failed to start HAL"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4026
    :cond_4
    const/4 v2, 0x1

    return v2

    .line 4018
    :catch_0
    move-exception v0

    .line 4019
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "WifiStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to reload AP firmware "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private startScanNative(Ljava/util/Set;Ljava/util/Set;Landroid/os/WorkSource;)Z
    .locals 14
    .param p3, "workSource"    # Landroid/os/WorkSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/os/WorkSource;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 1812
    .local p1, "freqs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .local p2, "hiddenNetworkIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    new-instance v10, Landroid/net/wifi/WifiScanner$ScanSettings;

    invoke-direct {v10}, Landroid/net/wifi/WifiScanner$ScanSettings;-><init>()V

    .line 1813
    .local v10, "settings":Landroid/net/wifi/WifiScanner$ScanSettings;
    if-nez p1, :cond_1

    .line 1814
    const/4 v11, 0x7

    iput v11, v10, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    .line 1823
    :cond_0
    const/4 v11, 0x3

    iput v11, v10, Landroid/net/wifi/WifiScanner$ScanSettings;->reportEvents:I

    .line 1825
    if-eqz p2, :cond_2

    invoke-interface/range {p2 .. p2}, Ljava/util/Set;->size()I

    move-result v11

    if-lez v11, :cond_2

    .line 1826
    const/4 v3, 0x0

    .line 1827
    .local v3, "i":I
    invoke-interface/range {p2 .. p2}, Ljava/util/Set;->size()I

    move-result v11

    new-array v11, v11, [I

    iput-object v11, v10, Landroid/net/wifi/WifiScanner$ScanSettings;->hiddenNetworkIds:[I

    .line 1828
    invoke-interface/range {p2 .. p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "netId$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 1829
    .local v8, "netId":Ljava/lang/Integer;
    iget-object v11, v10, Landroid/net/wifi/WifiScanner$ScanSettings;->hiddenNetworkIds:[I

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .local v4, "i":I
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v12

    aput v12, v11, v3

    move v3, v4

    .end local v4    # "i":I
    .restart local v3    # "i":I
    goto :goto_0

    .line 1816
    .end local v3    # "i":I
    .end local v8    # "netId":Ljava/lang/Integer;
    .end local v9    # "netId$iterator":Ljava/util/Iterator;
    :cond_1
    const/4 v11, 0x0

    iput v11, v10, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    .line 1817
    const/4 v5, 0x0

    .line 1818
    .local v5, "index":I
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v11

    new-array v11, v11, [Landroid/net/wifi/WifiScanner$ChannelSpec;

    iput-object v11, v10, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    .line 1819
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "freq$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1820
    .local v1, "freq":Ljava/lang/Integer;
    iget-object v11, v10, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "index":I
    .local v6, "index":I
    new-instance v12, Landroid/net/wifi/WifiScanner$ChannelSpec;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-direct {v12, v13}, Landroid/net/wifi/WifiScanner$ChannelSpec;-><init>(I)V

    aput-object v12, v11, v5

    move v5, v6

    .end local v6    # "index":I
    .restart local v5    # "index":I
    goto :goto_1

    .line 1832
    .end local v1    # "freq":Ljava/lang/Integer;
    .end local v2    # "freq$iterator":Ljava/util/Iterator;
    .end local v5    # "index":I
    :cond_2
    new-instance v7, Lcom/android/server/wifi/WifiStateMachine$5;

    invoke-direct {v7, p0}, Lcom/android/server/wifi/WifiStateMachine$5;-><init>(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 1847
    .local v7, "nativeScanListener":Landroid/net/wifi/WifiScanner$ScanListener;
    iget-object v11, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiScanner:Landroid/net/wifi/WifiScanner;

    move-object/from16 v0, p3

    invoke-virtual {v11, v10, v7, v0}, Landroid/net/wifi/WifiScanner;->startScan(Landroid/net/wifi/WifiScanner$ScanSettings;Landroid/net/wifi/WifiScanner$ScanListener;Landroid/os/WorkSource;)V

    .line 1848
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/server/wifi/WifiStateMachine;->mIsScanOngoing:Z

    .line 1849
    if-nez p1, :cond_3

    const/4 v11, 0x1

    :goto_2
    iput-boolean v11, p0, Lcom/android/server/wifi/WifiStateMachine;->mIsFullScanOngoing:Z

    .line 1850
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine;->lastScanFreqs:Ljava/util/Set;

    .line 1851
    const/4 v11, 0x1

    return v11

    .line 1849
    :cond_3
    const/4 v11, 0x0

    goto :goto_2
.end method

.method private stopIpManager()V
    .locals 1

    .prologue
    .line 1356
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->handlePostDhcpSetup()V

    .line 1357
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mIpManager:Landroid/net/ip/IpManager;

    invoke-virtual {v0}, Landroid/net/ip/IpManager;->stop()V

    .line 1354
    return-void
.end method

.method static unexpectedDisconnectedReason(I)Z
    .locals 2
    .param p0, "reason"    # I

    .prologue
    const/4 v0, 0x1

    .line 8499
    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    .line 8500
    const/4 v1, 0x6

    if-ne p0, v1, :cond_1

    .line 8499
    :cond_0
    :goto_0
    return v0

    .line 8501
    :cond_1
    const/4 v1, 0x7

    if-eq p0, v1, :cond_0

    .line 8502
    const/16 v1, 0x8

    if-eq p0, v1, :cond_0

    .line 8503
    const/16 v1, 0x9

    if-eq p0, v1, :cond_0

    .line 8504
    const/16 v1, 0xe

    if-eq p0, v1, :cond_0

    .line 8505
    const/16 v1, 0xf

    if-eq p0, v1, :cond_0

    .line 8506
    const/16 v1, 0x10

    if-eq p0, v1, :cond_0

    .line 8507
    const/16 v1, 0x12

    if-eq p0, v1, :cond_0

    .line 8508
    const/16 v1, 0x13

    if-eq p0, v1, :cond_0

    .line 8509
    const/16 v1, 0x17

    if-eq p0, v1, :cond_0

    .line 8510
    const/16 v1, 0x22

    if-eq p0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateCapabilities(Landroid/net/wifi/WifiConfiguration;)V
    .locals 3
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/16 v2, 0xe

    .line 6548
    new-instance v0, Landroid/net/NetworkCapabilities;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mDfltNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-direct {v0, v1}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V

    .line 6549
    .local v0, "networkCapabilities":Landroid/net/NetworkCapabilities;
    if-eqz p1, :cond_0

    .line 6550
    iget-boolean v1, p1, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    if-eqz v1, :cond_2

    .line 6551
    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities;->removeCapability(I)Landroid/net/NetworkCapabilities;

    .line 6559
    :goto_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v1

    const/16 v2, -0x7f

    if-eq v1, v2, :cond_3

    .line 6560
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v1

    .line 6558
    :goto_1
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->setSignalStrength(I)V

    .line 6564
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getMeteredHint()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6565
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->removeCapability(I)Landroid/net/NetworkCapabilities;

    .line 6568
    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkAgent:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->sendNetworkCapabilities(Landroid/net/NetworkCapabilities;)V

    .line 6547
    return-void

    .line 6554
    :cond_2
    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    goto :goto_0

    .line 6561
    :cond_3
    const/high16 v1, -0x80000000

    goto :goto_1
.end method

.method private updateDataInterface()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 1480
    const-string/jumbo v0, "bond0"

    .line 1481
    .local v0, "defaultRateUpgradeInterfaceName":Ljava/lang/String;
    const-string/jumbo v4, "persist.fst.rate.upgrade.en"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1482
    .local v1, "fstEnabled":I
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mDataInterfaceName:Ljava/lang/String;

    .line 1483
    .local v2, "prevDataInterfaceName":Ljava/lang/String;
    const-string/jumbo v4, "persist.fst.data.interface"

    invoke-static {v4, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1487
    .local v3, "rateUpgradeDataInterfaceName":Ljava/lang/String;
    if-ne v1, v8, :cond_0

    .end local v3    # "rateUpgradeDataInterfaceName":Ljava/lang/String;
    :goto_0
    iput-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mDataInterfaceName:Ljava/lang/String;

    .line 1491
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mDataInterfaceName:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1492
    return-void

    .line 1487
    .restart local v3    # "rateUpgradeDataInterfaceName":Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    goto :goto_0

    .line 1495
    .end local v3    # "rateUpgradeDataInterfaceName":Ljava/lang/String;
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "fst "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-ne v1, v8, :cond_3

    const-string/jumbo v4, "enabled"

    :goto_1
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 1497
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mIpManager:Landroid/net/ip/IpManager;

    if-eqz v4, :cond_2

    .line 1498
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mIpManager:Landroid/net/ip/IpManager;

    invoke-virtual {v4}, Landroid/net/ip/IpManager;->shutdown()V

    .line 1499
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mFacade:Lcom/android/server/wifi/FrameworkFacade;

    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine;->mDataInterfaceName:Ljava/lang/String;

    .line 1500
    new-instance v7, Lcom/android/server/wifi/WifiStateMachine$IpManagerCallback;

    invoke-direct {v7, p0}, Lcom/android/server/wifi/WifiStateMachine$IpManagerCallback;-><init>(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 1499
    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/wifi/FrameworkFacade;->makeIpManager(Landroid/content/Context;Ljava/lang/String;Landroid/net/ip/IpManager$Callback;)Landroid/net/ip/IpManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mIpManager:Landroid/net/ip/IpManager;

    .line 1501
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mIpManager:Landroid/net/ip/IpManager;

    invoke-virtual {v4, v8}, Landroid/net/ip/IpManager;->setMulticastFilter(Z)V

    .line 1479
    :cond_2
    return-void

    .line 1495
    :cond_3
    const-string/jumbo v4, "disabled"

    goto :goto_1
.end method

.method private updateDefaultRouteMacAddress(I)Ljava/lang/String;
    .locals 8
    .param p1, "timeout"    # I

    .prologue
    .line 3482
    const/4 v0, 0x0

    .line 3483
    .local v0, "address":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v6}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .end local v0    # "address":Ljava/lang/String;
    .local v5, "route$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/RouteInfo;

    .line 3484
    .local v4, "route":Landroid/net/RouteInfo;
    invoke-virtual {v4}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v4}, Landroid/net/RouteInfo;->hasGateway()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 3485
    invoke-virtual {v4}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v2

    .line 3486
    .local v2, "gateway":Ljava/net/InetAddress;
    instance-of v6, v2, Ljava/net/Inet4Address;

    if-eqz v6, :cond_0

    .line 3487
    sget-boolean v6, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    if-eqz v6, :cond_1

    .line 3488
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateDefaultRouteMacAddress found Ipv4 default :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3489
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    .line 3488
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 3491
    :cond_1
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/wifi/WifiStateMachine;->macAddressFromRoute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3493
    .local v0, "address":Ljava/lang/String;
    if-nez v0, :cond_2

    if-lez p1, :cond_2

    .line 3496
    :try_start_0
    invoke-virtual {v2, p1}, Ljava/net/InetAddress;->isReachable(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 3502
    .local v3, "reachable":Z
    if-eqz v3, :cond_2

    .line 3504
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/wifi/WifiStateMachine;->macAddressFromRoute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3505
    sget-boolean v6, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    if-eqz v6, :cond_2

    .line 3506
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateDefaultRouteMacAddress reachable (tried again) :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3507
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    .line 3506
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3507
    const-string/jumbo v7, " found "

    .line 3506
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 3512
    .end local v3    # "reachable":Z
    :cond_2
    :goto_1
    if-eqz v0, :cond_0

    .line 3513
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget v7, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I

    invoke-virtual {v6, v7, v0}, Lcom/android/server/wifi/WifiConfigManager;->setDefaultGwMacAddress(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 3497
    :catch_0
    move-exception v1

    .line 3498
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateDefaultRouteMacAddress exception reaching :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3499
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    .line 3498
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 3501
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    throw v6

    .line 3518
    .end local v0    # "address":Ljava/lang/String;
    .end local v2    # "gateway":Ljava/net/InetAddress;
    .end local v4    # "route":Landroid/net/RouteInfo;
    :cond_3
    return-object v0
.end method

.method private updateLinkProperties(Landroid/net/LinkProperties;)V
    .locals 3
    .param p1, "newLp"    # Landroid/net/LinkProperties;

    .prologue
    .line 3432
    sget-boolean v1, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    if-eqz v1, :cond_0

    .line 3433
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Link configuration changed for netId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3434
    const-string/jumbo v2, " old: "

    .line 3433
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3434
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    .line 3433
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3434
    const-string/jumbo v2, " new: "

    .line 3433
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 3437
    :cond_0
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    .line 3438
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkAgent:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    if-eqz v1, :cond_1

    .line 3439
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkAgent:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->sendLinkProperties(Landroid/net/LinkProperties;)V

    .line 3442
    :cond_1
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->getNetworkDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v1, v2, :cond_2

    .line 3445
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->sendLinkConfigurationChangedBroadcast()V

    .line 3448
    :cond_2
    sget-boolean v1, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    if-eqz v1, :cond_4

    .line 3449
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3450
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "updateLinkProperties nid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3451
    const-string/jumbo v1, " state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->getNetworkDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3453
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    if-eqz v1, :cond_3

    .line 3454
    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3455
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->getLinkPropertiesSummary(Landroid/net/LinkProperties;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3457
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 3431
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_4
    return-void
.end method

.method private wnmFrameReceived(Lcom/android/server/wifi/WnmData;)V
    .locals 6
    .param p1, "event"    # Lcom/android/server/wifi/WnmData;

    .prologue
    .line 8583
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.net.wifi.PASSPOINT_WNM_FRAME_RECEIVED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8584
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 8586
    const-string/jumbo v2, "bssid"

    invoke-virtual {p1}, Lcom/android/server/wifi/WnmData;->getBssid()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 8587
    const-string/jumbo v2, "url"

    invoke-virtual {p1}, Lcom/android/server/wifi/WnmData;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 8589
    invoke-virtual {p1}, Lcom/android/server/wifi/WnmData;->isDeauthEvent()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 8590
    const-string/jumbo v2, "ess"

    invoke-virtual {p1}, Lcom/android/server/wifi/WnmData;->isEss()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 8591
    const-string/jumbo v2, "delay"

    invoke-virtual {p1}, Lcom/android/server/wifi/WnmData;->getDelay()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 8600
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 8579
    return-void

    .line 8593
    :cond_1
    const-string/jumbo v2, "method"

    invoke-virtual {p1}, Lcom/android/server/wifi/WnmData;->getMethod()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 8594
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 8595
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 8596
    const-string/jumbo v2, "match"

    .line 8597
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/WifiConfigManager;->matchProviderWithCurrentNetwork(Ljava/lang/String;)I

    move-result v3

    .line 8596
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method


# virtual methods
.method public addToBlacklist(Ljava/lang/String;)V
    .locals 1
    .param p1, "bssid"    # Ljava/lang/String;

    .prologue
    .line 2277
    const v0, 0x20038

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 2276
    return-void
.end method

.method public autoConnectToNetwork(ILjava/lang/String;)V
    .locals 3
    .param p1, "networkId"    # I
    .param p2, "bssid"    # Ljava/lang/String;

    .prologue
    .line 8468
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiReqCountLock:Ljava/lang/Object;

    monitor-enter v1

    .line 8469
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->hasConnectionRequests()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8470
    const v0, 0x2008f

    const/4 v2, 0x0

    invoke-virtual {p0, v0, p1, v2, p2}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(IIILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 8467
    return-void

    .line 8468
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public autoRoamSetBSSID(ILjava/lang/String;)V
    .locals 1
    .param p1, "netId"    # I
    .param p2, "bssid"    # Ljava/lang/String;

    .prologue
    .line 422
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiConfigManager;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/android/server/wifi/WifiStateMachine;->autoRoamSetBSSID(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)Z

    .line 421
    return-void
.end method

.method public autoRoamSetBSSID(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)Z
    .locals 4
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "bssid"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 437
    const/4 v0, 0x1

    .line 438
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mTargetRoamBSSID:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string/jumbo v1, "any"

    iput-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mTargetRoamBSSID:Ljava/lang/String;

    .line 439
    :cond_0
    if-nez p2, :cond_1

    const-string/jumbo p2, "any"

    .line 440
    :cond_1
    if-nez p1, :cond_2

    return v2

    .line 442
    :cond_2
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mTargetRoamBSSID:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 443
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mTargetRoamBSSID:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 442
    if-eqz v1, :cond_3

    .line 443
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 442
    if-eqz v1, :cond_3

    .line 444
    return v2

    .line 446
    :cond_3
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mTargetRoamBSSID:Ljava/lang/String;

    const-string/jumbo v2, "any"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string/jumbo v1, "any"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 449
    const/4 v0, 0x0

    .line 452
    :cond_4
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 453
    iget-object p2, p1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    .line 454
    sget-boolean v1, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    if-eqz v1, :cond_5

    .line 455
    const-string/jumbo v1, "WifiStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "force BSSID to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "due to config"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    :cond_5
    sget-boolean v1, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    if-eqz v1, :cond_6

    .line 460
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "autoRoamSetBSSID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 462
    :cond_6
    iput-object p2, p0, Lcom/android/server/wifi/WifiStateMachine;->mTargetRoamBSSID:Ljava/lang/String;

    .line 463
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wifi/WifiConfigManager;->saveWifiConfigBSSID(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V

    .line 464
    return v0
.end method

.method public autoRoamToNetwork(ILandroid/net/wifi/ScanResult;)V
    .locals 2
    .param p1, "networkId"    # I
    .param p2, "scanResult"    # Landroid/net/wifi/ScanResult;

    .prologue
    .line 8482
    const v0, 0x20091

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, p2}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(IIILjava/lang/Object;)V

    .line 8481
    return-void
.end method

.method checkAndSetAutoConnection()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 8637
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x112001a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8638
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->shouldAutoConnect()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8639
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiQualifiedNetworkSelector:Lcom/android/server/wifi/WifiQualifiedNetworkSelector;

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->skipQualifiedNetworkSelectionForAutoConnect(Z)V

    .line 8636
    :cond_0
    :goto_0
    return-void

    .line 8641
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiQualifiedNetworkSelector:Lcom/android/server/wifi/WifiQualifiedNetworkSelector;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->skipQualifiedNetworkSelectionForAutoConnect(Z)V

    .line 8647
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiNative;->enableAutoConnect(Z)V

    goto :goto_0
.end method

.method public clearANQPCache()V
    .locals 2

    .prologue
    .line 1456
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigManager;->trimANQPCache(Z)V

    .line 1455
    return-void
.end method

.method public clearBlacklist()V
    .locals 1

    .prologue
    .line 2284
    const v0, 0x20039

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    .line 2283
    return-void
.end method

.method clearConfigBSSID(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V
    .locals 2
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "dbg"    # Ljava/lang/String;

    .prologue
    .line 6759
    if-nez p1, :cond_0

    .line 6760
    return-void

    .line 6761
    :cond_0
    sget-boolean v0, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    if-eqz v0, :cond_1

    .line 6762
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mTargetRoamBSSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " config "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 6763
    const-string/jumbo v1, " config.NetworkSelectionStatus.mNetworkSelectionBSSID "

    .line 6762
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 6764
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionBSSID()Ljava/lang/String;

    move-result-object v1

    .line 6762
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 6766
    :cond_1
    sget-boolean v0, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    if-eqz v0, :cond_2

    .line 6767
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 6768
    const-string/jumbo v1, " nid="

    .line 6767
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 6768
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 6767
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 6770
    :cond_2
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    const-string/jumbo v1, "any"

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wifi/WifiConfigManager;->saveWifiConfigBSSID(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V

    .line 6758
    return-void
.end method

.method clearCurrentConfigBSSID(Ljava/lang/String;)V
    .locals 1
    .param p1, "dbg"    # Ljava/lang/String;

    .prologue
    .line 6753
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 6754
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_0

    .line 6755
    return-void

    .line 6756
    :cond_0
    invoke-virtual {p0, v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->clearConfigBSSID(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V

    .line 6751
    return-void
.end method

.method public deauthenticateNetwork(Lcom/android/internal/util/AsyncChannel;JZ)V
    .locals 0
    .param p1, "channel"    # Lcom/android/internal/util/AsyncChannel;
    .param p2, "holdoff"    # J
    .param p4, "ess"    # Z

    .prologue
    .line 2104
    return-void
.end method

.method deferForUserInput(Landroid/os/Message;IZ)Z
    .locals 4
    .param p1, "message"    # Landroid/os/Message;
    .param p2, "netId"    # I
    .param p3, "allowOverride"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 536
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    invoke-virtual {v1, p2}, Lcom/android/server/wifi/WifiConfigManager;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 539
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_0

    .line 540
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "deferForUserInput: configuration for netId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " not stored"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 541
    return v3

    .line 544
    :cond_0
    iget v1, v0, Landroid/net/wifi/WifiConfiguration;->userApproved:I

    packed-switch v1, :pswitch_data_0

    .line 552
    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->userApproved:I

    .line 553
    return v2

    .line 547
    :pswitch_0
    return v2

    .line 544
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public disableEphemeralNetwork(Ljava/lang/String;)V
    .locals 1
    .param p1, "SSID"    # Ljava/lang/String;

    .prologue
    .line 2109
    if-eqz p1, :cond_0

    .line 2110
    const v0, 0x20062

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 2108
    :cond_0
    return-void
.end method

.method disableLastNetwork()V
    .locals 2

    .prologue
    .line 8631
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStoppingState:Lcom/android/internal/util/State;

    if-eq v0, v1, :cond_0

    .line 8632
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigManager;->disableNetwork(I)Z

    .line 8630
    :cond_0
    return-void
.end method

.method public disconnectCommand()V
    .locals 1

    .prologue
    .line 2118
    const v0, 0x20049

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    .line 2117
    return-void
.end method

.method public disconnectCommand(II)V
    .locals 1
    .param p1, "uid"    # I
    .param p2, "reason"    # I

    .prologue
    .line 2122
    const v0, 0x20049

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(III)V

    .line 2121
    return-void
.end method

.method doNetworkStatus(I)V
    .locals 1
    .param p1, "status"    # I

    .prologue
    .line 6671
    const v0, 0x20094

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(II)V

    .line 6670
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 2458
    if-eqz p3, :cond_0

    array-length v1, p3

    if-le v1, v3, :cond_0

    const-string/jumbo v1, "wifiMetricsProto"

    aget-object v2, p3, v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2459
    const-string/jumbo v1, "clean"

    aget-object v2, p3, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 2458
    if-eqz v1, :cond_0

    .line 2461
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->updateWifiMetrics()V

    .line 2462
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/wifi/WifiMetrics;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2463
    return-void

    .line 2465
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/util/StateMachine;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2466
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStateTracker:Lcom/android/server/wifi/SupplicantStateTracker;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/wifi/SupplicantStateTracker;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2467
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mLinkProperties "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2468
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mWifiInfo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2469
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mDhcpResults "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mDhcpResults:Landroid/net/DhcpResults;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2470
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mNetworkInfo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2471
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mLastSignalLevel "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastSignalLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2472
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mLastBssid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2473
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mLastNetworkId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2474
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mOperationalMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mOperationalMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2475
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mUserWantsSuspendOpt "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mUserWantsSuspendOpt:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2476
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mSuspendOptNeedsDisabled "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mSuspendOptNeedsDisabled:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2477
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Supplicant status "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiNative;->status(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2478
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mCountryCode:Lcom/android/server/wifi/WifiCountryCode;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiCountryCode;->getCountryCodeSentToDriver()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2479
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "CountryCode sent to driver "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mCountryCode:Lcom/android/server/wifi/WifiCountryCode;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiCountryCode;->getCountryCodeSentToDriver()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2488
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mConnectedModeGScanOffloadStarted "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mConnectedModeGScanOffloadStarted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2489
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mGScanPeriodMilli "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mGScanPeriodMilli:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2490
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWhiteListedSsids:[Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWhiteListedSsids:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_3

    .line 2491
    const-string/jumbo v1, "SSID whitelist :"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2492
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWhiteListedSsids:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 2493
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "       "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mWhiteListedSsids:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2492
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2481
    .end local v0    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mCountryCode:Lcom/android/server/wifi/WifiCountryCode;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiCountryCode;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 2482
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "CountryCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2483
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mCountryCode:Lcom/android/server/wifi/WifiCountryCode;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiCountryCode;->getCountryCode()Ljava/lang/String;

    move-result-object v2

    .line 2482
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2483
    const-string/jumbo v2, " was not sent to driver"

    .line 2482
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2485
    :cond_2
    const-string/jumbo v1, "CountryCode was not initialized"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2496
    :cond_3
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkFactory:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkFactory;

    if-eqz v1, :cond_5

    .line 2497
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkFactory:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkFactory;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkFactory;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2502
    :goto_2
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mUntrustedNetworkFactory:Lcom/android/server/wifi/WifiStateMachine$UntrustedWifiNetworkFactory;

    if-eqz v1, :cond_6

    .line 2503
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mUntrustedNetworkFactory:Lcom/android/server/wifi/WifiStateMachine$UntrustedWifiNetworkFactory;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/wifi/WifiStateMachine$UntrustedWifiNetworkFactory;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2507
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Wlan Wake Reasons:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiNative;->getWlanWakeReasonCount()Landroid/net/wifi/WifiWakeReasonAndCounts;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2508
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2509
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->updateWifiMetrics()V

    .line 2510
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/wifi/WifiMetrics;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2511
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2513
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/wifi/WifiConfigManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2514
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2515
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiLogger:Lcom/android/server/wifi/BaseWifiLogger;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/BaseWifiLogger;->captureBugReportData(I)V

    .line 2516
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiLogger:Lcom/android/server/wifi/BaseWifiLogger;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/wifi/BaseWifiLogger;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2517
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiQualifiedNetworkSelector:Lcom/android/server/wifi/WifiQualifiedNetworkSelector;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2518
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wifi/WifiStateMachine;->dumpIpManager(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2519
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConnectivityManager:Lcom/android/server/wifi/WifiConnectivityManager;

    if-eqz v1, :cond_4

    .line 2520
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConnectivityManager:Lcom/android/server/wifi/WifiConnectivityManager;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/wifi/WifiConnectivityManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2457
    :cond_4
    return-void

    .line 2499
    :cond_5
    const-string/jumbo v1, "mNetworkFactory is not initialized"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 2505
    :cond_6
    const-string/jumbo v1, "mUntrustedNetworkFactory is not initialized"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3
.end method

.method public dumpIpManager(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 2453
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mIpManager:Landroid/net/ip/IpManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/net/ip/IpManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2452
    return-void
.end method

.method enableAggressiveHandover(I)V
    .locals 0
    .param p1, "enabled"    # I

    .prologue
    .line 1452
    iput p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mAggressiveHandover:I

    .line 1451
    return-void
.end method

.method public enableAllNetworks()V
    .locals 1

    .prologue
    .line 2292
    const v0, 0x20037

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    .line 2291
    return-void
.end method

.method public enableRssiPolling(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    const/4 v1, 0x0

    .line 2288
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const v2, 0x20052

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(III)V

    .line 2287
    return-void

    :cond_0
    move v0, v1

    .line 2288
    goto :goto_0
.end method

.method public enableTdls(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "remoteMacAddress"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    .prologue
    const/4 v1, 0x0

    .line 2360
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    .line 2361
    .local v0, "enabler":I
    :goto_0
    const v2, 0x2005c

    invoke-virtual {p0, v2, v0, v1, p1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(IIILjava/lang/Object;)V

    .line 2359
    return-void

    .end local v0    # "enabler":I
    :cond_0
    move v0, v1

    .line 2360
    goto :goto_0
.end method

.method enableVerboseLogging(I)V
    .locals 3
    .param p1, "verbose"    # I

    .prologue
    .line 1372
    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mVerboseLoggingLevel:I

    if-ne v0, p1, :cond_0

    .line 1375
    return-void

    .line 1377
    :cond_0
    iput p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mVerboseLoggingLevel:I

    .line 1378
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mFacade:Lcom/android/server/wifi/FrameworkFacade;

    .line 1379
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "wifi_verbose_logging_enabled"

    .line 1378
    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/wifi/FrameworkFacade;->setIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)Z

    .line 1380
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->updateLoggingLevel()V

    .line 1371
    return-void
.end method

.method public enableWifiConnectivityManager(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 8491
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const v1, 0x200a6

    invoke-virtual {p0, v1, v0}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(II)V

    .line 8490
    return-void

    .line 8491
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getAggressiveHandover()I
    .locals 1

    .prologue
    .line 1448
    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mAggressiveHandover:I

    return v0
.end method

.method public getAllowScansWithTraffic()I
    .locals 1

    .prologue
    .line 1464
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigManager;->mAlwaysEnableScansWhileAssociated:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public getConfigFile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2375
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiConfigManager;->getConfigFile()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getCurrentBSSID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5572
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->linkDebouncing:Z

    if-eqz v0, :cond_0

    .line 5573
    const/4 v0, 0x0

    return-object v0

    .line 5575
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentNetwork()Landroid/net/Network;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2333
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkAgent:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    if-eqz v0, :cond_0

    .line 2334
    new-instance v0, Landroid/net/Network;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkAgent:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    iget v1, v1, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->netId:I

    invoke-direct {v0, v1}, Landroid/net/Network;-><init>(I)V

    return-object v0

    .line 2336
    :cond_0
    return-object v1
.end method

.method getCurrentScanResult()Landroid/net/wifi/ScanResult;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 5553
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 5554
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v1, :cond_0

    .line 5555
    return-object v4

    .line 5557
    :cond_0
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v0

    .line 5558
    .local v0, "BSSID":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 5559
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mTargetRoamBSSID:Ljava/lang/String;

    .line 5562
    :cond_1
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    invoke-virtual {v3, v1}, Lcom/android/server/wifi/WifiConfigManager;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v2

    .line 5564
    .local v2, "scanDetailCache":Lcom/android/server/wifi/ScanDetailCache;
    if-nez v2, :cond_2

    .line 5565
    return-object v4

    .line 5568
    :cond_2
    invoke-virtual {v2, v0}, Lcom/android/server/wifi/ScanDetailCache;->get(Ljava/lang/String;)Landroid/net/wifi/ScanResult;

    move-result-object v3

    return-object v3
.end method

.method public getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;
    .locals 2

    .prologue
    .line 5546
    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 5547
    const/4 v0, 0x0

    return-object v0

    .line 5549
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigManager;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public getDisconnectedTimeMilli()J
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 1597
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;

    if-ne v2, v3, :cond_0

    .line 1598
    iget-wide v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mDisconnectedTimeStamp:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 1599
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1600
    .local v0, "now_ms":J
    iget-wide v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mDisconnectedTimeStamp:J

    sub-long v2, v0, v2

    return-wide v2

    .line 1602
    .end local v0    # "now_ms":J
    :cond_0
    return-wide v4
.end method

.method public getEnableAutoJoinWhenAssociated()Z
    .locals 1

    .prologue
    .line 1476
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiConfigManager;->getEnableAutoJoinWhenAssociated()Z

    move-result v0

    return v0
.end method

.method public getFrequencyBand()I
    .locals 1

    .prologue
    .line 2368
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mFrequencyBand:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method getGsmSimAuthResponse([Ljava/lang/String;Landroid/telephony/TelephonyManager;)Ljava/lang/String;
    .locals 19
    .param p1, "requestData"    # [Ljava/lang/String;
    .param p2, "tm"    # Landroid/telephony/TelephonyManager;

    .prologue
    .line 8291
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 8292
    .local v11, "sb":Ljava/lang/StringBuilder;
    const/4 v15, 0x0

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v16, v0

    :goto_0
    move/from16 v0, v16

    if-ge v15, v0, :cond_8

    aget-object v4, p1, v15

    .line 8293
    .local v4, "challenge":Ljava/lang/String;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_1

    .line 8292
    :cond_0
    :goto_1
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 8296
    :cond_1
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "RAND = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 8298
    const/4 v9, 0x0

    .line 8300
    .local v9, "rand":[B
    :try_start_0
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/wifi/WifiStateMachine;->parseHex(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 8307
    .local v9, "rand":[B
    const/16 v17, 0x2

    .line 8306
    move/from16 v0, v17

    invoke-static {v9, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    .line 8310
    .local v3, "base64Challenge":Ljava/lang/String;
    const/16 v17, 0x2

    .line 8311
    const/16 v18, 0x80

    .line 8310
    move-object/from16 v0, p2

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2, v3}, Landroid/telephony/TelephonyManager;->getIccAuthentication(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 8312
    .local v14, "tmResponse":Ljava/lang/String;
    if-nez v14, :cond_2

    .line 8315
    const/16 v17, 0x1

    .line 8316
    const/16 v18, 0x80

    .line 8315
    move-object/from16 v0, p2

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2, v3}, Landroid/telephony/TelephonyManager;->getIccAuthentication(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 8318
    :cond_2
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Raw Response - "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->logv(Ljava/lang/String;)V

    .line 8320
    if-eqz v14, :cond_3

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v17

    const/16 v18, 0x4

    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_4

    .line 8321
    :cond_3
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "bad response - "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 8322
    const/4 v15, 0x0

    return-object v15

    .line 8301
    .end local v3    # "base64Challenge":Ljava/lang/String;
    .end local v14    # "tmResponse":Ljava/lang/String;
    .local v9, "rand":[B
    :catch_0
    move-exception v5

    .line 8302
    .local v5, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v17, "malformed challenge"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 8325
    .end local v5    # "e":Ljava/lang/NumberFormatException;
    .restart local v3    # "base64Challenge":Ljava/lang/String;
    .local v9, "rand":[B
    .restart local v14    # "tmResponse":Ljava/lang/String;
    :cond_4
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-static {v14, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v10

    .line 8326
    .local v10, "result":[B
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Hex Response -"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {v10}, Lcom/android/server/wifi/WifiStateMachine;->makeHex([B)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->logv(Ljava/lang/String;)V

    .line 8327
    const/16 v17, 0x0

    aget-byte v13, v10, v17

    .line 8328
    .local v13, "sres_len":I
    array-length v0, v10

    move/from16 v17, v0

    move/from16 v0, v17

    if-lt v13, v0, :cond_5

    .line 8329
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "malfomed response - "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 8330
    const/4 v15, 0x0

    return-object v15

    .line 8332
    :cond_5
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-static {v10, v0, v13}, Lcom/android/server/wifi/WifiStateMachine;->makeHex([BII)Ljava/lang/String;

    move-result-object v12

    .line 8333
    .local v12, "sres":Ljava/lang/String;
    add-int/lit8 v8, v13, 0x1

    .line 8334
    .local v8, "kc_offset":I
    array-length v0, v10

    move/from16 v17, v0

    move/from16 v0, v17

    if-lt v8, v0, :cond_6

    .line 8335
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "malfomed response - "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 8336
    const/4 v15, 0x0

    return-object v15

    .line 8338
    :cond_6
    aget-byte v7, v10, v8

    .line 8339
    .local v7, "kc_len":I
    add-int v17, v8, v7

    array-length v0, v10

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_7

    .line 8340
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "malfomed response - "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 8341
    const/4 v15, 0x0

    return-object v15

    .line 8343
    :cond_7
    add-int/lit8 v17, v8, 0x1

    move/from16 v0, v17

    invoke-static {v10, v0, v7}, Lcom/android/server/wifi/WifiStateMachine;->makeHex([BII)Ljava/lang/String;

    move-result-object v6

    .line 8344
    .local v6, "kc":Ljava/lang/String;
    const-string/jumbo v17, ":"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, ":"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8345
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "kc:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, " sres:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->logv(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 8348
    .end local v3    # "base64Challenge":Ljava/lang/String;
    .end local v4    # "challenge":Ljava/lang/String;
    .end local v6    # "kc":Ljava/lang/String;
    .end local v7    # "kc_len":I
    .end local v8    # "kc_offset":I
    .end local v9    # "rand":[B
    .end local v10    # "result":[B
    .end local v12    # "sres":Ljava/lang/String;
    .end local v13    # "sres_len":I
    .end local v14    # "tmResponse":Ljava/lang/String;
    :cond_8
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    return-object v15
.end method

.method protected getLogRecString(Landroid/os/Message;)Ljava/lang/String;
    .locals 28
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 2562
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    .line 2563
    .local v20, "sb":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mScreenOn:Z

    move/from16 v23, v0

    if-eqz v23, :cond_0

    .line 2564
    const-string/jumbo v23, "!"

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2566
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I

    move/from16 v23, v0

    sget v24, Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_UNKNOWN:I

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_1

    .line 2567
    const-string/jumbo v23, "("

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, ")"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2569
    :cond_1
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wifi/WifiStateMachine;->smToString(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2570
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v23, v0

    if-lez v23, :cond_2

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v23, v0

    const/16 v24, 0x3f2

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_2

    .line 2571
    const-string/jumbo v23, " uid="

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2573
    :cond_2
    const-string/jumbo v23, " "

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiStateMachine;->printTime()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2574
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v23, v0

    sparse-switch v23, :sswitch_data_0

    .line 3067
    const-string/jumbo v23, " "

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3068
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3069
    const-string/jumbo v23, " "

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3070
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3074
    :cond_3
    :goto_0
    :sswitch_0
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    return-object v23

    .line 2576
    :sswitch_1
    const-string/jumbo v23, " "

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2577
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2578
    const-string/jumbo v23, " "

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2579
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2580
    const-string/jumbo v23, " autojoinAllowed="

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2581
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/server/wifi/WifiConfigManager;->getEnableAutoJoinWhenAssociated()Z

    move-result v23

    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2582
    const-string/jumbo v23, " withTraffic="

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiStateMachine;->getAllowScansWithTraffic()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2583
    const-string/jumbo v23, " tx="

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    move-wide/from16 v24, v0

    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 2584
    const-string/jumbo v23, "/"

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const/16 v24, 0x8

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2585
    const-string/jumbo v23, " rx="

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->rxSuccessRate:D

    move-wide/from16 v24, v0

    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 2586
    const-string/jumbo v23, "/"

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const/16 v24, 0x10

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2587
    const-string/jumbo v23, " -> "

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mConnectedModeGScanOffloadStarted:Z

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 2590
    :sswitch_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    .line 2591
    .local v16, "now":Ljava/lang/Long;
    const-string/jumbo v23, " "

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2592
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2593
    const-string/jumbo v23, " "

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2594
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2595
    const-string/jumbo v23, " ic="

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2596
    sget v23, Lcom/android/server/wifi/WifiStateMachine;->sScanAlarmIntentCount:I

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2597
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v23, v0

    if-eqz v23, :cond_4

    .line 2598
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/Bundle;

    .line 2599
    .local v5, "bundle":Landroid/os/Bundle;
    const-string/jumbo v23, "scan_request_time"

    const-wide/16 v24, 0x0

    move-object/from16 v0, v23

    move-wide/from16 v1, v24

    invoke-virtual {v5, v0, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    .line 2600
    .local v18, "request":Ljava/lang/Long;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    const-wide/16 v26, 0x0

    cmp-long v23, v24, v26

    if-eqz v23, :cond_4

    .line 2601
    const-string/jumbo v23, " proc(ms):"

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    sub-long v24, v24, v26

    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2604
    .end local v5    # "bundle":Landroid/os/Bundle;
    .end local v18    # "request":Ljava/lang/Long;
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mIsScanOngoing:Z

    move/from16 v23, v0

    if-eqz v23, :cond_5

    const-string/jumbo v23, " onGoing"

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2605
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mIsFullScanOngoing:Z

    move/from16 v23, v0

    if-eqz v23, :cond_6

    const-string/jumbo v23, " full"

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2606
    :cond_6
    const-string/jumbo v23, " rssi="

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2607
    const-string/jumbo v23, " f="

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2608
    const-string/jumbo v23, " sc="

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/net/wifi/WifiInfo;->score:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2609
    const-string/jumbo v23, " link="

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2610
    const-string/jumbo v23, " tx=%.1f,"

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v25

    const/16 v26, 0x0

    aput-object v25, v24, v26

    invoke-static/range {v23 .. v24}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2611
    const-string/jumbo v23, " %.1f,"

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->txRetriesRate:D

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v25

    const/16 v26, 0x0

    aput-object v25, v24, v26

    invoke-static/range {v23 .. v24}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2612
    const-string/jumbo v23, " %.1f "

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->txBadRate:D

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v25

    const/16 v26, 0x0

    aput-object v25, v24, v26

    invoke-static/range {v23 .. v24}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2613
    const-string/jumbo v23, " rx=%.1f"

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->rxSuccessRate:D

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v25

    const/16 v26, 0x0

    aput-object v25, v24, v26

    invoke-static/range {v23 .. v24}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2614
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->lastScanFreqs:Ljava/util/Set;

    move-object/from16 v23, v0

    if-eqz v23, :cond_7

    .line 2615
    const-string/jumbo v23, " list="

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2616
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->lastScanFreqs:Ljava/util/Set;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "freq$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_7

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Integer;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 2617
    .local v11, "freq":I
    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, ","

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 2620
    .end local v11    # "freq":I
    .end local v12    # "freq$iterator":Ljava/util/Iterator;
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiStateMachine;->reportOnTime()Ljava/lang/String;

    move-result-object v17

    .line 2621
    .local v17, "report":Ljava/lang/String;
    if-eqz v17, :cond_3

    .line 2622
    const-string/jumbo v23, " "

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 2626
    .end local v16    # "now":Ljava/lang/Long;
    .end local v17    # "report":Ljava/lang/String;
    :sswitch_3
    const-string/jumbo v23, " "

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2627
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2628
    const-string/jumbo v23, " "

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2629
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2630
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Lcom/android/server/wifi/StateChangeResult;

    .line 2631
    .local v22, "stateChangeResult":Lcom/android/server/wifi/StateChangeResult;
    if-eqz v22, :cond_3

    .line 2632
    invoke-virtual/range {v22 .. v22}, Lcom/android/server/wifi/StateChangeResult;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 2637
    .end local v22    # "stateChangeResult":Lcom/android/server/wifi/StateChangeResult;
    :sswitch_4
    const-string/jumbo v23, " "

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2638
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2639
    const-string/jumbo v23, " "

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2640
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2641
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->lastSavedConfigurationAttempt:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v23, v0

    if-eqz v23, :cond_3

    .line 2642
    const-string/jumbo v23, " "

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->lastSavedConfigurationAttempt:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2643
    const-string/jumbo v23, " nid="

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->lastSavedConfigurationAttempt:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2644
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->lastSavedConfigurationAttempt:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    move/from16 v23, v0

    if-eqz v23, :cond_8

    .line 2645
    const-string/jumbo v23, " hidden"

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2647
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->lastSavedConfigurationAttempt:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    move-object/from16 v23, v0

    if-eqz v23, :cond_9

    .line 2648
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->lastSavedConfigurationAttempt:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    move-object/from16 v23, v0

    const-string/jumbo v24, "*"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_c

    .line 2651
    :cond_9
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->lastSavedConfigurationAttempt:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    move/from16 v23, v0

    if-eqz v23, :cond_a

    .line 2652
    const-string/jumbo v23, " ephemeral"

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2654
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->lastSavedConfigurationAttempt:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->selfAdded:Z

    move/from16 v23, v0

    if-eqz v23, :cond_b

    .line 2655
    const-string/jumbo v23, " selfAdded"

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2657
    :cond_b
    const-string/jumbo v23, " cuid="

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->lastSavedConfigurationAttempt:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2658
    const-string/jumbo v23, " suid="

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->lastSavedConfigurationAttempt:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->lastUpdateUid:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 2649
    :cond_c
    const-string/jumbo v23, " hasPSK"

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 2662
    :sswitch_5
    const-string/jumbo v23, " "

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2663
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2664
    const-string/jumbo v23, " "

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2665
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2666
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->lastForgetConfigurationAttempt:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v23, v0

    if-eqz v23, :cond_3

    .line 2667
    const-string/jumbo v23, " "

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->lastForgetConfigurationAttempt:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2668
    const-string/jumbo v23, " nid="

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->lastForgetConfigurationAttempt:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2669
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->lastForgetConfigurationAttempt:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    move/from16 v23, v0

    if-eqz v23, :cond_d

    .line 2670
    const-string/jumbo v23, " hidden"

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2672
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->lastForgetConfigurationAttempt:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    move-object/from16 v23, v0

    if-eqz v23, :cond_e

    .line 2673
    const-string/jumbo v23, " hasPSK"

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2675
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->lastForgetConfigurationAttempt:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    move/from16 v23, v0

    if-eqz v23, :cond_f

    .line 2676
    const-string/jumbo v23, " ephemeral"

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2678
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->lastForgetConfigurationAttempt:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->selfAdded:Z

    move/from16 v23, v0

    if-eqz v23, :cond_10

    .line 2679
    const-string/jumbo v23, " selfAdded"

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2681
    :cond_10
    const-string/jumbo v23, " cuid="

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->lastForgetConfigurationAttempt:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2682
    const-string/jumbo v23, " suid="

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->lastForgetConfigurationAttempt:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->lastUpdateUid:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2684
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->lastForgetConfigurationAttempt:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v15

    .line 2685
    .local v15, "netWorkSelectionStatus":Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
    const-string/jumbo v23, " ajst="

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 2686
    invoke-virtual {v15}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkStatusString()Ljava/lang/String;

    move-result-object v24

    .line 2685
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 2690
    .end local v15    # "netWorkSelectionStatus":Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
    :sswitch_6
    const-string/jumbo v23, " "

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2691
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2692
    const-string/jumbo v23, " "

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2693
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2694
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .line 2695
    .local v4, "bssid":Ljava/lang/String;
    if-eqz v4, :cond_11

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v23

    if-lez v23, :cond_11

    .line 2696
    const-string/jumbo v23, " "

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2697
    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2699
    :cond_11
    const-string/jumbo v23, " blacklist="

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wifi/WifiStateMachine;->didBlackListBSSID:Z

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 2702
    .end local v4    # "bssid":Ljava/lang/String;
    :sswitch_7
    const-string/jumbo v23, " "

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2703
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2704
    const-string/jumbo v23, " "

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2705
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2706
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mScanResults:Ljava/util/List;

    move-object/from16 v23, v0

    if-eqz v23, :cond_12

    .line 2707
    const-string/jumbo v23, " found="

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2708
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mScanResults:Ljava/util/List;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v23

    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2710
    :cond_12
    const-string/jumbo v23, " known="

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mNumScanResultsKnown:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2711
    const-string/jumbo v23, " got="

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mNumScanResultsReturned:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2712
    const-string/jumbo v23, " bcn=%d"

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mRunningBeaconCount:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x0

    aput-object v25, v24, v26

    invoke-static/range {v23 .. v24}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2713
    const-string/jumbo v23, " con=%d"

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mConnectionReqCount:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x0

    aput-object v25, v24, v26

    invoke-static/range {v23 .. v24}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2714
    const-string/jumbo v23, " untrustedcn=%d"

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mUntrustedReqCount:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x0

    aput-object v25, v24, v26

    invoke-static/range {v23 .. v24}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2715
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/server/wifi/WifiConfigManager;->getLastSelectedConfiguration()Ljava/lang/String;

    move-result-object v14

    .line 2716
    .local v14, "key":Ljava/lang/String;
    if-eqz v14, :cond_3

    .line 2717
    const-string/jumbo v23, " last="

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 2723
    .end local v14    # "key":Ljava/lang/String;
    :sswitch_8
    const-string/jumbo v23, " "

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2724
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2725
    const-string/jumbo v23, " "

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2726
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2727
    const-string/jumbo v23, " "

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2728
    const-string/jumbo v23, " nid="

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2729
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v7

    .line 2730
    .local v7, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v7, :cond_13

    .line 2731
    const-string/jumbo v23, " "

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v7}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2733
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/server/wifi/WifiConfigManager;->getLastSelectedConfiguration()Ljava/lang/String;

    move-result-object v14

    .line 2734
    .restart local v14    # "key":Ljava/lang/String;
    if-eqz v14, :cond_3

    .line 2735
    const-string/jumbo v23, " last="

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 2740
    .end local v7    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v14    # "key":Ljava/lang/String;
    :sswitch_9
    const-string/jumbo v23, " "

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2741
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2742
    const-string/jumbo v23, " "

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2743
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2744
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v23, v0

    if-eqz v23, :cond_14

    .line 2745
    const-string/jumbo v23, " BSSID="

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Ljava/lang/String;

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2747
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mTargetRoamBSSID:Ljava/lang/String;

    move-object/from16 v23, v0

    if-eqz v23, :cond_15

    .line 2748
    const-string/jumbo v23, " Target="

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mTargetRoamBSSID:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2750
    :cond_15
    const-string/jumbo v23, " roam="

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mAutoRoaming:Z

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 2753
    :sswitch_a
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v23, v0

    if-eqz v23, :cond_16

    .line 2754
    const-string/jumbo v23, " "

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Ljava/lang/String;

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2756
    :cond_16
    const-string/jumbo v23, " nid="

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2757
    const-string/jumbo v23, " reason="

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2758
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;

    move-object/from16 v23, v0

    if-eqz v23, :cond_17

    .line 2759
    const-string/jumbo v23, " lastbssid="

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2761
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v23

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_18

    .line 2762
    const-string/jumbo v23, " freq="

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2763
    const-string/jumbo v23, " rssi="

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2765
    :cond_18
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wifi/WifiStateMachine;->linkDebouncing:Z

    move/from16 v23, v0

    if-eqz v23, :cond_3

    .line 2766
    const-string/jumbo v23, " debounce"

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 2771
    :sswitch_b
    const-string/jumbo v23, " nid="

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2772
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v23, v0

    if-eqz v23, :cond_19

    .line 2773
    const-string/jumbo v23, " "

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Ljava/lang/String;

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2775
    :cond_19
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v7

    .line 2776
    .restart local v7    # "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v7, :cond_3

    .line 2778
    invoke-virtual {v7}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v15

    .line 2779
    .restart local v15    # "netWorkSelectionStatus":Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
    const-string/jumbo v23, " cur="

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v7}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2780
    const-string/jumbo v23, " ajst="

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v15}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkStatusString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2781
    iget-boolean v0, v7, Landroid/net/wifi/WifiConfiguration;->selfAdded:Z

    move/from16 v23, v0

    if-eqz v23, :cond_1a

    .line 2782
    const-string/jumbo v23, " selfAdded"

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2784
    :cond_1a
    iget v0, v7, Landroid/net/wifi/WifiConfiguration;->status:I

    move/from16 v23, v0

    if-eqz v23, :cond_1b

    .line 2785
    const-string/jumbo v23, " st="

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    iget v0, v7, Landroid/net/wifi/WifiConfiguration;->status:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2786
    const-string/jumbo v23, " rs="

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 2787
    invoke-virtual {v15}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkDisableReasonString()Ljava/lang/String;

    move-result-object v24

    .line 2786
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2789
    :cond_1b
    iget-wide v0, v7, Landroid/net/wifi/WifiConfiguration;->lastConnected:J

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x0

    cmp-long v23, v24, v26

    if-eqz v23, :cond_1c

    .line 2790
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    .line 2791
    .restart local v16    # "now":Ljava/lang/Long;
    const-string/jumbo v23, " lastconn="

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    iget-wide v0, v7, Landroid/net/wifi/WifiConfiguration;->lastConnected:J

    move-wide/from16 v26, v0

    sub-long v24, v24, v26

    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, "(ms)"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2793
    .end local v16    # "now":Ljava/lang/Long;
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;

    move-object/from16 v23, v0

    if-eqz v23, :cond_1d

    .line 2794
    const-string/jumbo v23, " lastbssid="

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2796
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v23

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_3

    .line 2797
    const-string/jumbo v23, " freq="

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2798
    const-string/jumbo v23, " rssi="

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2799
    const-string/jumbo v23, " bssid="

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 2806
    .end local v7    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v15    # "netWorkSelectionStatus":Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
    :sswitch_c
    const-string/jumbo v23, " "

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2807
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2808
    const-string/jumbo v23, " "

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2809
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2810
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v23

    if-eqz v23, :cond_1e

    .line 2811
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v23

    if-eqz v23, :cond_1e

    .line 2812
    const-string/jumbo v23, " "

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2813
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v23

    if-eqz v23, :cond_1f

    .line 2814
    const-string/jumbo v23, " "

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2815
    :cond_1f
    const-string/jumbo v23, " rssi="

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2816
    const-string/jumbo v23, " f="

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2817
    const-string/jumbo v23, " sc="

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/net/wifi/WifiInfo;->score:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2818
    const-string/jumbo v23, " link="

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2819
    const-string/jumbo v23, " tx=%.1f,"

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v25

    const/16 v26, 0x0

    aput-object v25, v24, v26

    invoke-static/range {v23 .. v24}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2820
    const-string/jumbo v23, " %.1f,"

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->txRetriesRate:D

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v25

    const/16 v26, 0x0

    aput-object v25, v24, v26

    invoke-static/range {v23 .. v24}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2821
    const-string/jumbo v23, " %.1f "

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->txBadRate:D

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v25

    const/16 v26, 0x0

    aput-object v25, v24, v26

    invoke-static/range {v23 .. v24}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2822
    const-string/jumbo v23, " rx=%.1f"

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->rxSuccessRate:D

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v25

    const/16 v26, 0x0

    aput-object v25, v24, v26

    invoke-static/range {v23 .. v24}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2823
    const-string/jumbo v23, " bcn=%d"

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mRunningBeaconCount:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x0

    aput-object v25, v24, v26

    invoke-static/range {v23 .. v24}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2824
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiStateMachine;->reportOnTime()Ljava/lang/String;

    move-result-object v17

    .line 2825
    .restart local v17    # "report":Ljava/lang/String;
    if-eqz v17, :cond_20

    .line 2826
    const-string/jumbo v23, " "

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2828
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiScoreReport:Lcom/android/server/wifi/WifiScoreReport;

    move-object/from16 v23, v0

    if-eqz v23, :cond_21

    .line 2829
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiScoreReport:Lcom/android/server/wifi/WifiScoreReport;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/server/wifi/WifiScoreReport;->getReport()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2831
    :cond_21
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mConnectedModeGScanOffloadStarted:Z

    move/from16 v23, v0

    if-eqz v23, :cond_22

    .line 2832
    const-string/jumbo v23, " offload-started periodMilli "

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mGScanPeriodMilli:J

    move-wide/from16 v24, v0

    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 2834
    :cond_22
    const-string/jumbo v23, " offload-stopped"

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 2839
    .end local v17    # "report":Ljava/lang/String;
    :sswitch_d
    const-string/jumbo v23, " "

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2840
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2841
    const-string/jumbo v23, " "

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2842
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2843
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    move-object/from16 v23, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Lcom/android/server/wifi/WifiConfigManager;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v7

    .line 2844
    .restart local v7    # "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v7, :cond_23

    .line 2845
    const-string/jumbo v23, " "

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v7}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2846
    iget-object v0, v7, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    move-object/from16 v23, v0

    if-eqz v23, :cond_23

    .line 2847
    const-string/jumbo v23, " "

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    iget-object v0, v7, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/net/wifi/WifiConfiguration$Visibility;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2850
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mTargetRoamBSSID:Ljava/lang/String;

    move-object/from16 v23, v0

    if-eqz v23, :cond_24

    .line 2851
    const-string/jumbo v23, " "

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mTargetRoamBSSID:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2853
    :cond_24
    const-string/jumbo v23, " roam="

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mAutoRoaming:Z

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2854
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v7

    .line 2855
    if-eqz v7, :cond_3

    .line 2856
    invoke-virtual {v7}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2857
    iget-object v0, v7, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    move-object/from16 v23, v0

    if-eqz v23, :cond_3

    .line 2858
    const-string/jumbo v23, " "

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    iget-object v0, v7, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/net/wifi/WifiConfiguration$Visibility;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 2863
    .end local v7    # "config":Landroid/net/wifi/WifiConfiguration;
    :sswitch_e
    const-string/jumbo v23, " "

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2864
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2865
    const-string/jumbo v23, " "

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2866
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2867
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Landroid/net/wifi/ScanResult;

    .line 2868
    .local v19, "result":Landroid/net/wifi/ScanResult;
    if-eqz v19, :cond_25

    .line 2869
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    .line 2870
    .restart local v16    # "now":Ljava/lang/Long;
    const-string/jumbo v23, " bssid="

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2871
    const-string/jumbo v23, " rssi="

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v19

    iget v0, v0, Landroid/net/wifi/ScanResult;->level:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2872
    const-string/jumbo v23, " freq="

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v19

    iget v0, v0, Landroid/net/wifi/ScanResult;->frequency:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2873
    move-object/from16 v0, v19

    iget-wide v0, v0, Landroid/net/wifi/ScanResult;->seen:J

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x0

    cmp-long v23, v24, v26

    if-lez v23, :cond_27

    move-object/from16 v0, v19

    iget-wide v0, v0, Landroid/net/wifi/ScanResult;->seen:J

    move-wide/from16 v24, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    cmp-long v23, v24, v26

    if-gez v23, :cond_27

    .line 2874
    const-string/jumbo v23, " seen="

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    move-object/from16 v0, v19

    iget-wide v0, v0, Landroid/net/wifi/ScanResult;->seen:J

    move-wide/from16 v26, v0

    sub-long v24, v24, v26

    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2880
    .end local v16    # "now":Ljava/lang/Long;
    :cond_25
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mTargetRoamBSSID:Ljava/lang/String;

    move-object/from16 v23, v0

    if-eqz v23, :cond_26

    .line 2881
    const-string/jumbo v23, " "

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mTargetRoamBSSID:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2883
    :cond_26
    const-string/jumbo v23, " roam="

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mAutoRoaming:Z

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2884
    const-string/jumbo v23, " fail count="

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mRoamFailCount:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 2877
    .restart local v16    # "now":Ljava/lang/Long;
    :cond_27
    const-string/jumbo v23, " !seen="

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v19

    iget-wide v0, v0, Landroid/net/wifi/ScanResult;->seen:J

    move-wide/from16 v24, v0

    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 2887
    .end local v16    # "now":Ljava/lang/Long;
    .end local v19    # "result":Landroid/net/wifi/ScanResult;
    :sswitch_f
    const-string/jumbo v23, " "

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2888
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2889
    const-string/jumbo v23, " "

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2890
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2891
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v23, v0

    if-eqz v23, :cond_3

    .line 2892
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/net/wifi/WifiConfiguration;

    .line 2893
    .restart local v7    # "config":Landroid/net/wifi/WifiConfiguration;
    const-string/jumbo v23, " "

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v7}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2894
    const-string/jumbo v23, " prio="

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    iget v0, v7, Landroid/net/wifi/WifiConfiguration;->priority:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2895
    const-string/jumbo v23, " status="

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    iget v0, v7, Landroid/net/wifi/WifiConfiguration;->status:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2896
    iget-object v0, v7, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    move-object/from16 v23, v0

    if-eqz v23, :cond_28

    .line 2897
    const-string/jumbo v23, " "

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    iget-object v0, v7, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2899
    :cond_28
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v9

    .line 2900
    .local v9, "curConfig":Landroid/net/wifi/WifiConfiguration;
    if-eqz v9, :cond_3

    .line 2901
    invoke-virtual {v9}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v23

    invoke-virtual {v7}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_29

    .line 2902
    const-string/jumbo v23, " is current"

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 2904
    :cond_29
    const-string/jumbo v23, " current="

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v9}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2905
    const-string/jumbo v23, " prio="

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    iget v0, v9, Landroid/net/wifi/WifiConfiguration;->priority:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2906
    const-string/jumbo v23, " status="

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    iget v0, v9, Landroid/net/wifi/WifiConfiguration;->status:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 2913
    .end local v7    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v9    # "curConfig":Landroid/net/wifi/WifiConfiguration;
    :sswitch_10
    const-string/jumbo v23, " "

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2914
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2915
    const-string/jumbo v23, " "

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2916
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2917
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/server/wifi/WifiConfigManager;->getLastSelectedConfiguration()Ljava/lang/String;

    move-result-object v14

    .line 2918
    .restart local v14    # "key":Ljava/lang/String;
    if-eqz v14, :cond_2a

    .line 2919
    const-string/jumbo v23, " last="

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2921
    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    move-object/from16 v23, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Lcom/android/server/wifi/WifiConfigManager;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v7

    .line 2922
    .restart local v7    # "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v7, :cond_3

    if-eqz v14, :cond_2b

    invoke-virtual {v7}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_3

    .line 2923
    :cond_2b
    const-string/jumbo v23, " target="

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 2927
    .end local v7    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v14    # "key":Ljava/lang/String;
    :sswitch_11
    const-string/jumbo v23, " "

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2928
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2929
    const-string/jumbo v23, " "

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2930
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2931
    const-string/jumbo v23, " num="

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/wifi/WifiConfigManager;->getConfiguredNetworksSize()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 2934
    :sswitch_12
    const-string/jumbo v23, " "

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2935
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2936
    const-string/jumbo v23, " "

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2937
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2938
    const-string/jumbo v23, " txpkts="

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->txSuccess:J

    move-wide/from16 v24, v0

    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2939
    const-string/jumbo v23, ","

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->txBad:J

    move-wide/from16 v24, v0

    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2940
    const-string/jumbo v23, ","

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->txRetries:J

    move-wide/from16 v24, v0

    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 2943
    :sswitch_13
    const-string/jumbo v23, " "

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2944
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2945
    const-string/jumbo v23, " "

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2946
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2947
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_2d

    .line 2948
    const-string/jumbo v23, " OK "

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2952
    :cond_2c
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    move-object/from16 v23, v0

    if-eqz v23, :cond_3

    .line 2953
    const-string/jumbo v23, " "

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2954
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/server/wifi/WifiStateMachine;->getLinkPropertiesSummary(Landroid/net/LinkProperties;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 2949
    :cond_2d
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v23, v0

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_2c

    .line 2950
    const-string/jumbo v23, " FAIL "

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 2958
    :sswitch_14
    const-string/jumbo v23, " "

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2959
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2960
    const-string/jumbo v23, " "

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2961
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2962
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v23, v0

    if-eqz v23, :cond_3

    .line 2963
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/net/NetworkInfo;

    .line 2964
    .local v13, "info":Landroid/net/NetworkInfo;
    invoke-virtual {v13}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v21

    .line 2965
    .local v21, "state":Landroid/net/NetworkInfo$State;
    invoke-virtual {v13}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v10

    .line 2966
    .local v10, "detailedState":Landroid/net/NetworkInfo$DetailedState;
    if-eqz v21, :cond_2e

    .line 2967
    const-string/jumbo v23, " st="

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2969
    :cond_2e
    if-eqz v10, :cond_3

    .line 2970
    const-string/jumbo v23, "/"

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 2975
    .end local v10    # "detailedState":Landroid/net/NetworkInfo$DetailedState;
    .end local v13    # "info":Landroid/net/NetworkInfo;
    .end local v21    # "state":Landroid/net/NetworkInfo$State;
    :sswitch_15
    const/4 v8, -0x1

    .line 2976
    .local v8, "count":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v6

    .line 2977
    .local v6, "c":Landroid/net/wifi/WifiConfiguration;
    if-eqz v6, :cond_2f

    .line 2978
    invoke-virtual {v6}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v23

    .line 2979
    const/16 v24, 0x4

    .line 2978
    invoke-virtual/range {v23 .. v24}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getDisableReasonCounter(I)I

    move-result v8

    .line 2981
    :cond_2f
    const-string/jumbo v23, " "

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2982
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2983
    const-string/jumbo v23, " "

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2984
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2985
    const-string/jumbo v23, " failures: "

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2986
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2987
    const-string/jumbo v23, "/"

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2988
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/server/wifi/WifiConfigManager;->getMaxDhcpRetries()I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2989
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v23

    if-eqz v23, :cond_30

    .line 2990
    const-string/jumbo v23, " "

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2992
    :cond_30
    const-string/jumbo v23, " bcn=%d"

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mRunningBeaconCount:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x0

    aput-object v25, v24, v26

    invoke-static/range {v23 .. v24}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 2995
    .end local v6    # "c":Landroid/net/wifi/WifiConfiguration;
    .end local v8    # "count":I
    :sswitch_16
    const-string/jumbo v23, " "

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2996
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2997
    const-string/jumbo v23, " "

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2998
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2999
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    move-object/from16 v23, v0

    if-eqz v23, :cond_3

    .line 3000
    const-string/jumbo v23, " "

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3001
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/server/wifi/WifiStateMachine;->getLinkPropertiesSummary(Landroid/net/LinkProperties;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3005
    :sswitch_17
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v23, v0

    if-eqz v23, :cond_3

    .line 3006
    const-string/jumbo v23, " "

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Ljava/lang/String;

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3010
    :sswitch_18
    const-string/jumbo v23, " len="

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, [B

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    move-object/from16 v0, v24

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3013
    :sswitch_19
    const-string/jumbo v23, " enabled="

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Ljava/lang/Boolean;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v23

    move-object/from16 v0, v24

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3016
    :sswitch_1a
    const-string/jumbo v23, " "

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3017
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3018
    const-string/jumbo v23, " "

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3019
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3020
    const-string/jumbo v23, " cur="

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiStateMachine;->roamWatchdogCount:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3023
    :sswitch_1b
    const-string/jumbo v23, " "

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3024
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3025
    const-string/jumbo v23, " "

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3026
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3027
    const-string/jumbo v23, " cur="

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiStateMachine;->disconnectingWatchdogCount:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3032
    :sswitch_1c
    const-string/jumbo v23, " rssi="

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3033
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3034
    const-string/jumbo v23, " thresholds="

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3035
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mRssiRanges:[B

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3038
    :sswitch_1d
    const-string/jumbo v23, " userId="

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3039
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3042
    :sswitch_1e
    const-string/jumbo v23, " "

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3043
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_31

    .line 3044
    const-string/jumbo v23, "DHCP_OK"

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3045
    :cond_31
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v23, v0

    const v24, 0x2000f

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_32

    .line 3046
    const-string/jumbo v23, "STATIC_OK"

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3048
    :cond_32
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3052
    :sswitch_1f
    const-string/jumbo v23, " "

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3053
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v23, v0

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_33

    .line 3054
    const-string/jumbo v23, "DHCP_FAIL"

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3055
    :cond_33
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v23, v0

    const v24, 0x20010

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_34

    .line 3056
    const-string/jumbo v23, "STATIC_FAIL"

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3058
    :cond_34
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3062
    :sswitch_20
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v23, v0

    if-eqz v23, :cond_3

    .line 3063
    const-string/jumbo v23, " "

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Ljava/lang/String;

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 2574
    :sswitch_data_0
    .sparse-switch
        0x20034 -> :sswitch_f
        0x20036 -> :sswitch_10
        0x2003b -> :sswitch_11
        0x20047 -> :sswitch_2
        0x20053 -> :sswitch_c
        0x2005e -> :sswitch_1a
        0x20060 -> :sswitch_1b
        0x2008b -> :sswitch_15
        0x2008c -> :sswitch_16
        0x2008d -> :sswitch_9
        0x2008f -> :sswitch_d
        0x20090 -> :sswitch_c
        0x20091 -> :sswitch_e
        0x20092 -> :sswitch_4
        0x20093 -> :sswitch_9
        0x20095 -> :sswitch_17
        0x2009e -> :sswitch_1
        0x200a2 -> :sswitch_1c
        0x200a3 -> :sswitch_1c
        0x200a4 -> :sswitch_1c
        0x200a5 -> :sswitch_1d
        0x200c8 -> :sswitch_1e
        0x200c9 -> :sswitch_1f
        0x200ca -> :sswitch_18
        0x200cb -> :sswitch_19
        0x200cd -> :sswitch_20
        0x2300b -> :sswitch_14
        0x24003 -> :sswitch_8
        0x24004 -> :sswitch_a
        0x24005 -> :sswitch_7
        0x24006 -> :sswitch_3
        0x2400d -> :sswitch_b
        0x2400e -> :sswitch_b
        0x24011 -> :sswitch_0
        0x2402b -> :sswitch_6
        0x25001 -> :sswitch_d
        0x25004 -> :sswitch_5
        0x25007 -> :sswitch_4
        0x25011 -> :sswitch_10
        0x25014 -> :sswitch_c
        0x30003 -> :sswitch_12
        0x30004 -> :sswitch_13
    .end sparse-switch
.end method

.method public getMaxConfiguredScanCount()I
    .locals 1

    .prologue
    .line 430
    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mMaxInitialSavedChannelScan:I

    return v0
.end method

.method public getMessenger()Landroid/os/Messenger;
    .locals 2

    .prologue
    .line 1532
    new-instance v0, Landroid/os/Messenger;

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method

.method public getOperationalMode()I
    .locals 1

    .prologue
    .line 2038
    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mOperationalMode:I

    return v0
.end method

.method protected getOperationalModeForTest()I
    .locals 1

    .prologue
    .line 2046
    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mOperationalMode:I

    return v0
.end method

.method getPrivateBroadcast(Ljava/lang/String;I)Landroid/app/PendingIntent;
    .locals 4
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "requestCode"    # I

    .prologue
    .line 1361
    new-instance v0, Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1362
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1363
    const-string/jumbo v1, "android"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1364
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mFacade:Lcom/android/server/wifi/FrameworkFacade;

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p2, v0, v3}, Lcom/android/server/wifi/FrameworkFacade;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method public getRxPacketRate()D
    .locals 2

    .prologue
    .line 3404
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->rxSuccessRate:D

    return-wide v0
.end method

.method public getScanCount()I
    .locals 1

    .prologue
    .line 426
    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mNumSelectiveChannelScan:I

    return v0
.end method

.method public getSoftApStateMachine()Lcom/android/server/wifi/SoftApStateMachine;
    .locals 1

    .prologue
    .line 559
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mSoftApStateMachine:Lcom/android/server/wifi/SoftApStateMachine;

    return-object v0
.end method

.method public getTxPacketRate()D
    .locals 2

    .prologue
    .line 3400
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    return-wide v0
.end method

.method getVerboseLoggingLevel()I
    .locals 1

    .prologue
    .line 1368
    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mVerboseLoggingLevel:I

    return v0
.end method

.method public getWifiInfo()Landroid/net/wifi/WifiInfo;
    .locals 1

    .prologue
    .line 2006
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    return-object v0
.end method

.method getWifiLinkLayerStats(Z)Landroid/net/wifi/WifiLinkLayerStats;
    .locals 8
    .param p1, "dbg"    # Z

    .prologue
    .line 1671
    const/4 v5, 0x0

    .line 1672
    .local v5, "stats":Landroid/net/wifi/WifiLinkLayerStats;
    iget v6, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiLinkLayerStatsSupported:I

    if-lez v6, :cond_0

    .line 1673
    const-string/jumbo v4, "wlan0"

    .line 1674
    .local v4, "name":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v6, v4}, Lcom/android/server/wifi/WifiNative;->getWifiLinkLayerStats(Ljava/lang/String;)Landroid/net/wifi/WifiLinkLayerStats;

    move-result-object v5

    .line 1675
    .local v5, "stats":Landroid/net/wifi/WifiLinkLayerStats;
    if-eqz v4, :cond_2

    if-nez v5, :cond_2

    iget v6, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiLinkLayerStatsSupported:I

    if-lez v6, :cond_2

    .line 1676
    iget v6, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiLinkLayerStatsSupported:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiLinkLayerStatsSupported:I

    .line 1685
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "stats":Landroid/net/wifi/WifiLinkLayerStats;
    :cond_0
    :goto_0
    if-eqz v5, :cond_1

    iget v6, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiLinkLayerStatsSupported:I

    if-gtz v6, :cond_3

    .line 1686
    :cond_1
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine;->mFacade:Lcom/android/server/wifi/FrameworkFacade;

    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine;->mDataInterfaceName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/android/server/wifi/FrameworkFacade;->getTxPackets(Ljava/lang/String;)J

    move-result-wide v2

    .line 1687
    .local v2, "mTxPkts":J
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine;->mFacade:Lcom/android/server/wifi/FrameworkFacade;

    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine;->mDataInterfaceName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/android/server/wifi/FrameworkFacade;->getRxPackets(Ljava/lang/String;)J

    move-result-wide v0

    .line 1688
    .local v0, "mRxPkts":J
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v6, v2, v3, v0, v1}, Landroid/net/wifi/WifiInfo;->updatePacketRates(JJ)V

    .line 1692
    .end local v0    # "mRxPkts":J
    .end local v2    # "mTxPkts":J
    :goto_1
    return-object v5

    .line 1677
    .restart local v4    # "name":Ljava/lang/String;
    .restart local v5    # "stats":Landroid/net/wifi/WifiLinkLayerStats;
    :cond_2
    if-eqz v5, :cond_0

    .line 1678
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/server/wifi/WifiStateMachine;->lastLinkLayerStatsUpdate:J

    .line 1679
    iget v6, v5, Landroid/net/wifi/WifiLinkLayerStats;->on_time:I

    iput v6, p0, Lcom/android/server/wifi/WifiStateMachine;->mOnTime:I

    .line 1680
    iget v6, v5, Landroid/net/wifi/WifiLinkLayerStats;->tx_time:I

    iput v6, p0, Lcom/android/server/wifi/WifiStateMachine;->mTxTime:I

    .line 1681
    iget v6, v5, Landroid/net/wifi/WifiLinkLayerStats;->rx_time:I

    iput v6, p0, Lcom/android/server/wifi/WifiStateMachine;->mRxTime:I

    .line 1682
    iget v6, v5, Landroid/net/wifi/WifiLinkLayerStats;->beacon_rx:I

    iput v6, p0, Lcom/android/server/wifi/WifiStateMachine;->mRunningBeaconCount:I

    goto :goto_0

    .line 1690
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "stats":Landroid/net/wifi/WifiLinkLayerStats;
    :cond_3
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v6, v5}, Landroid/net/wifi/WifiInfo;->updatePacketRates(Landroid/net/wifi/WifiLinkLayerStats;)V

    goto :goto_1
.end method

.method handle3GAuthRequest(Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;)V
    .locals 26
    .param p1, "requestData"    # Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;

    .prologue
    .line 8381
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    .line 8382
    .local v20, "sb":Ljava/lang/StringBuilder;
    const/4 v14, 0x0

    .line 8383
    .local v14, "rand":[B
    const/4 v4, 0x0

    .line 8384
    .local v4, "authn":[B
    const-string/jumbo v17, "UMTS-AUTH"

    .line 8386
    .local v17, "res_type":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->targetWificonfiguration:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v24, v0

    if-eqz v24, :cond_0

    .line 8387
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->targetWificonfiguration:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v24, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;->networkId:I

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_2

    .line 8388
    :cond_0
    const-string/jumbo v24, "id matches targetWifiConfiguration"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 8393
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;->data:[Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    const/16 v25, 0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_3

    .line 8395
    :try_start_0
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;->data:[Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aget-object v24, v24, v25

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->parseHex(Ljava/lang/String;)[B

    move-result-object v14

    .line 8396
    .local v14, "rand":[B
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;->data:[Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    aget-object v24, v24, v25

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->parseHex(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 8404
    .end local v4    # "authn":[B
    .end local v14    # "rand":[B
    :goto_0
    const-string/jumbo v23, ""

    .line 8405
    .local v23, "tmResponse":Ljava/lang/String;
    if-eqz v14, :cond_1

    if-eqz v4, :cond_1

    .line 8407
    invoke-static {v14, v4}, Lcom/android/server/wifi/WifiStateMachine;->concatHex([B[B)[B

    move-result-object v24

    const/16 v25, 0x2

    .line 8406
    invoke-static/range {v24 .. v25}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v7

    .line 8410
    .local v7, "base64Challenge":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    const-string/jumbo v25, "phone"

    invoke-virtual/range {v24 .. v25}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    .line 8409
    check-cast v22, Landroid/telephony/TelephonyManager;

    .line 8411
    .local v22, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v22, :cond_4

    .line 8412
    const/16 v24, 0x2

    .line 8413
    const/16 v25, 0x81

    .line 8412
    move-object/from16 v0, v22

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2, v7}, Landroid/telephony/TelephonyManager;->getIccAuthentication(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 8414
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "Raw Response - "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->logv(Ljava/lang/String;)V

    .line 8420
    .end local v7    # "base64Challenge":Ljava/lang/String;
    .end local v22    # "tm":Landroid/telephony/TelephonyManager;
    :cond_1
    :goto_1
    const/4 v11, 0x0

    .line 8421
    .local v11, "good_response":Z
    if-eqz v23, :cond_7

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v24

    const/16 v25, 0x4

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_7

    .line 8423
    const/16 v24, 0x0

    .line 8422
    invoke-static/range {v23 .. v24}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v19

    .line 8424
    .local v19, "result":[B
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "Hex Response - "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-static/range {v19 .. v19}, Lcom/android/server/wifi/WifiStateMachine;->makeHex([B)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 8425
    const/16 v24, 0x0

    aget-byte v21, v19, v24

    .line 8426
    .local v21, "tag":B
    const/16 v24, -0x25

    move/from16 v0, v21

    move/from16 v1, v24

    if-ne v0, v1, :cond_5

    .line 8427
    const-string/jumbo v24, "successful 3G authentication "

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->logv(Ljava/lang/String;)V

    .line 8428
    const/16 v24, 0x1

    aget-byte v16, v19, v24

    .line 8429
    .local v16, "res_len":I
    const/16 v24, 0x2

    move-object/from16 v0, v19

    move/from16 v1, v24

    move/from16 v2, v16

    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->makeHex([BII)Ljava/lang/String;

    move-result-object v15

    .line 8430
    .local v15, "res":Ljava/lang/String;
    add-int/lit8 v24, v16, 0x2

    aget-byte v9, v19, v24

    .line 8431
    .local v9, "ck_len":I
    add-int/lit8 v24, v16, 0x3

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-static {v0, v1, v9}, Lcom/android/server/wifi/WifiStateMachine;->makeHex([BII)Ljava/lang/String;

    move-result-object v8

    .line 8432
    .local v8, "ck":Ljava/lang/String;
    add-int v24, v16, v9

    add-int/lit8 v24, v24, 0x3

    aget-byte v13, v19, v24

    .line 8433
    .local v13, "ik_len":I
    add-int v24, v16, v9

    add-int/lit8 v24, v24, 0x4

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-static {v0, v1, v13}, Lcom/android/server/wifi/WifiStateMachine;->makeHex([BII)Ljava/lang/String;

    move-result-object v12

    .line 8434
    .local v12, "ik":Ljava/lang/String;
    const-string/jumbo v24, ":"

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, ":"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, ":"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8435
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "ik:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, "ck:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, " res:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->logv(Ljava/lang/String;)V

    .line 8436
    const/4 v11, 0x1

    .line 8452
    .end local v8    # "ck":Ljava/lang/String;
    .end local v9    # "ck_len":I
    .end local v12    # "ik":Ljava/lang/String;
    .end local v13    # "ik_len":I
    .end local v15    # "res":Ljava/lang/String;
    .end local v16    # "res_len":I
    .end local v19    # "result":[B
    .end local v21    # "tag":B
    :goto_2
    if-eqz v11, :cond_8

    .line 8453
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 8454
    .local v18, "response":Ljava/lang/String;
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "Supplicant Response -"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->logv(Ljava/lang/String;)V

    .line 8455
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;->networkId:I

    move/from16 v25, v0

    move-object/from16 v0, v24

    move/from16 v1, v25

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiNative;->simAuthResponse(ILjava/lang/String;Ljava/lang/String;)Z

    .line 8380
    .end local v18    # "response":Ljava/lang/String;
    :goto_3
    return-void

    .line 8390
    .end local v11    # "good_response":Z
    .end local v23    # "tmResponse":Ljava/lang/String;
    .restart local v4    # "authn":[B
    .local v14, "rand":[B
    :cond_2
    const-string/jumbo v24, "id does not match targetWifiConfiguration"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 8391
    return-void

    .line 8397
    .end local v14    # "rand":[B
    :catch_0
    move-exception v10

    .line 8398
    .local v10, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v24, "malformed challenge"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 8401
    .end local v10    # "e":Ljava/lang/NumberFormatException;
    .restart local v14    # "rand":[B
    :cond_3
    const-string/jumbo v24, "malformed challenge"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 8416
    .end local v4    # "authn":[B
    .end local v14    # "rand":[B
    .restart local v7    # "base64Challenge":Ljava/lang/String;
    .restart local v22    # "tm":Landroid/telephony/TelephonyManager;
    .restart local v23    # "tmResponse":Ljava/lang/String;
    :cond_4
    const-string/jumbo v24, "could not get telephony manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 8437
    .end local v7    # "base64Challenge":Ljava/lang/String;
    .end local v22    # "tm":Landroid/telephony/TelephonyManager;
    .restart local v11    # "good_response":Z
    .restart local v19    # "result":[B
    .restart local v21    # "tag":B
    :cond_5
    const/16 v24, -0x24

    move/from16 v0, v21

    move/from16 v1, v24

    if-ne v0, v1, :cond_6

    .line 8438
    const-string/jumbo v24, "synchronisation failure"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 8439
    const/16 v24, 0x1

    aget-byte v6, v19, v24

    .line 8440
    .local v6, "auts_len":I
    const/16 v24, 0x2

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-static {v0, v1, v6}, Lcom/android/server/wifi/WifiStateMachine;->makeHex([BII)Ljava/lang/String;

    move-result-object v5

    .line 8441
    .local v5, "auts":Ljava/lang/String;
    const-string/jumbo v17, "UMTS-AUTS"

    .line 8442
    const-string/jumbo v24, ":"

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8443
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "auts:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->logv(Ljava/lang/String;)V

    .line 8444
    const/4 v11, 0x1

    goto/16 :goto_2

    .line 8446
    .end local v5    # "auts":Ljava/lang/String;
    .end local v6    # "auts_len":I
    :cond_6
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "bad response - unknown tag = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 8449
    .end local v19    # "result":[B
    .end local v21    # "tag":B
    :cond_7
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "bad response - "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 8457
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;->networkId:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Lcom/android/server/wifi/WifiNative;->umtsAuthFailedResponse(I)Z

    goto/16 :goto_3
.end method

.method handleGsmAuthRequest(Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;)V
    .locals 5
    .param p1, "requestData"    # Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;

    .prologue
    .line 8353
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->targetWificonfiguration:Landroid/net/wifi/WifiConfiguration;

    if-eqz v2, :cond_0

    .line 8354
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->targetWificonfiguration:Landroid/net/wifi/WifiConfiguration;

    iget v2, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iget v3, p1, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;->networkId:I

    if-ne v2, v3, :cond_1

    .line 8355
    :cond_0
    const-string/jumbo v2, "id matches targetWifiConfiguration"

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 8362
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 8361
    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 8364
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    if-nez v1, :cond_2

    .line 8365
    const-string/jumbo v2, "could not get telephony manager"

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 8366
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget v3, p1, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;->networkId:I

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiNative;->simAuthFailedResponse(I)Z

    .line 8367
    return-void

    .line 8357
    .end local v1    # "tm":Landroid/telephony/TelephonyManager;
    :cond_1
    const-string/jumbo v2, "id does not match targetWifiConfiguration"

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 8358
    return-void

    .line 8370
    .restart local v1    # "tm":Landroid/telephony/TelephonyManager;
    :cond_2
    iget-object v2, p1, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;->data:[Ljava/lang/String;

    invoke-virtual {p0, v2, v1}, Lcom/android/server/wifi/WifiStateMachine;->getGsmSimAuthResponse([Ljava/lang/String;Landroid/telephony/TelephonyManager;)Ljava/lang/String;

    move-result-object v0

    .line 8371
    .local v0, "response":Ljava/lang/String;
    if-nez v0, :cond_3

    .line 8372
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget v3, p1, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;->networkId:I

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiNative;->simAuthFailedResponse(I)Z

    .line 8352
    :goto_0
    return-void

    .line 8374
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Supplicant Response -"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiStateMachine;->logv(Ljava/lang/String;)V

    .line 8375
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget v3, p1, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;->networkId:I

    const-string/jumbo v4, "GSM-AUTH"

    invoke-virtual {v2, v3, v4, v0}, Lcom/android/server/wifi/WifiNative;->simAuthResponse(ILjava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method handlePostDhcpSetup()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 3814
    invoke-direct {p0, v1, v1}, Lcom/android/server/wifi/WifiStateMachine;->setSuspendOptimizationsNative(IZ)V

    .line 3815
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiNative;->setPowerSave(Z)V

    .line 3817
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiP2pChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x2300f

    .line 3818
    const/4 v2, 0x0

    .line 3817
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(II)V

    .line 3821
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    .line 3822
    const/4 v1, 0x2

    .line 3821
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiNative;->setBluetoothCoexistenceMode(I)Z

    .line 3812
    return-void
.end method

.method handlePreDhcpSetup()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3790
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v1, v3}, Lcom/android/server/wifi/WifiNative;->setBluetoothCoexistenceMode(I)Z

    .line 3797
    invoke-direct {p0, v3, v2}, Lcom/android/server/wifi/WifiStateMachine;->setSuspendOptimizationsNative(IZ)V

    .line 3798
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiNative;->setPowerSave(Z)V

    .line 3801
    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiStateMachine;->getWifiLinkLayerStats(Z)Landroid/net/wifi/WifiLinkLayerStats;

    .line 3804
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 3805
    .local v0, "msg":Landroid/os/Message;
    const v1, 0x2300f

    iput v1, v0, Landroid/os/Message;->what:I

    .line 3806
    iput v3, v0, Landroid/os/Message;->arg1:I

    .line 3807
    const v1, 0x30006

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 3808
    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3809
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiP2pChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v1, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V

    .line 3788
    return-void
.end method

.method public handleUserSwitch(I)V
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 2525
    const v0, 0x200a5

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(II)V

    .line 2524
    return-void
.end method

.method public isConnected()Z
    .locals 2

    .prologue
    .line 1965
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mConnectedState:Lcom/android/internal/util/State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDisconnected()Z
    .locals 2

    .prologue
    .line 1969
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLinkDebouncing()Z
    .locals 1

    .prologue
    .line 1993
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->linkDebouncing:Z

    return v0
.end method

.method isRoaming()Z
    .locals 1

    .prologue
    .line 418
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mAutoRoaming:Z

    return v0
.end method

.method public isSupplicantTransientState()Z
    .locals 4

    .prologue
    .line 1973
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v0

    .line 1974
    .local v0, "SupplicantState":Landroid/net/wifi/SupplicantState;
    sget-object v1, Landroid/net/wifi/SupplicantState;->ASSOCIATING:Landroid/net/wifi/SupplicantState;

    if-eq v0, v1, :cond_0

    .line 1975
    sget-object v1, Landroid/net/wifi/SupplicantState;->AUTHENTICATING:Landroid/net/wifi/SupplicantState;

    if-ne v0, v1, :cond_2

    .line 1979
    :cond_0
    sget-boolean v1, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    if-eqz v1, :cond_1

    .line 1980
    const-string/jumbo v1, "WifiStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Supplicant is under transient state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1982
    :cond_1
    const/4 v1, 0x1

    return v1

    .line 1976
    :cond_2
    sget-object v1, Landroid/net/wifi/SupplicantState;->FOUR_WAY_HANDSHAKE:Landroid/net/wifi/SupplicantState;

    if-eq v0, v1, :cond_0

    .line 1977
    sget-object v1, Landroid/net/wifi/SupplicantState;->GROUP_HANDSHAKE:Landroid/net/wifi/SupplicantState;

    if-eq v0, v1, :cond_0

    .line 1984
    sget-boolean v1, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    if-eqz v1, :cond_3

    .line 1985
    const-string/jumbo v1, "WifiStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Supplicant is under steady state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1989
    :cond_3
    const/4 v1, 0x0

    return v1
.end method

.method protected log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 187
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    return-void
.end method

.method protected logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 181
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    return-void
.end method

.method public matchProviderWithCurrentNetwork(Lcom/android/internal/util/AsyncChannel;Ljava/lang/String;)I
    .locals 3
    .param p1, "channel"    # Lcom/android/internal/util/AsyncChannel;
    .param p2, "fqdn"    # Ljava/lang/String;

    .prologue
    .line 2093
    const v2, 0x20069

    invoke-virtual {p1, v2, p2}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2094
    .local v1, "resultMsg":Landroid/os/Message;
    iget v0, v1, Landroid/os/Message;->arg1:I

    .line 2095
    .local v0, "result":I
    invoke-virtual {v1}, Landroid/os/Message;->recycle()V

    .line 2096
    return v0
.end method

.method maybeRegisterNetworkFactory()V
    .locals 6

    .prologue
    .line 4172
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkFactory:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkFactory;

    if-nez v0, :cond_0

    .line 4173
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->checkAndSetConnectivityInstance()V

    .line 4174
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mCm:Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    .line 4175
    new-instance v0, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkFactory;

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    .line 4176
    const-string/jumbo v4, "WIFI"

    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkCapabilitiesFilter:Landroid/net/NetworkCapabilities;

    move-object v1, p0

    .line 4175
    invoke-direct/range {v0 .. v5}, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkFactory;-><init>(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkCapabilities;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkFactory:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkFactory;

    .line 4177
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkFactory:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkFactory;

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkFactory;->setScoreFilter(I)V

    .line 4178
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkFactory:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkFactory;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkFactory;->register()V

    .line 4182
    new-instance v0, Lcom/android/server/wifi/WifiStateMachine$UntrustedWifiNetworkFactory;

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    .line 4183
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "WIFI_UT"

    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkCapabilitiesFilter:Landroid/net/NetworkCapabilities;

    move-object v1, p0

    .line 4182
    invoke-direct/range {v0 .. v5}, Lcom/android/server/wifi/WifiStateMachine$UntrustedWifiNetworkFactory;-><init>(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkCapabilities;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mUntrustedNetworkFactory:Lcom/android/server/wifi/WifiStateMachine$UntrustedWifiNetworkFactory;

    .line 4184
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mUntrustedNetworkFactory:Lcom/android/server/wifi/WifiStateMachine$UntrustedWifiNetworkFactory;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine$UntrustedWifiNetworkFactory;->setScoreFilter(I)V

    .line 4185
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mUntrustedNetworkFactory:Lcom/android/server/wifi/WifiStateMachine$UntrustedWifiNetworkFactory;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine$UntrustedWifiNetworkFactory;->register()V

    .line 4171
    :cond_0
    return-void
.end method

.method noteWifiDisabledWhileAssociated()V
    .locals 8

    .prologue
    .line 5512
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v5

    .line 5513
    .local v5, "rssi":I
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 5514
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine;->mConnectedState:Lcom/android/internal/util/State;

    if-ne v6, v7, :cond_0

    .line 5515
    const/16 v6, -0x7f

    if-eq v5, v6, :cond_0

    .line 5516
    if-eqz v0, :cond_0

    .line 5517
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->is24GHz()Z

    move-result v1

    .line 5518
    .local v1, "is24GHz":Z
    if-eqz v1, :cond_1

    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget-object v6, v6, Lcom/android/server/wifi/WifiConfigManager;->mThresholdMinimumRssi24:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    if-ge v5, v6, :cond_1

    const/4 v2, 0x1

    .line 5521
    .local v2, "isBadRSSI":Z
    :goto_0
    if-eqz v1, :cond_3

    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget-object v6, v6, Lcom/android/server/wifi/WifiConfigManager;->mThresholdQualifiedRssi24:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    if-ge v5, v6, :cond_3

    const/4 v4, 0x1

    .line 5524
    .local v4, "isLowRSSI":Z
    :goto_1
    if-eqz v1, :cond_5

    .line 5525
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget-object v6, v6, Lcom/android/server/wifi/WifiConfigManager;->mThresholdSaturatedRssi24:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    .line 5524
    if-lt v5, v6, :cond_5

    const/4 v3, 0x1

    .line 5528
    .local v3, "isHighRSSI":Z
    :goto_2
    if-eqz v2, :cond_7

    .line 5530
    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableLowRSSI:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableLowRSSI:I

    .line 5510
    .end local v1    # "is24GHz":Z
    .end local v2    # "isBadRSSI":Z
    .end local v3    # "isHighRSSI":Z
    .end local v4    # "isLowRSSI":Z
    :cond_0
    :goto_3
    return-void

    .line 5519
    .restart local v1    # "is24GHz":Z
    :cond_1
    if-nez v1, :cond_2

    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget-object v6, v6, Lcom/android/server/wifi/WifiConfigManager;->mThresholdMinimumRssi5:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    if-ge v5, v6, :cond_2

    const/4 v2, 0x1

    .restart local v2    # "isBadRSSI":Z
    goto :goto_0

    .end local v2    # "isBadRSSI":Z
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "isBadRSSI":Z
    goto :goto_0

    .line 5522
    :cond_3
    if-nez v1, :cond_4

    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v6

    .line 5523
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget-object v7, v7, Lcom/android/server/wifi/WifiConfigManager;->mThresholdQualifiedRssi5:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v7

    .line 5522
    if-ge v6, v7, :cond_4

    const/4 v4, 0x1

    .restart local v4    # "isLowRSSI":Z
    goto :goto_1

    .end local v4    # "isLowRSSI":Z
    :cond_4
    const/4 v4, 0x0

    .restart local v4    # "isLowRSSI":Z
    goto :goto_1

    .line 5526
    :cond_5
    if-nez v1, :cond_6

    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v6

    .line 5527
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget-object v7, v7, Lcom/android/server/wifi/WifiConfigManager;->mThresholdSaturatedRssi5:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v7

    .line 5526
    if-lt v6, v7, :cond_6

    const/4 v3, 0x1

    .restart local v3    # "isHighRSSI":Z
    goto :goto_2

    .end local v3    # "isHighRSSI":Z
    :cond_6
    const/4 v3, 0x0

    .restart local v3    # "isHighRSSI":Z
    goto :goto_2

    .line 5531
    :cond_7
    if-eqz v4, :cond_8

    .line 5533
    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableBadRSSI:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableBadRSSI:I

    goto :goto_3

    .line 5534
    :cond_8
    if-nez v3, :cond_0

    .line 5536
    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableNotHighRSSI:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableNotHighRSSI:I

    goto :goto_3
.end method

.method public onRssiThresholdBreached(B)V
    .locals 3
    .param p1, "curRssi"    # B

    .prologue
    .line 243
    sget-boolean v0, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    if-eqz v0, :cond_0

    .line 244
    const-string/jumbo v0, "WifiStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onRssiThresholdBreach event. Cur Rssi = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :cond_0
    const v0, 0x200a4

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(II)V

    .line 242
    return-void
.end method

.method printTime()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2545
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2546
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, " rt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2547
    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2548
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public processRssiThreshold(BI)V
    .locals 7
    .param p1, "curRssi"    # B
    .param p2, "reason"    # I

    .prologue
    .line 250
    const/16 v4, 0x7f

    if-eq p1, v4, :cond_0

    const/16 v4, -0x80

    if-ne p1, v4, :cond_1

    .line 251
    :cond_0
    const-string/jumbo v4, "WifiStateMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "processRssiThreshold: Invalid rssi "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    return-void

    .line 254
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mRssiRanges:[B

    array-length v4, v4

    if-ge v0, v4, :cond_2

    .line 255
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mRssiRanges:[B

    aget-byte v4, v4, v0

    if-ge p1, v4, :cond_3

    .line 258
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mRssiRanges:[B

    aget-byte v1, v4, v0

    .line 259
    .local v1, "maxRssi":B
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mRssiRanges:[B

    add-int/lit8 v5, v0, -0x1

    aget-byte v2, v4, v5

    .line 263
    .local v2, "minRssi":B
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v4, p1}, Landroid/net/wifi/WifiInfo;->setRssi(I)V

    .line 264
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/wifi/WifiStateMachine;->updateCapabilities(Landroid/net/wifi/WifiConfiguration;)V

    .line 265
    invoke-virtual {p0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->startRssiMonitoringOffload(BB)I

    move-result v3

    .line 266
    .local v3, "ret":I
    const-string/jumbo v4, "WifiStateMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Re-program RSSI thresholds for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, p2}, Lcom/android/server/wifi/WifiStateMachine;->smToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 267
    const-string/jumbo v6, ": ["

    .line 266
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 267
    const-string/jumbo v6, ", "

    .line 266
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 267
    const-string/jumbo v6, "], curRssi="

    .line 266
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 267
    const-string/jumbo v6, " ret="

    .line 266
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    .end local v1    # "maxRssi":B
    .end local v2    # "minRssi":B
    .end local v3    # "ret":I
    :cond_2
    return-void

    .line 254
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public reassociateCommand()V
    .locals 1

    .prologue
    .line 2136
    const v0, 0x2004b

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    .line 2135
    return-void
.end method

.method public reconnectCommand()V
    .locals 1

    .prologue
    .line 2129
    const v0, 0x2004a

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    .line 2128
    return-void
.end method

.method recordUidIfAuthorized(Landroid/net/wifi/WifiConfiguration;IZ)Z
    .locals 1
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "uid"    # I
    .param p3, "onlyAnnotate"    # Z

    .prologue
    .line 511
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiConfigManager;->isNetworkConfigured(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 512
    iput p2, p1, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    .line 513
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    .line 518
    :cond_0
    iput p2, p1, Landroid/net/wifi/WifiConfiguration;->lastUpdateUid:I

    .line 519
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/net/wifi/WifiConfiguration;->lastUpdateName:Ljava/lang/String;

    .line 521
    const/4 v0, 0x1

    return v0

    .line 514
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    invoke-virtual {v0, p2, p1, p3}, Lcom/android/server/wifi/WifiConfigManager;->canModifyNetwork(ILandroid/net/wifi/WifiConfiguration;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 515
    const/4 v0, 0x0

    return v0
.end method

.method registerConnected()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 5478
    iget v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 5479
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiConfigManager;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 5480
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    .line 5483
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/net/wifi/WifiConfiguration;->lastConnected:J

    .line 5484
    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->numAssociation:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->numAssociation:I

    .line 5486
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v1

    .line 5487
    .local v1, "networkSelectionStatus":Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->clearDisableReasonCounter()V

    .line 5488
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setHasEverConnected(Z)V

    .line 5491
    .end local v1    # "networkSelectionStatus":Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
    :cond_0
    iput-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiScoreReport:Lcom/android/server/wifi/WifiScoreReport;

    .line 5477
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_1
    return-void
.end method

.method registerDisconnected()V
    .locals 4

    .prologue
    .line 5496
    iget v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 5499
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiConfigManager;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 5500
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    .line 5501
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/net/wifi/WifiConfiguration;->lastDisconnected:J

    .line 5502
    iget-boolean v1, v0, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    if-eqz v1, :cond_0

    .line 5504
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiConfigManager;->forgetNetwork(I)Z

    .line 5495
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_0
    return-void
.end method

.method public reloadTlsNetworksAndReconnect()V
    .locals 1

    .prologue
    .line 2144
    const v0, 0x2008e

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    .line 2143
    return-void
.end method

.method public removeAppConfigs(Ljava/lang/String;I)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 2390
    new-instance v0, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v0}, Landroid/content/pm/ApplicationInfo;-><init>()V

    .line 2391
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iput-object p1, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 2392
    iput p2, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2393
    const v1, 0x20061

    invoke-virtual {p0, v1, v0}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 2388
    return-void
.end method

.method public removeUserConfigs(I)V
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 2400
    const v0, 0x20098

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(II)V

    .line 2399
    return-void
.end method

.method reportOnTime()Ljava/lang/String;
    .locals 14

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 1651
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1652
    .local v0, "now":J
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1654
    .local v5, "sb":Ljava/lang/StringBuilder;
    iget v7, p0, Lcom/android/server/wifi/WifiStateMachine;->mOnTime:I

    iget v8, p0, Lcom/android/server/wifi/WifiStateMachine;->mOnTimeLastReport:I

    sub-int v2, v7, v8

    .line 1655
    .local v2, "on":I
    iget v7, p0, Lcom/android/server/wifi/WifiStateMachine;->mOnTime:I

    iput v7, p0, Lcom/android/server/wifi/WifiStateMachine;->mOnTimeLastReport:I

    .line 1656
    iget v7, p0, Lcom/android/server/wifi/WifiStateMachine;->mTxTime:I

    iget v8, p0, Lcom/android/server/wifi/WifiStateMachine;->mTxTimeLastReport:I

    sub-int v6, v7, v8

    .line 1657
    .local v6, "tx":I
    iget v7, p0, Lcom/android/server/wifi/WifiStateMachine;->mTxTime:I

    iput v7, p0, Lcom/android/server/wifi/WifiStateMachine;->mTxTimeLastReport:I

    .line 1658
    iget v7, p0, Lcom/android/server/wifi/WifiStateMachine;->mRxTime:I

    iget v8, p0, Lcom/android/server/wifi/WifiStateMachine;->mRxTimeLastReport:I

    sub-int v4, v7, v8

    .line 1659
    .local v4, "rx":I
    iget v7, p0, Lcom/android/server/wifi/WifiStateMachine;->mRxTime:I

    iput v7, p0, Lcom/android/server/wifi/WifiStateMachine;->mRxTimeLastReport:I

    .line 1660
    iget-wide v8, p0, Lcom/android/server/wifi/WifiStateMachine;->lastOntimeReportTimeStamp:J

    sub-long v8, v0, v8

    long-to-int v3, v8

    .line 1661
    .local v3, "period":I
    iput-wide v0, p0, Lcom/android/server/wifi/WifiStateMachine;->lastOntimeReportTimeStamp:J

    .line 1662
    const-string/jumbo v7, "[on:%d tx:%d rx:%d period:%d]"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v12

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v13

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x3

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1664
    iget v7, p0, Lcom/android/server/wifi/WifiStateMachine;->mOnTime:I

    iget v8, p0, Lcom/android/server/wifi/WifiStateMachine;->mOnTimeScreenStateChange:I

    sub-int v2, v7, v8

    .line 1665
    iget-wide v8, p0, Lcom/android/server/wifi/WifiStateMachine;->lastScreenStateChangeTimeStamp:J

    sub-long v8, v0, v8

    long-to-int v3, v8

    .line 1666
    const-string/jumbo v7, " from screen [on:%d period:%d]"

    new-array v8, v13, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v12

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1667
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method public declared-synchronized resetSimAuthNetworks(Z)V
    .locals 2
    .param p1, "simPresent"    # Z

    .prologue
    monitor-enter p0

    .line 2325
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const v1, 0x20065

    :try_start_0
    invoke-virtual {p0, v1, v0}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 2324
    return-void

    .line 2325
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public sendBluetoothAdapterStateChange(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 2382
    const v0, 0x2001f

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(III)V

    .line 2381
    return-void
.end method

.method sendScanResultsAvailableBroadcast(Z)V
    .locals 3
    .param p1, "scanSucceeded"    # Z

    .prologue
    .line 3522
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.net.wifi.SCAN_RESULTS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3523
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3524
    const-string/jumbo v1, "resultsUpdated"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3525
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 3521
    return-void
.end method

.method public setAllowScansWithTraffic(I)V
    .locals 1
    .param p1, "enabled"    # I

    .prologue
    .line 1460
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigManager;->mAlwaysEnableScansWhileAssociated:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1459
    return-void
.end method

.method public setDriverStart(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 2019
    if-eqz p1, :cond_0

    .line 2020
    const v0, 0x2000d

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    .line 2018
    :goto_0
    return-void

    .line 2022
    :cond_0
    const v0, 0x2000e

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    goto :goto_0
.end method

.method public setEnableAutoJoinWhenAssociated(Z)Z
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    const/4 v1, 0x1

    .line 1471
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    const v2, 0x200a7

    invoke-virtual {p0, v2, v0}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(II)V

    .line 1472
    return v1

    .line 1471
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setFrequencyBand(IZ)V
    .locals 2
    .param p1, "band"    # I
    .param p2, "persist"    # Z

    .prologue
    .line 2348
    if-eqz p2, :cond_0

    .line 2349
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2350
    const-string/jumbo v1, "wifi_frequency_band"

    .line 2349
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2353
    :cond_0
    const v0, 0x2005a

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(III)V

    .line 2347
    return-void
.end method

.method public setHighPerfModeEnabled(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    const/4 v1, 0x0

    .line 2317
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const v2, 0x2004d

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(III)V

    .line 2316
    return-void

    :cond_0
    move v0, v1

    .line 2317
    goto :goto_0
.end method

.method public setHostApRunning(Landroid/net/wifi/WifiConfiguration;Z)V
    .locals 1
    .param p1, "wifiConfig"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "enable"    # Z

    .prologue
    .line 1885
    if-eqz p2, :cond_0

    .line 1886
    const v0, 0x20015

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 1884
    :goto_0
    return-void

    .line 1888
    :cond_0
    const v0, 0x20017

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    goto :goto_0
.end method

.method public setOperationalMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 2030
    sget-boolean v0, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setting operational mode to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 2031
    :cond_0
    const v0, 0x20048

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(III)V

    .line 2029
    return-void
.end method

.method public setScanCount(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 433
    iput p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mNumSelectiveChannelScan:I

    .line 432
    return-void
.end method

.method public setStaSoftApConcurrency()V
    .locals 11

    .prologue
    .line 564
    new-instance v0, Lcom/android/server/wifi/SoftApStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mFacade:Lcom/android/server/wifi/FrameworkFacade;

    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    .line 565
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    .line 566
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine;->mBackupManagerProxy:Lcom/android/server/wifi/BackupManagerProxy;

    .line 567
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;

    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v10, p0, Lcom/android/server/wifi/WifiStateMachine;->mCountryCode:Lcom/android/server/wifi/WifiCountryCode;

    move-object v2, p0

    .line 564
    invoke-direct/range {v0 .. v10}, Lcom/android/server/wifi/SoftApStateMachine;-><init>(Landroid/content/Context;Lcom/android/server/wifi/WifiStateMachine;Lcom/android/server/wifi/FrameworkFacade;Ljava/lang/String;Lcom/android/server/wifi/WifiConfigManager;Lcom/android/server/wifi/WifiMonitor;Lcom/android/server/wifi/BackupManagerProxy;Landroid/os/INetworkManagementService;Lcom/android/internal/app/IBatteryStats;Lcom/android/server/wifi/WifiCountryCode;)V

    .line 563
    iput-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mSoftApStateMachine:Lcom/android/server/wifi/SoftApStateMachine;

    .line 568
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mStaAndAPConcurrency:Z

    .line 569
    const-string/jumbo v0, "mSoftApStateMachine is created"

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 562
    return-void
.end method

.method setSupplicantLogLevel()V
    .locals 2

    .prologue
    .line 1387
    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mVerboseLoggingLevel:I

    if-lez v0, :cond_0

    .line 1388
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string/jumbo v1, "DEBUG"

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiNative;->setSupplicantLogLevel(Ljava/lang/String;)V

    .line 1386
    :goto_0
    return-void

    .line 1390
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string/jumbo v1, "INFO"

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiNative;->setSupplicantLogLevel(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setSupplicantRunning(Z)V
    .locals 7
    .param p1, "enable"    # Z

    .prologue
    const v6, 0x2000c

    const/4 v5, 0x0

    .line 1858
    if-eqz p1, :cond_0

    .line 1859
    const v2, 0x2000b

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    .line 1857
    :goto_0
    return-void

    .line 1861
    :cond_0
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mDisconnectDelayDuration:I

    .line 1863
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1864
    const-string/jumbo v3, "wifi_disconnect_delay_duration"

    const/4 v4, 0x0

    .line 1863
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mDisconnectDelayDuration:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1869
    :goto_1
    iget v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mDisconnectDelayDuration:I

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    .line 1870
    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    .line 1869
    if-ne v2, v3, :cond_1

    .line 1871
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "wifi_disconnect_in_progress"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1872
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1873
    const-string/jumbo v2, "WifiStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " Disconnection delayed by  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mDisconnectDelayDuration:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " seconds"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1874
    iget v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mDisconnectDelayDuration:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {p0, v6, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->sendMessageDelayed(IJ)V

    goto :goto_0

    .line 1865
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 1866
    .local v0, "ex":Ljava/lang/NumberFormatException;
    iput v5, p0, Lcom/android/server/wifi/WifiStateMachine;->mDisconnectDelayDuration:I

    .line 1867
    const-string/jumbo v2, "WifiStateMachine"

    const-string/jumbo v3, " get mDisconnectDelayDuration caught exception "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1876
    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    :cond_1
    invoke-virtual {p0, v6}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    goto :goto_0
.end method

.method public setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)V
    .locals 1
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 1893
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mStaAndAPConcurrency:Z

    if-eqz v0, :cond_0

    .line 1894
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mSoftApStateMachine:Lcom/android/server/wifi/SoftApStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/SoftApStateMachine;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    .line 1895
    return-void

    .line 1897
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiApConfigStore:Lcom/android/server/wifi/WifiApConfigStore;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiApConfigStore;->setApConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    .line 1892
    return-void
.end method

.method shouldAutoConnect()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 8617
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 8618
    const-string/jumbo v3, "wifi_auto_connect_type"

    .line 8616
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 8620
    .local v0, "autoConnectPolicy":I
    sget-boolean v2, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    if-eqz v2, :cond_0

    .line 8621
    if-nez v0, :cond_2

    .line 8622
    const-string/jumbo v2, "WifiStateMachine"

    const-string/jumbo v3, "Wlan connection type is auto, should auto connect"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8627
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    .line 8624
    :cond_2
    const-string/jumbo v2, "WifiStateMachine"

    const-string/jumbo v3, "Shouldn\'t auto connect"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method smToString(I)Ljava/lang/String;
    .locals 3
    .param p1, "what"    # I

    .prologue
    .line 5342
    sget-object v1, Lcom/android/server/wifi/WifiStateMachine;->sSmToString:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 5343
    .local v0, "s":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 5344
    return-object v0

    .line 5346
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 5471
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "what:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5474
    :goto_0
    return-object v0

    .line 5348
    :sswitch_0
    const-string/jumbo v0, "DRIVER_HUNG_EVENT"

    goto :goto_0

    .line 5351
    :sswitch_1
    const-string/jumbo v0, "AsyncChannel.CMD_CHANNEL_HALF_CONNECTED"

    goto :goto_0

    .line 5354
    :sswitch_2
    const-string/jumbo v0, "AsyncChannel.CMD_CHANNEL_DISCONNECTED"

    goto :goto_0

    .line 5357
    :sswitch_3
    const-string/jumbo v0, "WifiP2pServiceImpl.DISCONNECT_WIFI_REQUEST"

    goto :goto_0

    .line 5360
    :sswitch_4
    const-string/jumbo v0, "WifiManager.DISABLE_NETWORK"

    goto :goto_0

    .line 5363
    :sswitch_5
    const-string/jumbo v0, "CONNECT_NETWORK"

    goto :goto_0

    .line 5366
    :sswitch_6
    const-string/jumbo v0, "SAVE_NETWORK"

    goto :goto_0

    .line 5369
    :sswitch_7
    const-string/jumbo v0, "FORGET_NETWORK"

    goto :goto_0

    .line 5372
    :sswitch_8
    const-string/jumbo v0, "SUP_CONNECTION_EVENT"

    goto :goto_0

    .line 5375
    :sswitch_9
    const-string/jumbo v0, "SUP_DISCONNECTION_EVENT"

    goto :goto_0

    .line 5378
    :sswitch_a
    const-string/jumbo v0, "SCAN_RESULTS_EVENT"

    goto :goto_0

    .line 5381
    :sswitch_b
    const-string/jumbo v0, "SCAN_FAILED_EVENT"

    goto :goto_0

    .line 5384
    :sswitch_c
    const-string/jumbo v0, "SUPPLICANT_STATE_CHANGE_EVENT"

    goto :goto_0

    .line 5387
    :sswitch_d
    const-string/jumbo v0, "AUTHENTICATION_FAILURE_EVENT"

    goto :goto_0

    .line 5390
    :sswitch_e
    const-string/jumbo v0, "SSID_TEMP_DISABLED"

    goto :goto_0

    .line 5393
    :sswitch_f
    const-string/jumbo v0, "SSID_REENABLED"

    goto :goto_0

    .line 5396
    :sswitch_10
    const-string/jumbo v0, "WPS_SUCCESS_EVENT"

    goto :goto_0

    .line 5399
    :sswitch_11
    const-string/jumbo v0, "WPS_FAIL_EVENT"

    goto :goto_0

    .line 5402
    :sswitch_12
    const-string/jumbo v0, "SUP_REQUEST_IDENTITY"

    goto :goto_0

    .line 5405
    :sswitch_13
    const-string/jumbo v0, "NETWORK_CONNECTION_EVENT"

    goto :goto_0

    .line 5408
    :sswitch_14
    const-string/jumbo v0, "NETWORK_DISCONNECTION_EVENT"

    goto :goto_0

    .line 5411
    :sswitch_15
    const-string/jumbo v0, "ASSOCIATION_REJECTION_EVENT"

    goto :goto_0

    .line 5414
    :sswitch_16
    const-string/jumbo v0, "WifiMonitor.ANQP_DONE_EVENT"

    goto :goto_0

    .line 5417
    :sswitch_17
    const-string/jumbo v0, "WifiMonitor.RX_HS20_ANQP_ICON_EVENT"

    goto :goto_0

    .line 5420
    :sswitch_18
    const-string/jumbo v0, "WifiMonitor.GAS_QUERY_DONE_EVENT"

    goto :goto_0

    .line 5423
    :sswitch_19
    const-string/jumbo v0, "WifiMonitor.HS20_REMEDIATION_EVENT"

    goto :goto_0

    .line 5426
    :sswitch_1a
    const-string/jumbo v0, "WifiMonitor.GAS_QUERY_START_EVENT"

    goto :goto_0

    .line 5429
    :sswitch_1b
    const-string/jumbo v0, "GROUP_CREATING_TIMED_OUT"

    goto :goto_0

    .line 5432
    :sswitch_1c
    const-string/jumbo v0, "P2P_CONNECTION_CHANGED"

    goto :goto_0

    .line 5435
    :sswitch_1d
    const-string/jumbo v0, "P2P.DISCONNECT_WIFI_RESPONSE"

    goto :goto_0

    .line 5438
    :sswitch_1e
    const-string/jumbo v0, "P2P.SET_MIRACAST_MODE"

    goto :goto_0

    .line 5441
    :sswitch_1f
    const-string/jumbo v0, "P2P.BLOCK_DISCOVERY"

    goto :goto_0

    .line 5444
    :sswitch_20
    const-string/jumbo v0, "CANCEL_WPS"

    goto/16 :goto_0

    .line 5447
    :sswitch_21
    const-string/jumbo v0, "CANCEL_WPS_FAILED"

    goto/16 :goto_0

    .line 5450
    :sswitch_22
    const-string/jumbo v0, "CANCEL_WPS_SUCCEDED"

    goto/16 :goto_0

    .line 5453
    :sswitch_23
    const-string/jumbo v0, "START_WPS"

    goto/16 :goto_0

    .line 5456
    :sswitch_24
    const-string/jumbo v0, "START_WPS_SUCCEEDED"

    goto/16 :goto_0

    .line 5459
    :sswitch_25
    const-string/jumbo v0, "WPS_FAILED"

    goto/16 :goto_0

    .line 5462
    :sswitch_26
    const-string/jumbo v0, "WPS_COMPLETED"

    goto/16 :goto_0

    .line 5465
    :sswitch_27
    const-string/jumbo v0, "RSSI_PKTCNT_FETCH"

    goto/16 :goto_0

    .line 5468
    :sswitch_28
    const-string/jumbo v0, "SUBNET_STATUS_UPDATE_EVENT"

    goto/16 :goto_0

    .line 5346
    :sswitch_data_0
    .sparse-switch
        0x13d -> :sswitch_28
        0x11000 -> :sswitch_1
        0x11004 -> :sswitch_2
        0x23001 -> :sswitch_1b
        0x2300b -> :sswitch_1c
        0x2300c -> :sswitch_3
        0x2300d -> :sswitch_1d
        0x2300e -> :sswitch_1e
        0x2300f -> :sswitch_1f
        0x24001 -> :sswitch_8
        0x24002 -> :sswitch_9
        0x24003 -> :sswitch_13
        0x24004 -> :sswitch_14
        0x24005 -> :sswitch_a
        0x24006 -> :sswitch_c
        0x24007 -> :sswitch_d
        0x24008 -> :sswitch_10
        0x24009 -> :sswitch_11
        0x2400c -> :sswitch_0
        0x2400d -> :sswitch_e
        0x2400e -> :sswitch_f
        0x2400f -> :sswitch_12
        0x24011 -> :sswitch_b
        0x2402b -> :sswitch_15
        0x2402c -> :sswitch_16
        0x24033 -> :sswitch_1a
        0x24034 -> :sswitch_18
        0x24035 -> :sswitch_17
        0x2403d -> :sswitch_19
        0x25001 -> :sswitch_5
        0x25004 -> :sswitch_7
        0x25007 -> :sswitch_6
        0x2500a -> :sswitch_23
        0x2500b -> :sswitch_24
        0x2500c -> :sswitch_25
        0x2500d -> :sswitch_26
        0x2500e -> :sswitch_20
        0x2500f -> :sswitch_21
        0x25010 -> :sswitch_22
        0x25011 -> :sswitch_4
        0x25014 -> :sswitch_27
    .end sparse-switch
.end method

.method smToString(Landroid/os/Message;)Ljava/lang/String;
    .locals 1
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 5338
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->smToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public startFilteringMulticastPackets()V
    .locals 2

    .prologue
    .line 2299
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mIpManager:Landroid/net/ip/IpManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/ip/IpManager;->setMulticastFilter(Z)V

    .line 2298
    return-void
.end method

.method startRssiMonitoringOffload(BB)I
    .locals 1
    .param p1, "maxRssi"    # B
    .param p2, "minRssi"    # B

    .prologue
    .line 1717
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v0, p1, p2, p0}, Lcom/android/server/wifi/WifiNative;->startRssiMonitoring(BBLcom/android/server/wifi/WifiNative$WifiRssiEventHandler;)I

    move-result v0

    return v0
.end method

.method public startScan(IILandroid/net/wifi/ScanSettings;Landroid/os/WorkSource;)V
    .locals 4
    .param p1, "callingUid"    # I
    .param p2, "scanCounter"    # I
    .param p3, "settings"    # Landroid/net/wifi/ScanSettings;
    .param p4, "workSource"    # Landroid/os/WorkSource;

    .prologue
    .line 1556
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1557
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "customized_scan_settings"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1558
    const-string/jumbo v1, "customized_scan_worksource"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1559
    const-string/jumbo v1, "scan_request_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1560
    const v1, 0x20047

    invoke-virtual {p0, v1, p1, p2, v0}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(IIILjava/lang/Object;)V

    .line 1555
    return-void
.end method

.method startScanForConfiguration(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 7
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 6712
    if-nez p1, :cond_0

    .line 6713
    return v5

    .line 6721
    :cond_0
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    invoke-virtual {v3, p1}, Lcom/android/server/wifi/WifiConfigManager;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v2

    .line 6722
    .local v2, "scanDetailCache":Lcom/android/server/wifi/ScanDetailCache;
    if-eqz v2, :cond_1

    .line 6723
    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v3, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6724
    invoke-virtual {v2}, Lcom/android/server/wifi/ScanDetailCache;->size()I

    move-result v3

    const/4 v4, 0x6

    if-le v3, v4, :cond_2

    .line 6726
    :cond_1
    return v6

    .line 6728
    :cond_2
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    const v4, 0x36ee80

    invoke-virtual {v3, p1, v4}, Lcom/android/server/wifi/WifiConfigManager;->makeChannelList(Landroid/net/wifi/WifiConfiguration;I)Ljava/util/HashSet;

    move-result-object v0

    .line 6729
    .local v0, "freqs":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v3

    if-eqz v3, :cond_5

    .line 6731
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "starting scan for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 6733
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 6734
    .local v1, "hiddenNetworkIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    iget-boolean v3, p1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    if-eqz v3, :cond_3

    .line 6735
    iget v3, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6738
    :cond_3
    sget-object v3, Lcom/android/server/wifi/WifiStateMachine;->WIFI_WORK_SOURCE:Landroid/os/WorkSource;

    invoke-direct {p0, v0, v1, v3}, Lcom/android/server/wifi/WifiStateMachine;->startScanNative(Ljava/util/Set;Ljava/util/Set;Landroid/os/WorkSource;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 6739
    sget v3, Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_OK:I

    iput v3, p0, Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I

    .line 6744
    :goto_0
    return v6

    .line 6742
    :cond_4
    sget v3, Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_HANDLING_ERROR:I

    iput v3, p0, Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I

    goto :goto_0

    .line 6746
    .end local v1    # "hiddenNetworkIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_5
    sget-boolean v3, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    if-eqz v3, :cond_6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "no channels for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 6747
    :cond_6
    return v5
.end method

.method startWifiIPPacketOffload(ILcom/android/server/connectivity/KeepalivePacketData;I)I
    .locals 4
    .param p1, "slot"    # I
    .param p2, "packetData"    # Lcom/android/server/connectivity/KeepalivePacketData;
    .param p3, "intervalSeconds"    # I

    .prologue
    const/4 v3, 0x0

    .line 1696
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    mul-int/lit16 v2, p3, 0x3e8

    invoke-virtual {v1, p1, p2, v2}, Lcom/android/server/wifi/WifiNative;->startSendingOffloadedPacket(ILcom/android/server/connectivity/KeepalivePacketData;I)I

    move-result v0

    .line 1697
    .local v0, "ret":I
    if-eqz v0, :cond_0

    .line 1698
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startWifiIPPacketOffload("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1699
    const-string/jumbo v2, "): hardware error "

    .line 1698
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 1700
    const/16 v1, -0x1f

    return v1

    .line 1702
    :cond_0
    return v3
.end method

.method public stopFilteringMulticastPackets()V
    .locals 2

    .prologue
    .line 2306
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mIpManager:Landroid/net/ip/IpManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/ip/IpManager;->setMulticastFilter(Z)V

    .line 2305
    return-void
.end method

.method stopRssiMonitoringOffload()I
    .locals 1

    .prologue
    .line 1721
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiNative;->stopRssiMonitoring()I

    move-result v0

    return v0
.end method

.method stopWifiIPPacketOffload(I)I
    .locals 3
    .param p1, "slot"    # I

    .prologue
    const/4 v2, 0x0

    .line 1707
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v1, p1}, Lcom/android/server/wifi/WifiNative;->stopSendingOffloadedPacket(I)I

    move-result v0

    .line 1708
    .local v0, "ret":I
    if-eqz v0, :cond_0

    .line 1709
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopWifiIPPacketOffload("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "): hardware error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 1710
    const/16 v1, -0x1f

    return v1

    .line 1712
    :cond_0
    return v2
.end method

.method public syncAddOrUpdateNetwork(Lcom/android/internal/util/AsyncChannel;Landroid/net/wifi/WifiConfiguration;)I
    .locals 3
    .param p1, "channel"    # Lcom/android/internal/util/AsyncChannel;
    .param p2, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 2153
    const v2, 0x20034

    invoke-virtual {p1, v2, p2}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2154
    .local v1, "resultMsg":Landroid/os/Message;
    iget v0, v1, Landroid/os/Message;->arg1:I

    .line 2155
    .local v0, "result":I
    invoke-virtual {v1}, Landroid/os/Message;->recycle()V

    .line 2156
    return v0
.end method

.method public syncAddPasspointManagementObject(Lcom/android/internal/util/AsyncChannel;Ljava/lang/String;)I
    .locals 3
    .param p1, "channel"    # Lcom/android/internal/util/AsyncChannel;
    .param p2, "managementObject"    # Ljava/lang/String;

    .prologue
    .line 2064
    const v2, 0x20066

    invoke-virtual {p1, v2, p2}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2065
    .local v1, "resultMsg":Landroid/os/Message;
    iget v0, v1, Landroid/os/Message;->arg1:I

    .line 2066
    .local v0, "result":I
    invoke-virtual {v1}, Landroid/os/Message;->recycle()V

    .line 2067
    return v0
.end method

.method public syncDisableNetwork(Lcom/android/internal/util/AsyncChannel;I)Z
    .locals 4
    .param p1, "channel"    # Lcom/android/internal/util/AsyncChannel;
    .param p2, "netId"    # I

    .prologue
    .line 2255
    const v2, 0x25011

    invoke-virtual {p1, v2, p2}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(II)Landroid/os/Message;

    move-result-object v1

    .line 2256
    .local v1, "resultMsg":Landroid/os/Message;
    iget v2, v1, Landroid/os/Message;->arg1:I

    const v3, 0x25012

    if-eq v2, v3, :cond_0

    const/4 v0, 0x1

    .line 2257
    .local v0, "result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Message;->recycle()V

    .line 2258
    return v0

    .line 2256
    .end local v0    # "result":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "result":Z
    goto :goto_0
.end method

.method public syncEnableNetwork(Lcom/android/internal/util/AsyncChannel;IZ)Z
    .locals 4
    .param p1, "channel"    # Lcom/android/internal/util/AsyncChannel;
    .param p2, "netId"    # I
    .param p3, "disableOthers"    # Z

    .prologue
    .line 2242
    if-eqz p3, :cond_0

    const/4 v2, 0x1

    .line 2241
    :goto_0
    const v3, 0x20036

    invoke-virtual {p1, v3, p2, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(III)Landroid/os/Message;

    move-result-object v1

    .line 2243
    .local v1, "resultMsg":Landroid/os/Message;
    iget v2, v1, Landroid/os/Message;->arg1:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    const/4 v0, 0x1

    .line 2244
    .local v0, "result":Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Message;->recycle()V

    .line 2245
    return v0

    .line 2242
    .end local v0    # "result":Z
    .end local v1    # "resultMsg":Landroid/os/Message;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 2243
    .restart local v1    # "resultMsg":Landroid/os/Message;
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "result":Z
    goto :goto_1
.end method

.method public syncGetConfiguredNetworks(ILcom/android/internal/util/AsyncChannel;)Ljava/util/List;
    .locals 3
    .param p1, "uuid"    # I
    .param p2, "channel"    # Lcom/android/internal/util/AsyncChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/internal/util/AsyncChannel;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2167
    const v2, 0x2003b

    invoke-virtual {p2, v2, p1}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(II)Landroid/os/Message;

    move-result-object v1

    .line 2168
    .local v1, "resultMsg":Landroid/os/Message;
    iget-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    .line 2169
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-virtual {v1}, Landroid/os/Message;->recycle()V

    .line 2170
    return-object v0
.end method

.method public syncGetConnectionStatistics(Lcom/android/internal/util/AsyncChannel;)Landroid/net/wifi/WifiConnectionStatistics;
    .locals 3
    .param p1, "channel"    # Lcom/android/internal/util/AsyncChannel;

    .prologue
    .line 2194
    const v2, 0x2004c

    invoke-virtual {p1, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(I)Landroid/os/Message;

    move-result-object v1

    .line 2195
    .local v1, "resultMsg":Landroid/os/Message;
    iget-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/wifi/WifiConnectionStatistics;

    .line 2196
    .local v0, "result":Landroid/net/wifi/WifiConnectionStatistics;
    invoke-virtual {v1}, Landroid/os/Message;->recycle()V

    .line 2197
    return-object v0
.end method

.method public syncGetDhcpResults()Landroid/net/DhcpResults;
    .locals 3

    .prologue
    .line 2010
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mDhcpResultsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2011
    :try_start_0
    new-instance v0, Landroid/net/DhcpResults;

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mDhcpResults:Landroid/net/DhcpResults;

    invoke-direct {v0, v2}, Landroid/net/DhcpResults;-><init>(Landroid/net/DhcpResults;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 2010
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public syncGetLinkLayerStats(Lcom/android/internal/util/AsyncChannel;)Landroid/net/wifi/WifiLinkLayerStats;
    .locals 3
    .param p1, "channel"    # Lcom/android/internal/util/AsyncChannel;

    .prologue
    .line 2215
    const v2, 0x2003f

    invoke-virtual {p1, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(I)Landroid/os/Message;

    move-result-object v1

    .line 2216
    .local v1, "resultMsg":Landroid/os/Message;
    iget-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/wifi/WifiLinkLayerStats;

    .line 2217
    .local v0, "result":Landroid/net/wifi/WifiLinkLayerStats;
    invoke-virtual {v1}, Landroid/os/Message;->recycle()V

    .line 2218
    return-object v0
.end method

.method public syncGetMatchingWifiConfig(Landroid/net/wifi/ScanResult;Lcom/android/internal/util/AsyncChannel;)Landroid/net/wifi/WifiConfiguration;
    .locals 2
    .param p1, "scanResult"    # Landroid/net/wifi/ScanResult;
    .param p2, "channel"    # Lcom/android/internal/util/AsyncChannel;

    .prologue
    .line 2182
    const v1, 0x20063

    invoke-virtual {p2, v1, p1}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2183
    .local v0, "resultMsg":Landroid/os/Message;
    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    return-object v1
.end method

.method public syncGetPrivilegedConfiguredNetwork(Lcom/android/internal/util/AsyncChannel;)Ljava/util/List;
    .locals 3
    .param p1, "channel"    # Lcom/android/internal/util/AsyncChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/AsyncChannel;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2175
    const v2, 0x2003e

    .line 2174
    invoke-virtual {p1, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(I)Landroid/os/Message;

    move-result-object v1

    .line 2176
    .local v1, "resultMsg":Landroid/os/Message;
    iget-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    .line 2177
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-virtual {v1}, Landroid/os/Message;->recycle()V

    .line 2178
    return-object v0
.end method

.method public syncGetScanResultsList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2053
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mScanResultsLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2054
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2055
    .local v2, "scanList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mScanResults:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "result$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/ScanDetail;

    .line 2056
    .local v0, "result":Lcom/android/server/wifi/ScanDetail;
    new-instance v3, Landroid/net/wifi/ScanResult;

    invoke-virtual {v0}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/net/wifi/ScanResult;-><init>(Landroid/net/wifi/ScanResult;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2053
    .end local v0    # "result":Lcom/android/server/wifi/ScanDetail;
    .end local v1    # "result$iterator":Ljava/util/Iterator;
    .end local v2    # "scanList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .restart local v1    # "result$iterator":Ljava/util/Iterator;
    .restart local v2    # "scanList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :cond_0
    monitor-exit v4

    .line 2058
    return-object v2
.end method

.method public syncGetSupportedFeatures(Lcom/android/internal/util/AsyncChannel;)I
    .locals 3
    .param p1, "channel"    # Lcom/android/internal/util/AsyncChannel;

    .prologue
    .line 2205
    const v2, 0x2003d

    invoke-virtual {p1, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(I)Landroid/os/Message;

    move-result-object v0

    .line 2206
    .local v0, "resultMsg":Landroid/os/Message;
    iget v1, v0, Landroid/os/Message;->arg1:I

    .line 2207
    .local v1, "supportedFeatureSet":I
    invoke-virtual {v0}, Landroid/os/Message;->recycle()V

    .line 2208
    return v1
.end method

.method public syncGetWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;
    .locals 1

    .prologue
    .line 1901
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mStaAndAPConcurrency:Z

    if-eqz v0, :cond_0

    .line 1902
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mSoftApStateMachine:Lcom/android/server/wifi/SoftApStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/SoftApStateMachine;->syncGetWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    return-object v0

    .line 1904
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiApConfigStore:Lcom/android/server/wifi/WifiApConfigStore;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiApConfigStore;->getApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public syncGetWifiApState()I
    .locals 1

    .prologue
    .line 1938
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mStaAndAPConcurrency:Z

    if-eqz v0, :cond_0

    .line 1939
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mSoftApStateMachine:Lcom/android/server/wifi/SoftApStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/SoftApStateMachine;->syncGetWifiApState()I

    move-result v0

    return v0

    .line 1941
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiApState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public syncGetWifiApStateByName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1948
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiApState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1960
    const-string/jumbo v0, "[invalid state]"

    return-object v0

    .line 1950
    :pswitch_0
    const-string/jumbo v0, "disabling"

    return-object v0

    .line 1952
    :pswitch_1
    const-string/jumbo v0, "disabled"

    return-object v0

    .line 1954
    :pswitch_2
    const-string/jumbo v0, "enabling"

    return-object v0

    .line 1956
    :pswitch_3
    const-string/jumbo v0, "enabled"

    return-object v0

    .line 1958
    :pswitch_4
    const-string/jumbo v0, "failed"

    return-object v0

    .line 1948
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public syncGetWifiState()I
    .locals 1

    .prologue
    .line 1911
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public syncGetWifiStateByName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1918
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1930
    const-string/jumbo v0, "[invalid state]"

    return-object v0

    .line 1920
    :pswitch_0
    const-string/jumbo v0, "disabling"

    return-object v0

    .line 1922
    :pswitch_1
    const-string/jumbo v0, "disabled"

    return-object v0

    .line 1924
    :pswitch_2
    const-string/jumbo v0, "enabling"

    return-object v0

    .line 1926
    :pswitch_3
    const-string/jumbo v0, "enabled"

    return-object v0

    .line 1928
    :pswitch_4
    const-string/jumbo v0, "unknown state"

    return-object v0

    .line 1918
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public syncGetWpsNfcConfigurationToken(I)Ljava/lang/String;
    .locals 1
    .param p1, "netId"    # I

    .prologue
    .line 2267
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiNative;->getNfcWpsConfigurationToken(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public syncModifyPasspointManagementObject(Lcom/android/internal/util/AsyncChannel;Ljava/lang/String;Ljava/util/List;)I
    .locals 4
    .param p1, "channel"    # Lcom/android/internal/util/AsyncChannel;
    .param p2, "fqdn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/AsyncChannel;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/PasspointManagementObjectDefinition;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 2073
    .local p3, "managementObjectDefinitions":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/PasspointManagementObjectDefinition;>;"
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2074
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v3, "FQDN"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2075
    const-string/jumbo v3, "MOS"

    invoke-virtual {v0, v3, p3}, Landroid/os/Bundle;->putParcelableList(Ljava/lang/String;Ljava/util/List;)V

    .line 2076
    const v3, 0x20067

    invoke-virtual {p1, v3, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 2077
    .local v2, "resultMsg":Landroid/os/Message;
    iget v1, v2, Landroid/os/Message;->arg1:I

    .line 2078
    .local v1, "result":I
    invoke-virtual {v2}, Landroid/os/Message;->recycle()V

    .line 2079
    return v1
.end method

.method public syncPingSupplicant(Lcom/android/internal/util/AsyncChannel;)Z
    .locals 4
    .param p1, "channel"    # Lcom/android/internal/util/AsyncChannel;

    .prologue
    .line 1539
    const v2, 0x20033

    invoke-virtual {p1, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(I)Landroid/os/Message;

    move-result-object v1

    .line 1540
    .local v1, "resultMsg":Landroid/os/Message;
    iget v2, v1, Landroid/os/Message;->arg1:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v0, 0x1

    .line 1541
    .local v0, "result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Message;->recycle()V

    .line 1542
    return v0

    .line 1540
    .end local v0    # "result":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "result":Z
    goto :goto_0
.end method

.method public syncQueryPasspointIcon(Lcom/android/internal/util/AsyncChannel;JLjava/lang/String;)Z
    .locals 6
    .param p1, "channel"    # Lcom/android/internal/util/AsyncChannel;
    .param p2, "bssid"    # J
    .param p4, "fileName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 2083
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2084
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v4, "BSSID"

    invoke-virtual {v0, v4, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2085
    const-string/jumbo v4, "FILENAME"

    invoke-virtual {v0, v4, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2086
    const v4, 0x20068

    invoke-virtual {p1, v4, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 2087
    .local v2, "resultMsg":Landroid/os/Message;
    iget v1, v2, Landroid/os/Message;->arg1:I

    .line 2088
    .local v1, "result":I
    invoke-virtual {v2}, Landroid/os/Message;->recycle()V

    .line 2089
    if-ne v1, v3, :cond_0

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public syncRemoveNetwork(Lcom/android/internal/util/AsyncChannel;I)Z
    .locals 4
    .param p1, "channel"    # Lcom/android/internal/util/AsyncChannel;
    .param p2, "networkId"    # I

    .prologue
    .line 2227
    const v2, 0x20035

    invoke-virtual {p1, v2, p2}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(II)Landroid/os/Message;

    move-result-object v1

    .line 2228
    .local v1, "resultMsg":Landroid/os/Message;
    iget v2, v1, Landroid/os/Message;->arg1:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v0, 0x1

    .line 2229
    .local v0, "result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Message;->recycle()V

    .line 2230
    return v0

    .line 2228
    .end local v0    # "result":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "result":Z
    goto :goto_0
.end method

.method public syncRequestConnectionInfo()Landroid/net/wifi/WifiInfo;
    .locals 1

    .prologue
    .line 2002
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->getWiFiInfoForUid(I)Landroid/net/wifi/WifiInfo;

    move-result-object v0

    return-object v0
.end method

.method public syncSaveConfig(Lcom/android/internal/util/AsyncChannel;)Z
    .locals 4
    .param p1, "channel"    # Lcom/android/internal/util/AsyncChannel;

    .prologue
    .line 2411
    const v2, 0x2003a

    invoke-virtual {p1, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(I)Landroid/os/Message;

    move-result-object v1

    .line 2412
    .local v1, "resultMsg":Landroid/os/Message;
    iget v2, v1, Landroid/os/Message;->arg1:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v0, 0x1

    .line 2413
    .local v0, "result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Message;->recycle()V

    .line 2414
    return v0

    .line 2412
    .end local v0    # "result":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "result":Z
    goto :goto_0
.end method

.method unwantedNetwork(I)V
    .locals 1
    .param p1, "reason"    # I

    .prologue
    .line 6667
    const v0, 0x20090

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(II)V

    .line 6666
    return-void
.end method

.method updateAssociatedScanPermission()V
    .locals 0

    .prologue
    .line 1442
    return-void
.end method

.method public updateBatteryWorkSource(Landroid/os/WorkSource;)V
    .locals 5
    .param p1, "newSource"    # Landroid/os/WorkSource;

    .prologue
    .line 2418
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mRunningWifiUids:Landroid/os/WorkSource;

    monitor-enter v2

    .line 2420
    if-eqz p1, :cond_0

    .line 2421
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mRunningWifiUids:Landroid/os/WorkSource;

    invoke-virtual {v1, p1}, Landroid/os/WorkSource;->set(Landroid/os/WorkSource;)V

    .line 2423
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mIsRunning:Z

    if-eqz v1, :cond_3

    .line 2424
    iget-boolean v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mReportedRunning:Z

    if-eqz v1, :cond_2

    .line 2427
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastRunningWifiUids:Landroid/os/WorkSource;

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mRunningWifiUids:Landroid/os/WorkSource;

    invoke-virtual {v1, v3}, Landroid/os/WorkSource;->diff(Landroid/os/WorkSource;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2428
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastRunningWifiUids:Landroid/os/WorkSource;

    .line 2429
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mRunningWifiUids:Landroid/os/WorkSource;

    .line 2428
    invoke-interface {v1, v3, v4}, Lcom/android/internal/app/IBatteryStats;->noteWifiRunningChanged(Landroid/os/WorkSource;Landroid/os/WorkSource;)V

    .line 2430
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastRunningWifiUids:Landroid/os/WorkSource;

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mRunningWifiUids:Landroid/os/WorkSource;

    invoke-virtual {v1, v3}, Landroid/os/WorkSource;->set(Landroid/os/WorkSource;)V

    .line 2446
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, p1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit v2

    .line 2417
    return-void

    .line 2434
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mRunningWifiUids:Landroid/os/WorkSource;

    invoke-interface {v1, v3}, Lcom/android/internal/app/IBatteryStats;->noteWifiRunning(Landroid/os/WorkSource;)V

    .line 2435
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastRunningWifiUids:Landroid/os/WorkSource;

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mRunningWifiUids:Landroid/os/WorkSource;

    invoke-virtual {v1, v3}, Landroid/os/WorkSource;->set(Landroid/os/WorkSource;)V

    .line 2436
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mReportedRunning:Z

    goto :goto_0

    .line 2447
    :catch_0
    move-exception v0

    .local v0, "ignore":Landroid/os/RemoteException;
    goto :goto_1

    .line 2439
    .end local v0    # "ignore":Landroid/os/RemoteException;
    :cond_3
    iget-boolean v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mReportedRunning:Z

    if-eqz v1, :cond_1

    .line 2441
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastRunningWifiUids:Landroid/os/WorkSource;

    invoke-interface {v1, v3}, Lcom/android/internal/app/IBatteryStats;->noteWifiStopped(Landroid/os/WorkSource;)V

    .line 2442
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastRunningWifiUids:Landroid/os/WorkSource;

    invoke-virtual {v1}, Landroid/os/WorkSource;->clear()V

    .line 2443
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mReportedRunning:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2418
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method updateLoggingLevel()V
    .locals 5

    .prologue
    const/16 v0, 0x3e8

    const/16 v1, 0x64

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1395
    iget v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mVerboseLoggingLevel:I

    if-lez v4, :cond_3

    .line 1396
    sput-boolean v2, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    .line 1397
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1398
    const/16 v0, 0xc8

    .line 1397
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->setLogRecSize(I)V

    .line 1407
    :goto_0
    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mVerboseLoggingLevel:I

    if-lez v0, :cond_5

    move v0, v2

    :goto_1
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->configureVerboseHalLogging(Z)V

    .line 1408
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->setSupplicantLogLevel()V

    .line 1409
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mCountryCode:Lcom/android/server/wifi/WifiCountryCode;

    iget v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mVerboseLoggingLevel:I

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiCountryCode;->enableVerboseLogging(I)V

    .line 1410
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiLogger:Lcom/android/server/wifi/BaseWifiLogger;

    sget-boolean v1, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/BaseWifiLogger;->startLogging(Z)V

    .line 1411
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    iget v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mVerboseLoggingLevel:I

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiMonitor;->enableVerboseLogging(I)V

    .line 1412
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiP2pServiceImpl:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    iget v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mVerboseLoggingLevel:I

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->enableVerboseLogging(I)V

    .line 1413
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mVerboseLoggingLevel:I

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiNative;->enableVerboseLogging(I)V

    .line 1414
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mVerboseLoggingLevel:I

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigManager;->enableVerboseLogging(I)V

    .line 1415
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStateTracker:Lcom/android/server/wifi/SupplicantStateTracker;

    iget v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mVerboseLoggingLevel:I

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/SupplicantStateTracker;->enableVerboseLogging(I)V

    .line 1416
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiQualifiedNetworkSelector:Lcom/android/server/wifi/WifiQualifiedNetworkSelector;

    iget v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mVerboseLoggingLevel:I

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->enableVerboseLogging(I)V

    .line 1417
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConnectivityManager:Lcom/android/server/wifi/WifiConnectivityManager;

    if-eqz v0, :cond_1

    .line 1418
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConnectivityManager:Lcom/android/server/wifi/WifiConnectivityManager;

    iget v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mVerboseLoggingLevel:I

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConnectivityManager;->enableVerboseLogging(I)V

    .line 1420
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mStaAndAPConcurrency:Z

    if-eqz v0, :cond_2

    .line 1421
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mSoftApStateMachine:Lcom/android/server/wifi/SoftApStateMachine;

    iget v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mVerboseLoggingLevel:I

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/SoftApStateMachine;->enableVerboseLogging(I)V

    .line 1394
    :cond_2
    return-void

    .line 1400
    :cond_3
    sput-boolean v3, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    .line 1401
    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiStateMachine;->setLogRecSize(I)V

    .line 1404
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v4

    if-eqz v4, :cond_4

    move v0, v1

    :cond_4
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->setLogRecSize(I)V

    goto :goto_0

    :cond_5
    move v0, v3

    .line 1407
    goto :goto_1
.end method

.method updateWifiMetrics()V
    .locals 12

    .prologue
    .line 8517
    iget-object v10, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    invoke-virtual {v10}, Lcom/android/server/wifi/WifiConfigManager;->getConfiguredNetworksSize()I

    move-result v9

    .line 8518
    .local v9, "numSavedNetworks":I
    const/4 v6, 0x0

    .line 8519
    .local v6, "numOpenNetworks":I
    const/4 v8, 0x0

    .line 8520
    .local v8, "numPersonalNetworks":I
    const/4 v2, 0x0

    .line 8521
    .local v2, "numEnterpriseNetworks":I
    const/4 v5, 0x0

    .line 8522
    .local v5, "numNetworksAddedByUser":I
    const/4 v4, 0x0

    .line 8523
    .local v4, "numNetworksAddedByApps":I
    const/4 v3, 0x0

    .line 8524
    .local v3, "numHiddenNetworks":I
    const/4 v7, 0x0

    .line 8525
    .local v7, "numPasspoint":I
    iget-object v10, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    invoke-virtual {v10}, Lcom/android/server/wifi/WifiConfigManager;->getSavedNetworks()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "config$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 8526
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v10, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/util/BitSet;->get(I)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 8527
    add-int/lit8 v6, v6, 0x1

    .line 8533
    :goto_1
    iget-boolean v10, v0, Landroid/net/wifi/WifiConfiguration;->selfAdded:Z

    if-eqz v10, :cond_4

    .line 8534
    add-int/lit8 v5, v5, 0x1

    .line 8538
    :goto_2
    iget-boolean v10, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    if-eqz v10, :cond_1

    .line 8539
    add-int/lit8 v3, v3, 0x1

    .line 8541
    :cond_1
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 8542
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 8528
    :cond_2
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->isEnterprise()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 8529
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 8531
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 8536
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 8545
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_5
    iget-object v10, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    invoke-virtual {v10, v9}, Lcom/android/server/wifi/WifiMetrics;->setNumSavedNetworks(I)V

    .line 8546
    iget-object v10, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    invoke-virtual {v10, v6}, Lcom/android/server/wifi/WifiMetrics;->setNumOpenNetworks(I)V

    .line 8547
    iget-object v10, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    invoke-virtual {v10, v8}, Lcom/android/server/wifi/WifiMetrics;->setNumPersonalNetworks(I)V

    .line 8548
    iget-object v10, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    invoke-virtual {v10, v2}, Lcom/android/server/wifi/WifiMetrics;->setNumEnterpriseNetworks(I)V

    .line 8549
    iget-object v10, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    invoke-virtual {v10, v5}, Lcom/android/server/wifi/WifiMetrics;->setNumNetworksAddedByUser(I)V

    .line 8550
    iget-object v10, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    invoke-virtual {v10, v4}, Lcom/android/server/wifi/WifiMetrics;->setNumNetworksAddedByApps(I)V

    .line 8551
    iget-object v10, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    invoke-virtual {v10, v3}, Lcom/android/server/wifi/WifiMetrics;->setNumHiddenNetworks(I)V

    .line 8552
    iget-object v10, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    invoke-virtual {v10, v7}, Lcom/android/server/wifi/WifiMetrics;->setNumPasspointNetworks(I)V

    .line 8516
    return-void
.end method
