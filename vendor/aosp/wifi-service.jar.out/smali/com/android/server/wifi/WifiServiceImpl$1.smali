.class Lcom/android/server/wifi/WifiServiceImpl$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiServiceImpl;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiServiceImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiServiceImpl;

    .prologue
    .line 1446
    iput-object p1, p0, Lcom/android/server/wifi/WifiServiceImpl$1;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1449
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1450
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v8, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1451
    iget-object v6, p0, Lcom/android/server/wifi/WifiServiceImpl$1;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-static {v6}, Lcom/android/server/wifi/WifiServiceImpl;->-get6(Lcom/android/server/wifi/WifiServiceImpl;)Lcom/android/server/wifi/WifiController;

    move-result-object v6

    const v7, 0x26002

    invoke-virtual {v6, v7}, Lcom/android/server/wifi/WifiController;->sendMessage(I)V

    .line 1448
    :cond_0
    :goto_0
    return-void

    .line 1452
    :cond_1
    const-string/jumbo v8, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1453
    iget-object v6, p0, Lcom/android/server/wifi/WifiServiceImpl$1;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-static {v6}, Lcom/android/server/wifi/WifiServiceImpl;->-get6(Lcom/android/server/wifi/WifiServiceImpl;)Lcom/android/server/wifi/WifiController;

    move-result-object v6

    const v7, 0x2600c

    invoke-virtual {v6, v7}, Lcom/android/server/wifi/WifiController;->sendMessage(I)V

    goto :goto_0

    .line 1454
    :cond_2
    const-string/jumbo v8, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1455
    iget-object v6, p0, Lcom/android/server/wifi/WifiServiceImpl$1;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-static {v6}, Lcom/android/server/wifi/WifiServiceImpl;->-get6(Lcom/android/server/wifi/WifiServiceImpl;)Lcom/android/server/wifi/WifiController;

    move-result-object v6

    const v7, 0x26003

    invoke-virtual {v6, v7}, Lcom/android/server/wifi/WifiController;->sendMessage(I)V

    goto :goto_0

    .line 1456
    :cond_3
    const-string/jumbo v8, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1457
    const-string/jumbo v6, "plugged"

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 1458
    .local v3, "pluggedType":I
    iget-object v6, p0, Lcom/android/server/wifi/WifiServiceImpl$1;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-static {v6}, Lcom/android/server/wifi/WifiServiceImpl;->-get6(Lcom/android/server/wifi/WifiServiceImpl;)Lcom/android/server/wifi/WifiController;

    move-result-object v6

    const v8, 0x26004

    invoke-virtual {v6, v8, v3, v7, v10}, Lcom/android/server/wifi/WifiController;->sendMessage(IIILjava/lang/Object;)V

    goto :goto_0

    .line 1459
    .end local v3    # "pluggedType":I
    :cond_4
    const-string/jumbo v8, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1460
    const-string/jumbo v6, "android.bluetooth.adapter.extra.CONNECTION_STATE"

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 1462
    .local v4, "state":I
    iget-object v6, p0, Lcom/android/server/wifi/WifiServiceImpl$1;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    iget-object v6, v6, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v6, v4}, Lcom/android/server/wifi/WifiStateMachine;->sendBluetoothAdapterStateChange(I)V

    goto :goto_0

    .line 1463
    .end local v4    # "state":I
    :cond_5
    const-string/jumbo v8, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1464
    const-string/jumbo v8, "phoneinECMState"

    invoke-virtual {p2, v8, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 1465
    .local v1, "emergencyMode":Z
    iget-object v8, p0, Lcom/android/server/wifi/WifiServiceImpl$1;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-static {v8}, Lcom/android/server/wifi/WifiServiceImpl;->-get6(Lcom/android/server/wifi/WifiServiceImpl;)Lcom/android/server/wifi/WifiController;

    move-result-object v8

    if-eqz v1, :cond_6

    :goto_1
    const v9, 0x26001

    invoke-virtual {v8, v9, v6, v7}, Lcom/android/server/wifi/WifiController;->sendMessage(III)V

    goto :goto_0

    :cond_6
    move v6, v7

    goto :goto_1

    .line 1466
    .end local v1    # "emergencyMode":Z
    :cond_7
    const-string/jumbo v8, "android.intent.action.EMERGENCY_CALL_STATE_CHANGED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 1467
    const-string/jumbo v8, "phoneInEmergencyCall"

    invoke-virtual {p2, v8, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 1468
    .local v2, "inCall":Z
    iget-object v8, p0, Lcom/android/server/wifi/WifiServiceImpl$1;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-static {v8}, Lcom/android/server/wifi/WifiServiceImpl;->-get6(Lcom/android/server/wifi/WifiServiceImpl;)Lcom/android/server/wifi/WifiController;

    move-result-object v8

    if-eqz v2, :cond_8

    :goto_2
    const v9, 0x2600e

    invoke-virtual {v8, v9, v6, v7}, Lcom/android/server/wifi/WifiController;->sendMessage(III)V

    goto/16 :goto_0

    :cond_8
    move v6, v7

    goto :goto_2

    .line 1469
    .end local v2    # "inCall":Z
    :cond_9
    const-string/jumbo v8, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 1470
    iget-object v6, p0, Lcom/android/server/wifi/WifiServiceImpl$1;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiServiceImpl;->handleIdleModeChanged()V

    goto/16 :goto_0

    .line 1471
    :cond_a
    const-string/jumbo v8, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 1472
    const-string/jumbo v8, "wifi_state"

    .line 1473
    const/4 v9, 0x4

    .line 1472
    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 1474
    .restart local v4    # "state":I
    if-ne v4, v11, :cond_c

    .line 1475
    iget-object v8, p0, Lcom/android/server/wifi/WifiServiceImpl$1;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-static {v8}, Lcom/android/server/wifi/WifiServiceImpl;->-get2(Lcom/android/server/wifi/WifiServiceImpl;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 1476
    iget-object v8, p0, Lcom/android/server/wifi/WifiServiceImpl$1;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-static {v8}, Lcom/android/server/wifi/WifiServiceImpl;->-wrap2(Lcom/android/server/wifi/WifiServiceImpl;)V

    .line 1477
    iget-object v8, p0, Lcom/android/server/wifi/WifiServiceImpl$1;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-static {v8, v7}, Lcom/android/server/wifi/WifiServiceImpl;->-set0(Lcom/android/server/wifi/WifiServiceImpl;Z)Z

    .line 1479
    :cond_b
    iget-object v7, p0, Lcom/android/server/wifi/WifiServiceImpl$1;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-static {v7}, Lcom/android/server/wifi/WifiServiceImpl;->-get4(Lcom/android/server/wifi/WifiServiceImpl;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1480
    iget-object v7, p0, Lcom/android/server/wifi/WifiServiceImpl$1;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-virtual {v7, v10, v6}, Lcom/android/server/wifi/WifiServiceImpl;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V

    goto/16 :goto_0

    .line 1482
    :cond_c
    if-ne v4, v6, :cond_0

    .line 1483
    iget-object v7, p0, Lcom/android/server/wifi/WifiServiceImpl$1;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-static {v7}, Lcom/android/server/wifi/WifiServiceImpl;->-get4(Lcom/android/server/wifi/WifiServiceImpl;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1484
    iget-object v7, p0, Lcom/android/server/wifi/WifiServiceImpl$1;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-virtual {v7, v6}, Lcom/android/server/wifi/WifiServiceImpl;->setWifiEnabled(Z)Z

    goto/16 :goto_0

    .line 1487
    .end local v4    # "state":I
    :cond_d
    const-string/jumbo v8, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 1488
    const-string/jumbo v8, "wifi_state"

    .line 1489
    const/16 v9, 0xe

    .line 1488
    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 1490
    .local v5, "wifiApState":I
    iget-object v8, p0, Lcom/android/server/wifi/WifiServiceImpl$1;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-static {v8}, Lcom/android/server/wifi/WifiServiceImpl;->-get4(Lcom/android/server/wifi/WifiServiceImpl;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1491
    const/16 v8, 0xb

    if-ne v5, v8, :cond_f

    .line 1492
    iget-object v8, p0, Lcom/android/server/wifi/WifiServiceImpl$1;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-virtual {v8}, Lcom/android/server/wifi/WifiServiceImpl;->getWifiEnabledState()I

    move-result v8

    if-ne v8, v11, :cond_e

    .line 1493
    iget-object v6, p0, Lcom/android/server/wifi/WifiServiceImpl$1;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-virtual {v6, v7}, Lcom/android/server/wifi/WifiServiceImpl;->setWifiEnabled(Z)Z

    goto/16 :goto_0

    .line 1501
    :cond_e
    iget-object v8, p0, Lcom/android/server/wifi/WifiServiceImpl$1;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-virtual {v8, v10, v6}, Lcom/android/server/wifi/WifiServiceImpl;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 1502
    iget-object v6, p0, Lcom/android/server/wifi/WifiServiceImpl$1;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-static {v6, v7}, Lcom/android/server/wifi/WifiServiceImpl;->-set1(Lcom/android/server/wifi/WifiServiceImpl;Z)Z

    goto/16 :goto_0

    .line 1504
    :cond_f
    const/16 v6, 0xd

    if-ne v5, v6, :cond_0

    .line 1505
    iget-object v6, p0, Lcom/android/server/wifi/WifiServiceImpl$1;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-static {v6, v7}, Lcom/android/server/wifi/WifiServiceImpl;->-set1(Lcom/android/server/wifi/WifiServiceImpl;Z)Z

    goto/16 :goto_0

    .line 1509
    .end local v5    # "wifiApState":I
    :cond_10
    const-string/jumbo v6, "android.net.wifi.WIFI_AP_SUB_SYSTEM_RESTART"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1510
    iget-object v6, p0, Lcom/android/server/wifi/WifiServiceImpl$1;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-static {v6}, Lcom/android/server/wifi/WifiServiceImpl;->-wrap0(Lcom/android/server/wifi/WifiServiceImpl;)V

    goto/16 :goto_0
.end method
