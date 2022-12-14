.class Lcom/android/server/connectivity/NetworkMonitor$MaybeNotifyState;
.super Lcom/android/internal/util/State;
.source "NetworkMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/NetworkMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MaybeNotifyState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/NetworkMonitor;


# direct methods
.method private constructor <init>(Lcom/android/server/connectivity/NetworkMonitor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .prologue
    .line 387
    iput-object p1, p0, Lcom/android/server/connectivity/NetworkMonitor$MaybeNotifyState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$MaybeNotifyState;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/NetworkMonitor$MaybeNotifyState;-><init>(Lcom/android/server/connectivity/NetworkMonitor;)V

    return-void
.end method


# virtual methods
.method public exit()V
    .locals 6

    .prologue
    .line 420
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$MaybeNotifyState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    .line 421
    iget-object v2, p0, Lcom/android/server/connectivity/NetworkMonitor$MaybeNotifyState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v2}, Lcom/android/server/connectivity/NetworkMonitor;->-get10(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v2, v2, Landroid/net/Network;->netId:I

    .line 420
    const v3, 0x8200a

    const/4 v4, 0x0

    .line 421
    const/4 v5, 0x0

    .line 420
    invoke-virtual {v1, v3, v4, v2, v5}, Lcom/android/server/connectivity/NetworkMonitor;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 422
    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$MaybeNotifyState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v1}, Lcom/android/server/connectivity/NetworkMonitor;->-get1(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 419
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 390
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 414
    const/4 v1, 0x0

    return v1

    .line 392
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    .line 393
    const-string/jumbo v1, "android.net.conn.CAPTIVE_PORTAL"

    .line 392
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 394
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "android.net.extra.NETWORK"

    iget-object v2, p0, Lcom/android/server/connectivity/NetworkMonitor$MaybeNotifyState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v2}, Lcom/android/server/connectivity/NetworkMonitor;->-get10(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 395
    const-string/jumbo v1, "android.net.extra.CAPTIVE_PORTAL"

    .line 396
    new-instance v2, Landroid/net/CaptivePortal;

    new-instance v3, Lcom/android/server/connectivity/NetworkMonitor$MaybeNotifyState$1;

    invoke-direct {v3, p0}, Lcom/android/server/connectivity/NetworkMonitor$MaybeNotifyState$1;-><init>(Lcom/android/server/connectivity/NetworkMonitor$MaybeNotifyState;)V

    invoke-direct {v2, v3}, Landroid/net/CaptivePortal;-><init>(Landroid/os/IBinder;)V

    .line 395
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 407
    const-string/jumbo v1, "android.net.extra.CAPTIVE_PORTAL_URL"

    .line 408
    iget-object v2, p0, Lcom/android/server/connectivity/NetworkMonitor$MaybeNotifyState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v2}, Lcom/android/server/connectivity/NetworkMonitor;->-get7(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;->detectUrl:Ljava/lang/String;

    .line 407
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 410
    const/high16 v1, 0x10400000

    .line 409
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 411
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$MaybeNotifyState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v1}, Lcom/android/server/connectivity/NetworkMonitor;->-get2(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 412
    const/4 v1, 0x1

    return v1

    .line 390
    nop

    :pswitch_data_0
    .packed-switch 0x8200b
        :pswitch_0
    .end packed-switch
.end method
