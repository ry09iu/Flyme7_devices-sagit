.class Lcom/android/server/job/controllers/ConnectivityController$2;
.super Landroid/net/INetworkPolicyListener$Stub;
.source "ConnectivityController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/controllers/ConnectivityController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/job/controllers/ConnectivityController;


# direct methods
.method constructor <init>(Lcom/android/server/job/controllers/ConnectivityController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/job/controllers/ConnectivityController;

    .prologue
    .line 162
    iput-object p1, p0, Lcom/android/server/job/controllers/ConnectivityController$2;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    invoke-direct {p0}, Landroid/net/INetworkPolicyListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onMeteredIfacesChanged([Ljava/lang/String;)V
    .locals 2
    .param p1, "meteredIfaces"    # [Ljava/lang/String;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController$2;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/android/server/job/controllers/ConnectivityController;->-wrap0(Lcom/android/server/job/controllers/ConnectivityController;I)V

    .line 169
    return-void
.end method

.method public onRestrictBackgroundBlacklistChanged(IZ)V
    .locals 1
    .param p1, "uid"    # I
    .param p2, "blacklisted"    # Z

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController$2;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    invoke-static {v0, p1}, Lcom/android/server/job/controllers/ConnectivityController;->-wrap0(Lcom/android/server/job/controllers/ConnectivityController;I)V

    .line 184
    return-void
.end method

.method public onRestrictBackgroundChanged(Z)V
    .locals 2
    .param p1, "restrictBackground"    # Z

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController$2;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/android/server/job/controllers/ConnectivityController;->-wrap0(Lcom/android/server/job/controllers/ConnectivityController;I)V

    .line 174
    return-void
.end method

.method public onRestrictBackgroundWhitelistChanged(IZ)V
    .locals 1
    .param p1, "uid"    # I
    .param p2, "whitelisted"    # Z

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController$2;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    invoke-static {v0, p1}, Lcom/android/server/job/controllers/ConnectivityController;->-wrap0(Lcom/android/server/job/controllers/ConnectivityController;I)V

    .line 179
    return-void
.end method

.method public onUidRulesChanged(II)V
    .locals 1
    .param p1, "uid"    # I
    .param p2, "uidRules"    # I

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController$2;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    invoke-static {v0, p1}, Lcom/android/server/job/controllers/ConnectivityController;->-wrap0(Lcom/android/server/job/controllers/ConnectivityController;I)V

    .line 164
    return-void
.end method
