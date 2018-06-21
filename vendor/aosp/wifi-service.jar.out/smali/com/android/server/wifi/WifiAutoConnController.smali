.class Lcom/android/server/wifi/WifiAutoConnController;
.super Ljava/lang/Object;
.source "WifiAutoConnController.java"


# static fields
.field private static final DISCONNECTED_CONFIG_CACHE_SIZE:I = 0xa

.field private static final DISCONNECTED_TIME_LIST_SIZE:I = 0x5

.field private static final GOOD_NETWORK_DISCONNECTED_PERIOD:I = 0x493e0

.field private static final IN_BLACKLIST_TIME:I = 0x124f80

.field private static final POOR_NETWORK_DISCONNECTED_PERIOD:I = 0x1b7740

.field private static final WIFI_ENABLED:I = 0x1


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mBlacklistedBssids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mConfigDisconnTimeCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private mConnectType:I

.field private mConnectedNetworkType:I

.field private mContext:Landroid/content/Context;

.field private mDisableSsidSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mInitializeCalled:Z

.field mLastNetworkId:I

.field private mSelectSsidType:I

.field private mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;


# direct methods
.method static synthetic -get0(Lcom/android/server/wifi/WifiAutoConnController;)I
    .locals 1

    iget v0, p0, Lcom/android/server/wifi/WifiAutoConnController;->mConnectType:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/server/wifi/WifiAutoConnController;)I
    .locals 1

    iget v0, p0, Lcom/android/server/wifi/WifiAutoConnController;->mConnectedNetworkType:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/server/wifi/WifiAutoConnController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiAutoConnController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/wifi/WifiAutoConnController;)I
    .locals 1

    iget v0, p0, Lcom/android/server/wifi/WifiAutoConnController;->mSelectSsidType:I

    return v0
.end method

.method static synthetic -get4(Lcom/android/server/wifi/WifiAutoConnController;)Lcom/android/server/wifi/WifiConfigManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiAutoConnController;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/wifi/WifiAutoConnController;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/wifi/WifiAutoConnController;->mConnectType:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/server/wifi/WifiAutoConnController;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/wifi/WifiAutoConnController;->mConnectedNetworkType:I

    return p1
.end method

.method static synthetic -set2(Lcom/android/server/wifi/WifiAutoConnController;Ljava/util/HashSet;)Ljava/util/HashSet;
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/WifiAutoConnController;->mDisableSsidSet:Ljava/util/HashSet;

    return-object p1
.end method

