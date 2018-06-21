.class public Lmiui/telephony/TelephonyStatAdapter;
.super Ljava/lang/Object;
.source "TelephonyStatAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/telephony/TelephonyStatAdapter$CallBack;,
        Lmiui/telephony/TelephonyStatAdapter$DataStatType;
    }
.end annotation


# static fields
.field public static final APN_NAME_KEY:Ljava/lang/String; = "apnName"

.field public static final APN_TYPE_KEY:Ljava/lang/String; = "apnType"

.field public static final ERROR_CODE_KEY:Ljava/lang/String; = "errorCode"

.field public static final REASON_CODE_KEY:Ljava/lang/String; = "reasonCode"

.field private static final TAG:Ljava/lang/String; = "TelephonyStatAdapter"

.field private static volatile instance:Lmiui/telephony/TelephonyStatAdapter;

.field static sCallBack:Lmiui/telephony/TelephonyStatAdapter$CallBack;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIstance()Lmiui/telephony/TelephonyStatAdapter;
    .locals 2

    .prologue
    .line 47
    sget-object v0, Lmiui/telephony/TelephonyStatAdapter;->instance:Lmiui/telephony/TelephonyStatAdapter;

    if-nez v0, :cond_1

    .line 48
    const-class v1, Lmiui/telephony/TelephonyStatAdapter;

    monitor-enter v1

    .line 49
    :try_start_0
    sget-object v0, Lmiui/telephony/TelephonyStatAdapter;->instance:Lmiui/telephony/TelephonyStatAdapter;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lmiui/telephony/TelephonyStatAdapter;

    invoke-direct {v0}, Lmiui/telephony/TelephonyStatAdapter;-><init>()V

    sput-object v0, Lmiui/telephony/TelephonyStatAdapter;->instance:Lmiui/telephony/TelephonyStatAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 54
    :cond_1
    sget-object v0, Lmiui/telephony/TelephonyStatAdapter;->instance:Lmiui/telephony/TelephonyStatAdapter;

    return-object v0

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static notifyDataConnection(II)V
    .locals 2
    .param p0, "phoneId"    # I
    .param p1, "dataState"    # I

    .prologue
    .line 93
    const-class v1, Lmiui/telephony/TelephonyStatAdapter;

    monitor-enter v1

    .line 94
    :try_start_0
    sget-object v0, Lmiui/telephony/TelephonyStatAdapter;->sCallBack:Lmiui/telephony/TelephonyStatAdapter$CallBack;

    if-eqz v0, :cond_0

    .line 95
    sget-object v0, Lmiui/telephony/TelephonyStatAdapter;->sCallBack:Lmiui/telephony/TelephonyStatAdapter$CallBack;

    invoke-interface {v0, p0, p1}, Lmiui/telephony/TelephonyStatAdapter$CallBack;->onDataConnectionChanged(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 92
    return-void

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static notifyDataSetupAction(Lcom/android/internal/telephony/dataconnection/ApnContext;ZLjava/lang/String;I)V
    .locals 4
    .param p0, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;
    .param p1, "errorStatus"    # Z
    .param p2, "cause"    # Ljava/lang/String;
    .param p3, "phoneId"    # I

    .prologue
    .line 122
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 123
    .local v1, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnSetting()Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-result-object v0

    .line 124
    .local v0, "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    const-string/jumbo v3, "apnName"

    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    const-string/jumbo v2, "apnType"

    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    const-string/jumbo v2, "reasonCode"

    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    const-string/jumbo v2, "errorCode"

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    if-eqz p1, :cond_1

    .line 129
    sget-object v2, Lmiui/telephony/TelephonyStatAdapter$DataStatType;->DATA_SETUP_FAIL_CN:Lmiui/telephony/TelephonyStatAdapter$DataStatType;

    invoke-static {v2, p3, v1}, Lmiui/telephony/TelephonyStatAdapter;->notifyDataStatistic(Lmiui/telephony/TelephonyStatAdapter$DataStatType;ILjava/util/Map;)V

    .line 121
    :goto_1
    return-void

    .line 124
    :cond_0
    const-string/jumbo v2, "unknown"

    goto :goto_0

    .line 131
    :cond_1
    sget-object v2, Lmiui/telephony/TelephonyStatAdapter$DataStatType;->DATA_SETUP_OK_CN:Lmiui/telephony/TelephonyStatAdapter$DataStatType;

    invoke-static {v2, p3, v1}, Lmiui/telephony/TelephonyStatAdapter;->notifyDataStatistic(Lmiui/telephony/TelephonyStatAdapter$DataStatType;ILjava/util/Map;)V

    goto :goto_1
.end method

.method public static notifyDataStatistic(Lmiui/telephony/TelephonyStatAdapter$DataStatType;ILjava/util/Map;)V
    .locals 2
    .param p0, "dataStatType"    # Lmiui/telephony/TelephonyStatAdapter$DataStatType;
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/telephony/TelephonyStatAdapter$DataStatType;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 82
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-class v1, Lmiui/telephony/TelephonyStatAdapter;

    monitor-enter v1

    .line 83
    :try_start_0
    sget-object v0, Lmiui/telephony/TelephonyStatAdapter;->sCallBack:Lmiui/telephony/TelephonyStatAdapter$CallBack;

    if-eqz v0, :cond_0

    .line 84
    sget-object v0, Lmiui/telephony/TelephonyStatAdapter;->sCallBack:Lmiui/telephony/TelephonyStatAdapter$CallBack;

    invoke-interface {v0, p0, p1, p2}, Lmiui/telephony/TelephonyStatAdapter$CallBack;->onDataStatisticChanged(Lmiui/telephony/TelephonyStatAdapter$DataStatType;ILjava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 81
    return-void

    .line 82
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static notifyServiceState(ILandroid/telephony/ServiceState;)V
    .locals 2
    .param p0, "phoneId"    # I
    .param p1, "ss"    # Landroid/telephony/ServiceState;

    .prologue
    .line 109
    const-class v1, Lmiui/telephony/TelephonyStatAdapter;

    monitor-enter v1

    .line 110
    :try_start_0
    sget-object v0, Lmiui/telephony/TelephonyStatAdapter;->sCallBack:Lmiui/telephony/TelephonyStatAdapter$CallBack;

    if-eqz v0, :cond_0

    .line 111
    sget-object v0, Lmiui/telephony/TelephonyStatAdapter;->sCallBack:Lmiui/telephony/TelephonyStatAdapter$CallBack;

    invoke-interface {v0, p0, p1}, Lmiui/telephony/TelephonyStatAdapter$CallBack;->onServiceStateChanged(ILandroid/telephony/ServiceState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 108
    return-void

    .line 109
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static notifySignalStrength(ILandroid/telephony/SignalStrength;)V
    .locals 2
    .param p0, "phoneId"    # I
    .param p1, "signal"    # Landroid/telephony/SignalStrength;

    .prologue
    .line 101
    const-class v1, Lmiui/telephony/TelephonyStatAdapter;

    monitor-enter v1

    .line 102
    :try_start_0
    sget-object v0, Lmiui/telephony/TelephonyStatAdapter;->sCallBack:Lmiui/telephony/TelephonyStatAdapter$CallBack;

    if-eqz v0, :cond_0

    .line 103
    sget-object v0, Lmiui/telephony/TelephonyStatAdapter;->sCallBack:Lmiui/telephony/TelephonyStatAdapter$CallBack;

    invoke-interface {v0, p0, p1}, Lmiui/telephony/TelephonyStatAdapter$CallBack;->onSignalStrengthChanged(ILandroid/telephony/SignalStrength;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 100
    return-void

    .line 101
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static registerCallBack(Lmiui/telephony/TelephonyStatAdapter$CallBack;)V
    .locals 2
    .param p0, "callback"    # Lmiui/telephony/TelephonyStatAdapter$CallBack;

    .prologue
    .line 66
    const-class v0, Lmiui/telephony/TelephonyStatAdapter;

    monitor-enter v0

    .line 67
    :try_start_0
    sput-object p0, Lmiui/telephony/TelephonyStatAdapter;->sCallBack:Lmiui/telephony/TelephonyStatAdapter$CallBack;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 65
    return-void

    .line 66
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static unregisterCallBack()V
    .locals 2

    .prologue
    .line 72
    const-class v0, Lmiui/telephony/TelephonyStatAdapter;

    monitor-enter v0

    .line 73
    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lmiui/telephony/TelephonyStatAdapter;->sCallBack:Lmiui/telephony/TelephonyStatAdapter$CallBack;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 71
    return-void

    .line 72
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
