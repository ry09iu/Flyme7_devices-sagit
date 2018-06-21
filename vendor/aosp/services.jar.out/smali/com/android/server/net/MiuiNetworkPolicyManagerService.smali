.class Lcom/android/server/net/MiuiNetworkPolicyManagerService;
.super Ljava/lang/Object;
.source "MiuiNetworkPolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/net/MiuiNetworkPolicyManagerService$1;,
        Lcom/android/server/net/MiuiNetworkPolicyManagerService$2;,
        Lcom/android/server/net/MiuiNetworkPolicyManagerService$3;,
        Lcom/android/server/net/MiuiNetworkPolicyManagerService$4;,
        Lcom/android/server/net/MiuiNetworkPolicyManagerService$5;
    }
.end annotation


# static fields
.field private static final BG_MIN_BANDWIDTH:J = 0x186a0L

.field private static final CLOUD_LOW_LATENCY_WHITELIST:Ljava/lang/String; = "cloud_lowlatency_whitelist"

.field private static final CLOUD_NETWORK_PRIORITY_ENABLED:Ljava/lang/String; = "cloud_network_priority_enabled"

.field private static final DEBUG:Z = false

.field private static final DISABLE_LIMIT_TIMEOUT:I = 0x1388

.field private static final ENABLE_LIMIT_TIMEOUT:I = 0x61a8

.field private static final FG_MAX_BANDWIDTH:J = 0x7a120L

.field private static final HISTORY_BANDWIDTH_MIN:J = 0x30d40L

.field private static final HISTORY_BANDWIDTH_SIZE:I = 0x14

.field private static final MSG_BANDWIDTH_POLL:I = 0x6

.field private static final MSG_DISABLE_LIMIT_TIMEOUT:I = 0x5

.field private static final MSG_ENABLE_LIMIT_TIMEOUT:I = 0x4

.field private static final MSG_SET_TRAFFIC_POLICY:I = 0x7

.field private static final MSG_UID_DATA_ACTIVITY_CHANGED:I = 0x3

.field private static final MSG_UID_STATE_CHANGED:I = 0x1

.field private static final MSG_UID_STATE_GONED:I = 0x2

.field private static final NETWORK_PRIORITY_MODE_CLOSED:I = 0xff

.field private static final NETWORK_PRIORITY_MODE_FAST:I = 0x2

.field private static final NETWORK_PRIORITY_MODE_NORMAL:I = 0x1

.field private static final NETWORK_PRIORITY_MODE_WMM:I = 0x0

.field private static final NETWORK_PRIORITY_WHITELIST:Ljava/lang/String; = "cloud_network_priority_whitelist"

.field private static final POLL_BANDWIDTH_INTERVAL_SECS:I = 0x3

.field private static final TAG:Ljava/lang/String; = "MiuiNetworkPolicy"

.field private static final WMM_AC_BE:I = 0x0

.field private static final WMM_AC_VI:I = 0x1

.field private static final WMM_AC_VO:I = 0x2

.field private static sSelf:Lcom/android/server/net/MiuiNetworkPolicyManagerService;


# instance fields
.field private final mActivityManager:Landroid/app/IActivityManager;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mHandlerCallback:Landroid/os/Handler$Callback;

.field private mHistoryBandWidth:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mInterfaceName:Ljava/lang/String;

.field private mLastRxBytes:J

.field private mLimitEnabled:Z

.field private mLowLatencyApps:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mLowLatencyAppsPN:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNetworkManager:Lcom/android/server/MiuiNetworkManagementService;

.field private mNetworkPriorityMode:I

.field private final mPackageReceiver:Landroid/content/BroadcastReceiver;

.field private mTrafficPolicyMode:I

.field private mUidDataActivityObserver:Lcom/android/server/MiuiNetworkManagementService$NetworkEventObserver;

.field private final mUidObserver:Landroid/app/IUidObserver;

.field final mUidState:Landroid/util/SparseIntArray;

