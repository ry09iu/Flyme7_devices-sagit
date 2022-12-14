.class Landroid/net/ip/IpManager$RunningState;
.super Lcom/android/internal/util/State;
.source "IpManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ip/IpManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RunningState"
.end annotation


# instance fields
.field private mDhcpActionInFlight:Z

.field final synthetic this$0:Landroid/net/ip/IpManager;


# direct methods
.method constructor <init>(Landroid/net/ip/IpManager;)V
    .locals 0
    .param p1, "this$0"    # Landroid/net/ip/IpManager;

    .prologue
    .line 1189
    iput-object p1, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method private ensureDhcpAction()V
    .locals 6

    .prologue
    .line 1245
    iget-boolean v2, p0, Landroid/net/ip/IpManager$RunningState;->mDhcpActionInFlight:Z

    if-nez v2, :cond_0

    .line 1246
    iget-object v2, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    iget-object v2, v2, Landroid/net/ip/IpManager;->mCallback:Landroid/net/ip/IpManager$Callback;

    invoke-virtual {v2}, Landroid/net/ip/IpManager$Callback;->onPreDhcpAction()V

    .line 1247
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/net/ip/IpManager$RunningState;->mDhcpActionInFlight:Z

    .line 1248
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 1249
    iget-object v4, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    invoke-static {v4}, Landroid/net/ip/IpManager;->-get2(Landroid/net/ip/IpManager;)Landroid/net/ip/IpManager$ProvisioningConfiguration;

    move-result-object v4

    iget v4, v4, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mRequestedPreDhcpActionMs:I

    int-to-long v4, v4

    .line 1248
    add-long v0, v2, v4

    .line 1250
    .local v0, "alarmTime":J
    iget-object v2, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    invoke-static {v2}, Landroid/net/ip/IpManager;->-get3(Landroid/net/ip/IpManager;)Lcom/android/internal/util/WakeupMessage;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/android/internal/util/WakeupMessage;->schedule(J)V

    .line 1244
    .end local v0    # "alarmTime":J
    :cond_0
    return-void
.end method

