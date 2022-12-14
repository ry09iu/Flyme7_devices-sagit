.class Landroid/net/wifi/WifiManager$ServiceHandler;
.super Landroid/os/Handler;
.source "WifiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiManager;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiManager;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Landroid/net/wifi/WifiManager;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 1895
    iput-object p1, p0, Landroid/net/wifi/WifiManager$ServiceHandler;->this$0:Landroid/net/wifi/WifiManager;

    .line 1896
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1895
    return-void
.end method

.method private dispatchMessageToListeners(Landroid/os/Message;)V
    .locals 7
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 1907
    iget-object v3, p0, Landroid/net/wifi/WifiManager$ServiceHandler;->this$0:Landroid/net/wifi/WifiManager;

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-static {v3, v4}, Landroid/net/wifi/WifiManager;->-wrap0(Landroid/net/wifi/WifiManager;I)Ljava/lang/Object;

    move-result-object v1

    .line 1908
    .local v1, "listener":Ljava/lang/Object;
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 1906
    .end local v1    # "listener":Ljava/lang/Object;
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 1910
    .restart local v1    # "listener":Ljava/lang/Object;
    :sswitch_1
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-nez v3, :cond_1

    .line 1911
    iget-object v3, p0, Landroid/net/wifi/WifiManager$ServiceHandler;->this$0:Landroid/net/wifi/WifiManager;

    invoke-static {v3}, Landroid/net/wifi/WifiManager;->-get1(Landroid/net/wifi/WifiManager;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v3

    const v4, 0x11001

    invoke-virtual {v3, v4}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    .line 1918
    :goto_1
    iget-object v3, p0, Landroid/net/wifi/WifiManager$ServiceHandler;->this$0:Landroid/net/wifi/WifiManager;

    invoke-static {v3}, Landroid/net/wifi/WifiManager;->-get2(Landroid/net/wifi/WifiManager;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_0

    .line 1913
    :cond_1
    const-string/jumbo v3, "WifiManager"

    const-string/jumbo v4, "Failed to set up channel connection"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1916
    iget-object v3, p0, Landroid/net/wifi/WifiManager$ServiceHandler;->this$0:Landroid/net/wifi/WifiManager;

    invoke-static {v3, v5}, Landroid/net/wifi/WifiManager;->-set1(Landroid/net/wifi/WifiManager;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;

    goto :goto_1

    .line 1924
    :sswitch_2
    const-string/jumbo v3, "WifiManager"

    const-string/jumbo v4, "Channel connection lost"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1927
    iget-object v3, p0, Landroid/net/wifi/WifiManager$ServiceHandler;->this$0:Landroid/net/wifi/WifiManager;

    invoke-static {v3, v5}, Landroid/net/wifi/WifiManager;->-set1(Landroid/net/wifi/WifiManager;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;

    .line 1928
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager$ServiceHandler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->quit()V

    goto :goto_0

    .line 1935
    :sswitch_3
    if-eqz v1, :cond_0

    .line 1936
    check-cast v1, Landroid/net/wifi/WifiManager$ActionListener;

    .end local v1    # "listener":Ljava/lang/Object;
    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v3}, Landroid/net/wifi/WifiManager$ActionListener;->onFailure(I)V

    goto :goto_0

    .line 1944
    .restart local v1    # "listener":Ljava/lang/Object;
    :sswitch_4
    if-eqz v1, :cond_0

    .line 1945
    check-cast v1, Landroid/net/wifi/WifiManager$ActionListener;

    .end local v1    # "listener":Ljava/lang/Object;
    invoke-interface {v1}, Landroid/net/wifi/WifiManager$ActionListener;->onSuccess()V

    goto :goto_0

    .line 1949
    .restart local v1    # "listener":Ljava/lang/Object;
    :sswitch_5
    if-eqz v1, :cond_0

    .line 1950
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/net/wifi/WpsResult;

    .local v2, "result":Landroid/net/wifi/WpsResult;
    move-object v3, v1

    .line 1951
    check-cast v3, Landroid/net/wifi/WifiManager$WpsCallback;

    iget-object v4, v2, Landroid/net/wifi/WpsResult;->pin:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiManager$WpsCallback;->onStarted(Ljava/lang/String;)V

    .line 1953
    iget-object v3, p0, Landroid/net/wifi/WifiManager$ServiceHandler;->this$0:Landroid/net/wifi/WifiManager;

    invoke-static {v3}, Landroid/net/wifi/WifiManager;->-get4(Landroid/net/wifi/WifiManager;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 1954
    :try_start_0
    iget-object v3, p0, Landroid/net/wifi/WifiManager$ServiceHandler;->this$0:Landroid/net/wifi/WifiManager;

    invoke-static {v3}, Landroid/net/wifi/WifiManager;->-get3(Landroid/net/wifi/WifiManager;)Landroid/util/SparseArray;

    move-result-object v3

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v3, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    goto :goto_0

    .line 1953
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 1959
    .end local v2    # "result":Landroid/net/wifi/WpsResult;
    :sswitch_6
    if-eqz v1, :cond_0

    .line 1960
    check-cast v1, Landroid/net/wifi/WifiManager$WpsCallback;

    .end local v1    # "listener":Ljava/lang/Object;
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager$WpsCallback;->onSucceeded()V

    goto :goto_0

    .line 1964
    .restart local v1    # "listener":Ljava/lang/Object;
    :sswitch_7
    if-eqz v1, :cond_0

    .line 1965
    check-cast v1, Landroid/net/wifi/WifiManager$WpsCallback;

    .end local v1    # "listener":Ljava/lang/Object;
    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v3}, Landroid/net/wifi/WifiManager$WpsCallback;->onFailed(I)V

    goto/16 :goto_0

    .line 1969
    .restart local v1    # "listener":Ljava/lang/Object;
    :sswitch_8
    if-eqz v1, :cond_0

    .line 1970
    check-cast v1, Landroid/net/wifi/WifiManager$WpsCallback;

    .end local v1    # "listener":Ljava/lang/Object;
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager$WpsCallback;->onSucceeded()V

    goto/16 :goto_0

    .line 1974
    .restart local v1    # "listener":Ljava/lang/Object;
    :sswitch_9
    if-eqz v1, :cond_0

    .line 1975
    check-cast v1, Landroid/net/wifi/WifiManager$WpsCallback;

    .end local v1    # "listener":Ljava/lang/Object;
    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v3}, Landroid/net/wifi/WifiManager$WpsCallback;->onFailed(I)V

    goto/16 :goto_0

    .line 1979
    .restart local v1    # "listener":Ljava/lang/Object;
    :sswitch_a
    if-eqz v1, :cond_0

    .line 1980
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/wifi/RssiPacketCountInfo;

    .line 1981
    .local v0, "info":Landroid/net/wifi/RssiPacketCountInfo;
    if-eqz v0, :cond_2

    .line 1982
    check-cast v1, Landroid/net/wifi/WifiManager$TxPacketCountListener;

    .end local v1    # "listener":Ljava/lang/Object;
    iget v3, v0, Landroid/net/wifi/RssiPacketCountInfo;->txgood:I

    iget v4, v0, Landroid/net/wifi/RssiPacketCountInfo;->txbad:I

    add-int/2addr v3, v4

    invoke-interface {v1, v3}, Landroid/net/wifi/WifiManager$TxPacketCountListener;->onSuccess(I)V

    goto/16 :goto_0

    .line 1984
    .restart local v1    # "listener":Ljava/lang/Object;
    :cond_2
    check-cast v1, Landroid/net/wifi/WifiManager$TxPacketCountListener;

    .end local v1    # "listener":Ljava/lang/Object;
    invoke-interface {v1, v6}, Landroid/net/wifi/WifiManager$TxPacketCountListener;->onFailure(I)V

    goto/16 :goto_0

    .line 1988
    .end local v0    # "info":Landroid/net/wifi/RssiPacketCountInfo;
    .restart local v1    # "listener":Ljava/lang/Object;
    :sswitch_b
    if-eqz v1, :cond_0

    .line 1989
    check-cast v1, Landroid/net/wifi/WifiManager$TxPacketCountListener;

    .end local v1    # "listener":Ljava/lang/Object;
    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v3}, Landroid/net/wifi/WifiManager$TxPacketCountListener;->onFailure(I)V

    goto/16 :goto_0

    .line 1908
    nop

    :sswitch_data_0
    .sparse-switch
        0x11000 -> :sswitch_1
        0x11002 -> :sswitch_0
        0x11004 -> :sswitch_2
        0x25002 -> :sswitch_3
        0x25003 -> :sswitch_4
        0x25005 -> :sswitch_3
        0x25006 -> :sswitch_4
        0x25008 -> :sswitch_3
        0x25009 -> :sswitch_4
        0x2500b -> :sswitch_5
        0x2500c -> :sswitch_7
        0x2500d -> :sswitch_6
        0x2500f -> :sswitch_9
        0x25010 -> :sswitch_8
        0x25012 -> :sswitch_3
        0x25013 -> :sswitch_4
        0x25015 -> :sswitch_a
        0x25016 -> :sswitch_b
    .end sparse-switch
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 1901
    invoke-static {}, Landroid/net/wifi/WifiManager;->-get5()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1902
    :try_start_0
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiManager$ServiceHandler;->dispatchMessageToListeners(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 1900
    return-void

    .line 1901
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
