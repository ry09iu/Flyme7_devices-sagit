.class public final Lcom/android/server/BatteryStatsUtils;
.super Ljava/lang/Object;
.source "BatteryStatsUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/BatteryStatsUtils$1;,
        Lcom/android/server/BatteryStatsUtils$DataConnectionStatsCallBack;
    }
.end annotation


# static fields
.field public static final PHONE_COUNT:I

.field private static sCallBack:Lcom/android/server/BatteryStatsUtils$DataConnectionStatsCallBack;

.field private static sDataSlot:I

.field private static sReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static synthetic -get0()Lcom/android/server/BatteryStatsUtils$DataConnectionStatsCallBack;
    .locals 1

    sget-object v0, Lcom/android/server/BatteryStatsUtils;->sCallBack:Lcom/android/server/BatteryStatsUtils$DataConnectionStatsCallBack;

    return-object v0
.end method

.method static synthetic -get1()I
    .locals 1

    sget v0, Lcom/android/server/BatteryStatsUtils;->sDataSlot:I

    return v0
.end method

.method static synthetic -set0(I)I
    .locals 0

    sput p0, Lcom/android/server/BatteryStatsUtils;->sDataSlot:I

    return p0
.end method

.method static synthetic -wrap0(I)Lcom/android/internal/telephony/IccCardConstants$State;
    .locals 1
    .param p0, "slotId"    # I

    .prologue
    invoke-static {p0}, Lcom/android/server/BatteryStatsUtils;->getSimState(I)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 16
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Lmiui/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    sput v2, Lcom/android/server/BatteryStatsUtils;->PHONE_COUNT:I

    .line 17
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v2

    invoke-virtual {v2}, Lmiui/telephony/SubscriptionManager;->getDefaultDataSlotId()I

    move-result v2

    sput v2, Lcom/android/server/BatteryStatsUtils;->sDataSlot:I

    .line 22
    sget v2, Lcom/android/server/BatteryStatsUtils;->PHONE_COUNT:I

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    .line 23
    new-instance v2, Lcom/android/server/BatteryStatsUtils$1;

    invoke-direct {v2}, Lcom/android/server/BatteryStatsUtils$1;-><init>()V

    sput-object v2, Lcom/android/server/BatteryStatsUtils;->sReceiver:Landroid/content/BroadcastReceiver;

    .line 41
    invoke-static {}, Lmiui/util/AppConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v0

    .line 42
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "miui.intent.action.ACTION_DEFAULT_DATA_SLOT_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 43
    .local v1, "filter":Landroid/content/IntentFilter;
    sget-object v2, Lcom/android/server/BatteryStatsUtils;->sReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2, v1}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 15
    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDataSlot()I
    .locals 1

    .prologue
    .line 69
    sget v0, Lcom/android/server/BatteryStatsUtils;->sDataSlot:I

    return v0
.end method

.method private static getSimState(I)Lcom/android/internal/telephony/IccCardConstants$State;
    .locals 3
    .param p0, "slotId"    # I

    .prologue
    .line 82
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Lmiui/telephony/TelephonyManager;->getSimStateForSlot(I)I

    move-result v1

    .line 84
    .local v1, "simState":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 85
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 98
    .local v0, "dataSlotSimState":Lcom/android/internal/telephony/IccCardConstants$State;
    :goto_0
    return-object v0

    .line 86
    .end local v0    # "dataSlotSimState":Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_0
    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 87
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v0    # "dataSlotSimState":Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_0

    .line 88
    .end local v0    # "dataSlotSimState":Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_1
    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 89
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v0    # "dataSlotSimState":Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_0

    .line 90
    .end local v0    # "dataSlotSimState":Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_2
    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 91
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v0    # "dataSlotSimState":Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_0

    .line 92
    .end local v0    # "dataSlotSimState":Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_3
    const/4 v2, 0x4

    if-eq v1, v2, :cond_4

    .line 93
    const/4 v2, 0x7

    if-ne v1, v2, :cond_5

    .line 94
    :cond_4
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v0    # "dataSlotSimState":Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_0

    .line 96
    .end local v0    # "dataSlotSimState":Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_5
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v0    # "dataSlotSimState":Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_0
.end method

.method public static getSubId(I)I
    .locals 3
    .param p0, "slotId"    # I

    .prologue
    const/4 v2, 0x0

    .line 73
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 74
    .local v0, "dataSub":[I
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 75
    aget v1, v0, v2

    return v1

    .line 77
    :cond_0
    const/4 v1, -0x1

    return v1
.end method

.method public static isDataSlot(I)Z
    .locals 3
    .param p0, "dataSlot"    # I

    .prologue
    const/4 v0, 0x1

    .line 61
    sget v1, Lcom/android/server/BatteryStatsUtils;->PHONE_COUNT:I

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    sget v1, Lcom/android/server/BatteryStatsUtils;->sDataSlot:I

    if-ne v1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDataSlotIntent(Landroid/content/Intent;)Z
    .locals 4
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 56
    sget v2, Lcom/android/server/BatteryStatsUtils;->PHONE_COUNT:I

    const/4 v3, 0x2

    if-lt v2, v3, :cond_0

    if-eqz p0, :cond_2

    .line 57
    sget v2, Lcom/android/server/BatteryStatsUtils;->sDataSlot:I

    sget v3, Lmiui/telephony/SubscriptionManagerEx;->INVALID_SLOT_ID:I

    invoke-static {p0, v3}, Lmiui/telephony/SubscriptionManagerEx;->getSlotIdExtra(Landroid/content/Intent;I)I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 56
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 57
    goto :goto_0

    :cond_2
    move v0, v1

    .line 56
    goto :goto_0
.end method

.method public static isDataSlotSub(I)Z
    .locals 3
    .param p0, "subId"    # I

    .prologue
    const/4 v0, 0x1

    .line 65
    sget v1, Lcom/android/server/BatteryStatsUtils;->PHONE_COUNT:I

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    sget v1, Lcom/android/server/BatteryStatsUtils;->sDataSlot:I

    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v2

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setCallBack(Lcom/android/server/BatteryStatsUtils$DataConnectionStatsCallBack;)V
    .locals 0
    .param p0, "callBack"    # Lcom/android/server/BatteryStatsUtils$DataConnectionStatsCallBack;

    .prologue
    .line 52
    sput-object p0, Lcom/android/server/BatteryStatsUtils;->sCallBack:Lcom/android/server/BatteryStatsUtils$DataConnectionStatsCallBack;

    .line 51
    return-void
.end method
