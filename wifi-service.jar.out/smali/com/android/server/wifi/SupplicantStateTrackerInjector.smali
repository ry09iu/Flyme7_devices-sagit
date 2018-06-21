.class public final Lcom/android/server/wifi/SupplicantStateTrackerInjector;
.super Ljava/lang/Object;
.source "SupplicantStateTrackerInjector.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static handleConnectNetwork(I)V
    .locals 0
    .param p0, "netid"    # I

    .prologue
    .line 45
    invoke-static {p0}, Lcom/android/server/wifi/MiuiSupplicantStateTracker;->handleConnectNetwork(I)V

    .line 44
    return-void
.end method

.method public static handleNetworkConnectionComplete()V
    .locals 0

    .prologue
    .line 51
    invoke-static {}, Lcom/android/server/wifi/MiuiSupplicantStateTracker;->handleNetworkConnectionComplete()V

    .line 50
    return-void
.end method

.method public static handleNetworkConnectionFailure(Landroid/content/Context;Lcom/android/server/wifi/WifiConfigManager;II)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "wifiConfigManager"    # Lcom/android/server/wifi/WifiConfigManager;
    .param p2, "netid"    # I
    .param p3, "authenticationFailuresCount"    # I

    .prologue
    const/4 v3, 0x0

    .line 20
    invoke-static {p2, p3}, Lcom/android/server/wifi/SupplicantStateTrackerInjector;->isConformAuthFailure(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 21
    invoke-static {}, Lcom/android/server/wifi/MiuiSupplicantStateTracker;->clear()V

    .line 23
    if-eqz p1, :cond_0

    .line 24
    invoke-virtual {p1, p2}, Lcom/android/server/wifi/WifiConfigManager;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 25
    .local v0, "network":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 26
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v2, v2, v3

    if-nez v2, :cond_1

    .line 40
    .end local v0    # "network":Landroid/net/wifi/WifiConfiguration;
    :cond_0
    :goto_0
    const/4 p3, 0x0

    .line 41
    return p3

    .line 27
    .restart local v0    # "network":Landroid/net/wifi/WifiConfiguration;
    :cond_1
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v1

    .line 28
    .local v1, "networkStatus":Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->isNetworkEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 30
    const/4 v2, 0x1

    .line 29
    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setNetworkSelectionStatus(I)V

    .line 32
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setDisableTime(J)V

    .line 34
    const/4 v2, 0x3

    .line 33
    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setNetworkSelectionDisableReason(I)V

    .line 36
    :cond_2
    invoke-static {p0, v0}, Lcom/android/server/wifi/MiuiSupplicantStateTracker;->sendBroadcast(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_0
.end method

.method public static isConformAuthFailure(II)Z
    .locals 1
    .param p0, "netid"    # I
    .param p1, "authenticationFailuresCount"    # I

    .prologue
    .line 55
    invoke-static {p0, p1}, Lcom/android/server/wifi/MiuiSupplicantStateTracker;->isConformAuthFailure(II)Z

    move-result v0

    return v0
.end method