.method private stopDhcpAction()V
    .locals 1

    .prologue
    .line 1255
    iget-object v0, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    invoke-static {v0}, Landroid/net/ip/IpManager;->-get3(Landroid/net/ip/IpManager;)Lcom/android/internal/util/WakeupMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/WakeupMessage;->cancel()V

    .line 1256
    iget-boolean v0, p0, Landroid/net/ip/IpManager$RunningState;->mDhcpActionInFlight:Z

    if-eqz v0, :cond_0

    .line 1257
    iget-object v0, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    iget-object v0, v0, Landroid/net/ip/IpManager;->mCallback:Landroid/net/ip/IpManager$Callback;

    invoke-virtual {v0}, Landroid/net/ip/IpManager$Callback;->onPostDhcpAction()V

    .line 1258
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/ip/IpManager$RunningState;->mDhcpActionInFlight:Z

    .line 1254
    :cond_0
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 5

    .prologue
    .line 1194
    iget-object v0, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    iget-object v1, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    invoke-static {v1}, Landroid/net/ip/IpManager;->-get2(Landroid/net/ip/IpManager;)Landroid/net/ip/IpManager$ProvisioningConfiguration;

    move-result-object v1

    iget-object v1, v1, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mApfCapabilities:Landroid/net/apf/ApfCapabilities;

    iget-object v2, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    invoke-static {v2}, Landroid/net/ip/IpManager;->-get10(Landroid/net/ip/IpManager;)Ljava/net/NetworkInterface;

    move-result-object v2

    .line 1195
    iget-object v3, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    iget-object v3, v3, Landroid/net/ip/IpManager;->mCallback:Landroid/net/ip/IpManager$Callback;

    iget-object v4, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    invoke-static {v4}, Landroid/net/ip/IpManager;->-get9(Landroid/net/ip/IpManager;)Z

    move-result v4

    .line 1194
    invoke-static {v1, v2, v3, v4}, Landroid/net/apf/ApfFilter;->maybeCreate(Landroid/net/apf/ApfCapabilities;Ljava/net/NetworkInterface;Landroid/net/ip/IpManager$Callback;Z)Landroid/net/apf/ApfFilter;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/ip/IpManager;->-set0(Landroid/net/ip/IpManager;Landroid/net/apf/ApfFilter;)Landroid/net/apf/ApfFilter;

    .line 1198
    iget-object v0, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    invoke-static {v0}, Landroid/net/ip/IpManager;->-get0(Landroid/net/ip/IpManager;)Landroid/net/apf/ApfFilter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1199
    iget-object v0, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    iget-object v0, v0, Landroid/net/ip/IpManager;->mCallback:Landroid/net/ip/IpManager$Callback;

    iget-object v1, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    invoke-static {v1}, Landroid/net/ip/IpManager;->-get9(Landroid/net/ip/IpManager;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/ip/IpManager$Callback;->setFallbackMulticastFilter(Z)V

    .line 1202
    :cond_0
    iget-object v0, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    invoke-static {v0}, Landroid/net/ip/IpManager;->-get2(Landroid/net/ip/IpManager;)Landroid/net/ip/IpManager$ProvisioningConfiguration;

    move-result-object v0

    iget-boolean v0, v0, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mEnableIPv6:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    invoke-static {v0}, Landroid/net/ip/IpManager;->-wrap3(Landroid/net/ip/IpManager;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1208
    :cond_1
    iget-object v0, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    invoke-static {v0}, Landroid/net/ip/IpManager;->-get2(Landroid/net/ip/IpManager;)Landroid/net/ip/IpManager$ProvisioningConfiguration;

    move-result-object v0

    iget-boolean v0, v0, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mEnableIPv4:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    invoke-static {v0}, Landroid/net/ip/IpManager;->-wrap2(Landroid/net/ip/IpManager;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1214
    :cond_2
    iget-object v0, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    invoke-static {v0}, Landroid/net/ip/IpManager;->-get2(Landroid/net/ip/IpManager;)Landroid/net/ip/IpManager$ProvisioningConfiguration;

    move-result-object v0

    iget-boolean v0, v0, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mUsingIpReachabilityMonitor:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    invoke-static {v0}, Landroid/net/ip/IpManager;->-wrap4(Landroid/net/ip/IpManager;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1193
    :cond_3
    return-void

    .line 1203
    :cond_4
    iget-object v0, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/net/ip/IpManager;->-wrap9(Landroid/net/ip/IpManager;I)V

    .line 1204
    iget-object v0, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    iget-object v1, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    invoke-static {v1}, Landroid/net/ip/IpManager;->-get16(Landroid/net/ip/IpManager;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/ip/IpManager;->-wrap16(Landroid/net/ip/IpManager;Lcom/android/internal/util/IState;)V

    .line 1205
    return-void

    .line 1209
    :cond_5
    iget-object v0, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/net/ip/IpManager;->-wrap9(Landroid/net/ip/IpManager;I)V

    .line 1210
    iget-object v0, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    iget-object v1, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    invoke-static {v1}, Landroid/net/ip/IpManager;->-get16(Landroid/net/ip/IpManager;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/ip/IpManager;->-wrap16(Landroid/net/ip/IpManager;Lcom/android/internal/util/IState;)V

    .line 1211
    return-void

    .line 1215
    :cond_6
    iget-object v0, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    .line 1216
    const/4 v1, 0x6

    .line 1215
    invoke-static {v0, v1}, Landroid/net/ip/IpManager;->-wrap9(Landroid/net/ip/IpManager;I)V

    .line 1217
    iget-object v0, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    iget-object v1, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    invoke-static {v1}, Landroid/net/ip/IpManager;->-get16(Landroid/net/ip/IpManager;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/ip/IpManager;->-wrap16(Landroid/net/ip/IpManager;Lcom/android/internal/util/IState;)V

    .line 1218
    return-void
.end method

.method public exit()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1224
    invoke-direct {p0}, Landroid/net/ip/IpManager$RunningState;->stopDhcpAction()V

    .line 1226
    iget-object v0, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    invoke-static {v0}, Landroid/net/ip/IpManager;->-get5(Landroid/net/ip/IpManager;)Landroid/net/ip/IpReachabilityMonitor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1227
    iget-object v0, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    invoke-static {v0}, Landroid/net/ip/IpManager;->-get5(Landroid/net/ip/IpManager;)Landroid/net/ip/IpReachabilityMonitor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/ip/IpReachabilityMonitor;->stop()V

    .line 1228
    iget-object v0, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    invoke-static {v0, v2}, Landroid/net/ip/IpManager;->-set4(Landroid/net/ip/IpManager;Landroid/net/ip/IpReachabilityMonitor;)Landroid/net/ip/IpReachabilityMonitor;

    .line 1231
    :cond_0
    iget-object v0, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    invoke-static {v0}, Landroid/net/ip/IpManager;->-get4(Landroid/net/ip/IpManager;)Landroid/net/dhcp/DhcpClient;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1232
    iget-object v0, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    invoke-static {v0}, Landroid/net/ip/IpManager;->-get4(Landroid/net/ip/IpManager;)Landroid/net/dhcp/DhcpClient;

    move-result-object v0

    const v1, 0x30002

    invoke-virtual {v0, v1}, Landroid/net/dhcp/DhcpClient;->sendMessage(I)V

    .line 1233
    iget-object v0, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    invoke-static {v0}, Landroid/net/ip/IpManager;->-get4(Landroid/net/ip/IpManager;)Landroid/net/dhcp/DhcpClient;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/dhcp/DhcpClient;->doQuit()V

    .line 1236
    :cond_1
    iget-object v0, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    invoke-static {v0}, Landroid/net/ip/IpManager;->-get0(Landroid/net/ip/IpManager;)Landroid/net/apf/ApfFilter;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1237
    iget-object v0, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    invoke-static {v0}, Landroid/net/ip/IpManager;->-get0(Landroid/net/ip/IpManager;)Landroid/net/apf/ApfFilter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/apf/ApfFilter;->shutdown()V

    .line 1238
    iget-object v0, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    invoke-static {v0, v2}, Landroid/net/ip/IpManager;->-set0(Landroid/net/ip/IpManager;Landroid/net/apf/ApfFilter;)Landroid/net/apf/ApfFilter;

    .line 1241
    :cond_2
    iget-object v0, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    invoke-static {v0}, Landroid/net/ip/IpManager;->-wrap14(Landroid/net/ip/IpManager;)V

    .line 1223
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 1264
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 1380
    return v2

    .line 1266
    :sswitch_0
    iget-object v1, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    iget-object v2, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    invoke-static {v2}, Landroid/net/ip/IpManager;->-get16(Landroid/net/ip/IpManager;)Lcom/android/internal/util/State;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/ip/IpManager;->-wrap16(Landroid/net/ip/IpManager;Lcom/android/internal/util/IState;)V

    .line 1383
    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    invoke-static {v1}, Landroid/net/ip/IpManager;->-get8(Landroid/net/ip/IpManager;)Landroid/net/ip/IpManager$MessageHandlingLogger;

    move-result-object v1

    iget-object v2, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    invoke-static {v2}, Landroid/net/ip/IpManager;->-wrap5(Landroid/net/ip/IpManager;)Lcom/android/internal/util/IState;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Landroid/net/ip/IpManager$MessageHandlingLogger;->handled(Lcom/android/internal/util/State;Lcom/android/internal/util/IState;)V

    .line 1384
    return v5

    .line 1270
    :sswitch_1
    iget-object v1, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    invoke-static {v1}, Landroid/net/ip/IpManager;->-get17(Landroid/net/ip/IpManager;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "ALERT: START received in StartedState. Please fix caller."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1278
    :sswitch_2
    iget-object v1, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    invoke-static {v1}, Landroid/net/ip/IpManager;->-get5(Landroid/net/ip/IpManager;)Landroid/net/ip/IpReachabilityMonitor;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1279
    iget-object v1, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    invoke-static {v1}, Landroid/net/ip/IpManager;->-get5(Landroid/net/ip/IpManager;)Landroid/net/ip/IpReachabilityMonitor;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/ip/IpReachabilityMonitor;->probeAll()V

    goto :goto_0

    .line 1287
    :sswitch_3
    iget-object v1, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    invoke-static {v1}, Landroid/net/ip/IpManager;->-get4(Landroid/net/ip/IpManager;)Landroid/net/dhcp/DhcpClient;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1288
    iget-object v1, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    invoke-static {v1}, Landroid/net/ip/IpManager;->-get4(Landroid/net/ip/IpManager;)Landroid/net/dhcp/DhcpClient;

    move-result-object v1

    const v2, 0x30006

    invoke-virtual {v1, v2}, Landroid/net/dhcp/DhcpClient;->sendMessage(I)V

    goto :goto_0

    .line 1293
    :sswitch_4
    iget-object v1, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    invoke-static {v1, v5}, Landroid/net/ip/IpManager;->-wrap0(Landroid/net/ip/IpManager;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1294
    iget-object v1, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    iget-object v2, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    invoke-static {v2}, Landroid/net/ip/IpManager;->-get16(Landroid/net/ip/IpManager;)Lcom/android/internal/util/State;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/ip/IpManager;->-wrap16(Landroid/net/ip/IpManager;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 1299
    :sswitch_5
    iget-object v2, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/net/ip/IpManager;->-set7(Landroid/net/ip/IpManager;Ljava/lang/String;)Ljava/lang/String;

    .line 1301
    iget-object v1, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    invoke-static {v1, v5}, Landroid/net/ip/IpManager;->-wrap0(Landroid/net/ip/IpManager;Z)Z

    goto :goto_0

    .line 1305
    :sswitch_6
    iget-object v2, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/ProxyInfo;

    invoke-static {v2, v1}, Landroid/net/ip/IpManager;->-set3(Landroid/net/ip/IpManager;Landroid/net/ProxyInfo;)Landroid/net/ProxyInfo;

    .line 1307
    iget-object v1, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    invoke-static {v1, v5}, Landroid/net/ip/IpManager;->-wrap0(Landroid/net/ip/IpManager;Z)Z

    goto :goto_0

    .line 1311
    :sswitch_7
    iget-object v2, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v2, v1}, Landroid/net/ip/IpManager;->-set5(Landroid/net/ip/IpManager;Z)Z

    .line 1312
    iget-object v1, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    invoke-static {v1}, Landroid/net/ip/IpManager;->-get0(Landroid/net/ip/IpManager;)Landroid/net/apf/ApfFilter;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1313
    iget-object v1, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    invoke-static {v1}, Landroid/net/ip/IpManager;->-get0(Landroid/net/ip/IpManager;)Landroid/net/apf/ApfFilter;

    move-result-object v1

    iget-object v2, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    invoke-static {v2}, Landroid/net/ip/IpManager;->-get9(Landroid/net/ip/IpManager;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/net/apf/ApfFilter;->setMulticastFilter(Z)V

    goto/16 :goto_0

    .line 1315
    :cond_1
    iget-object v1, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    iget-object v1, v1, Landroid/net/ip/IpManager;->mCallback:Landroid/net/ip/IpManager$Callback;

    iget-object v2, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    invoke-static {v2}, Landroid/net/ip/IpManager;->-get9(Landroid/net/ip/IpManager;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/net/ip/IpManager$Callback;->setFallbackMulticastFilter(Z)V

    goto/16 :goto_0

    .line 1321
    :sswitch_8
    invoke-direct {p0}, Landroid/net/ip/IpManager$RunningState;->stopDhcpAction()V

    goto/16 :goto_0

    .line 1325
    :sswitch_9
    iget-object v1, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    invoke-static {v1}, Landroid/net/ip/IpManager;->-get2(Landroid/net/ip/IpManager;)Landroid/net/ip/IpManager$ProvisioningConfiguration;

    move-result-object v1

    iget v1, v1, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mRequestedPreDhcpActionMs:I

    if-lez v1, :cond_2

    .line 1326
    invoke-direct {p0}, Landroid/net/ip/IpManager$RunningState;->ensureDhcpAction()V

    goto/16 :goto_0

    .line 1328
    :cond_2
    iget-object v1, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/net/ip/IpManager;->sendMessage(I)V

    goto/16 :goto_0

    .line 1333
    :sswitch_a
    iget-object v1, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    invoke-static {v1}, Landroid/net/ip/IpManager;->-wrap6(Landroid/net/ip/IpManager;)V

    goto/16 :goto_0

    .line 1337
    :sswitch_b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/LinkAddress;

    .line 1338
    .local v0, "ipAddress":Landroid/net/LinkAddress;
    iget-object v1, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    invoke-static {v1, v0}, Landroid/net/ip/IpManager;->-wrap1(Landroid/net/ip/IpManager;Landroid/net/LinkAddress;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1339
    iget-object v1, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    invoke-static {v1}, Landroid/net/ip/IpManager;->-get4(Landroid/net/ip/IpManager;)Landroid/net/dhcp/DhcpClient;

    move-result-object v1

    const v2, 0x30009

    invoke-virtual {v1, v2}, Landroid/net/dhcp/DhcpClient;->sendMessage(I)V

    goto/16 :goto_0

    .line 1341
    :cond_3
    iget-object v1, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    invoke-static {v1}, Landroid/net/ip/IpManager;->-get17(Landroid/net/ip/IpManager;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Failed to set IPv4 address!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1342
    iget-object v1, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    sget-object v2, Landroid/net/LinkProperties$ProvisioningChange;->LOST_PROVISIONING:Landroid/net/LinkProperties$ProvisioningChange;

    .line 1343
    new-instance v3, Landroid/net/LinkProperties;

    iget-object v4, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    invoke-static {v4}, Landroid/net/ip/IpManager;->-get6(Landroid/net/ip/IpManager;)Landroid/net/LinkProperties;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    .line 1342
    invoke-static {v1, v2, v3}, Landroid/net/ip/IpManager;->-wrap8(Landroid/net/ip/IpManager;Landroid/net/LinkProperties$ProvisioningChange;Landroid/net/LinkProperties;)V

    .line 1344
    iget-object v1, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    iget-object v2, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    invoke-static {v2}, Landroid/net/ip/IpManager;->-get16(Landroid/net/ip/IpManager;)Lcom/android/internal/util/State;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/ip/IpManager;->-wrap16(Landroid/net/ip/IpManager;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    .line 1359
    .end local v0    # "ipAddress":Landroid/net/LinkAddress;
    :sswitch_c
    invoke-direct {p0}, Landroid/net/ip/IpManager$RunningState;->stopDhcpAction()V

    .line 1361
    iget v1, p1, Landroid/os/Message;->arg1:I

    packed-switch v1, :pswitch_data_0

    .line 1369
    iget-object v1, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    invoke-static {v1}, Landroid/net/ip/IpManager;->-get17(Landroid/net/ip/IpManager;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unknown CMD_POST_DHCP_ACTION status:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1363
    :pswitch_0
    iget-object v2, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/DhcpResults;

    invoke-static {v2, v1}, Landroid/net/ip/IpManager;->-wrap11(Landroid/net/ip/IpManager;Landroid/net/DhcpResults;)V

    goto/16 :goto_0

    .line 1366
    :pswitch_1
    iget-object v1, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    invoke-static {v1}, Landroid/net/ip/IpManager;->-wrap10(Landroid/net/ip/IpManager;)V

    goto/16 :goto_0

    .line 1375
    :sswitch_d
    iget-object v1, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    invoke-static {v1}, Landroid/net/ip/IpManager;->-get17(Landroid/net/ip/IpManager;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Unexpected CMD_ON_QUIT."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1376
    iget-object v1, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    invoke-static {v1, v3}, Landroid/net/ip/IpManager;->-set2(Landroid/net/ip/IpManager;Landroid/net/dhcp/DhcpClient;)Landroid/net/dhcp/DhcpClient;

    goto/16 :goto_0

    .line 1264
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x7 -> :sswitch_6
        0x8 -> :sswitch_7
        0xa -> :sswitch_8
        0x30003 -> :sswitch_9
        0x30004 -> :sswitch_c
        0x30005 -> :sswitch_d
        0x30007 -> :sswitch_a
        0x30008 -> :sswitch_b
    .end sparse-switch

    .line 1361
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
