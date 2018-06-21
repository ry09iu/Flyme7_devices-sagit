.class Lcom/android/server/net/MiuiNetworkPolicyManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "MiuiNetworkPolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/MiuiNetworkPolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    .prologue
    .line 392
    iput-object p1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$1;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 395
    const-string/jumbo v3, "networkInfo"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 396
    .local v0, "netInfo":Landroid/net/NetworkInfo;
    iget-object v3, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$1;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    invoke-static {v3}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->-get8(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Z

    move-result v2

    .line 397
    .local v2, "wasConnected":Z
    iget-object v4, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$1;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    :goto_0
    invoke-static {v4, v3}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->-set3(Lcom/android/server/net/MiuiNetworkPolicyManagerService;Z)Z

    .line 398
    const-string/jumbo v3, "MiuiNetworkPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "wasConnected = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " mWifiConnected = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$1;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    invoke-static {v5}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->-get8(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 399
    const-string/jumbo v5, " mNetworkPriorityMode ="

    .line 398
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 399
    iget-object v5, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$1;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    invoke-static {v5}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->-get5(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)I

    move-result v5

    .line 398
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    iget-object v3, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$1;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    invoke-static {v3}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->-get8(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Z

    move-result v3

    if-eq v3, v2, :cond_1

    .line 401
    iget-object v3, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$1;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    invoke-static {v3}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->-wrap2(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)I

    move-result v1

    .line 402
    .local v1, "networkPriority":I
    iget-object v3, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$1;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    invoke-static {v3, v1}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->-wrap1(Lcom/android/server/net/MiuiNetworkPolicyManagerService;I)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$1;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    invoke-static {v3, v1}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->-wrap0(Lcom/android/server/net/MiuiNetworkPolicyManagerService;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 403
    :cond_0
    iget-object v3, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$1;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    iget-object v4, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$1;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    invoke-static {v4}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->-get8(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Z

    move-result v4

    if-eqz v4, :cond_3

    .end local v1    # "networkPriority":I
    :goto_1
    invoke-static {v3, v1}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->-wrap6(Lcom/android/server/net/MiuiNetworkPolicyManagerService;I)V

    .line 394
    :cond_1
    return-void

    .line 397
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 403
    .restart local v1    # "networkPriority":I
    :cond_3
    const/16 v1, 0xff

    goto :goto_1
.end method
