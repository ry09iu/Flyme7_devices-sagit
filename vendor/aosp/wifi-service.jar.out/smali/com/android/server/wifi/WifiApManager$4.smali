.class Lcom/android/server/wifi/WifiApManager$4;
.super Landroid/database/ContentObserver;
.source "WifiApManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiApManager;->registerHotSpotVendorSpecificChangedObserver()V
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
    .line 82
    iput-object p1, p0, Lcom/android/server/wifi/WifiApManager$4;->this$0:Lcom/android/server/wifi/WifiApManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .prologue
    .line 85
    iget-object v2, p0, Lcom/android/server/wifi/WifiApManager$4;->this$0:Lcom/android/server/wifi/WifiApManager;

    invoke-static {v2}, Lcom/android/server/wifi/WifiApManager;->-get1(Lcom/android/server/wifi/WifiApManager;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/provider/MiuiSettings$System;->getHotSpotVendorSpecific(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, "vendor_specific":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wifi/MiuiWifiNative;->getInstance()Lcom/android/server/wifi/MiuiWifiNative;

    move-result-object v1

    .line 87
    .local v1, "wifiNative":Lcom/android/server/wifi/MiuiWifiNative;
    invoke-virtual {v1, v0}, Lcom/android/server/wifi/MiuiWifiNative;->setHotSpotVendorSpecific(Ljava/lang/String;)V

    .line 84
    return-void
.end method
