.class public Lmiui/mqsas/sdk/BootEventManager;
.super Ljava/lang/Object;
.source "BootEventManager.java"


# static fields
.field private static final DELAY_TIME:I = 0x2710

.field private static final TAG:Ljava/lang/String;

.field private static sInstance:Lmiui/mqsas/sdk/BootEventManager;


# instance fields
.field private bootType:I

.field private persistAppCount:I

.field private phaseAmsReady:J

.field private phaseBootComplete:J

.field private phaseBootDexopt:J

.field private phaseCoreAppDexopt:J

.field private phasePmsScanEnd:J

.field private phasePmsScanStart:J

.field private phaseSystemRun:J

.field private phaseUIReady:J

.field private prebootAppCount:I

.field private systemAppCount:I

.field private thirdAppCount:I


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lmiui/mqsas/sdk/BootEventManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lmiui/mqsas/sdk/BootEventManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/mqsas/sdk/BootEventManager;->TAG:Ljava/lang/String;

    .line 15
    const/4 v0, 0x0

    sput-object v0, Lmiui/mqsas/sdk/BootEventManager;->sInstance:Lmiui/mqsas/sdk/BootEventManager;

    .line 12
    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x1

    iput v0, p0, Lmiui/mqsas/sdk/BootEventManager;->bootType:I

    .line 37
    iput-wide v2, p0, Lmiui/mqsas/sdk/BootEventManager;->phaseSystemRun:J

    .line 39
    iput-wide v2, p0, Lmiui/mqsas/sdk/BootEventManager;->phasePmsScanStart:J

    .line 40
    iput-wide v2, p0, Lmiui/mqsas/sdk/BootEventManager;->phasePmsScanEnd:J

    .line 42
    iput-wide v2, p0, Lmiui/mqsas/sdk/BootEventManager;->phaseBootDexopt:J

    .line 44
    iput-wide v2, p0, Lmiui/mqsas/sdk/BootEventManager;->phaseCoreAppDexopt:J

    .line 46
    iput-wide v2, p0, Lmiui/mqsas/sdk/BootEventManager;->phaseAmsReady:J

    .line 48
    iput-wide v2, p0, Lmiui/mqsas/sdk/BootEventManager;->phaseUIReady:J

    .line 50
    iput-wide v2, p0, Lmiui/mqsas/sdk/BootEventManager;->phaseBootComplete:J

    .line 52
    iput v1, p0, Lmiui/mqsas/sdk/BootEventManager;->systemAppCount:I

    .line 53
    iput v1, p0, Lmiui/mqsas/sdk/BootEventManager;->thirdAppCount:I

    .line 54
    iput v1, p0, Lmiui/mqsas/sdk/BootEventManager;->prebootAppCount:I

    .line 55
    iput v1, p0, Lmiui/mqsas/sdk/BootEventManager;->persistAppCount:I

    .line 64
    return-void
.end method

