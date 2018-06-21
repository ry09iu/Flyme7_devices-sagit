.class final Lcom/android/server/wifi/WifiStateMachineInjector;
.super Ljava/lang/Object;
.source "WifiStateMachineInjector.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static sendScanResultsAvailableBroadcast(Landroid/content/Context;ZZ)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "screenOn"    # Z
    .param p2, "scanSucceeded"    # Z

    .prologue
    .line 13
    if-eqz p1, :cond_0

    .line 14
    const v2, 0x104003f

    .line 15
    .local v2, "nlpResId":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 16
    .local v3, "resources":Landroid/content/res/Resources;
    if-eqz v3, :cond_0

    .line 17
    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 18
    .local v1, "nlpName":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string/jumbo v4, "xiaomi"

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_0

    .line 19
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v4, "android.net.wifi.SCAN_RESULTS"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 20
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v4, 0x4000000

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 21
    const-string/jumbo v4, "resultsUpdated"

    invoke-virtual {v0, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 22
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 23
    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 12
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "nlpName":Ljava/lang/String;
    .end local v2    # "nlpResId":I
    .end local v3    # "resources":Landroid/content/res/Resources;
    :cond_0
    return-void
.end method
