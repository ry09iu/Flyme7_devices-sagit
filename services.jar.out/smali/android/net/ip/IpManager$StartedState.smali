.class Landroid/net/ip/IpManager$StartedState;
.super Lcom/android/internal/util/State;
.source "IpManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ip/IpManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StartedState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/ip/IpManager;


# direct methods
.method constructor <init>(Landroid/net/ip/IpManager;)V
    .locals 0
    .param p1, "this$0"    # Landroid/net/ip/IpManager;

    .prologue
    .line 1126
    iput-object p1, p0, Landroid/net/ip/IpManager$StartedState;->this$0:Landroid/net/ip/IpManager;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 6

    .prologue
    .line 1129
    iget-object v2, p0, Landroid/net/ip/IpManager$StartedState;->this$0:Landroid/net/ip/IpManager;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Landroid/net/ip/IpManager;->-set6(Landroid/net/ip/IpManager;J)J

    .line 1131
    iget-object v2, p0, Landroid/net/ip/IpManager$StartedState;->this$0:Landroid/net/ip/IpManager;

    invoke-static {v2}, Landroid/net/ip/IpManager;->-get2(Landroid/net/ip/IpManager;)Landroid/net/ip/IpManager$ProvisioningConfiguration;

    move-result-object v2

    iget v2, v2, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mProvisioningTimeoutMs:I

    if-lez v2, :cond_0

    .line 1132
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 1133
    iget-object v4, p0, Landroid/net/ip/IpManager$StartedState;->this$0:Landroid/net/ip/IpManager;

    invoke-static {v4}, Landroid/net/ip/IpManager;->-get2(Landroid/net/ip/IpManager;)Landroid/net/ip/IpManager$ProvisioningConfiguration;

    move-result-object v4

    iget v4, v4, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mProvisioningTimeoutMs:I

    int-to-long v4, v4

    .line 1132
    add-long v0, v2, v4

    .line 1134
    .local v0, "alarmTime":J
    iget-object v2, p0, Landroid/net/ip/IpManager$StartedState;->this$0:Landroid/net/ip/IpManager;

    invoke-static {v2}, Landroid/net/ip/IpManager;->-get11(Landroid/net/ip/IpManager;)Lcom/android/internal/util/WakeupMessage;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/android/internal/util/WakeupMessage;->schedule(J)V

    .line 1137
    .end local v0    # "alarmTime":J
    :cond_0
    invoke-virtual {p0}, Landroid/net/ip/IpManager$StartedState;->readyToProceed()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1138
    iget-object v2, p0, Landroid/net/ip/IpManager$StartedState;->this$0:Landroid/net/ip/IpManager;

    iget-object v3, p0, Landroid/net/ip/IpManager$StartedState;->this$0:Landroid/net/ip/IpManager;

    invoke-static {v3}, Landroid/net/ip/IpManager;->-get12(Landroid/net/ip/IpManager;)Lcom/android/internal/util/State;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/ip/IpManager;->-wrap16(Landroid/net/ip/IpManager;Lcom/android/internal/util/IState;)V

    .line 1128
    :goto_0
    return-void

    .line 1143
    :cond_1
    iget-object v2, p0, Landroid/net/ip/IpManager$StartedState;->this$0:Landroid/net/ip/IpManager;

    invoke-static {v2}, Landroid/net/ip/IpManager;->-wrap15(Landroid/net/ip/IpManager;)V

    goto :goto_0
.end method

.method public exit()V
    .locals 1

    .prologue
    .line 1149
    iget-object v0, p0, Landroid/net/ip/IpManager$StartedState;->this$0:Landroid/net/ip/IpManager;

    invoke-static {v0}, Landroid/net/ip/IpManager;->-get11(Landroid/net/ip/IpManager;)Lcom/android/internal/util/WakeupMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/WakeupMessage;->cancel()V

    .line 1148
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1154
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 1176
    iget-object v0, p0, Landroid/net/ip/IpManager$StartedState;->this$0:Landroid/net/ip/IpManager;

    invoke-static {v0, p1}, Landroid/net/ip/IpManager;->-wrap7(Landroid/net/ip/IpManager;Landroid/os/Message;)V

    .line 1179
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/net/ip/IpManager$StartedState;->this$0:Landroid/net/ip/IpManager;

    invoke-static {v0}, Landroid/net/ip/IpManager;->-get8(Landroid/net/ip/IpManager;)Landroid/net/ip/IpManager$MessageHandlingLogger;

    move-result-object v0

    iget-object v1, p0, Landroid/net/ip/IpManager$StartedState;->this$0:Landroid/net/ip/IpManager;

    invoke-static {v1}, Landroid/net/ip/IpManager;->-wrap5(Landroid/net/ip/IpManager;)Lcom/android/internal/util/IState;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/net/ip/IpManager$MessageHandlingLogger;->handled(Lcom/android/internal/util/State;Lcom/android/internal/util/IState;)V

    .line 1180
    const/4 v0, 0x1

    return v0

    .line 1156
    :sswitch_0
    iget-object v0, p0, Landroid/net/ip/IpManager$StartedState;->this$0:Landroid/net/ip/IpManager;

    iget-object v1, p0, Landroid/net/ip/IpManager$StartedState;->this$0:Landroid/net/ip/IpManager;

    invoke-static {v1}, Landroid/net/ip/IpManager;->-get16(Landroid/net/ip/IpManager;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/ip/IpManager;->-wrap16(Landroid/net/ip/IpManager;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 1160
    :sswitch_1
    iget-object v0, p0, Landroid/net/ip/IpManager$StartedState;->this$0:Landroid/net/ip/IpManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/net/ip/IpManager;->-wrap0(Landroid/net/ip/IpManager;Z)Z

    .line 1161
    invoke-virtual {p0}, Landroid/net/ip/IpManager$StartedState;->readyToProceed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1162
    iget-object v0, p0, Landroid/net/ip/IpManager$StartedState;->this$0:Landroid/net/ip/IpManager;

    iget-object v1, p0, Landroid/net/ip/IpManager$StartedState;->this$0:Landroid/net/ip/IpManager;

    invoke-static {v1}, Landroid/net/ip/IpManager;->-get12(Landroid/net/ip/IpManager;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/ip/IpManager;->-wrap16(Landroid/net/ip/IpManager;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 1167
    :sswitch_2
    iget-object v0, p0, Landroid/net/ip/IpManager$StartedState;->this$0:Landroid/net/ip/IpManager;

    invoke-static {v0}, Landroid/net/ip/IpManager;->-wrap12(Landroid/net/ip/IpManager;)V

    goto :goto_0

    .line 1154
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_1
        0x9 -> :sswitch_2
    .end sparse-switch
.end method

.method readyToProceed()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1184
    iget-object v1, p0, Landroid/net/ip/IpManager$StartedState;->this$0:Landroid/net/ip/IpManager;

    invoke-static {v1}, Landroid/net/ip/IpManager;->-get6(Landroid/net/ip/IpManager;)Landroid/net/LinkProperties;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/LinkProperties;->hasIPv4Address()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1185
    iget-object v1, p0, Landroid/net/ip/IpManager$StartedState;->this$0:Landroid/net/ip/IpManager;

    invoke-static {v1}, Landroid/net/ip/IpManager;->-get6(Landroid/net/ip/IpManager;)Landroid/net/LinkProperties;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/LinkProperties;->hasGlobalIPv6Address()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1184
    :cond_0
    :goto_0
    return v0

    .line 1185
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
