.class Lcom/android/server/wifi/WifiApManager$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiApManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiApManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiApManager;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiApManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiApManager;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/server/wifi/WifiApManager$1;->this$0:Lcom/android/server/wifi/WifiApManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    .line 97
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v3, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 100
    const-string/jumbo v3, "wifi_state"

    const/16 v4, 0xe

    .line 99
    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 101
    .local v1, "state":I
    const/16 v3, 0xd

    if-ne v1, v3, :cond_3

    .line 102
    invoke-static {}, Lcom/android/server/wifi/MiuiWifiNative;->getInstance()Lcom/android/server/wifi/MiuiWifiNative;

    move-result-object v2

    .line 104
    .local v2, "wifiNative":Lcom/android/server/wifi/MiuiWifiNative;
    invoke-virtual {v2}, Lcom/android/server/wifi/MiuiWifiNative;->connectToSap()Z

    move-result v3

    if-nez v3, :cond_0

    .line 105
    return-void

    .line 107
    :cond_0
    iget-object v3, p0, Lcom/android/server/wifi/WifiApManager$1;->this$0:Lcom/android/server/wifi/WifiApManager;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/server/wifi/WifiApManager;->-set0(Lcom/android/server/wifi/WifiApManager;Z)Z

    .line 109
    iget-object v3, p0, Lcom/android/server/wifi/WifiApManager$1;->this$0:Lcom/android/server/wifi/WifiApManager;

    invoke-static {v3}, Lcom/android/server/wifi/WifiApManager;->-get3(Lcom/android/server/wifi/WifiApManager;)I

    move-result v3

    if-lez v3, :cond_1

    .line 110
    iget-object v3, p0, Lcom/android/server/wifi/WifiApManager$1;->this$0:Lcom/android/server/wifi/WifiApManager;

    invoke-static {v3}, Lcom/android/server/wifi/WifiApManager;->-get3(Lcom/android/server/wifi/WifiApManager;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/MiuiWifiNative;->setHotSpotMaxNum(I)V

    .line 113
    :cond_1
    iget-object v3, p0, Lcom/android/server/wifi/WifiApManager$1;->this$0:Lcom/android/server/wifi/WifiApManager;

    invoke-static {v3}, Lcom/android/server/wifi/WifiApManager;->-get2(Lcom/android/server/wifi/WifiApManager;)Ljava/util/Set;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 114
    iget-object v3, p0, Lcom/android/server/wifi/WifiApManager$1;->this$0:Lcom/android/server/wifi/WifiApManager;

    invoke-static {v3}, Lcom/android/server/wifi/WifiApManager;->-get2(Lcom/android/server/wifi/WifiApManager;)Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/MiuiWifiNative;->setHotSpotDenyMac(Ljava/util/Set;)V

    .line 96
    .end local v1    # "state":I
    .end local v2    # "wifiNative":Lcom/android/server/wifi/MiuiWifiNative;
    :cond_2
    :goto_0
    return-void

    .line 117
    .restart local v1    # "state":I
    :cond_3
    const/16 v3, 0xa

    if-eq v1, v3, :cond_4

    .line 118
    const/16 v3, 0xb

    if-ne v1, v3, :cond_2

    .line 120
    :cond_4
    iget-object v3, p0, Lcom/android/server/wifi/WifiApManager$1;->this$0:Lcom/android/server/wifi/WifiApManager;

    invoke-static {v3}, Lcom/android/server/wifi/WifiApManager;->-get0(Lcom/android/server/wifi/WifiApManager;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 121
    invoke-static {}, Lcom/android/server/wifi/MiuiWifiNative;->getInstance()Lcom/android/server/wifi/MiuiWifiNative;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wifi/MiuiWifiNative;->closeSapConnection()V

    .line 122
    iget-object v3, p0, Lcom/android/server/wifi/WifiApManager$1;->this$0:Lcom/android/server/wifi/WifiApManager;

    invoke-static {v3, v5}, Lcom/android/server/wifi/WifiApManager;->-set0(Lcom/android/server/wifi/WifiApManager;Z)Z

    goto :goto_0
.end method
