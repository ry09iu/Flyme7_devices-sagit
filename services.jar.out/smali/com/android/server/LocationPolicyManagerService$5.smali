.class Lcom/android/server/LocationPolicyManagerService$5;
.super Landroid/content/BroadcastReceiver;
.source "LocationPolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LocationPolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LocationPolicyManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/LocationPolicyManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/LocationPolicyManagerService;

    .prologue
    .line 313
    iput-object p1, p0, Lcom/android/server/LocationPolicyManagerService$5;->this$0:Lcom/android/server/LocationPolicyManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, -0x1

    .line 319
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 320
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v2, "android.intent.extra.user_handle"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 321
    .local v1, "userId":I
    if-ne v1, v3, :cond_0

    return-void

    .line 323
    :cond_0
    const-string/jumbo v2, "LocationPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "USER_ADDED/USER_REMOVED for uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    iget-object v2, p0, Lcom/android/server/LocationPolicyManagerService$5;->this$0:Lcom/android/server/LocationPolicyManagerService;

    invoke-static {v2}, Lcom/android/server/LocationPolicyManagerService;->-get3(Lcom/android/server/LocationPolicyManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 327
    :try_start_0
    iget-object v2, p0, Lcom/android/server/LocationPolicyManagerService$5;->this$0:Lcom/android/server/LocationPolicyManagerService;

    invoke-static {v2, v1}, Lcom/android/server/LocationPolicyManagerService;->-wrap1(Lcom/android/server/LocationPolicyManagerService;I)V

    .line 329
    iget-object v2, p0, Lcom/android/server/LocationPolicyManagerService$5;->this$0:Lcom/android/server/LocationPolicyManagerService;

    invoke-static {v2}, Lcom/android/server/LocationPolicyManagerService;->-wrap6(Lcom/android/server/LocationPolicyManagerService;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    .line 315
    return-void

    .line 324
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method
