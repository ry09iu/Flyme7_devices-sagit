.class public Landroid/net/wifi/MiuiWifiManager;
.super Ljava/lang/Object;
.source "MiuiWifiManager.java"


# static fields
.field private static final BASE:I = 0x25fa0

.field public static final CMD_GET_OBSERVED_ACCESSPOINTS:I = 0x25fa3

.field public static final CMD_SET_OBSERVED_ACCESSPOINTS:I = 0x25fa2

.field public static final CMD_SET_WIRELESS_CONNECT_MODE:I = 0x25fa4

.field public static final EXTRA_APS:Ljava/lang/String; = "extra_aps"

.field public static final EXTRA_BSSID:Ljava/lang/String; = "bssid"

.field public static final EXTRA_CONFIG:Ljava/lang/String; = "config"

.field public static final EXTRA_SSID:Ljava/lang/String; = "ssid"

.field public static final FAILED:I = 0x2

.field public static final GET_SUPPLICANT_CONFIGURATION:I = 0x25fa1

.field private static final MAX_RSSI:I = -0x41

.field private static final MIN_RSSI:I = -0x64

.field public static final OBSERVED_ACCESSPOINTS_CHANGED:Ljava/lang/String; = "android.net.wifi.observed_accesspionts_changed"

.field public static final OBSERVED_OPENAPS_CHANGED:Ljava/lang/String; = "android.net.wifi.observed_open_accesspionts_changed"

.field public static final SUCCESS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MiuiWifiManager"

.field public static final WPS_DEVICE_GUEST:Ljava/lang/String; = "guest"

.field public static final WPS_DEVICE_XIAOMI:Ljava/lang/String; = "xiaomi"

.field private static sInstance:Landroid/net/wifi/MiuiWifiManager;


# instance fields
.field private mAsyncChannel:Lcom/android/internal/util/AsyncChannel;


# direct methods
.method private constructor <init>()V
    .locals 7

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    :try_start_0
    const-string/jumbo v3, "wifi"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/net/wifi/IWifiManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiManager;

    move-result-object v1

    .line 109
    .local v1, "service":Landroid/net/wifi/IWifiManager;
    new-instance v2, Landroid/os/HandlerThread;

    const-string/jumbo v3, "MiuiWifiManager"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 110
    .local v2, "workThread":Landroid/os/HandlerThread;
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 111
    new-instance v3, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v3}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    iput-object v3, p0, Landroid/net/wifi/MiuiWifiManager;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    .line 112
    iget-object v3, p0, Landroid/net/wifi/MiuiWifiManager;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    .line 113
    new-instance v4, Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getWifiServiceMessenger()Landroid/os/Messenger;

    move-result-object v5

    const/4 v6, 0x0

    .line 112
    invoke-virtual {v3, v6, v4, v5}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    .end local v1    # "service":Landroid/net/wifi/IWifiManager;
    .end local v2    # "workThread":Landroid/os/HandlerThread;
    :goto_0
    return-void

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "MiuiWifiManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "build WifiConfigForSupplicant failed exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static calculateSignalLevel(II)I
    .locals 3
    .param p0, "rssi"    # I
    .param p1, "numLevels"    # I

    .prologue
    .line 76
    const/16 v1, -0x64

    if-gt p0, v1, :cond_0

    .line 77
    const/4 v1, 0x0

    return v1

    .line 78
    :cond_0
    const/16 v1, -0x41

    if-lt p0, v1, :cond_1

    .line 79
    add-int/lit8 v1, p1, -0x1

    return v1

    .line 82
    :cond_1
    add-int/lit8 v1, p1, -0x1

    int-to-float v0, v1

    .line 83
    .local v0, "outputRange":F
    add-int/lit8 v1, p0, 0x64

    int-to-float v1, v1

    mul-float/2addr v1, v0

    .line 81
    const/high16 v2, 0x420c0000    # 35.0f

    .line 83
    div-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method public static getInstance()Landroid/net/wifi/MiuiWifiManager;
    .locals 1

    .prologue
    .line 120
    sget-object v0, Landroid/net/wifi/MiuiWifiManager;->sInstance:Landroid/net/wifi/MiuiWifiManager;

    if-nez v0, :cond_0

    .line 121
    new-instance v0, Landroid/net/wifi/MiuiWifiManager;

    invoke-direct {v0}, Landroid/net/wifi/MiuiWifiManager;-><init>()V

    sput-object v0, Landroid/net/wifi/MiuiWifiManager;->sInstance:Landroid/net/wifi/MiuiWifiManager;

    .line 123
    :cond_0
    sget-object v0, Landroid/net/wifi/MiuiWifiManager;->sInstance:Landroid/net/wifi/MiuiWifiManager;

    return-object v0
