.class public Lcom/android/server/wifi/FrameworkFacade;
.super Ljava/lang/Object;
.source "FrameworkFacade.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "FrameworkFacade"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkUidPermission(Ljava/lang/String;I)I
    .locals 1
    .param p1, "permName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 166
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "requestCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "flags"    # I

    .prologue
    .line 88
    invoke-static {p1, p2, p3, p4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public getConfigWiFiDisableInECBM(Landroid/content/Context;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 98
    const-string/jumbo v3, "carrier_config"

    .line 97
    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CarrierConfigManager;

    .line 99
    .local v1, "configManager":Landroid/telephony/CarrierConfigManager;
    if-eqz v1, :cond_1

    .line 103
    invoke-virtual {v1}, Landroid/telephony/CarrierConfigManager;->getConfig()Landroid/os/PersistableBundle;

    move-result-object v0

    .line 104
    .local v0, "config":Landroid/os/PersistableBundle;
    if-nez v0, :cond_0

    :goto_0
    return v2

    .line 105
    :cond_0
    const-string/jumbo v2, "config_wifi_disable_in_ecbm"

    invoke-virtual {v0, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    goto :goto_0

    .line 109
    .end local v0    # "config":Landroid/os/PersistableBundle;
    :cond_1
    return v2
.end method

.method public getIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "def"    # I

    .prologue
    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p2, p3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getLongSetting(Landroid/content/Context;Ljava/lang/String;J)J
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "def"    # J

    .prologue
    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p2, p3, p4}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getRxPackets(Ljava/lang/String;)J
    .locals 2
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 128
    invoke-static {p1}, Landroid/net/TrafficStats;->getRxPackets(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getService(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 1
    .param p1, "serviceName"    # Ljava/lang/String;

    .prologue
    .line 79
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public getStringSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTxPackets(Ljava/lang/String;)J
    .locals 2
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 124
    invoke-static {p1}, Landroid/net/TrafficStats;->getTxPackets(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public makeApConfigStore(Landroid/content/Context;Lcom/android/server/wifi/BackupManagerProxy;)Lcom/android/server/wifi/WifiApConfigStore;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "backupManagerProxy"    # Lcom/android/server/wifi/BackupManagerProxy;

    .prologue
    .line 120
    new-instance v0, Lcom/android/server/wifi/WifiApConfigStore;

    invoke-direct {v0, p1, p2}, Lcom/android/server/wifi/WifiApConfigStore;-><init>(Landroid/content/Context;Lcom/android/server/wifi/BackupManagerProxy;)V

    return-object v0
.end method

.method public makeBaseLogger()Lcom/android/server/wifi/BaseWifiLogger;
    .locals 1

    .prologue
    .line 49
    new-instance v0, Lcom/android/server/wifi/BaseWifiLogger;

    invoke-direct {v0}, Lcom/android/server/wifi/BaseWifiLogger;-><init>()V

    return-object v0
.end method

.method public makeIpManager(Landroid/content/Context;Ljava/lang/String;Landroid/net/ip/IpManager$Callback;)Landroid/net/ip/IpManager;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "iface"    # Ljava/lang/String;
    .param p3, "callback"    # Landroid/net/ip/IpManager$Callback;

    .prologue
    .line 133
    new-instance v0, Landroid/net/ip/IpManager;

    invoke-direct {v0, p1, p2, p3}, Landroid/net/ip/IpManager;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/net/ip/IpManager$Callback;)V

    return-object v0
.end method

.method public makeRealLogger(Landroid/content/Context;Lcom/android/server/wifi/WifiStateMachine;Lcom/android/server/wifi/WifiNative;Lcom/android/server/wifi/BuildProperties;)Lcom/android/server/wifi/BaseWifiLogger;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "stateMachine"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p3, "wifiNative"    # Lcom/android/server/wifi/WifiNative;
    .param p4, "buildProperties"    # Lcom/android/server/wifi/BuildProperties;

    .prologue
    .line 55
    new-instance v0, Lcom/android/server/wifi/WifiLogger;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/server/wifi/WifiLogger;-><init>(Landroid/content/Context;Lcom/android/server/wifi/WifiStateMachine;Lcom/android/server/wifi/WifiNative;Lcom/android/server/wifi/BuildProperties;)V

    return-object v0
.end method

.method public makeSoftApManager(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/wifi/WifiNative;Landroid/os/INetworkManagementService;Landroid/net/ConnectivityManager;Ljava/lang/String;Ljava/util/ArrayList;Lcom/android/server/wifi/SoftApManager$Listener;)Lcom/android/server/wifi/SoftApManager;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "wifiNative"    # Lcom/android/server/wifi/WifiNative;
    .param p4, "nmService"    # Landroid/os/INetworkManagementService;
    .param p5, "cm"    # Landroid/net/ConnectivityManager;
    .param p6, "countryCode"    # Ljava/lang/String;
    .param p8, "listener"    # Lcom/android/server/wifi/SoftApManager$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Looper;",
            "Lcom/android/server/wifi/WifiNative;",
            "Landroid/os/INetworkManagementService;",
            "Landroid/net/ConnectivityManager;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/android/server/wifi/SoftApManager$Listener;",
            ")",
            "Lcom/android/server/wifi/SoftApManager;"
        }
    .end annotation

    .prologue
    .line 153
    .local p7, "allowed2GChannels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v0, Lcom/android/server/wifi/SoftApManager;

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p6

    move-object v5, p7

    move-object v6, p8

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wifi/SoftApManager;-><init>(Landroid/os/Looper;Lcom/android/server/wifi/WifiNative;Landroid/os/INetworkManagementService;Ljava/lang/String;Ljava/util/ArrayList;Lcom/android/server/wifi/SoftApManager$Listener;)V

    return-object v0
.end method

.method public makeSupplicantStateTracker(Landroid/content/Context;Lcom/android/server/wifi/WifiConfigManager;Landroid/os/Handler;)Lcom/android/server/wifi/SupplicantStateTracker;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "configManager"    # Lcom/android/server/wifi/WifiConfigManager;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    .line 93
    new-instance v0, Lcom/android/server/wifi/SupplicantStateTracker;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/wifi/SupplicantStateTracker;-><init>(Landroid/content/Context;Lcom/android/server/wifi/WifiConfigManager;Landroid/os/Handler;)V

    return-object v0
.end method

.method public makeWifiConfigManager(Landroid/content/Context;Lcom/android/server/wifi/WifiNative;Lcom/android/server/wifi/FrameworkFacade;Lcom/android/server/wifi/Clock;Landroid/os/UserManager;Landroid/os/Handler;Landroid/security/KeyStore;)Lcom/android/server/wifi/WifiConfigManager;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wifiNative"    # Lcom/android/server/wifi/WifiNative;
    .param p3, "frameworkFacade"    # Lcom/android/server/wifi/FrameworkFacade;
    .param p4, "clock"    # Lcom/android/server/wifi/Clock;
    .param p5, "userManager"    # Landroid/os/UserManager;
    .param p6, "handler"    # Landroid/os/Handler;
    .param p7, "keyStore"    # Landroid/security/KeyStore;

    .prologue
    .line 173
    new-instance v0, Lcom/android/server/wifi/WifiConfigManager;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/android/server/wifi/WifiConfigManager;-><init>(Landroid/content/Context;Lcom/android/server/wifi/WifiNative;Lcom/android/server/wifi/FrameworkFacade;Lcom/android/server/wifi/Clock;Landroid/os/UserManager;Landroid/os/Handler;Landroid/security/KeyStore;)V

    return-object v0
.end method

.method public makeWifiConfigManager(Landroid/content/Context;Lcom/android/server/wifi/WifiNative;Lcom/android/server/wifi/FrameworkFacade;Lcom/android/server/wifi/Clock;Landroid/os/UserManager;Landroid/security/KeyStore;)Lcom/android/server/wifi/WifiConfigManager;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wifiNative"    # Lcom/android/server/wifi/WifiNative;
    .param p3, "frameworkFacade"    # Lcom/android/server/wifi/FrameworkFacade;
    .param p4, "clock"    # Lcom/android/server/wifi/Clock;
    .param p5, "userManager"    # Landroid/os/UserManager;
    .param p6, "keyStore"    # Landroid/security/KeyStore;

    .prologue
    .line 181
    new-instance v0, Lcom/android/server/wifi/WifiConfigManager;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wifi/WifiConfigManager;-><init>(Landroid/content/Context;Lcom/android/server/wifi/WifiNative;Lcom/android/server/wifi/FrameworkFacade;Lcom/android/server/wifi/Clock;Landroid/os/UserManager;Landroid/security/KeyStore;)V

    return-object v0
.end method

.method public makeWifiScanner(Landroid/content/Context;Landroid/os/Looper;)Landroid/net/wifi/WifiScanner;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 83
    new-instance v0, Landroid/net/wifi/WifiScanner;

    .line 84
    const-string/jumbo v1, "wifiscanner"

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/FrameworkFacade;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 83
    invoke-static {v1}, Landroid/net/wifi/IWifiScanner$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiScanner;

    move-result-object v1

    invoke-direct {v0, p1, v1, p2}, Landroid/net/wifi/WifiScanner;-><init>(Landroid/content/Context;Landroid/net/wifi/IWifiScanner;Landroid/os/Looper;)V

    return-object v0
.end method

.method public setIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "def"    # I

    .prologue
    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p2, p3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public setStringSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "def"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p2, p3}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
