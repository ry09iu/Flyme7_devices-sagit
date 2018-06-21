.class Lcom/android/server/LocationPolicyManagerService$6;
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
    .line 334
    iput-object p1, p0, Lcom/android/server/LocationPolicyManagerService$6;->this$0:Lcom/android/server/LocationPolicyManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 337
    const-string/jumbo v1, "LocationPolicy"

    const-string/jumbo v2, "location mode changed"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 340
    .local v0, "cr":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/server/LocationPolicyManagerService$6;->this$0:Lcom/android/server/LocationPolicyManagerService;

    invoke-static {v1}, Lcom/android/server/LocationPolicyManagerService;->-get3(Lcom/android/server/LocationPolicyManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 341
    :try_start_0
    iget-object v1, p0, Lcom/android/server/LocationPolicyManagerService$6;->this$0:Lcom/android/server/LocationPolicyManagerService;

    const-string/jumbo v3, "location_mode"

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-static {v1, v3}, Lcom/android/server/LocationPolicyManagerService;->-set1(Lcom/android/server/LocationPolicyManagerService;I)I

    .line 342
    iget-object v1, p0, Lcom/android/server/LocationPolicyManagerService$6;->this$0:Lcom/android/server/LocationPolicyManagerService;

    invoke-static {v1}, Lcom/android/server/LocationPolicyManagerService;->-wrap2(Lcom/android/server/LocationPolicyManagerService;)V

    .line 343
    iget-object v1, p0, Lcom/android/server/LocationPolicyManagerService$6;->this$0:Lcom/android/server/LocationPolicyManagerService;

    invoke-static {v1}, Lcom/android/server/LocationPolicyManagerService;->-wrap3(Lcom/android/server/LocationPolicyManagerService;)V

    .line 344
    iget-object v1, p0, Lcom/android/server/LocationPolicyManagerService$6;->this$0:Lcom/android/server/LocationPolicyManagerService;

    invoke-static {v1}, Lcom/android/server/LocationPolicyManagerService;->-wrap4(Lcom/android/server/LocationPolicyManagerService;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 336
    return-void

    .line 340
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
