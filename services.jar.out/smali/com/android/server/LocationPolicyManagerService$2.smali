.class Lcom/android/server/LocationPolicyManagerService$2;
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
    .line 262
    iput-object p1, p0, Lcom/android/server/LocationPolicyManagerService$2;->this$0:Lcom/android/server/LocationPolicyManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 265
    const-string/jumbo v0, "LocationPolicy"

    const-string/jumbo v1, "Screen state changed"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService$2;->this$0:Lcom/android/server/LocationPolicyManagerService;

    invoke-static {v0}, Lcom/android/server/LocationPolicyManagerService;->-get3(Lcom/android/server/LocationPolicyManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 269
    :try_start_0
    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService$2;->this$0:Lcom/android/server/LocationPolicyManagerService;

    iget-object v2, p0, Lcom/android/server/LocationPolicyManagerService$2;->this$0:Lcom/android/server/LocationPolicyManagerService;

    invoke-static {v2}, Lcom/android/server/LocationPolicyManagerService;->-wrap0(Lcom/android/server/LocationPolicyManagerService;)Z

    move-result v2

    invoke-static {v0, v2}, Lcom/android/server/LocationPolicyManagerService;->-set2(Lcom/android/server/LocationPolicyManagerService;Z)Z

    .line 270
    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService$2;->this$0:Lcom/android/server/LocationPolicyManagerService;

    invoke-static {v0}, Lcom/android/server/LocationPolicyManagerService;->-wrap7(Lcom/android/server/LocationPolicyManagerService;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 264
    return-void

    .line 268
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
