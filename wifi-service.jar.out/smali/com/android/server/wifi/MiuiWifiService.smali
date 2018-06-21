.class public Lcom/android/server/wifi/MiuiWifiService;
.super Ljava/lang/Object;
.source "MiuiWifiService.java"


# static fields
.field private static final SUPPLICANT_CONFIG_FILE:Ljava/lang/String; = "/data/misc/wifi/wpa_supplicant.conf"

.field private static final TAG:Ljava/lang/String; = "MiuiWifiService"

.field private static final WIFI_CONFIG_HEADER:Ljava/lang/String; = "network={"

.field private static sObservedAccessPoints:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CheckIfBackgroundScanAllowed(Landroid/content/Context;Landroid/os/WorkSource;)Z
    .locals 5
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "workSource"    # Landroid/os/WorkSource;

    .prologue
    const/4 v4, 0x1

    .line 53
    if-eqz p1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/os/WorkSource;->get(I)I

    move-result v1

    .line 55
    .local v1, "realOwner":I
    :goto_0
    invoke-static {v1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 56
    return v4

    .line 53
    .end local v1    # "realOwner":I
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    goto :goto_0

    .line 60
    .restart local v1    # "realOwner":I
    :cond_1
    :try_start_0
    const-string/jumbo v2, "android.permission.ACCESS_COARSE_LOCATION"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    const/4 v2, 0x2

    invoke-static {p0, v1, v2}, Landroid/location/LocationPolicyManager;->isAllowedByLocationPolicy(Landroid/content/Context;II)Z

    move-result v2

    return v2

    .line 61
    :catch_0
    move-exception v0

    .line 62
    .local v0, "e":Ljava/lang/SecurityException;
    return v4
.end method

.method public static enforceChangePermission(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 68
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 69
    .local v2, "uid":I
    invoke-static {v2}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 70
    const-string/jumbo v5, "appops"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 71
    .local v0, "appOps":Landroid/app/AppOpsManager;
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-static {v5}, Lcom/android/server/am/ExtraActivityManagerService;->getPackageNameByPid(I)Ljava/lang/String;

    move-result-object v1

    .line 72
    .local v1, "packageName":Ljava/lang/String;
    if-eqz v0, :cond_0

    const/16 v5, 0x2711

    invoke-virtual {v0, v5, v2, v1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    move v3, v4

    goto :goto_0

    .line 75
    .end local v0    # "appOps":Landroid/app/AppOpsManager;
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_2
    return v3
.end method

.method public static handleClientMessage(Landroid/os/Message;)V
    .locals 9
    .param p0, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v8, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 79
    iget v4, p0, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 82
    :pswitch_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    const/16 v7, 0x3e8

    if-eq v4, v7, :cond_1

    .line 83
    invoke-static {p0, v8, v6}, Lcom/android/server/wifi/MiuiWifiService;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V

    .line 85
    :cond_1
    iget-object v4, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/net/wifi/WifiConfiguration;

    move-object v1, v4

    .line 86
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    :goto_1
    if-eqz v1, :cond_3

    .line 88
    invoke-static {v1}, Lcom/android/server/wifi/Utils;->getWifiConfigStringWithPassword(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v3

    .line 89
    .local v3, "wifiConfig":Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 91
    const-string/jumbo v4, "config"

    invoke-static {v4, v3}, Landroid/os/Bundle;->forPair(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 90
    invoke-static {p0, v5, v4}, Lcom/android/server/wifi/MiuiWifiService;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V

    goto :goto_0

    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v3    # "wifiConfig":Ljava/lang/String;
    :cond_2
    move-object v1, v6

    .line 85
    goto :goto_1

    .line 95
    .restart local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_3
    invoke-static {p0, v8, v6}, Lcom/android/server/wifi/MiuiWifiService;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V

    goto :goto_0

    .line 98
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    :pswitch_1
    iget-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 99
    .local v0, "apInfo":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 101
    new-instance v4, Ljava/util/HashSet;

    const-string/jumbo v5, "extra_aps"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 100
    sput-object v4, Lcom/android/server/wifi/MiuiWifiService;->sObservedAccessPoints:Ljava/util/Set;

    goto :goto_0

    .line 106
    .end local v0    # "apInfo":Landroid/os/Bundle;
    :pswitch_2
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 107
    .local v2, "openApInfo":Landroid/os/Bundle;
    const-string/jumbo v4, "extra_aps"

    new-instance v6, Ljava/util/ArrayList;

    sget-object v7, Lcom/android/server/wifi/MiuiWifiService;->sObservedAccessPoints:Ljava/util/Set;

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2, v4, v6}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 108
    invoke-static {p0, v5, v2}, Lcom/android/server/wifi/MiuiWifiService;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V

    goto :goto_0

    .line 111
    .end local v2    # "openApInfo":Landroid/os/Bundle;
    :pswitch_3
    iget v4, p0, Landroid/os/Message;->arg1:I

    if-ne v4, v5, :cond_4

    move v4, v5

    :goto_2
    invoke-static {v4}, Lcom/android/server/wifi/MiuiWifiService;->setWirelssConnectMode(Z)V

    goto :goto_0

    :cond_4
    const/4 v4, 0x0

    goto :goto_2

    .line 79
    :pswitch_data_0
    .packed-switch 0x25fa1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static initWirelessConnectMode(Landroid/content/Context;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 141
    const-string/jumbo v5, "support_choose_connect_mode"

    invoke-static {v5, v4}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 142
    const-string/jumbo v5, "ro.boot.hwversion"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 143
    .local v0, "hwVersion":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string/jumbo v5, "\\."

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 144
    .local v1, "hwVersions":[Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    .line 146
    .local v2, "wirelessMode":I
    if-eqz v1, :cond_3

    array-length v5, v1

    if-lez v5, :cond_3

    .line 147
    aget-object v5, v1, v4

    const-string/jumbo v6, "4"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 149
    return-void

    .line 150
    :cond_1
    aget-object v5, v1, v4

    const-string/jumbo v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    sget-boolean v5, Lmiui/os/Build;->IS_STABLE_VERSION:Z

    if-eqz v5, :cond_5

    .line 156
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 157
    const-string/jumbo v6, "wireless_compatible_mode"

    .line 156
    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 160
    :cond_3
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 161
    const-string/jumbo v6, "wireless_compatible_mode"

    .line 160
    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 162
    if-nez v2, :cond_6

    :goto_1
    invoke-static {v3}, Lcom/android/server/wifi/MiuiWifiService;->setCompatibleMode(Z)Z

    .line 140
    .end local v0    # "hwVersion":Ljava/lang/String;
    .end local v1    # "hwVersions":[Ljava/lang/String;
    .end local v2    # "wirelessMode":I
    :cond_4
    return-void

    .line 152
    .restart local v0    # "hwVersion":Ljava/lang/String;
    .restart local v1    # "hwVersions":[Ljava/lang/String;
    .restart local v2    # "wirelessMode":I
    :cond_5
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 153
    const-string/jumbo v6, "wireless_compatible_mode"

    .line 152
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    goto :goto_0

    :cond_6
    move v3, v4

    .line 162
    goto :goto_1
.end method

.method private static replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V
    .locals 4
    .param p0, "message"    # Landroid/os/Message;
    .param p1, "arg1"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 169
    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 170
    .local v1, "reply":Landroid/os/Message;
    iget v2, p0, Landroid/os/Message;->what:I

    iput v2, v1, Landroid/os/Message;->what:I

    .line 171
    iput p1, v1, Landroid/os/Message;->arg1:I

    .line 172
    iput-object p2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 173
    iget-object v2, p0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    .end local v1    # "reply":Landroid/os/Message;
    :goto_0
    return-void

    .line 174
    :catch_0
    move-exception v0

    .line 175
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "MiuiWifiService"

    const-string/jumbo v3, "replyToMessage Failed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static setCompatibleMode(Z)Z
    .locals 3
    .param p0, "enabled"    # Z

    .prologue
    .line 136
    const-string/jumbo v1, "wifi.interface"

    const-string/jumbo v2, "wlan0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, "iface":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wifi/MiuiWifiNative;->getInstance()Lcom/android/server/wifi/MiuiWifiNative;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/android/server/wifi/MiuiWifiNative;->setCompatibleMode(ZLjava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private static setWirelssConnectMode(Z)V
    .locals 5
    .param p0, "enabled"    # Z

    .prologue
    .line 120
    invoke-static {p0}, Lcom/android/server/wifi/MiuiWifiService;->setCompatibleMode(Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 123
    :try_start_0
    const-string/jumbo v2, "wifi"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/wifi/IWifiManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiManager;

    move-result-object v1

    .line 124
    .local v1, "service":Landroid/net/wifi/IWifiManager;
    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->disconnect()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    .end local v1    # "service":Landroid/net/wifi/IWifiManager;
    :cond_0
    :goto_0
    return-void

    .line 125
    :catch_0
    move-exception v0

    .line 126
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "MiuiWifiService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setCompatibleMode failed exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static updateScanResults(Landroid/content/Context;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 182
    const/4 v2, 0x0

    .line 184
    .local v2, "observedApChanged":Z
    :try_start_0
    sget-object v7, Lcom/android/server/wifi/MiuiWifiService;->sObservedAccessPoints:Ljava/util/Set;

    if-eqz v7, :cond_2

    .line 185
    const-string/jumbo v7, "wifi"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/net/wifi/IWifiManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiManager;

    move-result-object v6

    .line 186
    .local v6, "service":Landroid/net/wifi/IWifiManager;
    invoke-virtual {p0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Landroid/net/wifi/IWifiManager;->getScanResults(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 187
    .local v5, "scanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "result$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScanResult;

    .line 188
    .local v3, "result":Landroid/net/wifi/ScanResult;
    sget-object v7, Lcom/android/server/wifi/MiuiWifiService;->sObservedAccessPoints:Ljava/util/Set;

    invoke-static {v3}, Landroid/net/wifi/WifiConfiguration;->configKey(Landroid/net/wifi/ScanResult;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 189
    const/4 v2, 0x1

    .line 193
    .end local v3    # "result":Landroid/net/wifi/ScanResult;
    :cond_1
    if-eqz v2, :cond_2

    .line 194
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v7, "android.net.wifi.observed_accesspionts_changed"

    invoke-direct {v1, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 195
    .local v1, "intent":Landroid/content/Intent;
    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v1, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v4    # "result$iterator":Ljava/util/Iterator;
    .end local v5    # "scanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    .end local v6    # "service":Landroid/net/wifi/IWifiManager;
    :cond_2
    :goto_0
    return-void

    .line 198
    :catch_0
    move-exception v0

    .line 199
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v7, "MiuiWifiService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "get ScanResult failed due to remoteException"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
