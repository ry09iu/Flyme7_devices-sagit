.class public Lcom/android/server/wifi/util/ScanDetailUtil;
.super Ljava/lang/Object;
.source "ScanDetailUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toScanDetail(Landroid/net/wifi/ScanResult;)Lcom/android/server/wifi/ScanDetail;
    .locals 5
    .param p0, "scanResult"    # Landroid/net/wifi/ScanResult;

    .prologue
    .line 36
    new-instance v0, Lcom/android/server/wifi/hotspot2/NetworkDetail;

    iget-object v1, p0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 37
    iget-object v2, p0, Landroid/net/wifi/ScanResult;->informationElements:[Landroid/net/wifi/ScanResult$InformationElement;

    iget-object v3, p0, Landroid/net/wifi/ScanResult;->anqpLines:Ljava/util/List;

    iget v4, p0, Landroid/net/wifi/ScanResult;->frequency:I

    .line 36
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/wifi/hotspot2/NetworkDetail;-><init>(Ljava/lang/String;[Landroid/net/wifi/ScanResult$InformationElement;Ljava/util/List;I)V

    .line 38
    .local v0, "networkDetail":Lcom/android/server/wifi/hotspot2/NetworkDetail;
    new-instance v1, Lcom/android/server/wifi/ScanDetail;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lcom/android/server/wifi/ScanDetail;-><init>(Landroid/net/wifi/ScanResult;Lcom/android/server/wifi/hotspot2/NetworkDetail;Ljava/util/Map;)V

    return-object v1
.end method