.field private mUnRestrictApps:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mUnRestrictAppsPN:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mWifiConnected:Z

.field private final mWifiStateReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static synthetic -get0(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mLimitEnabled:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mLowLatencyApps:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mLowLatencyAppsPN:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mNetworkPriorityMode:I

    return v0
.end method

.method static synthetic -get6(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mUnRestrictApps:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mUnRestrictAppsPN:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mWifiConnected:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/server/net/MiuiNetworkPolicyManagerService;Ljava/util/Set;)Ljava/util/Set;
    .locals 0

    iput-object p1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mLowLatencyAppsPN:Ljava/util/Set;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/server/net/MiuiNetworkPolicyManagerService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mTrafficPolicyMode:I

    return p1
.end method

.method static synthetic -set2(Lcom/android/server/net/MiuiNetworkPolicyManagerService;Ljava/util/Set;)Ljava/util/Set;
    .locals 0

    iput-object p1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mUnRestrictAppsPN:Ljava/util/Set;

    return-object p1
.end method

.method static synthetic -set3(Lcom/android/server/net/MiuiNetworkPolicyManagerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mWifiConnected:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/net/MiuiNetworkPolicyManagerService;I)Z
    .locals 1
    .param p1, "mode"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->isLimitterEnabled(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/net/MiuiNetworkPolicyManagerService;I)Z
    .locals 1
    .param p1, "mode"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->isWmmerEnabled(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->networkPriorityMode()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/android/server/net/MiuiNetworkPolicyManagerService;Landroid/content/Context;)Ljava/util/Set;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->getLowLatencyApps(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap4(Lcom/android/server/net/MiuiNetworkPolicyManagerService;Landroid/content/Context;)Ljava/util/Set;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->getUnRestrictedApps(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap5(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->calculateBandWidth()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/net/MiuiNetworkPolicyManagerService;I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->enableNetworkPriority(I)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/net/MiuiNetworkPolicyManagerService;I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->removeUidState(I)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/server/net/MiuiNetworkPolicyManagerService;Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->updateLimit(Z)V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/server/net/MiuiNetworkPolicyManagerService;II)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "uidState"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->updateUidState(II)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    .line 392
    new-instance v1, Lcom/android/server/net/MiuiNetworkPolicyManagerService$1;

    invoke-direct {v1, p0}, Lcom/android/server/net/MiuiNetworkPolicyManagerService$1;-><init>(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)V

    iput-object v1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mWifiStateReceiver:Landroid/content/BroadcastReceiver;

    .line 432
    new-instance v1, Lcom/android/server/net/MiuiNetworkPolicyManagerService$2;

    invoke-direct {v1, p0}, Lcom/android/server/net/MiuiNetworkPolicyManagerService$2;-><init>(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)V

    iput-object v1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mUidObserver:Landroid/app/IUidObserver;

    .line 566
    new-instance v1, Lcom/android/server/net/MiuiNetworkPolicyManagerService$3;

    invoke-direct {v1, p0}, Lcom/android/server/net/MiuiNetworkPolicyManagerService$3;-><init>(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)V

    iput-object v1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mHandlerCallback:Landroid/os/Handler$Callback;

    .line 623
    new-instance v1, Lcom/android/server/net/MiuiNetworkPolicyManagerService$4;

    invoke-direct {v1, p0}, Lcom/android/server/net/MiuiNetworkPolicyManagerService$4;-><init>(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)V

    .line 622
    iput-object v1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mUidDataActivityObserver:Lcom/android/server/MiuiNetworkManagementService$NetworkEventObserver;

    .line 633
    new-instance v1, Lcom/android/server/net/MiuiNetworkPolicyManagerService$5;

    invoke-direct {v1, p0}, Lcom/android/server/net/MiuiNetworkPolicyManagerService$5;-><init>(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)V

    iput-object v1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    .line 131
    iput-object p1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 132
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mActivityManager:Landroid/app/IActivityManager;

    .line 133
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "MiuiNetworkPolicy"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 134
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 135
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mHandlerCallback:Landroid/os/Handler$Callback;

    invoke-direct {v1, v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    .line 136
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mUnRestrictApps:Ljava/util/Set;

    .line 137
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mLowLatencyApps:Ljava/util/Set;

    .line 138
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mHistoryBandWidth:Ljava/util/Deque;

    .line 139
    const/16 v1, 0xff

    iput v1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mNetworkPriorityMode:I

    .line 140
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mTrafficPolicyMode:I

    .line 130
    return-void
.end method

.method private addHistoryBandWidth(J)V
    .locals 3
    .param p1, "bwBps"    # J

    .prologue
    .line 265
    iget-object v0, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mHistoryBandWidth:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    const/16 v1, 0x14

    if-lt v0, v1, :cond_0

    .line 266
    iget-object v0, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mHistoryBandWidth:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->removeLast()Ljava/lang/Object;

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mHistoryBandWidth:Ljava/util/Deque;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    .line 264
    return-void
.end method

.method private calculateBandWidth()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    .line 244
    iget-object v4, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mInterfaceName:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/TrafficStats;->getRxBytes(Ljava/lang/String;)J

    move-result-wide v2

    .line 245
    .local v2, "rxBytes":J
    cmp-long v4, v2, v8

    if-ltz v4, :cond_0

    iget-wide v4, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mLastRxBytes:J

    cmp-long v4, v4, v2

    if-lez v4, :cond_1

    .line 246
    :cond_0
    const-string/jumbo v4, "MiuiNetworkPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "rxByte: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", mLastRxBytes: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mLastRxBytes:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iput-wide v8, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mLastRxBytes:J

    .line 249
    :cond_1
    iget-wide v4, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mLastRxBytes:J

    cmp-long v4, v4, v8

    if-nez v4, :cond_2

    cmp-long v4, v2, v8

    if-ltz v4, :cond_2

    .line 250
    iput-wide v2, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mLastRxBytes:J

    .line 251
    return-void

    .line 253
    :cond_2
    iget-wide v4, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mLastRxBytes:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x3

    div-long v0, v4, v6

    .line 254
    .local v0, "bwBps":J
    const-wide/32 v4, 0x30d40

    cmp-long v4, v0, v4

    if-ltz v4, :cond_3

    .line 255
    invoke-direct {p0, v0, v1}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->addHistoryBandWidth(J)V

    .line 261
    :cond_3
    iput-wide v2, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mLastRxBytes:J

    .line 243
    return-void
.end method

.method private enableBandwidthPoll(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    const/4 v1, 0x6

    .line 272
    iget-object v0, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 273
    iget-object v0, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mHistoryBandWidth:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->clear()V

    .line 274
    if-eqz p1, :cond_0

    .line 275
    iget-object v0, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 276
    const-wide/32 v0, 0x30d40

    invoke-direct {p0, v0, v1}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->addHistoryBandWidth(J)V

    .line 271
    :cond_0
    return-void
.end method

.method private enableNetworkPriority(I)V
    .locals 10
    .param p1, "mode"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 336
    const/4 v1, 0x0

    .line 337
    .local v1, "isNeedUpdate":Z
    invoke-direct {p0}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->isWmmerEnabled()Z

    move-result v4

    .line 338
    .local v4, "wasWmmerEnabled":Z
    invoke-direct {p0, p1}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->isWmmerEnabled(I)Z

    move-result v2

    .line 339
    .local v2, "isWmmerEnabled":Z
    if-eqz v4, :cond_0

    if-eqz v2, :cond_5

    .line 342
    :cond_0
    if-nez v4, :cond_1

    if-eqz v2, :cond_1

    .line 344
    iget-object v5, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mNetworkManager:Lcom/android/server/MiuiNetworkManagementService;

    invoke-virtual {v5, v9}, Lcom/android/server/MiuiNetworkManagementService;->enableWmmer(Z)Z

    .line 345
    const/4 v1, 0x1

    .line 348
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->isLimitterEnabled()Z

    move-result v3

    .line 349
    .local v3, "wasLimitterEnabled":Z
    invoke-direct {p0, p1}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->isLimitterEnabled(I)Z

    move-result v0

    .line 350
    .local v0, "isLimitterEnabled":Z
    if-eqz v3, :cond_2

    if-eqz v0, :cond_6

    .line 353
    :cond_2
    if-nez v3, :cond_3

    if-eqz v0, :cond_3

    .line 354
    iget-object v5, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mNetworkManager:Lcom/android/server/MiuiNetworkManagementService;

    invoke-virtual {v5, v9}, Lcom/android/server/MiuiNetworkManagementService;->enableLimitter(Z)Z

    .line 355
    const/4 v1, 0x1

    .line 357
    :cond_3
    :goto_1
    if-ne p1, v9, :cond_7

    .line 358
    invoke-direct {p0, v9}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->enableBandwidthPoll(Z)V

    .line 362
    :goto_2
    iput p1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mNetworkPriorityMode:I

    .line 363
    if-eqz v1, :cond_4

    .line 364
    invoke-direct {p0}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->updateRuleGlobal()V

    .line 335
    :cond_4
    return-void

    .line 341
    .end local v0    # "isLimitterEnabled":Z
    .end local v3    # "wasLimitterEnabled":Z
    :cond_5
    iget-object v5, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mNetworkManager:Lcom/android/server/MiuiNetworkManagementService;

    invoke-virtual {v5, v8}, Lcom/android/server/MiuiNetworkManagementService;->enableWmmer(Z)Z

    goto :goto_0

    .line 351
    .restart local v0    # "isLimitterEnabled":Z
    .restart local v3    # "wasLimitterEnabled":Z
    :cond_6
    iget-object v5, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x3

    invoke-virtual {v6, v7, v8, v8}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 352
    iget-object v5, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mNetworkManager:Lcom/android/server/MiuiNetworkManagementService;

    invoke-virtual {v5, v8}, Lcom/android/server/MiuiNetworkManagementService;->enableLimitter(Z)Z

    goto :goto_1

    .line 360
    :cond_7
    invoke-direct {p0, v8}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->enableBandwidthPoll(Z)V

    goto :goto_2
.end method

.method public static get()Lcom/android/server/net/MiuiNetworkPolicyManagerService;
    .locals 2

    .prologue
    .line 123
    sget-object v0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->sSelf:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    if-eqz v0, :cond_0

    .line 124
    sget-object v0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->sSelf:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    return-object v0

    .line 126
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "MiuiNetworkPolicyManagerService has not been initialized "

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getLowLatencyApps(Landroid/content/Context;)Ljava/util/Set;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 502
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "cloud_lowlatency_whitelist"

    const/4 v6, -0x2

    .line 501
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 503
    .local v3, "whiteString":Ljava/lang/String;
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 504
    .local v2, "whiteList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 505
    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 506
    .local v1, "packages":[Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 507
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v1

    if-ge v0, v4, :cond_0

    .line 508
    aget-object v4, v1, v0

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 507
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 512
    .end local v0    # "i":I
    .end local v1    # "packages":[Ljava/lang/String;
    :cond_0
    return-object v2
.end method

.method private getUnRestrictedApps(Landroid/content/Context;)Ljava/util/Set;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 453
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "cloud_network_priority_whitelist"

    const/4 v6, -0x2

    .line 452
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 454
    .local v3, "whiteString":Ljava/lang/String;
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 455
    .local v2, "whiteList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 456
    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 457
    .local v1, "packages":[Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 458
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v1

    if-ge v0, v4, :cond_0

    .line 459
    aget-object v4, v1, v0

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 458
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 463
    .end local v0    # "i":I
    .end local v1    # "packages":[Ljava/lang/String;
    :cond_0
    return-object v2
.end method

.method private getWmmForUidState(II)I
    .locals 2
    .param p1, "uid"    # I
    .param p2, "state"    # I

    .prologue
    .line 180
    invoke-direct {p0, p2}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->isStateWmmed(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 181
    iget-object v0, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mLowLatencyApps:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    const/4 v0, 0x2

    return v0

    .line 184
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 187
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private isLimitterEnabled()Z
    .locals 1

    .prologue
    .line 303
    iget v0, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mNetworkPriorityMode:I

    invoke-direct {p0, v0}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->isLimitterEnabled(I)Z

    move-result v0

    return v0
.end method

.method private isLimitterEnabled(I)Z
    .locals 2
    .param p1, "mode"    # I

    .prologue
    const/4 v0, 0x1

    .line 307
    if-eq p1, v0, :cond_0

    .line 308
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 307
    :cond_0
    :goto_0
    return v0

    .line 308
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isStateUnRestrictedForUid(II)Z
    .locals 2
    .param p1, "uid"    # I
    .param p2, "state"    # I

    .prologue
    const/4 v0, 0x0

    .line 194
    if-ltz p2, :cond_0

    const/4 v1, 0x4

    if-le p2, v1, :cond_1

    .line 195
    const/16 v1, 0x10

    if-ge p2, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mUnRestrictApps:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 194
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isStateWmmed(I)Z
    .locals 2
    .param p1, "state"    # I

    .prologue
    const/4 v0, 0x0

    .line 190
    if-ltz p1, :cond_0

    const/4 v1, 0x2

    if-gt p1, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private static isUidValidForRules(I)Z
    .locals 1
    .param p0, "uid"    # I

    .prologue
    .line 200
    const/16 v0, 0x3f5

    if-eq p0, v0, :cond_0

    const/16 v0, 0x3fb

    if-ne p0, v0, :cond_1

    .line 202
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 201
    :cond_1
    invoke-static {p0}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    .line 200
    if-nez v0, :cond_0

    .line 205
    const/4 v0, 0x0

    return v0
.end method

.method private isWmmerEnabled()Z
    .locals 1

    .prologue
    .line 312
    iget v0, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mNetworkPriorityMode:I

    invoke-direct {p0, v0}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->isWmmerEnabled(I)Z

    move-result v0

    return v0
.end method

.method private isWmmerEnabled(I)Z
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 316
    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->isLimitterEnabled(I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static make(Landroid/content/Context;)Lcom/android/server/net/MiuiNetworkPolicyManagerService;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 118
    new-instance v0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    invoke-direct {v0, p0}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->sSelf:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    .line 119
    sget-object v0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->sSelf:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    return-object v0
.end method

.method private networkPriorityMode()I
    .locals 7

    .prologue
    const/4 v6, -0x2

    .line 282
    iget-object v4, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "cloud_network_priority_enabled"

    .line 281
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 283
    .local v0, "cvalue":Ljava/lang/String;
    const-string/jumbo v4, "off"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x0

    .line 284
    .local v2, "isCloudUnForceClosed":Z
    :goto_0
    const-string/jumbo v4, "sys.net.support.netprio"

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    if-eqz v2, :cond_4

    .line 286
    iget v4, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mTrafficPolicyMode:I

    if-eqz v4, :cond_1

    .line 287
    iget v4, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mTrafficPolicyMode:I

    return v4

    .line 283
    .end local v2    # "isCloudUnForceClosed":Z
    :cond_0
    const/4 v2, 0x1

    .restart local v2    # "isCloudUnForceClosed":Z
    goto :goto_0

    .line 289
    :cond_1
    const/4 v1, 0x0

    .line 290
    .local v1, "def":I
    const-string/jumbo v4, "on"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 291
    const/4 v1, 0x1

    .line 295
    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 296
    const-string/jumbo v5, "user_network_priority_enabled"

    .line 295
    invoke-static {v4, v5, v1, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    .line 297
    .local v3, "uvalue":I
    return v3

    .line 292
    .end local v3    # "uvalue":I
    :cond_3
    const-string/jumbo v4, "fast"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 293
    const/4 v1, 0x2

    goto :goto_1

    .line 299
    .end local v1    # "def":I
    :cond_4
    const/16 v4, 0xff

    return v4
.end method

.method private registerLowLatencyAppsChangedObserver()V
    .locals 5

    .prologue
    .line 516
    new-instance v0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$10;

    iget-object v1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/net/MiuiNetworkPolicyManagerService$10;-><init>(Lcom/android/server/net/MiuiNetworkPolicyManagerService;Landroid/os/Handler;)V

    .line 539
    .local v0, "observer":Landroid/database/ContentObserver;
    iget-object v1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 540
    const-string/jumbo v2, "cloud_lowlatency_whitelist"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, -0x2

    .line 539
    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 542
    iget-object v1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/net/MiuiNetworkPolicyManagerService$11;

    invoke-direct {v2, p0, v0}, Lcom/android/server/net/MiuiNetworkPolicyManagerService$11;-><init>(Lcom/android/server/net/MiuiNetworkPolicyManagerService;Landroid/database/ContentObserver;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 515
    return-void
.end method

.method private registerNetworkProrityModeChangedObserver()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x2

    .line 369
    new-instance v0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$6;

    iget-object v1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/net/MiuiNetworkPolicyManagerService$6;-><init>(Lcom/android/server/net/MiuiNetworkPolicyManagerService;Landroid/os/Handler;)V

    .line 380
    .local v0, "observer":Landroid/database/ContentObserver;
    iget-object v1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 381
    const-string/jumbo v2, "cloud_network_priority_enabled"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 380
    invoke-virtual {v1, v2, v4, v0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 382
    iget-object v1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 383
    const-string/jumbo v2, "user_network_priority_enabled"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 382
    invoke-virtual {v1, v2, v4, v0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 384
    iget-object v1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/net/MiuiNetworkPolicyManagerService$7;

    invoke-direct {v2, p0, v0}, Lcom/android/server/net/MiuiNetworkPolicyManagerService$7;-><init>(Lcom/android/server/net/MiuiNetworkPolicyManagerService;Landroid/database/ContentObserver;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 368
    return-void
.end method

.method private registerUnRestirctAppsChangedObserver()V
    .locals 5

    .prologue
    .line 467
    new-instance v0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$8;

    iget-object v1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/net/MiuiNetworkPolicyManagerService$8;-><init>(Lcom/android/server/net/MiuiNetworkPolicyManagerService;Landroid/os/Handler;)V

    .line 489
    .local v0, "observer":Landroid/database/ContentObserver;
    iget-object v1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 490
    const-string/jumbo v2, "cloud_network_priority_whitelist"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, -0x2

    .line 489
    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 492
    iget-object v1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/net/MiuiNetworkPolicyManagerService$9;

    invoke-direct {v2, p0, v0}, Lcom/android/server/net/MiuiNetworkPolicyManagerService$9;-><init>(Lcom/android/server/net/MiuiNetworkPolicyManagerService;Landroid/database/ContentObserver;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 466
    return-void
.end method

.method private removeUidState(I)V
    .locals 4
    .param p1, "uid"    # I

    .prologue
    const/16 v3, 0x10

    .line 421
    iget-object v2, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    .line 422
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 423
    iget-object v2, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v1

    .line 424
    .local v1, "oldUidState":I
    iget-object v2, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->removeAt(I)V

    .line 425
    if-eq v1, v3, :cond_0

    .line 426
    invoke-direct {p0, p1, v1, v3}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->updateRulesForUidStateChange(III)V

    .line 419
    .end local v1    # "oldUidState":I
    :cond_0
    return-void
.end method

.method private updateLimit(Z)V
    .locals 8
    .param p1, "enabled"    # Z

    .prologue
    .line 551
    iget-boolean v4, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mLimitEnabled:Z

    if-eq v4, p1, :cond_2

    .line 552
    const-wide/16 v0, 0x0

    .line 553
    .local v0, "bwBps":J
    if-eqz p1, :cond_1

    iget v4, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mNetworkPriorityMode:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 554
    const-wide/32 v0, 0x30d40

    .line 555
    iget-object v4, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mHistoryBandWidth:Ljava/util/Deque;

    invoke-interface {v4}, Ljava/util/Deque;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 556
    iget-object v4, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mHistoryBandWidth:Ljava/util/Deque;

    invoke-static {v4}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 558
    :cond_0
    const-wide/16 v4, 0x50

    mul-long/2addr v4, v0

    const-wide/16 v6, 0x64

    div-long/2addr v4, v6

    const-wide/32 v6, 0x7a120

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 559
    .local v2, "fgBw":J
    sub-long v4, v0, v2

    const-wide/32 v6, 0x186a0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 561
    .end local v2    # "fgBw":J
    :cond_1
    iget-object v4, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mNetworkManager:Lcom/android/server/MiuiNetworkManagementService;

    invoke-virtual {v4, p1, v0, v1}, Lcom/android/server/MiuiNetworkManagementService;->setLimit(ZJ)Z

    .line 562
    iput-boolean p1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mLimitEnabled:Z

    .line 550
    .end local v0    # "bwBps":J
    :cond_2
    return-void
.end method

.method private updateLimitterForUidState(II)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "state"    # I

    .prologue
    .line 216
    invoke-direct {p0}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->isLimitterEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mNetworkManager:Lcom/android/server/MiuiNetworkManagementService;

    invoke-direct {p0, p1, p2}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->isStateUnRestrictedForUid(II)Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/MiuiNetworkManagementService;->whiteListUid(IZ)Z

    .line 215
    :cond_0
    return-void
.end method

.method private updateRuleGlobal()V
    .locals 6

    .prologue
    const/16 v5, 0x10

    .line 234
    iget-object v4, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    .line 235
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 236
    iget-object v4, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    .line 237
    .local v3, "uid":I
    iget-object v4, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v3, v5}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    .line 239
    .local v2, "state":I
    invoke-direct {p0, v3, v5, v2}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->updateRulesForUidStateChange(III)V

    .line 235
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 233
    .end local v2    # "state":I
    .end local v3    # "uid":I
    :cond_0
    return-void
.end method

.method private updateRulesForUidStateChange(III)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "oldUidState"    # I
    .param p3, "newUidState"    # I

    .prologue
    .line 222
    invoke-static {p1}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->isUidValidForRules(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 223
    invoke-direct {p0, p1, p2}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->getWmmForUidState(II)I

    move-result v0

    invoke-direct {p0, p1, p3}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->getWmmForUidState(II)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 224
    invoke-direct {p0, p1, p3}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->updateWmmForUidState(II)V

    .line 226
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->isStateUnRestrictedForUid(II)Z

    move-result v0

    invoke-direct {p0, p1, p3}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->isStateUnRestrictedForUid(II)Z

    move-result v1

    if-eq v0, v1, :cond_1

    .line 227
    invoke-direct {p0, p1, p3}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->updateLimitterForUidState(II)V

    .line 221
    :cond_1
    return-void
.end method

.method private updateUidState(II)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "uidState"    # I

    .prologue
    .line 411
    iget-object v1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    const/16 v2, 0x10

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 412
    .local v0, "oldUidState":I
    if-eq v0, p2, :cond_0

    .line 414
    iget-object v1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 415
    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->updateRulesForUidStateChange(III)V

    .line 409
    :cond_0
    return-void
.end method

.method private updateWmmForUidState(II)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "state"    # I

    .prologue
    .line 209
    invoke-direct {p0}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->isWmmerEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mNetworkManager:Lcom/android/server/MiuiNetworkManagementService;

    invoke-direct {p0, p1, p2}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->getWmmForUidState(II)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/MiuiNetworkManagementService;->updateWmm(II)Z

    .line 208
    :cond_0
    return-void
.end method

.method private validatePriorityMode(I)Z
    .locals 3
    .param p1, "mode"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 320
    if-eqz p1, :cond_0

    .line 321
    if-ne p1, v0, :cond_1

    .line 320
    :cond_0
    :goto_0
    return v0

    .line 322
    :cond_1
    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    .line 323
    const/16 v2, 0xff

    if-eq p1, v2, :cond_0

    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public setNetworkTrafficPolicy(I)Z
    .locals 4
    .param p1, "mode"    # I

    .prologue
    const/4 v3, 0x7

    const/4 v2, 0x0

    .line 327
    invoke-direct {p0, p1}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->validatePriorityMode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 329
    iget-object v0, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 330
    const/4 v0, 0x1

    return v0

    .line 332
    :cond_0
    return v2
.end method

.method protected systemReady()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 144
    const-string/jumbo v3, "wifi.interface"

    const-string/jumbo v4, "wlan0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mInterfaceName:Ljava/lang/String;

    .line 146
    invoke-static {}, Lcom/android/server/MiuiNetworkManagementService;->getInstance()Lcom/android/server/MiuiNetworkManagementService;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mNetworkManager:Lcom/android/server/MiuiNetworkManagementService;

    .line 147
    iget-object v3, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mNetworkManager:Lcom/android/server/MiuiNetworkManagementService;

    iget-object v4, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mUidDataActivityObserver:Lcom/android/server/MiuiNetworkManagementService$NetworkEventObserver;

    invoke-virtual {v3, v4}, Lcom/android/server/MiuiNetworkManagementService;->setNetworkEventObserver(Lcom/android/server/MiuiNetworkManagementService$NetworkEventObserver;)V

    .line 150
    iget-object v3, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mNetworkManager:Lcom/android/server/MiuiNetworkManagementService;

    invoke-virtual {v3, v5}, Lcom/android/server/MiuiNetworkManagementService;->enableWmmer(Z)Z

    .line 151
    iget-object v3, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mNetworkManager:Lcom/android/server/MiuiNetworkManagementService;

    invoke-virtual {v3, v5}, Lcom/android/server/MiuiNetworkManagementService;->enableLimitter(Z)Z

    .line 153
    new-instance v2, Landroid/content/IntentFilter;

    .line 154
    const-string/jumbo v3, "android.net.wifi.STATE_CHANGE"

    .line 153
    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 155
    .local v2, "wifiStateFilter":Landroid/content/IntentFilter;
    iget-object v3, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mWifiStateReceiver:Landroid/content/BroadcastReceiver;

    iget-object v5, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4, v2, v6, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 157
    invoke-direct {p0}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->registerNetworkProrityModeChangedObserver()V

    .line 160
    invoke-direct {p0}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->registerUnRestirctAppsChangedObserver()V

    .line 162
    invoke-direct {p0}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->registerLowLatencyAppsChangedObserver()V

    .line 165
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 166
    .local v1, "packageFilter":Landroid/content/IntentFilter;
    const-string/jumbo v3, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 167
    const-string/jumbo v3, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 168
    const-string/jumbo v3, "package"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 169
    iget-object v3, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    iget-object v5, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4, v1, v6, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 172
    :try_start_0
    iget-object v3, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mActivityManager:Landroid/app/IActivityManager;

    iget-object v4, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mUidObserver:Landroid/app/IUidObserver;

    .line 173
    const/4 v5, 0x3

    .line 172
    invoke-interface {v3, v4, v5}, Landroid/app/IActivityManager;->registerUidObserver(Landroid/app/IUidObserver;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    :goto_0
    return-void

    .line 174
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method
