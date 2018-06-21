.class public Lcom/android/internal/telephony/vsim/CountryMonitor;
.super Ljava/lang/Object;
.source "CountryMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/vsim/CountryMonitor$Holder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CountryMonitor"


# instance fields
.field private mIsChinaDevice:Z

.field private mIsChinaUser:Z

.field private mIsInit:Z

.field private mLastMcc:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/vsim/CountryMonitor;->mLastMcc:Ljava/lang/String;

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/vsim/CountryMonitor;->mIsInit:Z

    .line 16
    return-void
.end method

.method private checkMccChanged(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mcc"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/vsim/CountryMonitor;->mLastMcc:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    :cond_0
    return-void

    .line 74
    :cond_1
    const-string/jumbo v0, "460"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 75
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/vsim/CountryMonitor;->setChinaFlag(Landroid/content/Context;)V

    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/vsim/CountryMonitor;->mIsChinaUser:Z

    .line 82
    :cond_2
    :goto_0
    iput-object p2, p0, Lcom/android/internal/telephony/vsim/CountryMonitor;->mLastMcc:Ljava/lang/String;

    .line 70
    return-void

    .line 78
    :cond_3
    iget-boolean v0, p0, Lcom/android/internal/telephony/vsim/CountryMonitor;->mIsChinaUser:Z

    if-eqz v0, :cond_2

    .line 79
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/vsim/CountryMonitor;->notifyVirtualSim(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private getChinaFlag(Landroid/content/Context;)I
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 121
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "user_china_flag"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getInstance()Lcom/android/internal/telephony/vsim/CountryMonitor;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/android/internal/telephony/vsim/CountryMonitor$Holder;->INSTANCE:Lcom/android/internal/telephony/vsim/CountryMonitor;

    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 33
    const-string/jumbo v3, "ro.miui.region"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 34
    .local v0, "deviceRegion":Ljava/lang/String;
    const-string/jumbo v3, "CN"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/internal/telephony/vsim/CountryMonitor;->mIsChinaDevice:Z

    .line 35
    iget-boolean v3, p0, Lcom/android/internal/telephony/vsim/CountryMonitor;->mIsChinaDevice:Z

    if-eqz v3, :cond_0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/vsim/CountryMonitor;->getChinaFlag(Landroid/content/Context;)I

    move-result v3

    if-lez v3, :cond_0

    move v1, v2

    :cond_0
    iput-boolean v1, p0, Lcom/android/internal/telephony/vsim/CountryMonitor;->mIsChinaUser:Z

    .line 36
    iput-boolean v2, p0, Lcom/android/internal/telephony/vsim/CountryMonitor;->mIsInit:Z

    .line 32
    return-void
.end method

.method private notifyVirtualSim(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 86
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.miui.virtualsim.action.LAUNCH_RECEIVER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 87
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.miui.virtualsim"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    const-string/jumbo v1, "extra_launch_type"

    const-string/jumbo v2, "type_country_change"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    const-string/jumbo v1, "extra_launch_channel"

    const-string/jumbo v2, "virtualsim_channel_phone"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 91
    const-string/jumbo v1, "CountryMonitor"

    const-string/jumbo v2, "send mcc change broadcast"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    return-void
.end method

.method private setChinaFlag(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 117
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "user_china_flag"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 116
    return-void
.end method


# virtual methods
.method public getMccInLimitService()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x3

    .line 95
    const-string/jumbo v4, "ril.limit_service_mnc"

    const-string/jumbo v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 96
    .local v3, "network_mcc":Ljava/lang/String;
    const-string/jumbo v4, "ril.limit_service_mcc"

    const-string/jumbo v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 97
    .local v2, "mcc_mtk":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v4, v6, :cond_1

    .line 98
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 101
    .local v1, "mcc":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    return-object v1

    .line 103
    :catch_0
    move-exception v0

    .line 113
    .end local v1    # "mcc":Ljava/lang/String;
    :cond_0
    :goto_0
    const/4 v4, 0x0

    return-object v4

    .line 105
    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v6, :cond_0

    .line 108
    :try_start_1
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 109
    return-object v2

    .line 110
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public handleMccMncChange(Landroid/content/Context;Landroid/telephony/ServiceState;Landroid/telephony/ServiceState;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "newSS"    # Landroid/telephony/ServiceState;
    .param p3, "ss"    # Landroid/telephony/ServiceState;

    .prologue
    const/4 v8, 0x3

    .line 44
    invoke-virtual {p2}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    .line 45
    .local v1, "newOperatorNumeric":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    .line 46
    .local v2, "operatorNumeric":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/telephony/vsim/CountryMonitor;->mLastMcc:Ljava/lang/String;

    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 47
    return-void

    .line 50
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/32 v6, 0x2bf20

    cmp-long v3, v4, v6

    if-gez v3, :cond_1

    .line 51
    return-void

    .line 53
    :cond_1
    iget-boolean v3, p0, Lcom/android/internal/telephony/vsim/CountryMonitor;->mIsInit:Z

    if-nez v3, :cond_2

    .line 54
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/vsim/CountryMonitor;->init(Landroid/content/Context;)V

    .line 56
    :cond_2
    iget-boolean v3, p0, Lcom/android/internal/telephony/vsim/CountryMonitor;->mIsChinaDevice:Z

    if-nez v3, :cond_3

    .line 57
    return-void

    .line 60
    :cond_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v8, :cond_4

    .line 61
    const-string/jumbo v3, "000"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 64
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/telephony/vsim/CountryMonitor;->getMccInLimitService()Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, "curMcc":Ljava/lang/String;
    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/vsim/CountryMonitor;->checkMccChanged(Landroid/content/Context;Ljava/lang/String;)V

    .line 43
    return-void

    .line 62
    .end local v0    # "curMcc":Ljava/lang/String;
    :cond_5
    const/4 v3, 0x0

    invoke-virtual {v1, v3, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "curMcc":Ljava/lang/String;
    goto :goto_0
.end method
