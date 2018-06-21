.class Lcom/android/server/wifi/WifiController$ApStaEnablingState;
.super Lcom/android/internal/util/State;
.source "WifiController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ApStaEnablingState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiController;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiController;

    .prologue
    .line 871
    iput-object p1, p0, Lcom/android/server/wifi/WifiController$ApStaEnablingState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    .line 875
    invoke-static {}, Lcom/android/server/wifi/WifiController;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 876
    const-string/jumbo v0, "WifiController"

    const-string/jumbo v1, "ApStaEnablingState enter"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    :cond_0
    return-void
.end method

.method public exit()V
    .locals 2

    .prologue
    .line 922
    invoke-static {}, Lcom/android/server/wifi/WifiController;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 923
    const-string/jumbo v0, "WifiController"

    const-string/jumbo v1, "ApStaEnablingState exit"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    :cond_0
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x1

    .line 882
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 915
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 884
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApStaEnablingState;->this$0:Lcom/android/server/wifi/WifiController;

    const-string/jumbo v1, "ApStaEnablingState defer CMD_SET_AP"

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiController;->-wrap4(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    .line 885
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApStaEnablingState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v1, p0, Lcom/android/server/wifi/WifiController$ApStaEnablingState;->this$0:Lcom/android/server/wifi/WifiController;

    iget v2, p1, Landroid/os/Message;->what:I

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3, v5, v4}, Lcom/android/server/wifi/WifiController;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiController;->-wrap3(Lcom/android/server/wifi/WifiController;Landroid/os/Message;)V

    .line 917
    :goto_0
    :pswitch_2
    return v5

    .line 888
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApStaEnablingState;->this$0:Lcom/android/server/wifi/WifiController;

    const-string/jumbo v1, "ApStaEnablingState defer CMD_WIFI_TOGGLED"

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiController;->-wrap4(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    .line 889
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApStaEnablingState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v0, p1}, Lcom/android/server/wifi/WifiController;->-wrap3(Lcom/android/server/wifi/WifiController;Landroid/os/Message;)V

    goto :goto_0

    .line 892
    :pswitch_4
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApStaEnablingState;->this$0:Lcom/android/server/wifi/WifiController;

    const-string/jumbo v1, "ApStaEnablingState defer CMD_AIRPLANE_TOGGLED"

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiController;->-wrap4(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    .line 893
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApStaEnablingState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v0, p1}, Lcom/android/server/wifi/WifiController;->-wrap3(Lcom/android/server/wifi/WifiController;Landroid/os/Message;)V

    goto :goto_0

    .line 896
    :pswitch_5
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApStaEnablingState;->this$0:Lcom/android/server/wifi/WifiController;

    const-string/jumbo v1, "ApStaEnablingState: CMD_WIFI_ENABLED-> mApStaEnabledState"

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiController;->-wrap4(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    .line 897
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApStaEnablingState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v1, p0, Lcom/android/server/wifi/WifiController$ApStaEnablingState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->-get7(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$ApStaEnabledState;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiController;->-wrap10(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 900
    :pswitch_6
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApStaEnablingState;->this$0:Lcom/android/server/wifi/WifiController;

    const-string/jumbo v1, "ApStaEnablingState: CMD_AP_STARTED-> mApStaEnabledState"

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiController;->-wrap4(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    .line 901
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApStaEnablingState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v1, p0, Lcom/android/server/wifi/WifiController$ApStaEnablingState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->-get7(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$ApStaEnabledState;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiController;->-wrap10(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 904
    :pswitch_7
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApStaEnablingState;->this$0:Lcom/android/server/wifi/WifiController;

    const-string/jumbo v1, "ApStaEnablingState: CMD_STA_START_FAILURE-> mApEnabledState"

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiController;->-wrap4(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    .line 905
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApStaEnablingState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v1, p0, Lcom/android/server/wifi/WifiController$ApStaEnablingState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->-get3(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$ApEnabledState;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiController;->-wrap10(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 908
    :pswitch_8
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApStaEnablingState;->this$0:Lcom/android/server/wifi/WifiController;

    const-string/jumbo v1, "ApStaEnablingState: CMD_AP_START_FAILURE-> mStaEnabledState"

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiController;->-wrap4(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    .line 909
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApStaEnablingState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v1, p0, Lcom/android/server/wifi/WifiController$ApStaEnablingState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->-get25(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$StaEnabledState;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiController;->-wrap10(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 882
    :pswitch_data_0
    .packed-switch 0x26008
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_2
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_2
        :pswitch_6
    .end packed-switch
.end method
