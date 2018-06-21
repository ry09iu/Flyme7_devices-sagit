.class Lcom/android/server/net/MiuiNetworkPolicyManagerService$4;
.super Ljava/lang/Object;
.source "MiuiNetworkPolicyManagerService.java"

# interfaces
.implements Lcom/android/server/MiuiNetworkManagementService$NetworkEventObserver;


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
    .line 623
    iput-object p1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$4;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uidDataActivityChanged(IZJ)V
    .locals 4
    .param p1, "uid"    # I
    .param p2, "active"    # Z
    .param p3, "tsNanos"    # J

    .prologue
    .line 627
    iget-object v0, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$4;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    invoke-static {v0}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->-get1(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Landroid/os/Handler;

    move-result-object v1

    iget-object v0, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$4;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    invoke-static {v0}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->-get1(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Landroid/os/Handler;

    move-result-object v2

    .line 628
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/4 v3, 0x3

    .line 627
    invoke-virtual {v2, v3, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 625
    return-void

    .line 628
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
