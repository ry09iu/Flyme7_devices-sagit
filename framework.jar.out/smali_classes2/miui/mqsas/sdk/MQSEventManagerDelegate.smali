.class public Lmiui/mqsas/sdk/MQSEventManagerDelegate;
.super Ljava/lang/Object;
.source "MQSEventManagerDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/mqsas/sdk/MQSEventManagerDelegate$1;
    }
.end annotation


# static fields
.field private static DEBUG:Z = false

.field private static final MQS_SERVICE_NAME:Ljava/lang/String; = "miui.mqsas.MQSService"

.field private static final TAG:Ljava/lang/String;

.field private static sInstance:Lmiui/mqsas/sdk/MQSEventManagerDelegate;


# instance fields
.field mDeathHandler:Landroid/os/IBinder$DeathRecipient;

.field private mService:Lmiui/mqsas/IMQSService;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -set0(Lmiui/mqsas/sdk/MQSEventManagerDelegate;Lmiui/mqsas/IMQSService;)Lmiui/mqsas/IMQSService;
    .locals 0

    iput-object p1, p0, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->mService:Lmiui/mqsas/IMQSService;

    return-object p1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lmiui/mqsas/sdk/MQSEventManagerDelegate;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    .line 20
    const/4 v0, 0x0

    sput-boolean v0, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->DEBUG:Z

    .line 22
    const/4 v0, 0x0

    sput-object v0, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->sInstance:Lmiui/mqsas/sdk/MQSEventManagerDelegate;

    .line 18
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    new-instance v0, Lmiui/mqsas/sdk/MQSEventManagerDelegate$1;

    invoke-direct {v0, p0}, Lmiui/mqsas/sdk/MQSEventManagerDelegate$1;-><init>(Lmiui/mqsas/sdk/MQSEventManagerDelegate;)V

    iput-object v0, p0, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->mDeathHandler:Landroid/os/IBinder$DeathRecipient;

    .line 141
    return-void
.end method

