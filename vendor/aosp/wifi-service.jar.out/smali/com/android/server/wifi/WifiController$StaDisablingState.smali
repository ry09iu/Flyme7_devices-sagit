.class Lcom/android/server/wifi/WifiController$StaDisablingState;
.super Lcom/android/internal/util/State;
.source "WifiController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StaDisablingState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiController;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiController;

    .prologue
    .line 721
    iput-object p1, p0, Lcom/android/server/wifi/WifiController$StaDisablingState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    .line 725
    invoke-static {}, Lcom/android/server/wifi/WifiController;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 726
    const-string/jumbo v0, "WifiController"

    const-string/jumbo v1, "StaDisablingState enter"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$StaDisablingState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v0, v0, Lcom/android/server/wifi/WifiController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->setSupplicantRunning(Z)V

    .line 729
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$StaDisablingState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v0, v0, Lcom/android/server/wifi/WifiController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->clearANQPCache()V

    .line 724
    return-void
.end method

.method public exit()V
    .locals 2

    .prologue
    .line 764
    invoke-static {}, Lcom/android/server/wifi/WifiController;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 765
    const-string/jumbo v0, "WifiController"

    const-string/jumbo v1, "StaDisablingState exit"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    :cond_0
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x1

    .line 734
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 757
    const/4 v0, 0x0

    return v0

    .line 737
    :sswitch_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$StaDisablingState;->this$0:Lcom/android/server/wifi/WifiController;

    const-string/jumbo v1, "StaDisablingState: CMD_WIFI_DISABLED->mApStaDisabledState"

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiController;->-wrap4(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    .line 738
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$StaDisablingState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v1, p0, Lcom/android/server/wifi/WifiController$StaDisablingState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->-get5(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$ApStaDisabledState;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiController;->-wrap10(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V

    .line 759
    :goto_0
    return v5

    .line 741
    :sswitch_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$StaDisablingState;->this$0:Lcom/android/server/wifi/WifiController;

    const-string/jumbo v1, "StaDisablingState: CMD_WIFI_TOGGLED defered"

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiController;->-wrap4(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    .line 742
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$StaDisablingState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v0, p1}, Lcom/android/server/wifi/WifiController;->-wrap3(Lcom/android/server/wifi/WifiController;Landroid/os/Message;)V

    goto :goto_0

    .line 745
    :sswitch_2
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$StaDisablingState;->this$0:Lcom/android/server/wifi/WifiController;

    const-string/jumbo v1, "StaDisablingState: CMD_SET_AP defered"

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiController;->-wrap4(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    .line 746
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$StaDisablingState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v1, p0, Lcom/android/server/wifi/WifiController$StaDisablingState;->this$0:Lcom/android/server/wifi/WifiController;

    iget v2, p1, Landroid/os/Message;->what:I

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3, v5, v4}, Lcom/android/server/wifi/WifiController;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiController;->-wrap3(Lcom/android/server/wifi/WifiController;Landroid/os/Message;)V

    goto :goto_0

    .line 749
    :sswitch_3
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$StaDisablingState;->this$0:Lcom/android/server/wifi/WifiController;

    const-string/jumbo v1, "StaDisablingState: CMD_AIRPLANE_TOGGLED defered"

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiController;->-wrap4(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    .line 750
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$StaDisablingState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v0, p1}, Lcom/android/server/wifi/WifiController;->-wrap3(Lcom/android/server/wifi/WifiController;Landroid/os/Message;)V

    goto :goto_0

    .line 753
    :sswitch_4
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$StaDisablingState;->this$0:Lcom/android/server/wifi/WifiController;

    const-string/jumbo v1, "StaDisablingState: CMD_RESTART_WIFI_CONTINUE defered"

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiController;->-wrap4(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    .line 754
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$StaDisablingState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v0, p1}, Lcom/android/server/wifi/WifiController;->-wrap3(Lcom/android/server/wifi/WifiController;Landroid/os/Message;)V

    goto :goto_0

    .line 734
    :sswitch_data_0
    .sparse-switch
        0x26008 -> :sswitch_1
        0x26009 -> :sswitch_3
        0x2600a -> :sswitch_2
        0x26012 -> :sswitch_4
        0x26014 -> :sswitch_0
        0x26017 -> :sswitch_0
    .end sparse-switch
.end method
