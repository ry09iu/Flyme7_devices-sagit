.class Lcom/android/server/policy/MiuiScreenOnProximityLock$3;
.super Landroid/os/Handler;
.source "MiuiScreenOnProximityLock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/MiuiScreenOnProximityLock;-><init>(Landroid/content/Context;Lcom/android/server/policy/MiuiKeyguardServiceDelegate;Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/MiuiScreenOnProximityLock;


# direct methods
.method constructor <init>(Lcom/android/server/policy/MiuiScreenOnProximityLock;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/MiuiScreenOnProximityLock;
    .param p2, "$anonymous0"    # Landroid/os/Looper;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock$3;->this$0:Lcom/android/server/policy/MiuiScreenOnProximityLock;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 74
    iget-object v1, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock$3;->this$0:Lcom/android/server/policy/MiuiScreenOnProximityLock;

    monitor-enter v1

    .line 75
    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch v0, :pswitch_data_0

    :goto_0
    monitor-exit v1

    .line 73
    return-void

    .line 77
    :pswitch_0
    :try_start_1
    const-string/jumbo v0, "MiuiScreenOnProximityLock"

    const-string/jumbo v2, "far from the screen for a certain time, release proximity sensor..."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-object v0, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock$3;->this$0:Lcom/android/server/policy/MiuiScreenOnProximityLock;

    invoke-virtual {v0}, Lcom/android/server/policy/MiuiScreenOnProximityLock;->release()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 74
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 82
    :pswitch_1
    :try_start_2
    iget-object v0, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock$3;->this$0:Lcom/android/server/policy/MiuiScreenOnProximityLock;

    invoke-static {v0}, Lcom/android/server/policy/MiuiScreenOnProximityLock;->-wrap0(Lcom/android/server/policy/MiuiScreenOnProximityLock;)V

    goto :goto_0

    .line 86
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock$3;->this$0:Lcom/android/server/policy/MiuiScreenOnProximityLock;

    invoke-static {v0}, Lcom/android/server/policy/MiuiScreenOnProximityLock;->-wrap1(Lcom/android/server/policy/MiuiScreenOnProximityLock;)V

    goto :goto_0

    .line 90
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock$3;->this$0:Lcom/android/server/policy/MiuiScreenOnProximityLock;

    invoke-static {v0}, Lcom/android/server/policy/MiuiScreenOnProximityLock;->-wrap2(Lcom/android/server/policy/MiuiScreenOnProximityLock;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 75
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
