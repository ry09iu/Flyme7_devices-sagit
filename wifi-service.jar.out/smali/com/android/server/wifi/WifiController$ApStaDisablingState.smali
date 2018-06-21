.class Lcom/android/server/wifi/WifiController$ApStaDisablingState;
.super Lcom/android/internal/util/State;
.source "WifiController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ApStaDisablingState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiController;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiController;

    .prologue
    .line 928
    iput-object p1, p0, Lcom/android/server/wifi/WifiController$ApStaDisablingState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    .line 932
    invoke-static {}, Lcom/android/server/wifi/WifiController;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 933
    const-string/jumbo v0, "WifiController"

    const-string/jumbo v1, "ApStaDisablingState enter"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    :cond_0
    return-void
.end method

.method public exit()V
    .locals 2

    .prologue
    .line 981
    invoke-static {}, Lcom/android/server/wifi/WifiController;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 982
    const-string/jumbo v0, "WifiController"

    const-string/jumbo v1, "ApStaDisablingState exit"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    :cond_0
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x1

    .line 939
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 974
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 941
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApStaDisablingState;->this$0:Lcom/android/server/wifi/WifiController;

    const-string/jumbo v1, "ApStaDisablingState defer CMD_SET_AP"

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiController;->-wrap4(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    .line 942
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApStaDisablingState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v1, p0, Lcom/android/server/wifi/WifiController$ApStaDisablingState;->this$0:Lcom/android/server/wifi/WifiController;

    iget v2, p1, Landroid/os/Message;->what:I

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3, v5, v4}, Lcom/android/server/wifi/WifiController;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiController;->-wrap3(Lcom/android/server/wifi/WifiController;Landroid/os/Message;)V

    .line 976
    :goto_0
    return v5

    .line 945
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApStaDisablingState;->this$0:Lcom/android/server/wifi/WifiController;

    const-string/jumbo v1, "ApStaDisablingState defer CMD_WIFI_TOGGLED"

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiController;->-wrap4(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    .line 946
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApStaDisablingState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v0, p1}, Lcom/android/server/wifi/WifiController;->-wrap3(Lcom/android/server/wifi/WifiController;Landroid/os/Message;)V

    goto :goto_0

    .line 949
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApStaDisablingState;->this$0:Lcom/android/server/wifi/WifiController;

    const-string/jumbo v1, "ApStaDisablingState defer CMD_AIRPLANE_TOGGLED"

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiController;->-wrap4(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    .line 950
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApStaDisablingState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v0, p1}, Lcom/android/server/wifi/WifiController;->-wrap3(Lcom/android/server/wifi/WifiController;Landroid/os/Message;)V

    goto :goto_0

    .line 953
    :pswitch_4
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApStaDisablingState;->this$0:Lcom/android/server/wifi/WifiController;

    const-string/jumbo v1, "ApStaDisablingState CMD_WIFI_ENABLED ignored"

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiController;->-wrap4(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    goto :goto_0

    .line 956
    :pswitch_5
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApStaDisablingState;->this$0:Lcom/android/server/wifi/WifiController;

    const-string/jumbo v1, "ApStaDisablingState: CMD_WIFI_DISABLED-> mApEnabledState"

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiController;->-wrap4(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    .line 957
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApStaDisablingState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v1, p0, Lcom/android/server/wifi/WifiController$ApStaDisablingState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->-get3(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$ApEnabledState;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiController;->-wrap10(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 960
    :pswitch_6
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApStaDisablingState;->this$0:Lcom/android/server/wifi/WifiController;

    const-string/jumbo v1, "ApStaDisablingState CMD_AP_STARTED ignored"

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiController;->-wrap4(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    goto :goto_0

    .line 963
    :pswitch_7
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApStaDisablingState;->this$0:Lcom/android/server/wifi/WifiController;

    const-string/jumbo v1, "ApStaDisablingState: CMD_AP_STOPPED->StaEnabledState"

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiController;->-wrap4(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    .line 964
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApStaDisablingState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v1, p0, Lcom/android/server/wifi/WifiController$ApStaDisablingState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->-get25(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$StaEnabledState;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiController;->-wrap10(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 967
    :pswitch_8
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApStaDisablingState;->this$0:Lcom/android/server/wifi/WifiController;

    const-string/jumbo v1, "ApStaDisablingState: CMD_STA_START_FAILURE dropped"

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiController;->-wrap4(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    goto :goto_0

    .line 970
    :pswitch_9
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApStaDisablingState;->this$0:Lcom/android/server/wifi/WifiController;

    const-string/jumbo v1, "ApStaDisablingState defer CMD_RESTART_WIFI"

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiController;->-wrap4(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    .line 971
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApStaDisablingState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v0, p1}, Lcom/android/server/wifi/WifiController;->-wrap3(Lcom/android/server/wifi/WifiController;Landroid/os/Message;)V

    goto :goto_0

    .line 939
    nop

    :pswitch_data_0
    .packed-switch 0x26008
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
