.class public Lcom/android/internal/telephony/dataconnection/DcTrackerInjector;
.super Ljava/lang/Object;
.source "DcTrackerInjector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/dataconnection/DcTrackerInjector$DataDomesticRoamingSettingObserver;
    }
.end annotation


# static fields
.field private static final CHINA_TELECOM_OPERATOR_NUMERIC:Ljava/lang/String; = "46003"

.field static final LOG_TAG:Ljava/lang/String; = "DCT"

.field private static final VODAFONE_OPERATOR_NUMERIC:Ljava/lang/String; = "20404"

.field private static sDomesticRoamingSettingObserver:Lcom/android/internal/telephony/dataconnection/DcTrackerInjector$DataDomesticRoamingSettingObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/dataconnection/DcTrackerInjector;->sDomesticRoamingSettingObserver:Lcom/android/internal/telephony/dataconnection/DcTrackerInjector$DataDomesticRoamingSettingObserver;

    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adjustDataState(Lcom/android/internal/telephony/PhoneConstants$DataState;I)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 6
    .param p0, "dataState"    # Lcom/android/internal/telephony/PhoneConstants$DataState;
    .param p1, "phoneId"    # I

    .prologue
    .line 41
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    if-eq p0, v1, :cond_0

    .line 42
    return-object p0

    .line 46
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v2

    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 47
    .local v0, "phoneProxy":Lcom/android/internal/telephony/Phone;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v4

    if-eq v4, p1, :cond_2

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v4, v5, :cond_2

    .line 48
    sget-object p0, Lcom/android/internal/telephony/PhoneConstants$DataState;->SUSPENDED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 52
    .end local v0    # "phoneProxy":Lcom/android/internal/telephony/Phone;
    :cond_1
    return-object p0

    .line 46
    .restart local v0    # "phoneProxy":Lcom/android/internal/telephony/Phone;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method static getIccRecords(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/uicc/IccRecords;
    .locals 2
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 129
    const/4 v1, 0x2

    invoke-static {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerInjector;->getUiccRecords(Lcom/android/internal/telephony/Phone;I)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v0

    .line 131
    .local v0, "newIccRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerInjector;->isChinaTelecomNumeric(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 134
    :cond_0
    :goto_0
    return-object v0

    .line 132
    :cond_1
    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerInjector;->getUiccRecords(Lcom/android/internal/telephony/Phone;I)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v0

    goto :goto_0
.end method

.method static getOperatorNumeric(Lcom/android/internal/telephony/uicc/IccRecords;Z)Ljava/lang/String;
    .locals 2
    .param p0, "records"    # Lcom/android/internal/telephony/uicc/IccRecords;
    .param p1, "isNvSubscription"    # Z

    .prologue
    .line 150
    if-eqz p1, :cond_0

    .line 151
    const-string/jumbo v1, "ro.cdma.home.operator.numeric"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, "result":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 153
    .end local v0    # "result":Ljava/lang/String;
    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "result":Ljava/lang/String;
    goto :goto_0

    .end local v0    # "result":Ljava/lang/String;
    :cond_1
    const-string/jumbo v0, ""

    .restart local v0    # "result":Ljava/lang/String;
    goto :goto_0
.end method

.method private static getUiccRecords(Lcom/android/internal/telephony/Phone;I)Lcom/android/internal/telephony/uicc/IccRecords;
    .locals 2
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p1, "appFamily"    # I

    .prologue
    const/4 v1, 0x0

    .line 142
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v0

    .line 143
    .local v0, "controller":Lcom/android/internal/telephony/uicc/UiccController;
    if-nez v0, :cond_0

    return-object v1

    .line 145
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getIccRecords(II)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v1

    return-object v1
.end method

.method private static isChinaTelecomNumeric(Ljava/lang/String;)Z
    .locals 1
    .param p0, "numeric"    # Ljava/lang/String;

    .prologue
    .line 138
    const-string/jumbo v0, "46003"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "45502"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static isDomesticRoamingDisable(Lcom/android/internal/telephony/Phone;)Z
    .locals 2
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    const/4 v0, 0x0

    .line 178
    invoke-static {}, Lmiui/telephony/TelephonyManager;->isSupportDomesticRoaming()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lmiui/telephony/TelephonyManager;->isDomesticRoamingEnable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static isDomesticRoamingEnable(Lcom/android/internal/telephony/Phone;)Z
    .locals 2
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 182
    invoke-static {}, Lmiui/telephony/TelephonyManager;->isSupportDomesticRoaming()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRoamingType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 183
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lmiui/telephony/TelephonyManager;->isDomesticRoamingEnable(Landroid/content/Context;)Z

    move-result v0

    .line 182
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isNeedRestartDataConnection(Lcom/android/internal/telephony/dataconnection/DcTracker;)Z
    .locals 2
    .param p0, "dct"    # Lcom/android/internal/telephony/dataconnection/DcTracker;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerInjector;->isNeedSwitchOperatorNumericToCT(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getDefaultDataSlotId()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 120
    const/4 v0, 0x1

    return v0

    .line 122
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static isNeedSwitchOperatorNumericToCT(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)Z
    .locals 6
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p1, "numeric"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 102
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 103
    invoke-static {p1}, Lmiui/telephony/ServiceProviderUtils;->isChinaTelecom(Ljava/lang/String;)Z

    move-result v3

    .line 102
    if-eqz v3, :cond_1

    .line 104
    :cond_0
    return v2

    .line 109
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v0

    .line 110
    .local v0, "dataRoaming":Z
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v4

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v3

    if-eqz v3, :cond_2

    const/4 v1, 0x1

    .line 111
    .local v1, "hasCdmaApp":Z
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isNeedSwitchOperatorNumericToCT numeric: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 112
    const-string/jumbo v4, ", dataRoaming: "

    .line 111
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 113
    const-string/jumbo v4, ", hasCdmaApp: "

    .line 111
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTrackerInjector;->log(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)V

    .line 114
    const-string/jumbo v3, "20404"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz v0, :cond_3

    .end local v1    # "hasCdmaApp":Z
    :goto_1
    return v1

    .line 110
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "hasCdmaApp":Z
    goto :goto_0

    :cond_3
    move v1, v2

    .line 114
    goto :goto_1
.end method

.method static isOverallExcludingImsStateConnected(Ljava/util/concurrent/ConcurrentHashMap;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/telephony/dataconnection/ApnContext;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 159
    .local p0, "apnContexts":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/ApnContext;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "apnContext$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 160
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "ims"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 161
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isEnabled()Z

    move-result v2

    .line 160
    if-eqz v2, :cond_0

    .line 162
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    if-eq v2, v3, :cond_1

    .line 163
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/DctConstants$State;->DISCONNECTING:Lcom/android/internal/telephony/DctConstants$State;

    if-ne v2, v3, :cond_0

    .line 164
    :cond_1
    const/4 v2, 0x1

    return v2

    .line 167
    .end local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :cond_2
    const/4 v2, 0x0

    return v2
.end method

.method static log(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)V
    .locals 3
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 235
    const-string/jumbo v0, "DCT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    return-void
.end method

.method static onRoamingOnIfDomestic(Lcom/android/internal/telephony/dataconnection/DcTracker;)Z
    .locals 2
    .param p0, "dct"    # Lcom/android/internal/telephony/dataconnection/DcTracker;

    .prologue
    .line 171
    invoke-static {}, Lmiui/telephony/TelephonyManager;->isSupportDomesticRoaming()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRoamingType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 172
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lmiui/telephony/TelephonyManager;->isDomesticRoamingEnable(Landroid/content/Context;)Z

    move-result v0

    return v0

    .line 174
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getDataOnRoamingEnabled()Z

    move-result v0

    return v0
.end method

.method static onVoiceCallChangeForOtherDcTracker(Lcom/android/internal/telephony/dataconnection/DcTracker;Z)V
    .locals 7
    .param p0, "dct"    # Lcom/android/internal/telephony/dataconnection/DcTracker;
    .param p1, "isVoiceCallStarted"    # Z

    .prologue
    .line 56
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v4

    const/4 v2, 0x0

    array-length v5, v4

    move v3, v2

    :goto_0
    if-ge v3, v5, :cond_3

    aget-object v1, v4, v3

    .line 57
    .local v1, "phone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v6

    if-ne v2, v6, :cond_1

    .line 56
    :cond_0
    :goto_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    .line 60
    :cond_1
    iget-object v0, v1, Lcom/android/internal/telephony/Phone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    .line 61
    .local v0, "otherDcTracker":Lcom/android/internal/telephony/dataconnection/DcTracker;
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 64
    if-eqz p1, :cond_2

    const-string/jumbo v2, "2GVoiceCallStarted"

    :goto_2
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyDataConnection(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string/jumbo v2, "2GVoiceCallEnded"

    goto :goto_2

    .line 55
    .end local v0    # "otherDcTracker":Lcom/android/internal/telephony/dataconnection/DcTracker;
    .end local v1    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_3
    return-void
.end method

.method static registerDomesticRoamingSettingObserver(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 193
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcTrackerInjector;->sDomesticRoamingSettingObserver:Lcom/android/internal/telephony/dataconnection/DcTrackerInjector$DataDomesticRoamingSettingObserver;

    if-nez v0, :cond_0

    .line 194
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DcTrackerInjector$DataDomesticRoamingSettingObserver;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerInjector$DataDomesticRoamingSettingObserver;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/internal/telephony/dataconnection/DcTrackerInjector;->sDomesticRoamingSettingObserver:Lcom/android/internal/telephony/dataconnection/DcTrackerInjector$DataDomesticRoamingSettingObserver;

    .line 195
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcTrackerInjector;->sDomesticRoamingSettingObserver:Lcom/android/internal/telephony/dataconnection/DcTrackerInjector$DataDomesticRoamingSettingObserver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerInjector$DataDomesticRoamingSettingObserver;->register()V

    .line 192
    :cond_0
    return-void
.end method

.method static resetApnSimOperatoryNumeric(Lcom/android/internal/telephony/Phone;)V
    .locals 4
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 76
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v1

    .line 77
    .local v1, "controller":Lcom/android/internal/telephony/uicc/UiccController;
    if-nez v1, :cond_0

    return-void

    .line 79
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v0

    .line 80
    .local v0, "card":Lcom/android/internal/telephony/uicc/UiccCard;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne v2, v3, :cond_2

    .line 81
    :cond_1
    const-string/jumbo v2, ""

    invoke-static {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerInjector;->updateAPNSimOperatorNumeric(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)V

    .line 75
    :cond_2
    return-void
.end method

.method static shouldNotifyOffApnOfDomesticAvailability(Lcom/android/internal/telephony/Phone;)Z
    .locals 3
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    const/4 v0, 0x0

    .line 187
    invoke-static {}, Lmiui/telephony/TelephonyManager;->isSupportDomesticRoaming()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 188
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lmiui/telephony/TelephonyManager;->isDomesticRoamingEnable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 187
    :cond_0
    :goto_0
    return v0

    .line 189
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getDataRoamingType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method static switchOperatorNumericForCT(Lcom/android/internal/telephony/dataconnection/DcTracker;Ljava/lang/String;Lcom/android/internal/telephony/uicc/IccRecords;)Ljava/lang/String;
    .locals 4
    .param p0, "dct"    # Lcom/android/internal/telephony/dataconnection/DcTracker;
    .param p1, "numeric"    # Ljava/lang/String;
    .param p2, "iccRecords"    # Lcom/android/internal/telephony/uicc/IccRecords;

    .prologue
    .line 86
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v1, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerInjector;->isNeedSwitchOperatorNumericToCT(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 87
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    .line 88
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "switchOperatorNumericForCT  ctNumeric\uff1a "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 89
    const-string/jumbo v3, ", iccRecords: "

    .line 88
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerInjector;->log(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)V

    .line 90
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 91
    const-string/jumbo v0, "46003"

    .line 93
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v1, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerInjector;->updateAPNSimOperatorNumeric(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)V

    .line 94
    return-object v0

    .line 87
    :cond_1
    const/4 v0, 0x0

    .local v0, "ctNumeric":Ljava/lang/String;
    goto :goto_0

    .line 97
    .end local v0    # "ctNumeric":Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "switchOperatorNumericForCT numeric: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerInjector;->log(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)V

    .line 98
    return-object p1
.end method

.method static unregisterDomesticRoamingSettingObserver()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 200
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcTrackerInjector;->sDomesticRoamingSettingObserver:Lcom/android/internal/telephony/dataconnection/DcTrackerInjector$DataDomesticRoamingSettingObserver;

    if-eqz v0, :cond_0

    .line 201
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcTrackerInjector;->sDomesticRoamingSettingObserver:Lcom/android/internal/telephony/dataconnection/DcTrackerInjector$DataDomesticRoamingSettingObserver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerInjector$DataDomesticRoamingSettingObserver;->unregister()V

    .line 202
    sput-object v1, Lcom/android/internal/telephony/dataconnection/DcTrackerInjector;->sDomesticRoamingSettingObserver:Lcom/android/internal/telephony/dataconnection/DcTrackerInjector$DataDomesticRoamingSettingObserver;

    .line 199
    :cond_0
    return-void
.end method

.method static updateAPNSimOperatorNumeric(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)V
    .locals 1
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p1, "operatorNumeric"    # Ljava/lang/String;

    .prologue
    .line 72
    sget-object v0, Lmiui/telephony/TelephonyConstants;->PROPERTY_APN_SIM_OPERATOR_NUMERIC:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/Phone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    return-void
.end method
