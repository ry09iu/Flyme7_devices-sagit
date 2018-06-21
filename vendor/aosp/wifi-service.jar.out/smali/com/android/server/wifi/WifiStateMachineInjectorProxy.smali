.class final Lcom/android/server/wifi/WifiStateMachineInjectorProxy;
.super Ljava/lang/Object;
.source "WifiStateMachineInjectorProxy.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static handleNetworkStateChange(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;Ljava/util/List;)V
    .locals 4
    .param p0, "wifiInfo"    # Landroid/net/wifi/WifiInfo;
    .param p1, "networkInfo"    # Landroid/net/NetworkInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/WifiInfo;",
            "Landroid/net/NetworkInfo;",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/ScanDetail;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 12
    .local p2, "scanResults":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/ScanDetail;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 13
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getMeteredHint()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 11
    :cond_0
    :goto_0
    return-void

    .line 13
    :cond_1
    if-eqz p2, :cond_0

    .line 14
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v0

    .line 15
    .local v0, "bssid":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 16
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "result$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/ScanDetail;

    .line 17
    .local v1, "result":Lcom/android/server/wifi/ScanDetail;
    invoke-virtual {v1}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 19
    invoke-virtual {v1}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/ScanResult;->informationElements:[Landroid/net/wifi/ScanResult$InformationElement;

    invoke-static {v3}, Lcom/android/server/wifi/Utils;->isMeteredHint([Landroid/net/wifi/ScanResult$InformationElement;)Z

    move-result v3

    .line 18
    invoke-virtual {p0, v3}, Landroid/net/wifi/WifiInfo;->setMeteredHint(Z)V

    goto :goto_0
.end method
