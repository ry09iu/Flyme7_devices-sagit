.class public abstract Lcom/android/server/policy/SuspendGestureListener;
.super Ljava/lang/Object;
.source "SuspendGestureListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/SuspendGestureListener$1;,
        Lcom/android/server/policy/SuspendGestureListener$2;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SuspendGestureListener"


# instance fields
.field private final mGoToSleepRunnable:Ljava/lang/Runnable;

.field private final mHandler:Landroid/os/Handler;

.field private final mListener:Landroid/hardware/TriggerEventListener;

.field private final mLock:Ljava/lang/Object;

.field private mSensor:Landroid/hardware/Sensor;

.field private final mSensorManager:Landroid/hardware/SensorManager;

.field private mTriggerRequested:Z


# direct methods
.method static synthetic -get0(Lcom/android/server/policy/SuspendGestureListener;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/SuspendGestureListener;->mGoToSleepRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/policy/SuspendGestureListener;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/SuspendGestureListener;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/policy/SuspendGestureListener;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/SuspendGestureListener;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/policy/SuspendGestureListener;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/policy/SuspendGestureListener;->mTriggerRequested:Z

    return p1
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/SuspendGestureListener;->mLock:Ljava/lang/Object;

    .line 71
    new-instance v0, Lcom/android/server/policy/SuspendGestureListener$1;

    invoke-direct {v0, p0}, Lcom/android/server/policy/SuspendGestureListener$1;-><init>(Lcom/android/server/policy/SuspendGestureListener;)V

    iput-object v0, p0, Lcom/android/server/policy/SuspendGestureListener;->mListener:Landroid/hardware/TriggerEventListener;

    .line 82
    new-instance v0, Lcom/android/server/policy/SuspendGestureListener$2;

    invoke-direct {v0, p0}, Lcom/android/server/policy/SuspendGestureListener$2;-><init>(Lcom/android/server/policy/SuspendGestureListener;)V

    iput-object v0, p0, Lcom/android/server/policy/SuspendGestureListener;->mGoToSleepRunnable:Ljava/lang/Runnable;

    .line 30
    const-string/jumbo v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/server/policy/SuspendGestureListener;->mSensorManager:Landroid/hardware/SensorManager;

    .line 31
    iput-object p2, p0, Lcom/android/server/policy/SuspendGestureListener;->mHandler:Landroid/os/Handler;

    .line 33
    iget-object v0, p0, Lcom/android/server/policy/SuspendGestureListener;->mSensorManager:Landroid/hardware/SensorManager;

    const v1, 0x1fa2652

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/SuspendGestureListener;->mSensor:Landroid/hardware/Sensor;

    .line 29
    return-void
.end method


# virtual methods
.method public cancelGoToSleepTrigger()V
    .locals 4

    .prologue
    .line 54
    iget-object v1, p0, Lcom/android/server/policy/SuspendGestureListener;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 55
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/SuspendGestureListener;->mSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/policy/SuspendGestureListener;->mTriggerRequested:Z

    if-eqz v0, :cond_0

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/SuspendGestureListener;->mTriggerRequested:Z

    .line 57
    iget-object v0, p0, Lcom/android/server/policy/SuspendGestureListener;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/server/policy/SuspendGestureListener;->mListener:Landroid/hardware/TriggerEventListener;

    iget-object v3, p0, Lcom/android/server/policy/SuspendGestureListener;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v2, v3}, Landroid/hardware/SensorManager;->cancelTriggerSensor(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 53
    return-void

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 63
    iget-object v1, p0, Lcom/android/server/policy/SuspendGestureListener;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 64
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "SuspendGestureListener"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "mTriggerRequested="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/server/policy/SuspendGestureListener;->mTriggerRequested:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "mSensor="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/policy/SuspendGestureListener;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 62
    return-void

    .line 63
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public isSupported()Z
    .locals 2

    .prologue
    .line 39
    iget-object v1, p0, Lcom/android/server/policy/SuspendGestureListener;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 40
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/SuspendGestureListener;->mSensor:Landroid/hardware/Sensor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 39
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public abstract onGoingToSleep()V
.end method

.method public requestGoToSleepTrigger()V
    .locals 4

    .prologue
    .line 45
    iget-object v1, p0, Lcom/android/server/policy/SuspendGestureListener;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 46
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/SuspendGestureListener;->mSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/policy/SuspendGestureListener;->mTriggerRequested:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit v1

    .line 44
    return-void

    .line 47
    :cond_1
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/android/server/policy/SuspendGestureListener;->mTriggerRequested:Z

    .line 48
    iget-object v0, p0, Lcom/android/server/policy/SuspendGestureListener;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/server/policy/SuspendGestureListener;->mListener:Landroid/hardware/TriggerEventListener;

    iget-object v3, p0, Lcom/android/server/policy/SuspendGestureListener;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v2, v3}, Landroid/hardware/SensorManager;->requestTriggerSensor(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
