.class Lcom/android/server/wifi/WifiAutoConnController$4;
.super Landroid/content/BroadcastReceiver;
.source "WifiAutoConnController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiAutoConnController;->registerConnectivityChangedReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiAutoConnController;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiAutoConnController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiAutoConnController;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/android/server/wifi/WifiAutoConnController$4;->this$0:Lcom/android/server/wifi/WifiAutoConnController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 127
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 129
    iget-object v3, p0, Lcom/android/server/wifi/WifiAutoConnController$4;->this$0:Lcom/android/server/wifi/WifiAutoConnController;

    invoke-static {v3}, Lcom/android/server/wifi/WifiAutoConnController;->-get1(Lcom/android/server/wifi/WifiAutoConnController;)I

    move-result v1

    .line 130
    .local v1, "connectedNetworkType":I
    iget-object v3, p0, Lcom/android/server/wifi/WifiAutoConnController$4;->this$0:Lcom/android/server/wifi/WifiAutoConnController;

    iget-object v4, p0, Lcom/android/server/wifi/WifiAutoConnController$4;->this$0:Lcom/android/server/wifi/WifiAutoConnController;

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiAutoConnController;->getConnectedNetworkType()I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/server/wifi/WifiAutoConnController;->-set1(Lcom/android/server/wifi/WifiAutoConnController;I)I

    .line 131
    iget-object v3, p0, Lcom/android/server/wifi/WifiAutoConnController$4;->this$0:Lcom/android/server/wifi/WifiAutoConnController;

    invoke-static {v3}, Lcom/android/server/wifi/WifiAutoConnController;->-get1(Lcom/android/server/wifi/WifiAutoConnController;)I

    move-result v3

    if-eq v1, v3, :cond_0

    .line 132
    iget-object v3, p0, Lcom/android/server/wifi/WifiAutoConnController$4;->this$0:Lcom/android/server/wifi/WifiAutoConnController;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiAutoConnController;->updateWifiEnableState()V

    .line 134
    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "miui.intent.action.CONNECTIVITY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 135
    .local v2, "startIntent":Landroid/content/Intent;
    const-string/jumbo v4, "networkInfo"

    .line 136
    const-string/jumbo v3, "networkInfo"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkInfo;

    .line 135
    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 137
    const-string/jumbo v3, "com.android.settings"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 138
    invoke-virtual {p1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 126
    .end local v1    # "connectedNetworkType":I
    .end local v2    # "startIntent":Landroid/content/Intent;
    :cond_1
    :goto_0
    return-void

    .line 139
    :cond_2
    const-string/jumbo v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 140
    iget-object v3, p0, Lcom/android/server/wifi/WifiAutoConnController$4;->this$0:Lcom/android/server/wifi/WifiAutoConnController;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiAutoConnController;->updateWifiEnableState()V

    goto :goto_0
.end method