.method private getBootEvent()Lmiui/mqsas/sdk/event/BootEvent;
    .locals 6

    .prologue
    .line 98
    new-instance v0, Lmiui/mqsas/sdk/event/BootEvent;

    invoke-direct {v0}, Lmiui/mqsas/sdk/event/BootEvent;-><init>()V

    .line 99
    .local v0, "event":Lmiui/mqsas/sdk/event/BootEvent;
    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Lmiui/mqsas/sdk/event/BootEvent;->setType(I)V

    .line 100
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lmiui/mqsas/sdk/event/BootEvent;->setTimeStamp(J)V

    .line 101
    invoke-virtual {p0}, Lmiui/mqsas/sdk/BootEventManager;->getBootType()I

    move-result v1

    invoke-virtual {v0, v1}, Lmiui/mqsas/sdk/event/BootEvent;->setBootType(I)V

    .line 102
    invoke-virtual {p0}, Lmiui/mqsas/sdk/BootEventManager;->getSystemRun()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lmiui/mqsas/sdk/event/BootEvent;->setPeriodSystemRun(J)V

    .line 103
    invoke-virtual {p0}, Lmiui/mqsas/sdk/BootEventManager;->getPmsScanEnd()J

    move-result-wide v2

    invoke-virtual {p0}, Lmiui/mqsas/sdk/BootEventManager;->getPmsScanStart()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 104
    invoke-virtual {p0}, Lmiui/mqsas/sdk/BootEventManager;->getCoreAppDexopt()J

    move-result-wide v4

    .line 103
    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lmiui/mqsas/sdk/event/BootEvent;->setPeriodPmsScan(J)V

    .line 105
    invoke-virtual {p0}, Lmiui/mqsas/sdk/BootEventManager;->getBootDexopt()J

    move-result-wide v2

    invoke-virtual {p0}, Lmiui/mqsas/sdk/BootEventManager;->getCoreAppDexopt()J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lmiui/mqsas/sdk/event/BootEvent;->setPeriodDexopt(J)V

    .line 106
    invoke-virtual {p0}, Lmiui/mqsas/sdk/BootEventManager;->getAmsReady()J

    move-result-wide v2

    invoke-virtual {p0}, Lmiui/mqsas/sdk/BootEventManager;->getPmsScanEnd()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 107
    invoke-virtual {p0}, Lmiui/mqsas/sdk/BootEventManager;->getBootDexopt()J

    move-result-wide v4

    .line 106
    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lmiui/mqsas/sdk/event/BootEvent;->setPeriodAmsReady(J)V

    .line 108
    invoke-virtual {p0}, Lmiui/mqsas/sdk/BootEventManager;->getUIReady()J

    move-result-wide v2

    invoke-virtual {p0}, Lmiui/mqsas/sdk/BootEventManager;->getAmsReady()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lmiui/mqsas/sdk/event/BootEvent;->setPeriodUIReady(J)V

    .line 109
    invoke-virtual {p0}, Lmiui/mqsas/sdk/BootEventManager;->getBootComplete()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lmiui/mqsas/sdk/event/BootEvent;->setPeriodBootComplete(J)V

    .line 110
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "systemAppCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lmiui/mqsas/sdk/BootEventManager;->getSystemAppCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",thirdAppCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lmiui/mqsas/sdk/BootEventManager;->getThirdAppCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/mqsas/sdk/event/BootEvent;->setDetailPmsScan(Ljava/lang/String;)V

    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "persistAppCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lmiui/mqsas/sdk/BootEventManager;->getPersistAppCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/mqsas/sdk/event/BootEvent;->setDetailUIReady(Ljava/lang/String;)V

    .line 112
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "prebootAppCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lmiui/mqsas/sdk/BootEventManager;->getPrebootAppCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/mqsas/sdk/event/BootEvent;->setDetailAmsReady(Ljava/lang/String;)V

    .line 113
    return-object v0
.end method

