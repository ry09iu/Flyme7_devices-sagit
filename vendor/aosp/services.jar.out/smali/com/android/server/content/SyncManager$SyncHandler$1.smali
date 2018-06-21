.class Lcom/android/server/content/SyncManager$SyncHandler$1;
.super Ljava/lang/Object;
.source "SyncManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/content/SyncManager$SyncHandler;->checkIfDeviceReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/content/SyncManager$SyncHandler;


# direct methods
.method constructor <init>(Lcom/android/server/content/SyncManager$SyncHandler;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/content/SyncManager$SyncHandler;

    .prologue
    .line 2450
    iput-object p1, p0, Lcom/android/server/content/SyncManager$SyncHandler$1;->this$1:Lcom/android/server/content/SyncManager$SyncHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 2456
    iget-object v4, p0, Lcom/android/server/content/SyncManager$SyncHandler$1;->this$1:Lcom/android/server/content/SyncManager$SyncHandler;

    iget-object v4, v4, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v4}, Lcom/android/server/content/SyncManager;->-wrap11(Lcom/android/server/content/SyncManager;)Ljava/util/List;

    move-result-object v0

    .line 2457
    .local v0, "allPendingSyncs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncOperation;>;"
    if-nez v0, :cond_0

    return-void

    .line 2458
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "sync$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/content/SyncOperation;

    .line 2459
    .local v2, "sync":Lcom/android/server/content/SyncOperation;
    if-eqz v2, :cond_1

    .line 2460
    iget-boolean v4, v2, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-eqz v4, :cond_1

    .line 2461
    iget-boolean v4, v2, Lcom/android/server/content/SyncOperation;->miuiInitPeriodicFixed:Z

    if-nez v4, :cond_1

    .line 2464
    iget-object v4, v2, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    if-eqz v4, :cond_1

    .line 2465
    iget-object v4, v2, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v4, v4, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    if-eqz v4, :cond_1

    .line 2466
    const-string/jumbo v4, "com.xiaomi"

    iget-object v5, v2, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v5, v5, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v5, v5, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2469
    iget-object v4, p0, Lcom/android/server/content/SyncManager$SyncHandler$1;->this$1:Lcom/android/server/content/SyncManager$SyncHandler;

    iget-object v4, v4, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v4}, Lcom/android/server/content/SyncManager;->-wrap0(Lcom/android/server/content/SyncManager;)Landroid/app/job/JobScheduler;

    move-result-object v1

    .line 2470
    .local v1, "j":Landroid/app/job/JobScheduler;
    if-eqz v1, :cond_1

    iget v4, v2, Lcom/android/server/content/SyncOperation;->jobId:I

    invoke-virtual {v1, v4}, Landroid/app/job/JobScheduler;->cancel(I)V

    goto :goto_0

    .line 2452
    .end local v1    # "j":Landroid/app/job/JobScheduler;
    .end local v2    # "sync":Lcom/android/server/content/SyncOperation;
    :cond_2
    return-void
.end method
