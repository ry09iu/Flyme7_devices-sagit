.class Lcom/android/server/wifi/WifiController$ApDisablingState;
.super Lcom/android/internal/util/State;
.source "WifiController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ApDisablingState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiController;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiController;

    .prologue
    .line 818
    iput-object p1, p0, Lcom/android/server/wifi/WifiController$ApDisablingState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    .line 822
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApDisablingState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->-get21(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/SoftApStateMachine;

    move-result-object v1

    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApDisablingState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->-wrap0(Lcom/android/server/wifi/WifiController;)Landroid/os/Message;

    move-result-object v0

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 823
    const/4 v2, 0x0

    .line 822
    invoke-virtual {v1, v0, v2}, Lcom/android/server/wifi/SoftApStateMachine;->setHostApRunning(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 821
    return-void
.end method

.method public exit()V
    .locals 2

    .prologue
    .line 867
    const-string/jumbo v0, "WifiController"

    const-string/jumbo v1, "ApDisablingState: exit()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 828
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 860
    const/4 v0, 0x0

    return v0

    .line 830
    :sswitch_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApDisablingState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v0, v0, Lcom/android/server/wifi/WifiController;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiSettingsStore;->isScanAlwaysAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 831
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApDisablingState;->this$0:Lcom/android/server/wifi/WifiController;

    const-string/jumbo v1, "ApDisablingState: CMD_AP_STOPPED->mStaDisabledWithScanState"

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiController;->-wrap4(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    .line 832
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApDisablingState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v1, p0, Lcom/android/server/wifi/WifiController$ApDisablingState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->-get23(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiController;->-wrap10(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V

    .line 862
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 834
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApDisablingState;->this$0:Lcom/android/server/wifi/WifiController;

    const-string/jumbo v1, "ApDisablingState: CMD_AP_STOPPED->mApStaDisabledState"

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiController;->-wrap4(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    .line 835
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApDisablingState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v1, p0, Lcom/android/server/wifi/WifiController$ApDisablingState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->-get5(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$ApStaDisabledState;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiController;->-wrap10(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 839
    :sswitch_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApDisablingState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v0, v0, Lcom/android/server/wifi/WifiController;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiSettingsStore;->isScanAlwaysAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 840
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApDisablingState;->this$0:Lcom/android/server/wifi/WifiController;

    const-string/jumbo v1, "ApDisablingState: CMD_AP_STOP_FAILURE->mStaDisabledWithScanState"

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiController;->-wrap4(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    .line 841
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApDisablingState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v1, p0, Lcom/android/server/wifi/WifiController$ApDisablingState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->-get23(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiController;->-wrap10(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 843
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApDisablingState;->this$0:Lcom/android/server/wifi/WifiController;

    const-string/jumbo v1, "ApDisablingState: CMD_AP_STOP_FAILURE->mApStaDisabledState"

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiController;->-wrap4(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    .line 844
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApDisablingState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v1, p0, Lcom/android/server/wifi/WifiController$ApDisablingState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->-get5(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$ApStaDisabledState;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiController;->-wrap10(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 848
    :sswitch_2
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApDisablingState;->this$0:Lcom/android/server/wifi/WifiController;

    const-string/jumbo v1, "ApDisablingState: CMD_SET_AP defered"

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiController;->-wrap4(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    .line 849
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApDisablingState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v0, p1}, Lcom/android/server/wifi/WifiController;->-wrap3(Lcom/android/server/wifi/WifiController;Landroid/os/Message;)V

    goto :goto_0

    .line 852
    :sswitch_3
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApDisablingState;->this$0:Lcom/android/server/wifi/WifiController;

    const-string/jumbo v1, "ApDisablingState: CMD_WIFI_TOGGLED defered"

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiController;->-wrap4(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    .line 853
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApDisablingState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v0, p1}, Lcom/android/server/wifi/WifiController;->-wrap3(Lcom/android/server/wifi/WifiController;Landroid/os/Message;)V

    goto :goto_0

    .line 856
    :sswitch_4
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApDisablingState;->this$0:Lcom/android/server/wifi/WifiController;

    const-string/jumbo v1, "ApDisablingState: CMD_AIRPLANE_TOGGLED defered"

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiController;->-wrap4(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    .line 857
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApDisablingState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v0, p1}, Lcom/android/server/wifi/WifiController;->-wrap3(Lcom/android/server/wifi/WifiController;Landroid/os/Message;)V

    goto :goto_0

    .line 828
    :sswitch_data_0
    .sparse-switch
        0x26008 -> :sswitch_3
        0x26009 -> :sswitch_4
        0x2600a -> :sswitch_2
        0x2600f -> :sswitch_0
        0x26016 -> :sswitch_1
    .end sparse-switch
.end method
