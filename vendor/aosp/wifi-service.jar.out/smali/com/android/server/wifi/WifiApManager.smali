.class Lcom/android/server/wifi/WifiApManager;
.super Ljava/lang/Object;
.source "WifiApManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiApManager$1;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mConnected:Z

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mHotSpotBlackSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxStationNum:I


# direct methods
.method static synthetic -get0(Lcom/android/server/wifi/WifiApManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiApManager;->mConnected:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/server/wifi/WifiApManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiApManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/wifi/WifiApManager;)Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiApManager;->mHotSpotBlackSet:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/wifi/WifiApManager;)I
    .locals 1

    iget v0, p0, Lcom/android/server/wifi/WifiApManager;->mMaxStationNum:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/server/wifi/WifiApManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wifi/WifiApManager;->mConnected:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/server/wifi/WifiApManager;Ljava/util/Set;)Ljava/util/Set;
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/WifiApManager;->mHotSpotBlackSet:Ljava/util/Set;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/server/wifi/WifiApManager;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/wifi/WifiApManager;->mMaxStationNum:I

    return p1
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-string/jumbo v0, "WifiApManager"

    iput-object v0, p0, Lcom/android/server/wifi/WifiApManager;->TAG:Ljava/lang/String;

    .line 94
    new-instance v0, Lcom/android/server/wifi/WifiApManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/WifiApManager$1;-><init>(Lcom/android/server/wifi/WifiApManager;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiApManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 35
    iput-object p1, p0, Lcom/android/server/wifi/WifiApManager;->mContext:Landroid/content/Context;

    .line 36
    iput-object p2, p0, Lcom/android/server/wifi/WifiApManager;->mHandler:Landroid/os/Handler;

    .line 37
    const-string/jumbo v0, "qcom"

    const-string/jumbo v1, "vendor"

    invoke-static {v1}, Lmiui/util/FeatureParser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    invoke-direct {p0}, Lcom/android/server/wifi/WifiApManager;->registerHotSpotMaxNumChangedObserver()V

    .line 39
    invoke-direct {p0}, Lcom/android/server/wifi/WifiApManager;->registerHotSpotBlackSetChangedObserver()V

    .line 40
    invoke-direct {p0}, Lcom/android/server/wifi/WifiApManager;->registerHotSpotVendorSpecificChangedObserver()V

    .line 41
    iget-object v0, p0, Lcom/android/server/wifi/WifiApManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/wifi/WifiApManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 42
    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wifi/WifiApManager;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    .line 41
    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 34
    :cond_0
    return-void
.end method

.method static clearSoftApClientsNotification(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 137
    invoke-static {}, Lcom/android/server/connectivity/TetheringInjector;->init()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    invoke-static {p0}, Lcom/android/server/connectivity/TetheringInjector;->notificationFinished(Landroid/content/Context;)V

    .line 136
    :cond_0
    return-void
.end method

.method private registerHotSpotBlackSetChangedObserver()V
    .locals 5

    .prologue
    .line 66
    new-instance v0, Lcom/android/server/wifi/WifiApManager$3;

    iget-object v1, p0, Lcom/android/server/wifi/WifiApManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/wifi/WifiApManager$3;-><init>(Lcom/android/server/wifi/WifiApManager;Landroid/os/Handler;)V

    .line 76
    .local v0, "observer":Landroid/database/ContentObserver;
    iget-object v1, p0, Lcom/android/server/wifi/WifiApManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 77
    const-string/jumbo v2, "hotspot_mac_black_set"

    .line 76
    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 77
    const/4 v3, 0x0

    const/4 v4, -0x1

    .line 76
    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 78
    iget-object v1, p0, Lcom/android/server/wifi/WifiApManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/provider/MiuiSettings$System;->getHotSpotMacBlackSet(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/WifiApManager;->mHotSpotBlackSet:Ljava/util/Set;

    .line 65
    return-void
.end method

.method private registerHotSpotMaxNumChangedObserver()V
    .locals 5

    .prologue
    .line 50
    new-instance v0, Lcom/android/server/wifi/WifiApManager$2;

    iget-object v1, p0, Lcom/android/server/wifi/WifiApManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/wifi/WifiApManager$2;-><init>(Lcom/android/server/wifi/WifiApManager;Landroid/os/Handler;)V

    .line 60
    .local v0, "observer":Landroid/database/ContentObserver;
    iget-object v1, p0, Lcom/android/server/wifi/WifiApManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 61
    const-string/jumbo v2, "hotspot_max_station_num"

    .line 60
    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 61
    const/4 v3, 0x0

    const/4 v4, -0x1

    .line 60
    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 62
    iget-object v1, p0, Lcom/android/server/wifi/WifiApManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/provider/MiuiSettings$System;->getHotSpotMaxStationNum(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/WifiApManager;->mMaxStationNum:I

    .line 49
    return-void
.end method

.method private registerHotSpotVendorSpecificChangedObserver()V
    .locals 5

    .prologue
    .line 82
    new-instance v0, Lcom/android/server/wifi/WifiApManager$4;

    iget-object v1, p0, Lcom/android/server/wifi/WifiApManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/wifi/WifiApManager$4;-><init>(Lcom/android/server/wifi/WifiApManager;Landroid/os/Handler;)V

    .line 90
    .local v0, "observer":Landroid/database/ContentObserver;
    iget-object v1, p0, Lcom/android/server/wifi/WifiApManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 91
    const-string/jumbo v2, "hotspot_vendor_specific"

    .line 90
    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 91
    const/4 v3, 0x0

    const/4 v4, -0x1

    .line 90
    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 81
    return-void
.end method

.method static setSoftApClientNotification(Landroid/content/Context;Landroid/app/Notification$Builder;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "notificationBuilder"    # Landroid/app/Notification$Builder;

    .prologue
    .line 131
    invoke-static {}, Lcom/android/server/connectivity/TetheringInjector;->init()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    invoke-static {p0, p1}, Lcom/android/server/connectivity/TetheringInjector;->setTetheredNotification(Landroid/content/Context;Landroid/app/Notification$Builder;)V

    .line 130
    :cond_0
    return-void
.end method
