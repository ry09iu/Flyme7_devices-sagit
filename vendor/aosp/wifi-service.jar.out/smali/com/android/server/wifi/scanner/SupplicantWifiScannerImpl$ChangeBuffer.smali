.class Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;
.super Ljava/lang/Object;
.source "SupplicantWifiScannerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ChangeBuffer"
.end annotation


# static fields
.field public static EVENT_FOUND:I

.field public static EVENT_LOST:I

.field public static EVENT_NONE:I

.field public static STATE_FOUND:I


# instance fields
.field private mApLostThreshold:I

.field private mBssidInfos:[Landroid/net/wifi/WifiScanner$BssidInfo;

.field private mFiredEvents:Z

.field private mLostCount:[I

.field private mMinEvents:I

.field private mMostRecentResult:[Landroid/net/wifi/ScanResult;

.field private mPendingEvent:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 924
    sput v1, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;->EVENT_NONE:I

    .line 925
    const/4 v0, 0x1

    sput v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;->EVENT_LOST:I

    .line 926
    const/4 v0, 0x2

    sput v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;->EVENT_FOUND:I

    .line 928
    sput v1, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;->STATE_FOUND:I

    .line 923
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 923
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 930
    iput-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;->mBssidInfos:[Landroid/net/wifi/WifiScanner$BssidInfo;

    .line 933
    iput-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;->mLostCount:[I

    .line 934
    iput-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;->mMostRecentResult:[Landroid/net/wifi/ScanResult;

    .line 935
    iput-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;->mPendingEvent:[I

    .line 936
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;->mFiredEvents:Z

    .line 923
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;-><init>()V

    return-void
.end method

.method private static findResult(Ljava/util/List;Ljava/lang/String;)Landroid/net/wifi/ScanResult;
    .locals 2
    .param p1, "bssid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroid/net/wifi/ScanResult;"
        }
    .end annotation

    .prologue
    .line 939
    .local p0, "results":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 940
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ScanResult;

    iget-object v1, v1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 941
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ScanResult;

    return-object v1

    .line 939
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 944
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public clearSettings()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 970
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;->setSettings([Landroid/net/wifi/WifiScanner$BssidInfo;II)V

    .line 969
    return-void
.end method

.method public getLastResults(I)[Landroid/net/wifi/ScanResult;
    .locals 3
    .param p1, "event"    # I

    .prologue
    .line 978
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 979
    .local v1, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/wifi/ScanResult;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;->mLostCount:[I

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 980
    iget-object v2, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;->mPendingEvent:[I

    aget v2, v2, v0

    if-ne v2, p1, :cond_0

    .line 981
    iget-object v2, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;->mMostRecentResult:[Landroid/net/wifi/ScanResult;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 979
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 984
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/net/wifi/ScanResult;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/net/wifi/ScanResult;

    return-object v2
.end method

.method public processScan(Ljava/util/List;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 993
    .local p1, "scanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    iget-object v5, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;->mBssidInfos:[Landroid/net/wifi/WifiScanner$BssidInfo;

    if-nez v5, :cond_0

    .line 994
    sget v5, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;->EVENT_NONE:I

    return v5

    .line 998
    :cond_0
    iget-boolean v5, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;->mFiredEvents:Z

    if-eqz v5, :cond_1

    .line 999
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;->mFiredEvents:Z

    .line 1000
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v5, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;->mLostCount:[I

    array-length v5, v5

    if-ge v2, v5, :cond_1

    .line 1001
    iget-object v5, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;->mPendingEvent:[I

    sget v6, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;->EVENT_NONE:I

    aput v6, v5, v2

    .line 1000
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1005
    .end local v2    # "i":I
    :cond_1
    const/4 v0, 0x0

    .line 1006
    .local v0, "eventCount":I
    sget v1, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;->EVENT_NONE:I

    .line 1007
    .local v1, "eventType":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    iget-object v5, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;->mLostCount:[I

    array-length v5, v5

    if-ge v2, v5, :cond_9

    .line 1008
    iget-object v5, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;->mBssidInfos:[Landroid/net/wifi/WifiScanner$BssidInfo;

    aget-object v5, v5, v2

    iget-object v5, v5, Landroid/net/wifi/WifiScanner$BssidInfo;->bssid:Ljava/lang/String;

    invoke-static {p1, v5}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;->findResult(Ljava/util/List;Ljava/lang/String;)Landroid/net/wifi/ScanResult;

    move-result-object v3

    .line 1009
    .local v3, "result":Landroid/net/wifi/ScanResult;
    const/high16 v4, -0x80000000

    .line 1010
    .local v4, "rssi":I
    if-eqz v3, :cond_2

    .line 1011
    iget-object v5, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;->mMostRecentResult:[Landroid/net/wifi/ScanResult;

    aput-object v3, v5, v2

    .line 1012
    iget v4, v3, Landroid/net/wifi/ScanResult;->level:I

    .line 1015
    :cond_2
    iget-object v5, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;->mBssidInfos:[Landroid/net/wifi/WifiScanner$BssidInfo;

    aget-object v5, v5, v2

    iget v5, v5, Landroid/net/wifi/WifiScanner$BssidInfo;->low:I

    if-ge v4, v5, :cond_6

    .line 1016
    iget-object v5, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;->mLostCount:[I

    aget v5, v5, v2

    iget v6, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;->mApLostThreshold:I

    if-ge v5, v6, :cond_3

    .line 1017
    iget-object v5, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;->mLostCount:[I

    aget v6, v5, v2

    add-int/lit8 v6, v6, 0x1

    aput v6, v5, v2

    .line 1019
    iget-object v5, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;->mLostCount:[I

    aget v5, v5, v2

    iget v6, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;->mApLostThreshold:I

    if-lt v5, v6, :cond_3

    .line 1020
    iget-object v5, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;->mPendingEvent:[I

    aget v5, v5, v2

    sget v6, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;->EVENT_FOUND:I

    if-ne v5, v6, :cond_5

    .line 1021
    iget-object v5, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;->mPendingEvent:[I

    sget v6, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;->EVENT_NONE:I

    aput v6, v5, v2

    .line 1041
    :cond_3
    :goto_2
    iget-object v5, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;->mPendingEvent:[I

    aget v5, v5, v2

    sget v6, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;->EVENT_NONE:I

    if-eq v5, v6, :cond_4

    .line 1042
    add-int/lit8 v0, v0, 0x1

    .line 1043
    iget-object v5, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;->mPendingEvent:[I

    aget v5, v5, v2

    or-int/2addr v1, v5

    .line 1007
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1023
    :cond_5
    iget-object v5, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;->mPendingEvent:[I

    sget v6, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;->EVENT_LOST:I

    aput v6, v5, v2

    goto :goto_2

    .line 1028
    :cond_6
    iget-object v5, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;->mLostCount:[I

    aget v5, v5, v2

    iget v6, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;->mApLostThreshold:I

    if-lt v5, v6, :cond_7

    .line 1029
    iget-object v5, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;->mPendingEvent:[I

    aget v5, v5, v2

    sget v6, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;->EVENT_LOST:I

    if-ne v5, v6, :cond_8

    .line 1030
    iget-object v5, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;->mPendingEvent:[I

    sget v6, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;->EVENT_NONE:I

    aput v6, v5, v2

    .line 1035
    :cond_7
    :goto_3
    iget-object v5, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;->mLostCount:[I

    sget v6, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;->STATE_FOUND:I

    aput v6, v5, v2

    goto :goto_2

    .line 1032
    :cond_8
    iget-object v5, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;->mPendingEvent:[I

    sget v6, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;->EVENT_FOUND:I

    aput v6, v5, v2

    goto :goto_3

    .line 1047
    .end local v3    # "result":Landroid/net/wifi/ScanResult;
    .end local v4    # "rssi":I
    :cond_9
    iget v5, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;->mMinEvents:I

    if-lt v0, v5, :cond_a

    .line 1048
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;->mFiredEvents:Z

    .line 1049
    return v1

    .line 1051
    :cond_a
    sget v5, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;->EVENT_NONE:I

    return v5
.end method

.method public setSettings([Landroid/net/wifi/WifiScanner$BssidInfo;II)V
    .locals 3
    .param p1, "bssidInfos"    # [Landroid/net/wifi/WifiScanner$BssidInfo;
    .param p2, "apLostThreshold"    # I
    .param p3, "minEvents"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 949
    iput-object p1, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;->mBssidInfos:[Landroid/net/wifi/WifiScanner$BssidInfo;

    .line 950
    if-gtz p2, :cond_0

    .line 951
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;->mApLostThreshold:I

    .line 955
    :goto_0
    iput p3, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;->mMinEvents:I

    .line 956
    if-eqz p1, :cond_1

    .line 957
    array-length v0, p1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;->mLostCount:[I

    .line 958
    iget-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;->mLostCount:[I

    iget v1, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;->mApLostThreshold:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 959
    array-length v0, p1

    new-array v0, v0, [Landroid/net/wifi/ScanResult;

    iput-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;->mMostRecentResult:[Landroid/net/wifi/ScanResult;

    .line 960
    array-length v0, p1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;->mPendingEvent:[I

    .line 961
    iput-boolean v2, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;->mFiredEvents:Z

    .line 948
    :goto_1
    return-void

    .line 953
    :cond_0
    iput p2, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;->mApLostThreshold:I

    goto :goto_0

    .line 963
    :cond_1
    iput-object v1, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;->mLostCount:[I

    .line 964
    iput-object v1, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;->mMostRecentResult:[Landroid/net/wifi/ScanResult;

    .line 965
    iput-object v1, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;->mPendingEvent:[I

    goto :goto_1
.end method
