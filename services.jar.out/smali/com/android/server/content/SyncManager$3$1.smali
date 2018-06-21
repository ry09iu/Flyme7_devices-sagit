.class Lcom/android/server/content/SyncManager$3$1;
.super Ljava/lang/Object;
.source "SyncManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/content/SyncManager$3;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/content/SyncManager$3;

.field final synthetic val$broadcastIntent:Landroid/content/Intent;

.field final synthetic val$sendingUserId:I


# direct methods
.method constructor <init>(Lcom/android/server/content/SyncManager$3;Landroid/content/Intent;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/content/SyncManager$3;
    .param p2, "val$broadcastIntent"    # Landroid/content/Intent;
    .param p3, "val$sendingUserId"    # I

    .prologue
    .line 329
    iput-object p1, p0, Lcom/android/server/content/SyncManager$3$1;->this$1:Lcom/android/server/content/SyncManager$3;

    iput-object p2, p0, Lcom/android/server/content/SyncManager$3$1;->val$broadcastIntent:Landroid/content/Intent;

    iput p3, p0, Lcom/android/server/content/SyncManager$3$1;->val$sendingUserId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 332
    iget-object v0, p0, Lcom/android/server/content/SyncManager$3$1;->this$1:Lcom/android/server/content/SyncManager$3;

    iget-object v0, v0, Lcom/android/server/content/SyncManager$3;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v0}, Lcom/android/server/content/SyncManager;->-get13(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncManager$SyncHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/content/SyncManager$SyncHandler;->-wrap1(Lcom/android/server/content/SyncManager$SyncHandler;Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    .line 334
    iget-object v0, p0, Lcom/android/server/content/SyncManager$3$1;->this$1:Lcom/android/server/content/SyncManager$3;

    iget-object v0, v0, Lcom/android/server/content/SyncManager$3;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v1, p0, Lcom/android/server/content/SyncManager$3$1;->val$broadcastIntent:Landroid/content/Intent;

    iget v2, p0, Lcom/android/server/content/SyncManager$3$1;->val$sendingUserId:I

    .line 333
    invoke-static {v0, v1, v2}, Lcom/android/server/content/SyncManagerInjector;->scheduleSyncForChangedAccountUnknownStateAuthorities(Lcom/android/server/content/SyncManager;Landroid/content/Intent;I)V

    .line 331
    return-void
.end method
