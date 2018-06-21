.class final Lcom/android/server/BatteryStatsUtils$1;
.super Landroid/content/BroadcastReceiver;
.source "BatteryStatsUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryStatsUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 26
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 27
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v2, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 28
    invoke-static {}, Lcom/android/server/BatteryStatsUtils;->-get0()Lcom/android/server/BatteryStatsUtils$DataConnectionStatsCallBack;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 29
    invoke-static {}, Lcom/android/server/BatteryStatsUtils;->-get0()Lcom/android/server/BatteryStatsUtils$DataConnectionStatsCallBack;

    move-result-object v2

    invoke-static {}, Lcom/android/server/BatteryStatsUtils;->-get1()I

    move-result v3

    invoke-static {v3}, Lcom/android/server/BatteryStatsUtils;->getSubId(I)I

    move-result v3

    invoke-virtual {v2, v3, v4}, Lcom/android/server/BatteryStatsUtils$DataConnectionStatsCallBack;->onChanged(ILcom/android/internal/telephony/IccCardConstants$State;)V

    .line 25
    :cond_0
    :goto_0
    return-void

    .line 31
    :cond_1
    const-string/jumbo v2, "miui.intent.action.ACTION_DEFAULT_DATA_SLOT_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 32
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v2

    invoke-virtual {v2}, Lmiui/telephony/SubscriptionManager;->getDefaultDataSlotId()I

    move-result v2

    invoke-static {v2}, Lcom/android/server/BatteryStatsUtils;->-set0(I)I

    .line 33
    invoke-static {}, Lcom/android/server/BatteryStatsUtils;->-get0()Lcom/android/server/BatteryStatsUtils$DataConnectionStatsCallBack;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 35
    sget v2, Lmiui/telephony/SubscriptionManager;->INVALID_SUBSCRIPTION_ID:I

    .line 34
    invoke-static {p2, v2}, Lmiui/telephony/SubscriptionManager;->getSubscriptionIdExtra(Landroid/content/Intent;I)I

    move-result v1

    .line 36
    .local v1, "dataSubId":I
    invoke-static {}, Lcom/android/server/BatteryStatsUtils;->-get0()Lcom/android/server/BatteryStatsUtils$DataConnectionStatsCallBack;

    move-result-object v2

    invoke-static {}, Lcom/android/server/BatteryStatsUtils;->-get1()I

    move-result v3

    invoke-static {v3}, Lcom/android/server/BatteryStatsUtils;->-wrap0(I)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/android/server/BatteryStatsUtils$DataConnectionStatsCallBack;->onChanged(ILcom/android/internal/telephony/IccCardConstants$State;)V

    goto :goto_0
.end method
