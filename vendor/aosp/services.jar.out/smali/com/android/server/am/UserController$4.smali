.class Lcom/android/server/am/UserController$4;
.super Ljava/lang/Object;
.source "UserController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/UserController;->stopSingleUserLocked(ILandroid/app/IStopUserCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/UserController;

.field final synthetic val$stoppingIntent:Landroid/content/Intent;

.field final synthetic val$stoppingReceiver:Lcom/android/server/am/UserController$1StoppingReceiver;


# direct methods
.method constructor <init>(Lcom/android/server/am/UserController;Landroid/content/Intent;Lcom/android/server/am/UserController$1StoppingReceiver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/UserController;
    .param p2, "val$stoppingIntent"    # Landroid/content/Intent;
    .param p3, "val$stoppingReceiver"    # Lcom/android/server/am/UserController$1StoppingReceiver;

    .prologue
    .line 586
    iput-object p1, p0, Lcom/android/server/am/UserController$4;->this$0:Lcom/android/server/am/UserController;

    iput-object p2, p0, Lcom/android/server/am/UserController$4;->val$stoppingIntent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/android/server/am/UserController$4;->val$stoppingReceiver:Lcom/android/server/am/UserController$1StoppingReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    .prologue
    .line 589
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/UserController$4;->this$0:Lcom/android/server/am/UserController;

    invoke-static {v1}, Lcom/android/server/am/UserController;->-get3(Lcom/android/server/am/UserController;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController$4;->val$stoppingIntent:Landroid/content/Intent;

    .line 590
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/UserController$4;->val$stoppingReceiver:Lcom/android/server/am/UserController$1StoppingReceiver;

    .line 591
    const/4 v2, 0x1

    new-array v10, v2, [Ljava/lang/String;

    const-string/jumbo v2, "android.permission.INTERACT_ACROSS_USERS"

    const/4 v3, 0x0

    aput-object v2, v10, v3

    .line 592
    sget v15, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    .line 589
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 590
    const/4 v5, 0x0

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 591
    const/4 v11, -0x1

    .line 592
    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/16 v16, 0x3e8

    const/16 v17, -0x1

    .line 589
    invoke-virtual/range {v1 .. v17}, Lcom/android/server/am/ActivityManagerService;->broadcastIntentLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIII)I

    .line 588
    return-void
.end method
