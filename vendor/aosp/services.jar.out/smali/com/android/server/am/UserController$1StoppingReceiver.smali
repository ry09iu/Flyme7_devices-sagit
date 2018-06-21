.class Lcom/android/server/am/UserController$1StoppingReceiver;
.super Landroid/content/IIntentReceiver$Stub;
.source "UserController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/UserController;->stopSingleUserLocked(ILandroid/app/IStopUserCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StoppingReceiver"
.end annotation


# instance fields
.field broadcastRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/android/server/am/UserController;

.field final synthetic val$userId:I

.field final synthetic val$uss:Lcom/android/server/am/UserState;


# direct methods
.method constructor <init>(Lcom/android/server/am/UserController;ILcom/android/server/am/UserState;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/UserController;
    .param p2, "val$userId"    # I
    .param p3, "val$uss"    # Lcom/android/server/am/UserState;

    .prologue
    .line 558
    iput-object p1, p0, Lcom/android/server/am/UserController$1StoppingReceiver;->this$0:Lcom/android/server/am/UserController;

    iput p2, p0, Lcom/android/server/am/UserController$1StoppingReceiver;->val$userId:I

    iput-object p3, p0, Lcom/android/server/am/UserController$1StoppingReceiver;->val$uss:Lcom/android/server/am/UserState;

    invoke-direct {p0}, Landroid/content/IIntentReceiver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resultCode"    # I
    .param p3, "data"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;
    .param p5, "ordered"    # Z
    .param p6, "sticky"    # Z
    .param p7, "sendingUser"    # I

    .prologue
    .line 564
    if-nez p2, :cond_1

    .line 565
    if-eqz p3, :cond_0

    .line 566
    invoke-static {}, Lcom/android/server/am/UserController;->-get0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Delaying user shutdown: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/UserController$1StoppingReceiver;->this$0:Lcom/android/server/am/UserController;

    invoke-static {v0}, Lcom/android/server/am/UserController;->-get2(Lcom/android/server/am/UserController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/UserController$1StoppingReceiver;->broadcastRunnable:Ljava/lang/Runnable;

    .line 571
    const-wide/16 v2, 0x4e20

    .line 570
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 572
    return-void

    .line 568
    :cond_0
    invoke-static {}, Lcom/android/server/am/UserController;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Delaying user shutdown"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 574
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/UserController$1StoppingReceiver;->this$0:Lcom/android/server/am/UserController;

    invoke-static {v0}, Lcom/android/server/am/UserController;->-get2(Lcom/android/server/am/UserController;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/am/UserController$1StoppingReceiver$1;

    iget v2, p0, Lcom/android/server/am/UserController$1StoppingReceiver;->val$userId:I

    iget-object v3, p0, Lcom/android/server/am/UserController$1StoppingReceiver;->val$uss:Lcom/android/server/am/UserState;

    invoke-direct {v1, p0, v2, v3}, Lcom/android/server/am/UserController$1StoppingReceiver$1;-><init>(Lcom/android/server/am/UserController$1StoppingReceiver;ILcom/android/server/am/UserState;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 562
    return-void
.end method
