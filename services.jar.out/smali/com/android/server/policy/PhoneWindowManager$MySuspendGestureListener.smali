.class Lcom/android/server/policy/PhoneWindowManager$MySuspendGestureListener;
.super Lcom/android/server/policy/SuspendGestureListener;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MySuspendGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/PhoneWindowManager;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/PhoneWindowManager;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    .line 955
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$MySuspendGestureListener;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 956
    invoke-direct {p0, p2, p3}, Lcom/android/server/policy/SuspendGestureListener;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 955
    return-void
.end method


# virtual methods
.method public onGoingToSleep()V
    .locals 6

    .prologue
    .line 961
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$MySuspendGestureListener;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 963
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$MySuspendGestureListener;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->-wrap2(Lcom/android/server/policy/PhoneWindowManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 964
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$MySuspendGestureListener;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 965
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$MySuspendGestureListener;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager$MySuspendGestureListener;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v4}, Lcom/android/server/policy/PhoneWindowManager;->-get0(Lcom/android/server/policy/PhoneWindowManager;)Z

    move-result v4

    .line 966
    const-string/jumbo v5, "android.policy:GESTURE"

    .line 965
    invoke-static {v0, v2, v3, v4, v5}, Lcom/android/server/policy/PhoneWindowManager;->-wrap0(Lcom/android/server/policy/PhoneWindowManager;JZLjava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 960
    return-void

    .line 961
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
