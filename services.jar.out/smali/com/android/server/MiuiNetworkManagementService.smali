.class public Lcom/android/server/MiuiNetworkManagementService;
.super Ljava/lang/Object;
.source "MiuiNetworkManagementService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/MiuiNetworkManagementService$NetworkEventObserver;
    }
.end annotation


# static fields
.field private static final MIUI_FIREWALL_RESPONSE_CODE:I = 0x2bb

.field private static final TAG:Ljava/lang/String; = "NetworkManagement"

.field private static sInstance:Lcom/android/server/MiuiNetworkManagementService;


# instance fields
.field private final MONITOR_IDLETIMER_LABEL:Ljava/lang/String;

.field private final mConnector:Lcom/android/server/NativeDaemonConnector;

.field private final mContext:Landroid/content/Context;

.field private mObserver:Lcom/android/server/MiuiNetworkManagementService$NetworkEventObserver;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/android/server/NativeDaemonConnector;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "connector"    # Lcom/android/server/NativeDaemonConnector;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/android/server/MiuiNetworkManagementService;->mContext:Landroid/content/Context;

    .line 48
    iput-object p2, p0, Lcom/android/server/MiuiNetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    .line 49
    const-string/jumbo v0, "wifi.interface"

    const-string/jumbo v1, "wlan0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/MiuiNetworkManagementService;->MONITOR_IDLETIMER_LABEL:Ljava/lang/String;

    .line 46
    return-void
.end method

.method static Init(Landroid/content/Context;Lcom/android/server/NativeDaemonConnector;)Lcom/android/server/MiuiNetworkManagementService;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "connector"    # Lcom/android/server/NativeDaemonConnector;

    .prologue
    .line 38
    new-instance v0, Lcom/android/server/MiuiNetworkManagementService;

    invoke-direct {v0, p0, p1}, Lcom/android/server/MiuiNetworkManagementService;-><init>(Landroid/content/Context;Lcom/android/server/NativeDaemonConnector;)V

    sput-object v0, Lcom/android/server/MiuiNetworkManagementService;->sInstance:Lcom/android/server/MiuiNetworkManagementService;

    .line 39
    sget-object v0, Lcom/android/server/MiuiNetworkManagementService;->sInstance:Lcom/android/server/MiuiNetworkManagementService;

    return-object v0
.end method

.method public static getInstance()Lcom/android/server/MiuiNetworkManagementService;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/android/server/MiuiNetworkManagementService;->sInstance:Lcom/android/server/MiuiNetworkManagementService;

    return-object v0
.end method


# virtual methods
.method public enableLimitter(Z)Z
    .locals 8
    .param p1, "enabled"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 64
    iget-object v1, p0, Lcom/android/server/MiuiNetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v3, "NetworkManagement"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :try_start_0
    iget-object v2, p0, Lcom/android/server/MiuiNetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v3, "traffic"

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    const-string/jumbo v1, "limitter"

    const/4 v5, 0x0

    aput-object v1, v4, v5

    if-eqz p1, :cond_0

    const-string/jumbo v1, "enable"

    :goto_0
    const/4 v5, 0x1

    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    .line 71
    return v7

    .line 66
    :cond_0
    const-string/jumbo v1, "disable"
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string/jumbo v1, "NetworkManagement"

    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    return v6
.end method

.method public enableWmmer(Z)Z
    .locals 8
    .param p1, "enabled"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 53
    iget-object v1, p0, Lcom/android/server/MiuiNetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v3, "NetworkManagement"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    :try_start_0
    iget-object v2, p0, Lcom/android/server/MiuiNetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v3, "traffic"

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    const-string/jumbo v1, "wmmer"

    const/4 v5, 0x0

    aput-object v1, v4, v5

    if-eqz p1, :cond_0

    const-string/jumbo v1, "enable"

    :goto_0
    const/4 v5, 0x1

    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    .line 60
    return v7

    .line 55
    :cond_0
    const-string/jumbo v1, "disable"
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string/jumbo v1, "NetworkManagement"

    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    return v6