.method public static declared-synchronized getInstance()Lmiui/mqsas/sdk/MQSEventManagerDelegate;
    .locals 2

    .prologue
    const-class v1, Lmiui/mqsas/sdk/MQSEventManagerDelegate;

    monitor-enter v1

    .line 135
    :try_start_0
    sget-object v0, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->sInstance:Lmiui/mqsas/sdk/MQSEventManagerDelegate;

    if-nez v0, :cond_0

    .line 136
    new-instance v0, Lmiui/mqsas/sdk/MQSEventManagerDelegate;

    invoke-direct {v0}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;-><init>()V

    sput-object v0, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->sInstance:Lmiui/mqsas/sdk/MQSEventManagerDelegate;

    .line 138
    :cond_0
    sget-object v0, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->sInstance:Lmiui/mqsas/sdk/MQSEventManagerDelegate;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method protected declared-synchronized getMQSService()Lmiui/mqsas/IMQSService;
    .locals 4

    .prologue
    monitor-enter p0

    .line 145
    :try_start_0
    iget-object v1, p0, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->mService:Lmiui/mqsas/IMQSService;

    if-nez v1, :cond_0

    .line 146
    const-string/jumbo v1, "miui.mqsas.MQSService"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lmiui/mqsas/IMQSService$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/mqsas/IMQSService;

    move-result-object v1

    iput-object v1, p0, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->mService:Lmiui/mqsas/IMQSService;

    .line 147
    iget-object v1, p0, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->mService:Lmiui/mqsas/IMQSService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 149
    :try_start_1
    iget-object v1, p0, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->mService:Lmiui/mqsas/IMQSService;

    invoke-interface {v1}, Lmiui/mqsas/IMQSService;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->mDeathHandler:Landroid/os/IBinder$DeathRecipient;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 157
    :cond_0
    :goto_0
    :try_start_2
    iget-object v1, p0, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->mService:Lmiui/mqsas/IMQSService;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v1

    .line 150
    :catch_0
    move-exception v0

    .line 151
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 154
    :cond_1
    :try_start_4
    sget-object v1, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "failed to get MQSService."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public onBootCompleted()V
    .locals 5

    .prologue
    .line 115
    sget-boolean v2, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "onBootCompleted"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getMQSService()Lmiui/mqsas/IMQSService;

    move-result-object v1

    .line 118
    .local v1, "service":Lmiui/mqsas/IMQSService;
    if-eqz v1, :cond_1

    invoke-interface {v1}, Lmiui/mqsas/IMQSService;->onBootCompleted()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    .end local v1    # "service":Lmiui/mqsas/IMQSService;
    :cond_1
    :goto_0
    return-void

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onBootCompleted error happened:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public reportAnrEvent(Lmiui/mqsas/sdk/event/AnrEvent;)V
    .locals 5
    .param p1, "event"    # Lmiui/mqsas/sdk/event/AnrEvent;

    .prologue
    .line 27
    sget-boolean v2, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "reportAnrEvent:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lmiui/mqsas/sdk/event/AnrEvent;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getMQSService()Lmiui/mqsas/IMQSService;

    move-result-object v1

    .line 30
    .local v1, "service":Lmiui/mqsas/IMQSService;
    if-eqz v1, :cond_1

    invoke-interface {v1, p1}, Lmiui/mqsas/IMQSService;->reportAnrEvent(Lmiui/mqsas/sdk/event/AnrEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .end local v1    # "service":Lmiui/mqsas/IMQSService;
    :cond_1
    :goto_0
    return-void

    .line 31
    :catch_0
    move-exception v0

    .line 32
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "reportAnrEvent error happened:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public reportBootEvent(Lmiui/mqsas/sdk/event/BootEvent;)V
    .locals 5
    .param p1, "event"    # Lmiui/mqsas/sdk/event/BootEvent;

    .prologue
    .line 96
    sget-boolean v2, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "reportBootEvent:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lmiui/mqsas/sdk/event/BootEvent;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getMQSService()Lmiui/mqsas/IMQSService;

    move-result-object v1

    .line 99
    .local v1, "service":Lmiui/mqsas/IMQSService;
    if-eqz v1, :cond_1

    invoke-interface {v1, p1}, Lmiui/mqsas/IMQSService;->reportBootEvent(Lmiui/mqsas/sdk/event/BootEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    .end local v1    # "service":Lmiui/mqsas/IMQSService;
    :cond_1
    :goto_0
    return-void

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "reportBootEvent error happened:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public reportBroadcastEvent(Landroid/content/pm/ParceledListSlice;)V
    .locals 5
    .param p1, "reportEvents"    # Landroid/content/pm/ParceledListSlice;

    .prologue
    .line 125
    sget-boolean v2, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "reportBroadcastEvent:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getMQSService()Lmiui/mqsas/IMQSService;

    move-result-object v1

    .line 128
    .local v1, "service":Lmiui/mqsas/IMQSService;
    if-eqz v1, :cond_1

    invoke-interface {v1, p1}, Lmiui/mqsas/IMQSService;->reportBroadcastEvent(Landroid/content/pm/ParceledListSlice;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    .end local v1    # "service":Lmiui/mqsas/IMQSService;
    :cond_1
    :goto_0
    return-void

    .line 129
    :catch_0
    move-exception v0

    .line 130
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "reportBroadcastEvent error happened:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public reportConnectExceptionEvent(II)V
    .locals 5
    .param p1, "type"    # I
    .param p2, "reason"    # I

    .prologue
    .line 76
    sget-boolean v2, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "reportConnectExceptionEvent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getMQSService()Lmiui/mqsas/IMQSService;

    move-result-object v1

    .line 79
    .local v1, "service":Lmiui/mqsas/IMQSService;
    if-eqz v1, :cond_1

    invoke-interface {v1, p1, p2}, Lmiui/mqsas/IMQSService;->reportConnectExceptionEvent(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .end local v1    # "service":Lmiui/mqsas/IMQSService;
    :cond_1
    :goto_0
    return-void

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "reportConnectExceptionEvent error happened:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public reportJavaExceptionEvent(Lmiui/mqsas/sdk/event/JavaExceptionEvent;)V
    .locals 5
    .param p1, "event"    # Lmiui/mqsas/sdk/event/JavaExceptionEvent;

    .prologue
    .line 37
    sget-boolean v2, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "reportJEEvent:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lmiui/mqsas/sdk/event/JavaExceptionEvent;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getMQSService()Lmiui/mqsas/IMQSService;

    move-result-object v1

    .line 40
    .local v1, "service":Lmiui/mqsas/IMQSService;
    if-eqz v1, :cond_1

    invoke-interface {v1, p1}, Lmiui/mqsas/IMQSService;->reportJavaExceptionEvent(Lmiui/mqsas/sdk/event/JavaExceptionEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .end local v1    # "service":Lmiui/mqsas/IMQSService;
    :cond_1
    :goto_0
    return-void

    .line 41
    :catch_0
    move-exception v0

    .line 42
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "reportJEEvent error happened:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public reportPackageEvent(Lmiui/mqsas/sdk/event/PackageEvent;)V
    .locals 5
    .param p1, "event"    # Lmiui/mqsas/sdk/event/PackageEvent;

    .prologue
    .line 86
    sget-boolean v2, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "reportPackageEvent:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lmiui/mqsas/sdk/event/PackageEvent;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getMQSService()Lmiui/mqsas/IMQSService;

    move-result-object v1

    .line 89
    .local v1, "service":Lmiui/mqsas/IMQSService;
    if-eqz v1, :cond_1

    invoke-interface {v1, p1}, Lmiui/mqsas/IMQSService;->reportPackageEvent(Lmiui/mqsas/sdk/event/PackageEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    .end local v1    # "service":Lmiui/mqsas/IMQSService;
    :cond_1
    :goto_0
    return-void

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "reportPackageEvent error happened:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public reportScreenOnEvent(Lmiui/mqsas/sdk/event/ScreenOnEvent;)V
    .locals 5
    .param p1, "event"    # Lmiui/mqsas/sdk/event/ScreenOnEvent;

    .prologue
    .line 66
    sget-boolean v2, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "reportScreenOnEvent: event ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getMQSService()Lmiui/mqsas/IMQSService;

    move-result-object v1

    .line 69
    .local v1, "service":Lmiui/mqsas/IMQSService;
    if-eqz v1, :cond_1

    invoke-interface {v1, p1}, Lmiui/mqsas/IMQSService;->reportScreenOnEvent(Lmiui/mqsas/sdk/event/ScreenOnEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .end local v1    # "service":Lmiui/mqsas/IMQSService;
    :cond_1
    :goto_0
    return-void

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "reportScreenOnEvent error happened:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public reportSimpleEvent(ILjava/lang/String;)V
    .locals 5
    .param p1, "type"    # I
    .param p2, "info"    # Ljava/lang/String;

    .prologue
    .line 57
    sget-boolean v2, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "reportSimpleEvent:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getMQSService()Lmiui/mqsas/IMQSService;

    move-result-object v1

    .line 60
    .local v1, "service":Lmiui/mqsas/IMQSService;
    if-eqz v1, :cond_1

    invoke-interface {v1, p1, p2}, Lmiui/mqsas/IMQSService;->reportSimpleEvent(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .end local v1    # "service":Lmiui/mqsas/IMQSService;
    :cond_1
    :goto_0
    return-void

    .line 61
    :catch_0
    move-exception v0

    .line 62
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "reportSimpleEvent error happened:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public reportTelephonyEvent(ILjava/lang/String;)V
    .locals 5
    .param p1, "type"    # I
    .param p2, "info"    # Ljava/lang/String;

    .prologue
    .line 106
    sget-boolean v2, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "reportTelephonyEvent:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getMQSService()Lmiui/mqsas/IMQSService;

    move-result-object v1

    .line 109
    .local v1, "service":Lmiui/mqsas/IMQSService;
    if-eqz v1, :cond_1

    invoke-interface {v1, p1, p2}, Lmiui/mqsas/IMQSService;->reportTelephonyEvent(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    .end local v1    # "service":Lmiui/mqsas/IMQSService;
    :cond_1
    :goto_0
    return-void

    .line 110
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "reportTelephonyEvent error happened:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public reportWatchdogEvent(Lmiui/mqsas/sdk/event/WatchdogEvent;)V
    .locals 5
    .param p1, "event"    # Lmiui/mqsas/sdk/event/WatchdogEvent;

    .prologue
    .line 47
    sget-boolean v2, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "reportJWDTEvent:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lmiui/mqsas/sdk/event/WatchdogEvent;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getMQSService()Lmiui/mqsas/IMQSService;

    move-result-object v1

    .line 50
    .local v1, "service":Lmiui/mqsas/IMQSService;
    if-eqz v1, :cond_1

    invoke-interface {v1, p1}, Lmiui/mqsas/IMQSService;->reportWatchdogEvent(Lmiui/mqsas/sdk/event/WatchdogEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .end local v1    # "service":Lmiui/mqsas/IMQSService;
    :cond_1
    :goto_0
    return-void

    .line 51
    :catch_0
    move-exception v0

    .line 52
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "reportJWDTEvent error happened:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
