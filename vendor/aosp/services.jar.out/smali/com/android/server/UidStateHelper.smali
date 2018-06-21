.class public Lcom/android/server/UidStateHelper;
.super Ljava/lang/Object;
.source "UidStateHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/UidStateHelper$1;,
        Lcom/android/server/UidStateHelper$2;
    }
.end annotation


# static fields
.field private static DEBUG:Z = false

.field public static final DEFAULT_PROCESS_STATE:I = 0x10

.field public static final FOREGROUND_STATE_VALUE_MAX:I = 0x2

.field private static final MSG_DISPATCH_UID_STATE_CHANGE:I = 0x1

.field private static TAG:Ljava/lang/String;

.field private static sInstance:Lcom/android/server/UidStateHelper;


# instance fields
.field private final mActivityManager:Landroid/app/IActivityManager;

.field private final mHandler:Landroid/os/Handler;

.field private mHandlerCallback:Landroid/os/Handler$Callback;

.field private mObserverInstalled:Z

.field private mProcessObserver:Landroid/app/IProcessObserver;

.field private mStateLock:Ljava/lang/Object;

.field private final mUidPidState:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/SparseIntArray;",
            ">;"
        }
    .end annotation
.end field

.field private final mUidState:Landroid/util/SparseIntArray;

.field private mUidStateObervers:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/android/internal/app/IUidStateChangeCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/UidStateHelper;->DEBUG:Z

    return v0
.end method

