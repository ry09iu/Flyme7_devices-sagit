.class Lcom/android/server/net/MiuiNetworkPolicyManagerService$2;
.super Landroid/app/IUidObserver$Stub;
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
    .line 432
    iput-object p1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$2;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    invoke-direct {p0}, Landroid/app/IUidObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onUidActive(I)V
    .locals 0
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 444
    return-void
.end method

.method public onUidGone(I)V
    .locals 4
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 441
    iget-object v0, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$2;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    invoke-static {v0}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->-get1(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$2;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    invoke-static {v1}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->-get1(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 440
    return-void
.end method

.method public onUidIdle(I)V
    .locals 0
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 447
    return-void
.end method

.method public onUidStateChanged(II)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "procState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 436
    iget-object v0, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$2;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    invoke-static {v0}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->-get1(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$2;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    invoke-static {v1}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->-get1(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 434
    return-void
.end method
