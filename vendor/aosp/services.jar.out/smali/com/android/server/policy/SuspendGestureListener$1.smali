.class Lcom/android/server/policy/SuspendGestureListener$1;
.super Landroid/hardware/TriggerEventListener;
.source "SuspendGestureListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/SuspendGestureListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/SuspendGestureListener;


# direct methods
.method constructor <init>(Lcom/android/server/policy/SuspendGestureListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/SuspendGestureListener;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/server/policy/SuspendGestureListener$1;->this$0:Lcom/android/server/policy/SuspendGestureListener;

    invoke-direct {p0}, Landroid/hardware/TriggerEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onTrigger(Landroid/hardware/TriggerEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/hardware/TriggerEvent;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/server/policy/SuspendGestureListener$1;->this$0:Lcom/android/server/policy/SuspendGestureListener;

    invoke-static {v0}, Lcom/android/server/policy/SuspendGestureListener;->-get2(Lcom/android/server/policy/SuspendGestureListener;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 75
    :try_start_0
    const-string/jumbo v0, "SuspendGestureListener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onTrigger occured event value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/hardware/TriggerEvent;->values:[F

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object v0, p0, Lcom/android/server/policy/SuspendGestureListener$1;->this$0:Lcom/android/server/policy/SuspendGestureListener;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/server/policy/SuspendGestureListener;->-set0(Lcom/android/server/policy/SuspendGestureListener;Z)Z

    .line 77
    iget-object v0, p0, Lcom/android/server/policy/SuspendGestureListener$1;->this$0:Lcom/android/server/policy/SuspendGestureListener;

    invoke-static {v0}, Lcom/android/server/policy/SuspendGestureListener;->-get1(Lcom/android/server/policy/SuspendGestureListener;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/policy/SuspendGestureListener$1;->this$0:Lcom/android/server/policy/SuspendGestureListener;

    invoke-static {v2}, Lcom/android/server/policy/SuspendGestureListener;->-get0(Lcom/android/server/policy/SuspendGestureListener;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 73
    return-void

    .line 74
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