.end method

.method public static isMiWifi()Z
    .locals 6

    .prologue
    .line 93
    :try_start_0
    const-string/jumbo v4, "wifi"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/net/wifi/IWifiManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiManager;

    move-result-object v1

    .line 94
    .local v1, "service":Landroid/net/wifi/IWifiManager;
    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    .line 95
    .local v3, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v3, :cond_1

    .line 96
    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getVendorInfo()Ljava/lang/String;

    move-result-object v2

    .line 97
    .local v2, "vendor":Ljava/lang/String;
    if-eqz v2, :cond_1

    const-string/jumbo v4, "XIAOMI_ROUTER"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "miwifi"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_1

    .line 98
    :cond_0
    const/4 v4, 0x1

    return v4

    .line 100
    .end local v2    # "vendor":Ljava/lang/String;
    .end local v3    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :catch_0
    move-exception v0

    .line 102
    :cond_1
    const/4 v4, 0x0

    return v4
.end method


# virtual methods
.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 128
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/MiuiWifiManager;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Landroid/net/wifi/MiuiWifiManager;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0}, Lcom/android/internal/util/AsyncChannel;->disconnect()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 126
    return-void

    .line 131
    :catchall_0
    move-exception v0

    .line 132
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 131
    throw v0
.end method

.method public getObservedAccessPionts()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 147
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 148
    .local v1, "msg":Landroid/os/Message;
    const v4, 0x25fa3

    iput v4, v1, Landroid/os/Message;->what:I

    .line 149
    iget-object v4, p0, Landroid/net/wifi/MiuiWifiManager;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v4, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v2

    .line 150
    .local v2, "msgRusult":Landroid/os/Message;
    const/4 v3, 0x0

    .line 151
    .local v3, "observAps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 152
    .local v0, "bundle":Landroid/os/Bundle;
    iget v4, v2, Landroid/os/Message;->arg1:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    if-eqz v0, :cond_0

    .line 153
    const-string/jumbo v4, "extra_aps"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 155
    .end local v3    # "observAps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    invoke-virtual {v2}, Landroid/os/Message;->recycle()V

    .line 156
    return-object v3
.end method

.method public sendAsyncMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 164
    iget-object v0, p0, Landroid/net/wifi/MiuiWifiManager;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V

    .line 163
    return-void
.end method

.method public sendSyncMessage(Landroid/os/Message;)Landroid/os/Message;
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 168
    iget-object v0, p0, Landroid/net/wifi/MiuiWifiManager;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public setCompatibleMode(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 160
    iget-object v1, p0, Landroid/net/wifi/MiuiWifiManager;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const v2, 0x25fa4

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(II)V

    .line 159
    return-void

    .line 160
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setObservedAccessPionts(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 137
    .local p1, "observedAPs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 138
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "extra_aps"

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 140
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 141
    .local v1, "msg":Landroid/os/Message;
    const v2, 0x25fa2

    iput v2, v1, Landroid/os/Message;->what:I

    .line 142
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 143
    invoke-virtual {p0, v1}, Landroid/net/wifi/MiuiWifiManager;->sendAsyncMessage(Landroid/os/Message;)V

    .line 136
    return-void
.end method