.method static synthetic -set3(Lcom/android/server/wifi/WifiAutoConnController;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/wifi/WifiAutoConnController;->mSelectSsidType:I

    return p1
.end method

.method public constructor <init>(Lcom/android/server/wifi/WifiConfigManager;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 3
    .param p1, "wifiConfigManager"    # Lcom/android/server/wifi/WifiConfigManager;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v2, -0x1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-string/jumbo v0, "WifiAutoConnController"

    iput-object v0, p0, Lcom/android/server/wifi/WifiAutoConnController;->TAG:Ljava/lang/String;

    .line 49
    iput v2, p0, Lcom/android/server/wifi/WifiAutoConnController;->mConnectedNetworkType:I

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiAutoConnController;->mBlacklistedBssids:Ljava/util/List;

    .line 55
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiAutoConnController;->mConfigDisconnTimeCache:Landroid/util/LruCache;

    .line 228
    iput v2, p0, Lcom/android/server/wifi/WifiAutoConnController;->mLastNetworkId:I

    .line 58
    iput-object p1, p0, Lcom/android/server/wifi/WifiAutoConnController;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    .line 59
    iput-object p2, p0, Lcom/android/server/wifi/WifiAutoConnController;->mContext:Landroid/content/Context;

    .line 60
    iput-object p3, p0, Lcom/android/server/wifi/WifiAutoConnController;->mHandler:Landroid/os/Handler;

    .line 61
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiAutoConnController;->registerDisableWifiAutoConnectChangedObserver()V

    .line 63
    sget-boolean v0, Lmiui/os/Build;->IS_CM_CUSTOMIZATION:Z

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/android/server/wifi/WifiAutoConnController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiAutoConnController;->loadConnectType(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/WifiAutoConnController;->mConnectType:I

    .line 65
    iget-object v0, p0, Lcom/android/server/wifi/WifiAutoConnController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiAutoConnController;->loadSelectSsidType(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/WifiAutoConnController;->mSelectSsidType:I

    .line 66
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiAutoConnController;->registerConnectTypeChangedObserver()V

    .line 67
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiAutoConnController;->registerSelectSsidTypeChangedObserver()V

    .line 68
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiAutoConnController;->registerConnectivityChangedReceiver()V

    .line 70
    :cond_0
    new-instance v0, Lcom/android/server/wifi/WifiApManager;

    invoke-direct {v0, p2, p3}, Lcom/android/server/wifi/WifiApManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 57
    return-void
.end method


# virtual methods
.method public checkAutoConnect()V
    .locals 3

    .prologue
    .line 207
    sget-boolean v1, Lmiui/os/Build;->IS_CM_CUSTOMIZATION:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiAutoConnController;->isWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 208
    iget v1, p0, Lcom/android/server/wifi/WifiAutoConnController;->mConnectedNetworkType:I

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiAutoConnController;->isWifiAutoConnect()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 212
    :cond_0
    iget v1, p0, Lcom/android/server/wifi/WifiAutoConnController;->mConnectedNetworkType:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 213
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiAutoConnController;->isWifiSsidAutoSelect()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 206
    :cond_1
    :goto_0
    return-void

    .line 210
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "miui.intent.action.SWITCH_TO_WIFI"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 211
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/wifi/WifiAutoConnController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 215
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "miui.intent.action.SELECT_WIFI_AP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 216
    .restart local v0    # "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/wifi/WifiAutoConnController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method disConnect(Landroid/net/wifi/WifiConfiguration;)V
    .locals 2
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 235
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iget v1, p0, Lcom/android/server/wifi/WifiAutoConnController;->mLastNetworkId:I

    if-ne v0, v1, :cond_1

    .line 236
    if-eqz p1, :cond_0

    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->status:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiAutoConnController;->shouldEnableAllNetworks()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 239
    :cond_0
    :goto_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wifi/WifiAutoConnController;->mLastNetworkId:I

    .line 241
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiAutoConnController;->disableNetwork(Landroid/net/wifi/WifiConfiguration;)V

    .line 234
    return-void

    .line 237
    :cond_2
    iget-object v0, p0, Lcom/android/server/wifi/WifiAutoConnController;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigManager;->disableNetwork(I)Z

    goto :goto_0
.end method

.method disableNetwork(Landroid/net/wifi/WifiConfiguration;)V
    .locals 2
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 222
    if-eqz p1, :cond_0

    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->status:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 223
    iget-object v0, p0, Lcom/android/server/wifi/WifiAutoConnController;->mDisableSsidSet:Ljava/util/HashSet;

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 222
    if-eqz v0, :cond_0

    .line 223
    iget v0, p0, Lcom/android/server/wifi/WifiAutoConnController;->mLastNetworkId:I

    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-eq v0, v1, :cond_0

    .line 224
    iget-object v0, p0, Lcom/android/server/wifi/WifiAutoConnController;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigManager;->disableNetwork(I)Z

    .line 221
    :cond_0
    return-void
.end method

.method getConnectedNetworkType()I
    .locals 2

    .prologue
    .line 187
    iget-object v1, p0, Lcom/android/server/wifi/WifiAutoConnController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 188
    .local v0, "info":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method isDisableByUser(Ljava/lang/String;)Z
    .locals 1
    .param p1, "ssid"    # Ljava/lang/String;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/server/wifi/WifiAutoConnController;->mDisableSsidSet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method isWifiAutoConnect()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 259
    iget v1, p0, Lcom/android/server/wifi/WifiAutoConnController;->mConnectType:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method isWifiAutoConnectAsk()Z
    .locals 2

    .prologue
    .line 263
    iget v0, p0, Lcom/android/server/wifi/WifiAutoConnController;->mConnectType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isWifiEnabled()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 276
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wifi/WifiAutoConnController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "wifi_on"

    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-ne v3, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0

    .line 277
    :catch_0
    move-exception v0

    .line 278
    .local v0, "e":Ljava/lang/Exception;
    return v2
.end method

.method isWifiSsidAutoSelect()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 267
    iget v1, p0, Lcom/android/server/wifi/WifiAutoConnController;->mSelectSsidType:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method isWifiSsidAutoSelectAsk()Z
    .locals 2

    .prologue
    .line 271
    iget v0, p0, Lcom/android/server/wifi/WifiAutoConnController;->mSelectSsidType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadAndEnableAllNetworks()V
    .locals 1

    .prologue
    .line 283
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiAutoConnController;->mInitializeCalled:Z

    .line 282
    return-void
.end method

.method loadConnectType(Landroid/content/Context;)I
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 245
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 246
    const-string/jumbo v1, "wifi_connect_type"

    .line 247
    const/4 v2, 0x0

    .line 248
    const/4 v3, -0x2

    .line 245
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method loadSelectSsidType(Landroid/content/Context;)I
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 252
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 253
    const-string/jumbo v1, "wifi_select_ssid_type"

    .line 254
    const/4 v2, 0x0

    .line 255
    const/4 v3, -0x2

    .line 252
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method registerConnectTypeChangedObserver()V
    .locals 5

    .prologue
    .line 92
    new-instance v0, Lcom/android/server/wifi/WifiAutoConnController$2;

    iget-object v1, p0, Lcom/android/server/wifi/WifiAutoConnController;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/wifi/WifiAutoConnController$2;-><init>(Lcom/android/server/wifi/WifiAutoConnController;Landroid/os/Handler;)V

    .line 102
    .local v0, "observer":Landroid/database/ContentObserver;
    iget-object v1, p0, Lcom/android/server/wifi/WifiAutoConnController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 103
    const-string/jumbo v2, "wifi_connect_type"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 104
    const/4 v3, 0x0

    const/4 v4, -0x1

    .line 102
    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 91
    return-void
.end method

.method registerConnectivityChangedReceiver()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 124
    new-instance v1, Lcom/android/server/wifi/WifiAutoConnController$4;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/WifiAutoConnController$4;-><init>(Lcom/android/server/wifi/WifiAutoConnController;)V

    .line 145
    .local v1, "receiver":Landroid/content/BroadcastReceiver;
    iget-object v0, p0, Lcom/android/server/wifi/WifiAutoConnController;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 146
    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v5, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v3, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/wifi/WifiAutoConnController;->mHandler:Landroid/os/Handler;

    .line 145
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 147
    iget-object v0, p0, Lcom/android/server/wifi/WifiAutoConnController;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 148
    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v5, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v3, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/wifi/WifiAutoConnController;->mHandler:Landroid/os/Handler;

    .line 147
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 123
    return-void
.end method

.method registerDisableWifiAutoConnectChangedObserver()V
    .locals 5

    .prologue
    .line 78
    new-instance v0, Lcom/android/server/wifi/WifiAutoConnController$1;

    iget-object v1, p0, Lcom/android/server/wifi/WifiAutoConnController;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/wifi/WifiAutoConnController$1;-><init>(Lcom/android/server/wifi/WifiAutoConnController;Landroid/os/Handler;)V

    .line 85
    .local v0, "observer":Landroid/database/ContentObserver;
    iget-object v1, p0, Lcom/android/server/wifi/WifiAutoConnController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 86
    const-string/jumbo v2, "disable_wifi_auto_connect_ssid"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 87
    const/4 v3, 0x0

    const/4 v4, -0x1

    .line 85
    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 88
    iget-object v1, p0, Lcom/android/server/wifi/WifiAutoConnController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/provider/MiuiSettings$System;->getDisableWifiAutoConnectSsid(Landroid/content/Context;)Ljava/util/HashSet;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/WifiAutoConnController;->mDisableSsidSet:Ljava/util/HashSet;

    .line 77
    return-void
.end method

.method registerSelectSsidTypeChangedObserver()V
    .locals 5

    .prologue
    .line 108
    new-instance v0, Lcom/android/server/wifi/WifiAutoConnController$3;

    iget-object v1, p0, Lcom/android/server/wifi/WifiAutoConnController;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/wifi/WifiAutoConnController$3;-><init>(Lcom/android/server/wifi/WifiAutoConnController;Landroid/os/Handler;)V

    .line 118
    .local v0, "observer":Landroid/database/ContentObserver;
    iget-object v1, p0, Lcom/android/server/wifi/WifiAutoConnController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 119
    const-string/jumbo v2, "wifi_select_ssid_type"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 120
    const/4 v3, 0x0

    const/4 v4, -0x1

    .line 118
    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 107
    return-void
.end method

.method public selectNetwork(I)V
    .locals 1
    .param p1, "netId"    # I

    .prologue
    .line 287
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 288
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiAutoConnController;->setSelectNetworkId(I)V

    .line 286
    :cond_0
    return-void
.end method

.method setSelectNetworkId(I)V
    .locals 0
    .param p1, "networkId"    # I

    .prologue
    .line 231
    iput p1, p0, Lcom/android/server/wifi/WifiAutoConnController;->mLastNetworkId:I

    .line 230
    return-void
.end method

.method shouldEnableAllNetworks()Z
    .locals 1

    .prologue
    .line 192
    sget-boolean v0, Lmiui/os/Build;->IS_CM_CUSTOMIZATION:Z

    if-nez v0, :cond_0

    .line 193
    const/4 v0, 0x1

    return v0

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiAutoConnController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 197
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiAutoConnController;->isWifiAutoConnect()Z

    move-result v0

    return v0

    .line 199
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiAutoConnController;->isWifiSsidAutoSelect()Z

    move-result v0

    return v0
.end method

.method updateWifiEnableState()V
    .locals 6

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiAutoConnController;->isWifiEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 153
    return-void

    .line 156
    :cond_0
    iget v2, p0, Lcom/android/server/wifi/WifiAutoConnController;->mConnectedNetworkType:I

    packed-switch v2, :pswitch_data_0

    .line 151
    :cond_1
    :goto_0
    return-void

    .line 158
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiAutoConnController;->isWifiSsidAutoSelect()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 159
    iget-object v2, p0, Lcom/android/server/wifi/WifiAutoConnController;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiConfigManager;->enableAllNetworks()V

    goto :goto_0

    .line 164
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiAutoConnController;->isWifiSsidAutoSelect()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 165
    iget-object v2, p0, Lcom/android/server/wifi/WifiAutoConnController;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiConfigManager;->enableAllNetworks()V

    goto :goto_0

    .line 170
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiAutoConnController;->isWifiSsidAutoSelect()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 171
    iget-object v2, p0, Lcom/android/server/wifi/WifiAutoConnController;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiConfigManager;->enableAllNetworks()V

    goto :goto_0

    .line 173
    :cond_2
    iget-object v2, p0, Lcom/android/server/wifi/WifiAutoConnController;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 174
    .local v1, "wi":Landroid/net/wifi/WifiInfo;
    if-eqz v1, :cond_1

    .line 175
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v0

    .line 176
    .local v0, "currentNetworkId":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 177
    iget-object v2, p0, Lcom/android/server/wifi/WifiAutoConnController;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget-object v3, p0, Lcom/android/server/wifi/WifiAutoConnController;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    invoke-virtual {v3, v0}, Lcom/android/server/wifi/WifiConfigManager;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    .line 178
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    const/4 v5, 0x1

    .line 177
    invoke-virtual {v2, v3, v5, v4}, Lcom/android/server/wifi/WifiConfigManager;->enableNetwork(Landroid/net/wifi/WifiConfiguration;ZI)Z

    goto :goto_0

    .line 156
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