.end method

.method filterExtendEvent(ILjava/lang/String;[Ljava/lang/String;)Z
    .locals 10
    .param p1, "code"    # I
    .param p2, "raw"    # Ljava/lang/String;
    .param p3, "cooked"    # [Ljava/lang/String;

    .prologue
    .line 135
    sparse-switch p1, :sswitch_data_0

    .line 184
    const/4 v5, 0x0

    return v5

    .line 141
    :sswitch_0
    array-length v5, p3

    const/4 v8, 0x4

    if-lt v5, v8, :cond_0

    const/4 v5, 0x1

    aget-object v5, p3, v5

    const-string/jumbo v8, "IfaceClass"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 145
    iget-object v5, p0, Lcom/android/server/MiuiNetworkManagementService;->MONITOR_IDLETIMER_LABEL:Ljava/lang/String;

    const/4 v8, 0x3

    aget-object v8, p3, v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 146
    const/4 v5, 0x0

    return v5

    .line 142
    :cond_0
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Invalid event from daemon "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 149
    :cond_1
    const-wide/16 v6, 0x0

    .line 150
    .local v6, "timestampNanos":J
    const/4 v4, -0x1

    .line 151
    .local v4, "processUid":I
    array-length v5, p3

    const/4 v8, 0x5

    if-lt v5, v8, :cond_4

    .line 153
    const/4 v5, 0x4

    :try_start_0
    aget-object v5, p3, v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 154
    array-length v5, p3

    const/4 v8, 0x6

    if-ne v5, v8, :cond_2

    .line 155
    const/4 v5, 0x5

    aget-object v5, p3, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 161
    :cond_2
    :goto_0
    const/4 v5, 0x2

    aget-object v5, p3, v5

    const-string/jumbo v8, "active"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 162
    .local v1, "isActive":Z
    iget-object v5, p0, Lcom/android/server/MiuiNetworkManagementService;->mObserver:Lcom/android/server/MiuiNetworkManagementService$NetworkEventObserver;

    if-eqz v5, :cond_3

    .line 163
    iget-object v5, p0, Lcom/android/server/MiuiNetworkManagementService;->mObserver:Lcom/android/server/MiuiNetworkManagementService$NetworkEventObserver;

    invoke-interface {v5, v4, v1, v6, v7}, Lcom/android/server/MiuiNetworkManagementService$NetworkEventObserver;->uidDataActivityChanged(IZJ)V

    .line 165
    :cond_3
    const/4 v5, 0x1

    return v5

    .line 159
    .end local v1    # "isActive":Z
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v6

    goto :goto_0

    .line 171
    .end local v4    # "processUid":I
    .end local v6    # "timestampNanos":J
    :sswitch_1
    array-length v5, p3

    const/4 v8, 0x3

    if-lt v5, v8, :cond_6

    const/4 v5, 0x1

    aget-object v5, p3, v5

    const-string/jumbo v8, "miuiFirewall"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 175
    const/4 v5, 0x2

    aget-object v3, p3, v5

    .line 176
    .local v3, "packageName":Ljava/lang/String;
    if-eqz v3, :cond_5

    .line 177
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v5, "miui.intent.action.FIREWALL"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 178
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v5, "com.miui.securitycenter"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 179
    const-string/jumbo v5, "pkg"

    invoke-virtual {v0, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 180
    iget-object v5, p0, Lcom/android/server/MiuiNetworkManagementService;->mContext:Landroid/content/Context;

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string/jumbo v9, "com.miui.permission.FIREWALL"

    invoke-virtual {v5, v0, v8, v9}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 182
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_5
    const/4 v5, 0x1

    return v5

    .line 172
    .end local v3    # "packageName":Ljava/lang/String;
    :cond_6
    const/4 v5, 0x0

    return v5

    .line 157
    .restart local v4    # "processUid":I
    .restart local v6    # "timestampNanos":J
    :catch_0
    move-exception v2

    .local v2, "ne":Ljava/lang/NumberFormatException;
    goto :goto_0

    .line 135
    :sswitch_data_0
    .sparse-switch
        0x265 -> :sswitch_0
        0x2bb -> :sswitch_1
    .end sparse-switch
.end method

.method public setCurrentNetworkState(I)Z
    .locals 8
    .param p1, "state"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 120
    iget-object v1, p0, Lcom/android/server/MiuiNetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v3, "NetworkManagement"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    :try_start_0
    iget-object v1, p0, Lcom/android/server/MiuiNetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "miuifirewall"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "net_state"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    return v7

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string/jumbo v1, "NetworkManagement"

    const-string/jumbo v2, "setCurrentNetworkState"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 125
    return v6
.end method

.method public setLimit(ZJ)Z
    .locals 8
    .param p1, "enabled"    # Z
    .param p2, "rate"    # J

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 98
    iget-object v1, p0, Lcom/android/server/MiuiNetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v3, "NetworkManagement"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    :try_start_0
    iget-object v2, p0, Lcom/android/server/MiuiNetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v3, "traffic"

    const/4 v1, 0x3

    new-array v4, v1, [Ljava/lang/Object;

    const-string/jumbo v1, "limit"

    const/4 v5, 0x0

    aput-object v1, v4, v5

    if-eqz p1, :cond_0

    const-string/jumbo v1, "en"

    :goto_0
    const/4 v5, 0x1

    aput-object v1, v4, v5

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x2

    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    .line 105
    return v7

    .line 100
    :cond_0
    const-string/jumbo v1, "dis"
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string/jumbo v1, "NetworkManagement"

    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    return v6
.end method

.method public setMiuiFirewallRule(Ljava/lang/String;II)Z
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "rule"    # I
    .param p3, "type"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 109
    iget-object v1, p0, Lcom/android/server/MiuiNetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v3, "NetworkManagement"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    :try_start_0
    iget-object v1, p0, Lcom/android/server/MiuiNetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "miuifirewall"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "set_pkg_rule"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v3, v5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x3

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    return v7

    .line 112
    :catch_0
    move-exception v0

    .line 113
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string/jumbo v1, "NetworkManagement"

    const-string/jumbo v2, "setMiuiFirewallRule"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 114
    return v6
.end method

.method public setNetworkEventObserver(Lcom/android/server/MiuiNetworkManagementService$NetworkEventObserver;)V
    .locals 0
    .param p1, "observer"    # Lcom/android/server/MiuiNetworkManagementService$NetworkEventObserver;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/android/server/MiuiNetworkManagementService;->mObserver:Lcom/android/server/MiuiNetworkManagementService$NetworkEventObserver;

    .line 130
    return-void
.end method

.method public updateWmm(II)Z
    .locals 8
    .param p1, "uid"    # I
    .param p2, "wmm"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 76
    iget-object v1, p0, Lcom/android/server/MiuiNetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v3, "NetworkManagement"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    :try_start_0
    iget-object v1, p0, Lcom/android/server/MiuiNetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "traffic"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "updatewmm"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    return v7

    .line 79
    :catch_0
    move-exception v0

    .line 80
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string/jumbo v1, "NetworkManagement"

    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    return v6
.end method

.method public whiteListUid(IZ)Z
    .locals 8
    .param p1, "uid"    # I
    .param p2, "add"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 87
    iget-object v1, p0, Lcom/android/server/MiuiNetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v3, "NetworkManagement"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    :try_start_0
    iget-object v2, p0, Lcom/android/server/MiuiNetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v3, "traffic"

    const/4 v1, 0x3

    new-array v4, v1, [Ljava/lang/Object;

    const-string/jumbo v1, "whitelist"

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x1

    aput-object v1, v4, v5

    if-eqz p2, :cond_0

    const-string/jumbo v1, "add"

    :goto_0
    const/4 v5, 0x2

    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    .line 94
    return v7

    .line 89
    :cond_0
    const-string/jumbo v1, "rmv"
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string/jumbo v1, "NetworkManagement"

    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    return v6
.end method
