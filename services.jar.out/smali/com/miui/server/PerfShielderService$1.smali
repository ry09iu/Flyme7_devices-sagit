.class Lcom/miui/server/PerfShielderService$1;
.super Ljava/lang/Object;
.source "PerfShielderService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/server/PerfShielderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/server/PerfShielderService;


# direct methods
.method constructor <init>(Lcom/miui/server/PerfShielderService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/server/PerfShielderService;

    .prologue
    .line 472
    iput-object p1, p0, Lcom/miui/server/PerfShielderService$1;->this$0:Lcom/miui/server/PerfShielderService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "arg0"    # Landroid/content/ComponentName;
    .param p2, "arg1"    # Landroid/os/IBinder;

    .prologue
    .line 484
    iget-object v1, p0, Lcom/miui/server/PerfShielderService$1;->this$0:Lcom/miui/server/PerfShielderService;

    invoke-static {p2}, Lcom/miui/daemon/performance/server/IMiuiPerfService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/daemon/performance/server/IMiuiPerfService;

    move-result-object v2

    iput-object v2, v1, Lcom/miui/server/PerfShielderService;->mPerfService:Lcom/miui/daemon/performance/server/IMiuiPerfService;

    .line 485
    iget-object v1, p0, Lcom/miui/server/PerfShielderService$1;->this$0:Lcom/miui/server/PerfShielderService;

    invoke-static {v1}, Lcom/miui/server/PerfShielderService;->-get1(Lcom/miui/server/PerfShielderService;)Lcom/miui/server/PerfShielderService$BindServiceHandler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/miui/server/PerfShielderService$BindServiceHandler;->removeMessages(I)V

    .line 487
    :try_start_0
    const-string/jumbo v1, "PerfShielderService"

    const-string/jumbo v2, "Miui performance service connected!"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    iget-object v1, p0, Lcom/miui/server/PerfShielderService$1;->this$0:Lcom/miui/server/PerfShielderService;

    iget-object v1, v1, Lcom/miui/server/PerfShielderService;->mPerfService:Lcom/miui/daemon/performance/server/IMiuiPerfService;

    invoke-interface {v1}, Lcom/miui/daemon/performance/server/IMiuiPerfService;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/server/PerfShielderService$1;->this$0:Lcom/miui/server/PerfShielderService;

    iget-object v2, v2, Lcom/miui/server/PerfShielderService;->mDeathHandler:Landroid/os/IBinder$DeathRecipient;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 483
    :goto_0
    return-void

    .line 489
    :catch_0
    move-exception v0

    .line 490
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "arg0"    # Landroid/content/ComponentName;

    .prologue
    const/4 v2, 0x0

    .line 475
    const-string/jumbo v0, "PerfShielderService"

    const-string/jumbo v1, "Miui performance service disconnected!"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    iget-object v0, p0, Lcom/miui/server/PerfShielderService$1;->this$0:Lcom/miui/server/PerfShielderService;

    iput-object v2, v0, Lcom/miui/server/PerfShielderService;->mPerfService:Lcom/miui/daemon/performance/server/IMiuiPerfService;

    .line 477
    iget-object v0, p0, Lcom/miui/server/PerfShielderService$1;->this$0:Lcom/miui/server/PerfShielderService;

    invoke-static {v0}, Lcom/miui/server/PerfShielderService;->-get0(Lcom/miui/server/PerfShielderService;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 478
    iget-object v0, p0, Lcom/miui/server/PerfShielderService$1;->this$0:Lcom/miui/server/PerfShielderService;

    invoke-static {v0}, Lcom/miui/server/PerfShielderService;->-get0(Lcom/miui/server/PerfShielderService;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/server/PerfShielderService$1;->this$0:Lcom/miui/server/PerfShielderService;

    invoke-static {v1}, Lcom/miui/server/PerfShielderService;->-get4(Lcom/miui/server/PerfShielderService;)Landroid/content/ServiceConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 474
    :cond_0
    return-void
.end method
