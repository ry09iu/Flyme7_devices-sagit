.class Lcom/android/server/net/MiuiNetworkPolicyManagerService$6;
.super Landroid/database/ContentObserver;
.source "MiuiNetworkPolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/net/MiuiNetworkPolicyManagerService;->registerNetworkProrityModeChangedObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/net/MiuiNetworkPolicyManagerService;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/net/MiuiNetworkPolicyManagerService;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 369
    iput-object p1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$6;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .prologue
    .line 372
    iget-object v1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$6;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    invoke-static {v1}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->-wrap2(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)I

    move-result v0

    .line 373
    .local v0, "networkPriority":I
    const-string/jumbo v1, "MiuiNetworkPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "networkPriorityMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 374
    const-string/jumbo v3, " mNetworkPriorityMode ="

    .line 373
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 374
    iget-object v3, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$6;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    invoke-static {v3}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->-get5(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)I

    move-result v3

    .line 373
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 374
    const-string/jumbo v3, " mWifiConnected="

    .line 373
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 374
    iget-object v3, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$6;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    invoke-static {v3}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->-get8(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Z

    move-result v3

    .line 373
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    iget-object v1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$6;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    invoke-static {v1}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->-get5(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$6;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    invoke-static {v1}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->-get8(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 376
    iget-object v1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$6;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    invoke-static {v1, v0}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->-wrap6(Lcom/android/server/net/MiuiNetworkPolicyManagerService;I)V

    .line 371
    :cond_0
    return-void
.end method
