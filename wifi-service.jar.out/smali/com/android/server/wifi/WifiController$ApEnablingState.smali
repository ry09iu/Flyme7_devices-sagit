.class Lcom/android/server/wifi/WifiController$ApEnablingState;
.super Lcom/android/internal/util/State;
.source "WifiController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ApEnablingState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiController;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiController;

    .prologue
    .line 770
    iput-object p1, p0, Lcom/android/server/wifi/WifiController$ApEnablingState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    .line 774
    invoke-static {}, Lcom/android/server/wifi/WifiController;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 775
    const-string/jumbo v0, "WifiController"

    const-string/jumbo v1, "ApEnablingState enter"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApEnablingState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->-get21(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/SoftApStateMachine;

    move-result-object v1

    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApEnablingState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->-wrap0(Lcom/android/server/wifi/WifiController;)Landroid/os/Message;

    move-result-object v0

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 778
    const/4 v2, 0x1

    .line 777
    invoke-virtual {v1, v0, v2}, Lcom/android/server/wifi/SoftApStateMachine;->setHostApRunning(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 773
    return-void
.end method

.method public exit()V
    .locals 2

    .prologue
    .line 812
    invoke-static {}, Lcom/android/server/wifi/WifiController;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 813
    const-string/jumbo v0, "WifiController"

    const-string/jumbo v1, "ApEnablingState exit"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    :cond_0
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x1

    .line 783
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 805
    const/4 v0, 0x0

    return v0

    .line 785
    :sswitch_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApEnablingState;->this$0:Lcom/android/server/wifi/WifiController;

    const-string/jumbo v1, "ApEnablingState: CMD_AP_START_FAILURE->mApStaDisabledState"

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiController;->-wrap4(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    .line 786
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApEnablingState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v1, p0, Lcom/android/server/wifi/WifiController$ApEnablingState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->-get5(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$ApStaDisabledState;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiController;->-wrap10(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V

    .line 807
    :goto_0
    return v5

    .line 789
    :sswitch_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApEnablingState;->this$0:Lcom/android/server/wifi/WifiController;

    const-string/jumbo v1, "ApEnablingState: CMD_AP_STARTED->mApEnabledState"

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiController;->-wrap4(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    .line 790
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApEnablingState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v1, p0, Lcom/android/server/wifi/WifiController$ApEnablingState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->-get3(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$ApEnabledState;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiController;->-wrap10(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 793
    :sswitch_2
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApEnablingState;->this$0:Lcom/android/server/wifi/WifiController;

    const-string/jumbo v1, "ApEnablingState: CMD_WIFI_TOGGLED defered"

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiController;->-wrap4(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    .line 794
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApEnablingState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v0, p1}, Lcom/android/server/wifi/WifiController;->-wrap3(Lcom/android/server/wifi/WifiController;Landroid/os/Message;)V

    goto :goto_0

    .line 797
    :sswitch_3
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApEnablingState;->this$0:Lcom/android/server/wifi/WifiController;

    const-string/jumbo v1, "ApEnablingState: CMD_SET_AP defered"

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiController;->-wrap4(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    .line 798
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApEnablingState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v1, p0, Lcom/android/server/wifi/WifiController$ApEnablingState;->this$0:Lcom/android/server/wifi/WifiController;

    iget v2, p1, Landroid/os/Message;->what:I

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3, v5, v4}, Lcom/android/server/wifi/WifiController;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiController;->-wrap3(Lcom/android/server/wifi/WifiController;Landroid/os/Message;)V

    goto :goto_0

    .line 801
    :sswitch_4
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApEnablingState;->this$0:Lcom/android/server/wifi/WifiController;

    const-string/jumbo v1, "ApEnablingState: CMD_AIRPLANE_TOGGLED defered"

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiController;->-wrap4(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    .line 802
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApEnablingState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v1, p0, Lcom/android/server/wifi/WifiController$ApEnablingState;->this$0:Lcom/android/server/wifi/WifiController;

    iget v2, p1, Landroid/os/Message;->what:I

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3, v5, v4}, Lcom/android/server/wifi/WifiController;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiController;->-wrap3(Lcom/android/server/wifi/WifiController;Landroid/os/Message;)V

    goto :goto_0

    .line 783
    :sswitch_data_0
    .sparse-switch
        0x26008 -> :sswitch_2
        0x26009 -> :sswitch_4
        0x2600a -> :sswitch_3
        0x2600d -> :sswitch_0
        0x26015 -> :sswitch_1
    .end sparse-switch
.end method