.method static synthetic -get1()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/UidStateHelper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/UidStateHelper;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/UidStateHelper;->mStateLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/UidStateHelper;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Lcom/android/server/UidStateHelper;->mUidPidState:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/UidStateHelper;I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/UidStateHelper;->computeUidStateLocked(I)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/UidStateHelper;II)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "state"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/UidStateHelper;->dispatchUidStateChange(II)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-string/jumbo v0, "UidProcStateHelper"

    sput-object v0, Lcom/android/server/UidStateHelper;->TAG:Ljava/lang/String;

    .line 24
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Lcom/android/server/UidStateHelper;->DEBUG:Z

    .line 22
    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/UidStateHelper;->mStateLock:Ljava/lang/Object;

    .line 34
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/UidStateHelper;->mUidState:Landroid/util/SparseIntArray;

    .line 35
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/UidStateHelper;->mUidPidState:Landroid/util/SparseArray;

    .line 40
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/UidStateHelper;->mObserverInstalled:Z

    .line 41
    new-instance v1, Landroid/os/RemoteCallbackList;

    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v1, p0, Lcom/android/server/UidStateHelper;->mUidStateObervers:Landroid/os/RemoteCallbackList;

    .line 161
    new-instance v1, Lcom/android/server/UidStateHelper$1;

    invoke-direct {v1, p0}, Lcom/android/server/UidStateHelper$1;-><init>(Lcom/android/server/UidStateHelper;)V

    iput-object v1, p0, Lcom/android/server/UidStateHelper;->mProcessObserver:Landroid/app/IProcessObserver;

    .line 205
    new-instance v1, Lcom/android/server/UidStateHelper$2;

    invoke-direct {v1, p0}, Lcom/android/server/UidStateHelper$2;-><init>(Lcom/android/server/UidStateHelper;)V

    iput-object v1, p0, Lcom/android/server/UidStateHelper;->mHandlerCallback:Landroid/os/Handler$Callback;

    .line 53
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/UidStateHelper;->mActivityManager:Landroid/app/IActivityManager;

    .line 54
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->get()Lcom/android/internal/os/BackgroundThread;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/os/BackgroundThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/UidStateHelper;->mHandlerCallback:Landroid/os/Handler$Callback;

    invoke-direct {v1, v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/android/server/UidStateHelper;->mHandler:Landroid/os/Handler;

    .line 58
    :try_start_0
    iget-object v1, p0, Lcom/android/server/UidStateHelper;->mActivityManager:Landroid/app/IActivityManager;

    iget-object v2, p0, Lcom/android/server/UidStateHelper;->mProcessObserver:Landroid/app/IProcessObserver;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->registerProcessObserver(Landroid/app/IProcessObserver;)V

    .line 59
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/UidStateHelper;->mObserverInstalled:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :goto_0
    return-void

    .line 60
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private computeUidStateLocked(I)V
    .locals 13
    .param p1, "uid"    # I

    .prologue
    const/4 v12, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 119
    iget-object v10, p0, Lcom/android/server/UidStateHelper;->mUidPidState:Landroid/util/SparseArray;

    invoke-virtual {v10, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseIntArray;

    .line 122
    .local v4, "pidState":Landroid/util/SparseIntArray;
    const/16 v7, 0x10

    .line 123
    .local v7, "uidState":I
    if-eqz v4, :cond_1

    .line 124
    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v5

    .line 125
    .local v5, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v5, :cond_1

    .line 126
    invoke-virtual {v4, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v6

    .line 127
    .local v6, "state":I
    if-ge v6, v7, :cond_0

    .line 128
    move v7, v6

    .line 125
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 133
    .end local v0    # "i":I
    .end local v5    # "size":I
    .end local v6    # "state":I
    :cond_1
    iget-object v10, p0, Lcom/android/server/UidStateHelper;->mUidState:Landroid/util/SparseIntArray;

    const/16 v11, 0x10

    invoke-virtual {v10, p1, v11}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    .line 134
    .local v3, "oldUidState":I
    if-eq v3, v7, :cond_3

    .line 136
    iget-object v10, p0, Lcom/android/server/UidStateHelper;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v10, p1, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 137
    if-gt v3, v12, :cond_4

    const/4 v2, 0x1

    .line 138
    .local v2, "oldForeground":Z
    :goto_1
    if-gt v7, v12, :cond_5

    move v1, v9

    .line 139
    .local v1, "newForeground":Z
    :goto_2
    if-eq v2, v1, :cond_3

    .line 140
    iget-object v10, p0, Lcom/android/server/UidStateHelper;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_2

    move v8, v9

    :cond_2
    invoke-virtual {v10, v9, p1, v8}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    .line 118
    .end local v1    # "newForeground":Z
    .end local v2    # "oldForeground":Z
    :cond_3
    return-void

    .line 137
    :cond_4
    const/4 v2, 0x0

    .restart local v2    # "oldForeground":Z
    goto :goto_1

    :cond_5
    move v1, v8

    .line 138
    goto :goto_2
.end method

.method private dispatchUidStateChange(II)V
    .locals 5
    .param p1, "uid"    # I
    .param p2, "state"    # I

    .prologue
    .line 148
    iget-object v4, p0, Lcom/android/server/UidStateHelper;->mUidStateObervers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v3

    .line 149
    .local v3, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 150
    iget-object v4, p0, Lcom/android/server/UidStateHelper;->mUidStateObervers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/IUidStateChangeCallback;

    .line 151
    .local v0, "callback":Lcom/android/internal/app/IUidStateChangeCallback;
    if-eqz v0, :cond_0

    .line 153
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/android/internal/app/IUidStateChangeCallback;->onUidStateChange(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 154
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_1

    .line 158
    .end local v0    # "callback":Lcom/android/internal/app/IUidStateChangeCallback;
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    iget-object v4, p0, Lcom/android/server/UidStateHelper;->mUidStateObervers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 147
    return-void
.end method

.method public static get()Lcom/android/server/UidStateHelper;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/android/server/UidStateHelper;->sInstance:Lcom/android/server/UidStateHelper;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lcom/android/server/UidStateHelper;

    invoke-direct {v0}, Lcom/android/server/UidStateHelper;-><init>()V

    sput-object v0, Lcom/android/server/UidStateHelper;->sInstance:Lcom/android/server/UidStateHelper;

    .line 49
    :cond_0
    sget-object v0, Lcom/android/server/UidStateHelper;->sInstance:Lcom/android/server/UidStateHelper;

    return-object v0
.end method


# virtual methods
.method public isUidForeground(I)Z
    .locals 4
    .param p1, "uid"    # I

    .prologue
    const/4 v0, 0x1

    .line 84
    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 85
    return v0

    .line 87
    :cond_0
    iget-object v1, p0, Lcom/android/server/UidStateHelper;->mStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 88
    :try_start_0
    iget-object v2, p0, Lcom/android/server/UidStateHelper;->mUidState:Landroid/util/SparseIntArray;

    const/16 v3, 0x10

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseIntArray;->get(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    const/4 v3, 0x2

    if-gt v2, v3, :cond_1

    :goto_0
    monitor-exit v1

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 87
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public isUidForeground(IZ)Z
    .locals 10
    .param p1, "uid"    # I
    .param p2, "doubleCheck"    # Z

    .prologue
    const/4 v5, 0x1

    .line 93
    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 94
    return v5

    .line 97
    :cond_0
    iget-object v6, p0, Lcom/android/server/UidStateHelper;->mStateLock:Ljava/lang/Object;

    monitor-enter v6

    .line 98
    :try_start_0
    iget-object v7, p0, Lcom/android/server/UidStateHelper;->mUidState:Landroid/util/SparseIntArray;

    const/16 v8, 0x10

    invoke-virtual {v7, p1, v8}, Landroid/util/SparseIntArray;->get(II)I

    move-result v7

    const/4 v8, 0x2

    if-gt v7, v8, :cond_1

    const/4 v2, 0x1

    .line 99
    .local v2, "isUidFg":Z
    :goto_0
    if-eqz p2, :cond_5

    .line 100
    const/4 v1, 0x0

    .line 101
    .local v1, "isFgByPids":Z
    iget-object v7, p0, Lcom/android/server/UidStateHelper;->mUidPidState:Landroid/util/SparseArray;

    invoke-virtual {v7, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseIntArray;

    .line 102
    .local v4, "pidState":Landroid/util/SparseIntArray;
    if-eqz v4, :cond_2

    .line 103
    const/4 v0, 0x0

    .end local v1    # "isFgByPids":Z
    .local v0, "i":I
    :goto_1
    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v7

    if-ge v0, v7, :cond_2

    .line 104
    invoke-virtual {v4, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    .line 105
    .local v3, "pid":I
    invoke-static {v3}, Lcom/android/server/am/ExtraActivityManagerService;->hasForegroundActivities(I)Z

    move-result v7

    or-int/2addr v1, v7

    .line 103
    .local v1, "isFgByPids":Z
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 98
    .end local v0    # "i":I
    .end local v1    # "isFgByPids":Z
    .end local v2    # "isUidFg":Z
    .end local v3    # "pid":I
    .end local v4    # "pidState":Landroid/util/SparseIntArray;
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "isUidFg":Z
    goto :goto_0

    .line 108
    .restart local v4    # "pidState":Landroid/util/SparseIntArray;
    :cond_2
    if-eq v2, v1, :cond_3

    .line 109
    sget-object v7, Lcom/android/server/UidStateHelper;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "ProcessObserver may miss callback, isUidFg="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " isFgByPids="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    :cond_3
    if-nez v2, :cond_4

    :goto_2
    monitor-exit v6

    return v1

    :cond_4
    move v1, v5

    goto :goto_2

    .end local v4    # "pidState":Landroid/util/SparseIntArray;
    :cond_5
    monitor-exit v6

    .line 114
    return v2

    .line 97
    .end local v2    # "isUidFg":Z
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method public registerUidStateObserver(Lcom/android/internal/app/IUidStateChangeCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/android/internal/app/IUidStateChangeCallback;

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/android/server/UidStateHelper;->mObserverInstalled:Z

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "ProcessObserver not installed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_0
    monitor-enter p0

    .line 69
    :try_start_0
    iget-object v0, p0, Lcom/android/server/UidStateHelper;->mUidStateObervers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 64
    return-void

    .line 68
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public unregisterUidStateObserver(Lcom/android/internal/app/IUidStateChangeCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/android/internal/app/IUidStateChangeCallback;

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/android/server/UidStateHelper;->mObserverInstalled:Z

    if-nez v0, :cond_0

    .line 75
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "ProcessObserver not installed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_0
    monitor-enter p0

    .line 78
    :try_start_0
    iget-object v0, p0, Lcom/android/server/UidStateHelper;->mUidStateObervers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 73
    return-void

    .line 77
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
