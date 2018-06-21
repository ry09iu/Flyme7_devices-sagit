.class public Lcom/android/server/wifi/MiuiWifiLogger;
.super Ljava/lang/Object;
.source "MiuiWifiLogger.java"


# static fields
.field private static CONNECT_FAILURE_EVENT:I

.field private static DISCONNECT_EVENT:I

.field private static REPORT_REASON_UNEXPECTED_DISCONNECT:I

.field private static REPORT_REASON_USER_ACTION:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const/4 v0, 0x0

    sput v0, Lcom/android/server/wifi/MiuiWifiLogger;->DISCONNECT_EVENT:I

    .line 9
    const/4 v0, 0x1

    sput v0, Lcom/android/server/wifi/MiuiWifiLogger;->CONNECT_FAILURE_EVENT:I

    .line 10
    const/4 v0, 0x5

    sput v0, Lcom/android/server/wifi/MiuiWifiLogger;->REPORT_REASON_UNEXPECTED_DISCONNECT:I

    .line 11
    const/4 v0, 0x7

    sput v0, Lcom/android/server/wifi/MiuiWifiLogger;->REPORT_REASON_USER_ACTION:I

    .line 6
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static reportConnectFailureEvent(I)V
    .locals 2
    .param p0, "reason"    # I

    .prologue
    .line 18
    sget v0, Lcom/android/server/wifi/MiuiWifiLogger;->REPORT_REASON_UNEXPECTED_DISCONNECT:I

    if-eq p0, v0, :cond_0

    .line 19
    sget v0, Lcom/android/server/wifi/MiuiWifiLogger;->REPORT_REASON_USER_ACTION:I

    if-eq p0, v0, :cond_0

    .line 20
    invoke-static {}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getInstance()Lmiui/mqsas/sdk/MQSEventManagerDelegate;

    move-result-object v0

    sget v1, Lcom/android/server/wifi/MiuiWifiLogger;->CONNECT_FAILURE_EVENT:I

    invoke-virtual {v0, v1, p0}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->reportConnectExceptionEvent(II)V

    .line 17
    :cond_0
    return-void
.end method

.method public static reportDisconnectEvent(I)V
    .locals 2
    .param p0, "reason"    # I

    .prologue
    .line 14
    invoke-static {}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getInstance()Lmiui/mqsas/sdk/MQSEventManagerDelegate;

    move-result-object v0

    sget v1, Lcom/android/server/wifi/MiuiWifiLogger;->DISCONNECT_EVENT:I

    invoke-virtual {v0, v1, p0}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->reportConnectExceptionEvent(II)V

    .line 13
    return-void
.end method
