.class Lcom/android/server/wifi/WifiApManager$3;
.super Landroid/database/ContentObserver;
.source "WifiApManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiApManager;->registerHotSpotBlackSetChangedObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiApManager;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiApManager;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiApManager;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/server/wifi/WifiApManager$3;->this$0:Lcom/android/server/wifi/WifiApManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .prologue
    .line 69
    iget-object v1, p0, Lcom/android/server/wifi/WifiApManager$3;->this$0:Lcom/android/server/wifi/WifiApManager;

    iget-object v2, p0, Lcom/android/server/wifi/WifiApManager$3;->this$0:Lcom/android/server/wifi/WifiApManager;

    invoke-static {v2}, Lcom/android/server/wifi/WifiApManager;->-get1(Lcom/android/server/wifi/WifiApManager;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/provider/MiuiSettings$System;->getHotSpotMacBlackSet(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiApManager;->-set1(Lcom/android/server/wifi/WifiApManager;Ljava/util/Set;)Ljava/util/Set;

    .line 70
    iget-object v1, p0, Lcom/android/server/wifi/WifiApManager$3;->this$0:Lcom/android/server/wifi/WifiApManager;

    invoke-static {v1}, Lcom/android/server/wifi/WifiApManager;->-get2(Lcom/android/server/wifi/WifiApManager;)Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 71
    invoke-static {}, Lcom/android/server/wifi/MiuiWifiNative;->getInstance()Lcom/android/server/wifi/MiuiWifiNative;

    move-result-object v0

    .line 72
    .local v0, "wifiNative":Lcom/android/server/wifi/MiuiWifiNative;
    iget-object v1, p0, Lcom/android/server/wifi/WifiApManager$3;->this$0:Lcom/android/server/wifi/WifiApManager;

    invoke-static {v1}, Lcom/android/server/wifi/WifiApManager;->-get2(Lcom/android/server/wifi/WifiApManager;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/MiuiWifiNative;->setHotSpotDenyMac(Ljava/util/Set;)V

    .line 68
    .end local v0    # "wifiNative":Lcom/android/server/wifi/MiuiWifiNative;
    :cond_0
    return-void
.end method