.method public static declared-synchronized getInstance()Lmiui/mqsas/sdk/BootEventManager;
    .locals 2

    .prologue
    const-class v1, Lmiui/mqsas/sdk/BootEventManager;

    monitor-enter v1

    .line 58
    :try_start_0
    sget-object v0, Lmiui/mqsas/sdk/BootEventManager;->sInstance:Lmiui/mqsas/sdk/BootEventManager;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Lmiui/mqsas/sdk/BootEventManager;

    invoke-direct {v0}, Lmiui/mqsas/sdk/BootEventManager;-><init>()V

    sput-object v0, Lmiui/mqsas/sdk/BootEventManager;->sInstance:Lmiui/mqsas/sdk/BootEventManager;

    .line 61
    :cond_0
    sget-object v0, Lmiui/mqsas/sdk/BootEventManager;->sInstance:Lmiui/mqsas/sdk/BootEventManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static reportBootEvent()V
    .locals 14

    .prologue
    const-wide/16 v12, 0x0

    .line 68
    invoke-static {}, Lmiui/mqsas/sdk/BootEventManager;->getInstance()Lmiui/mqsas/sdk/BootEventManager;

    move-result-object v4

    .line 69
    .local v4, "manager":Lmiui/mqsas/sdk/BootEventManager;
    sget-object v5, Lmiui/mqsas/sdk/BootEventManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "systemRun:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lmiui/mqsas/sdk/BootEventManager;->getSystemRun()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 70
    const-string/jumbo v7, "pmsScan:"

    .line 69
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 70
    invoke-virtual {v4}, Lmiui/mqsas/sdk/BootEventManager;->getPmsScanEnd()J

    move-result-wide v8

    invoke-virtual {v4}, Lmiui/mqsas/sdk/BootEventManager;->getPmsScanStart()J

    move-result-wide v10

    sub-long/2addr v8, v10

    .line 71
    invoke-virtual {v4}, Lmiui/mqsas/sdk/BootEventManager;->getCoreAppDexopt()J

    move-result-wide v10

    .line 70
    sub-long/2addr v8, v10

    .line 69
    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 71
    const-string/jumbo v7, ","

    .line 69
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 72
    const-string/jumbo v7, "bootDexopt:"

    .line 69
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 72
    invoke-virtual {v4}, Lmiui/mqsas/sdk/BootEventManager;->getBootDexopt()J

    move-result-wide v8

    .line 69
    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 72
    const-string/jumbo v7, ","

    .line 69
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 73
    const-string/jumbo v7, "coreAppDexopt:"

    .line 69
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 73
    invoke-virtual {v4}, Lmiui/mqsas/sdk/BootEventManager;->getCoreAppDexopt()J

    move-result-wide v8

    .line 69
    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 73
    const-string/jumbo v7, ","

    .line 69
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 74
    const-string/jumbo v7, "amsReady:"

    .line 69
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 74
    invoke-virtual {v4}, Lmiui/mqsas/sdk/BootEventManager;->getAmsReady()J

    move-result-wide v8

    invoke-virtual {v4}, Lmiui/mqsas/sdk/BootEventManager;->getPmsScanEnd()J

    move-result-wide v10

    sub-long/2addr v8, v10

    .line 75
    invoke-virtual {v4}, Lmiui/mqsas/sdk/BootEventManager;->getBootDexopt()J

    move-result-wide v10

    .line 74
    sub-long/2addr v8, v10

    .line 69
    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 75
    const-string/jumbo v7, ","

    .line 69
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 76
    const-string/jumbo v7, "UIReady:"

    .line 69
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 76
    invoke-virtual {v4}, Lmiui/mqsas/sdk/BootEventManager;->getUIReady()J

    move-result-wide v8

    invoke-virtual {v4}, Lmiui/mqsas/sdk/BootEventManager;->getAmsReady()J

    move-result-wide v10

    sub-long/2addr v8, v10

    .line 69
    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 76
    const-string/jumbo v7, ","

    .line 69
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 77
    const-string/jumbo v7, "bootComplete:"

    .line 69
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 77
    invoke-virtual {v4}, Lmiui/mqsas/sdk/BootEventManager;->getBootComplete()J

    move-result-wide v8

    .line 69
    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-direct {v4}, Lmiui/mqsas/sdk/BootEventManager;->getBootEvent()Lmiui/mqsas/sdk/event/BootEvent;

    move-result-object v2

    .line 79
    .local v2, "event":Lmiui/mqsas/sdk/event/BootEvent;
    sget-object v5, Lmiui/mqsas/sdk/BootEventManager;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Lmiui/mqsas/sdk/event/BootEvent;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    const-string/jumbo v5, "ro.runtime.firstboot"

    invoke-static {v5, v12, v13}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 82
    .local v0, "bootTime":J
    cmp-long v5, v0, v12

    if-lez v5, :cond_0

    invoke-virtual {v2}, Lmiui/mqsas/sdk/event/BootEvent;->getBootType()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 83
    sget-object v5, Lmiui/mqsas/sdk/BootEventManager;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "Abnormal boot event, filter it"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    return-void

    .line 87
    :cond_0
    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 88
    .local v3, "handler":Landroid/os/Handler;
    new-instance v5, Lmiui/mqsas/sdk/BootEventManager$1;

    invoke-direct {v5, v2}, Lmiui/mqsas/sdk/BootEventManager$1;-><init>(Lmiui/mqsas/sdk/event/BootEvent;)V

    .line 94
    const-wide/16 v6, 0x2710

    .line 88
    invoke-virtual {v3, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 67
    return-void
.end method


# virtual methods
.method public getAmsReady()J
    .locals 2

    .prologue
    .line 158
    iget-wide v0, p0, Lmiui/mqsas/sdk/BootEventManager;->phaseAmsReady:J

    return-wide v0
.end method

.method public getBootComplete()J
    .locals 2

    .prologue
    .line 174
    iget-wide v0, p0, Lmiui/mqsas/sdk/BootEventManager;->phaseBootComplete:J

    return-wide v0
.end method

.method public getBootDexopt()J
    .locals 2

    .prologue
    .line 149
    iget-wide v0, p0, Lmiui/mqsas/sdk/BootEventManager;->phaseBootDexopt:J

    return-wide v0
.end method

.method public getBootType()I
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lmiui/mqsas/sdk/BootEventManager;->bootType:I

    return v0
.end method

.method public getCoreAppDexopt()J
    .locals 2

    .prologue
    .line 214
    iget-wide v0, p0, Lmiui/mqsas/sdk/BootEventManager;->phaseCoreAppDexopt:J

    return-wide v0
.end method

.method public getPersistAppCount()I
    .locals 1

    .prologue
    .line 206
    iget v0, p0, Lmiui/mqsas/sdk/BootEventManager;->persistAppCount:I

    return v0
.end method

.method public getPmsScanEnd()J
    .locals 2

    .prologue
    .line 141
    iget-wide v0, p0, Lmiui/mqsas/sdk/BootEventManager;->phasePmsScanEnd:J

    return-wide v0
.end method

.method public getPmsScanStart()J
    .locals 2

    .prologue
    .line 133
    iget-wide v0, p0, Lmiui/mqsas/sdk/BootEventManager;->phasePmsScanStart:J

    return-wide v0
.end method

.method public getPrebootAppCount()I
    .locals 1

    .prologue
    .line 198
    iget v0, p0, Lmiui/mqsas/sdk/BootEventManager;->prebootAppCount:I

    return v0
.end method

.method public getSystemAppCount()I
    .locals 1

    .prologue
    .line 182
    iget v0, p0, Lmiui/mqsas/sdk/BootEventManager;->systemAppCount:I

    return v0
.end method

.method public getSystemRun()J
    .locals 2

    .prologue
    .line 125
    iget-wide v0, p0, Lmiui/mqsas/sdk/BootEventManager;->phaseSystemRun:J

    return-wide v0
.end method

.method public getThirdAppCount()I
    .locals 1

    .prologue
    .line 190
    iget v0, p0, Lmiui/mqsas/sdk/BootEventManager;->thirdAppCount:I

    return v0
.end method

.method public getUIReady()J
    .locals 2

    .prologue
    .line 166
    iget-wide v0, p0, Lmiui/mqsas/sdk/BootEventManager;->phaseUIReady:J

    return-wide v0
.end method

.method public setAmsReady(J)V
    .locals 1
    .param p1, "phaseAmsReady"    # J

    .prologue
    .line 162
    iput-wide p1, p0, Lmiui/mqsas/sdk/BootEventManager;->phaseAmsReady:J

    .line 161
    return-void
.end method

.method public setBootComplete(J)V
    .locals 1
    .param p1, "phaseBootComplete"    # J

    .prologue
    .line 178
    iput-wide p1, p0, Lmiui/mqsas/sdk/BootEventManager;->phaseBootComplete:J

    .line 177
    return-void
.end method

.method public setBootDexopt(J)V
    .locals 1
    .param p1, "phaseBootDexopt"    # J

    .prologue
    .line 153
    iput-wide p1, p0, Lmiui/mqsas/sdk/BootEventManager;->phaseBootDexopt:J

    .line 152
    return-void
.end method

.method public setBootType(I)V
    .locals 0
    .param p1, "bootType"    # I

    .prologue
    .line 121
    iput p1, p0, Lmiui/mqsas/sdk/BootEventManager;->bootType:I

    .line 120
    return-void
.end method

.method public setCoreAppDexopt(J)V
    .locals 1
    .param p1, "phaseCoreAppDexopt"    # J

    .prologue
    .line 218
    iput-wide p1, p0, Lmiui/mqsas/sdk/BootEventManager;->phaseCoreAppDexopt:J

    .line 217
    return-void
.end method

.method public setPersistAppCount(I)V
    .locals 0
    .param p1, "persistAppCount"    # I

    .prologue
    .line 210
    iput p1, p0, Lmiui/mqsas/sdk/BootEventManager;->persistAppCount:I

    .line 209
    return-void
.end method

.method public setPmsScanEnd(J)V
    .locals 1
    .param p1, "phasePmsScanEnd"    # J

    .prologue
    .line 145
    iput-wide p1, p0, Lmiui/mqsas/sdk/BootEventManager;->phasePmsScanEnd:J

    .line 144
    return-void
.end method

.method public setPmsScanStart(J)V
    .locals 1
    .param p1, "phasePmsScanStart"    # J

    .prologue
    .line 137
    iput-wide p1, p0, Lmiui/mqsas/sdk/BootEventManager;->phasePmsScanStart:J

    .line 136
    return-void
.end method

.method public setPrebootAppCount(I)V
    .locals 0
    .param p1, "prebootAppCount"    # I

    .prologue
    .line 202
    iput p1, p0, Lmiui/mqsas/sdk/BootEventManager;->prebootAppCount:I

    .line 201
    return-void
.end method

.method public setSystemAppCount(I)V
    .locals 0
    .param p1, "systemAppCount"    # I

    .prologue
    .line 186
    iput p1, p0, Lmiui/mqsas/sdk/BootEventManager;->systemAppCount:I

    .line 185
    return-void
.end method

.method public setSystemRun(J)V
    .locals 1
    .param p1, "phaseSystemRun"    # J

    .prologue
    .line 129
    iput-wide p1, p0, Lmiui/mqsas/sdk/BootEventManager;->phaseSystemRun:J

    .line 128
    return-void
.end method

.method public setThirdAppCount(I)V
    .locals 0
    .param p1, "thirdAppCount"    # I

    .prologue
    .line 194
    iput p1, p0, Lmiui/mqsas/sdk/BootEventManager;->thirdAppCount:I

    .line 193
    return-void
.end method

.method public setUIReady(J)V
    .locals 1
    .param p1, "phaseUIReady"    # J

    .prologue
    .line 170
    iput-wide p1, p0, Lmiui/mqsas/sdk/BootEventManager;->phaseUIReady:J

    .line 169
    return-void
.end method
