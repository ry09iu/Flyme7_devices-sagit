.class public abstract Lmiui/telephony/TelephonyManager;
.super Ljava/lang/Object;
.source "TelephonyManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/telephony/TelephonyManager$Holder;
    }
.end annotation


# static fields
.field public static final ACTION_PHONE_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.PHONE_STATE"

.field public static final ACTION_RESPOND_VIA_MESSAGE:Ljava/lang/String; = "android.intent.action.RESPOND_VIA_MESSAGE"

.field public static final CALL_STATE_IDLE:I = 0x0

.field public static final CALL_STATE_OFFHOOK:I = 0x2

.field public static final CALL_STATE_RINGING:I = 0x1

.field public static final CF_ACTION_DISABLE:I = 0x0

.field public static final CF_ACTION_ENABLE:I = 0x1

.field public static final CF_ACTION_ERASURE:I = 0x4

.field public static final CF_ACTION_REGISTRATION:I = 0x3

.field public static final CF_REASON_ALL:I = 0x4

.field public static final CF_REASON_ALL_CONDITIONAL:I = 0x5

.field public static final CF_REASON_BUSY:I = 0x1

.field public static final CF_REASON_NOT_REACHABLE:I = 0x3

.field public static final CF_REASON_NO_REPLY:I = 0x2

.field public static final CF_REASON_UNCONDITIONAL:I = 0x0

.field public static final DATA_ACTIVITY_DORMANT:I = 0x4

.field public static final DATA_ACTIVITY_IN:I = 0x1

.field public static final DATA_ACTIVITY_INOUT:I = 0x3

.field public static final DATA_ACTIVITY_NONE:I = 0x0

.field public static final DATA_ACTIVITY_OUT:I = 0x2

.field public static final DATA_CONNECTED:I = 0x2

.field public static final DATA_CONNECTING:I = 0x1

.field public static final DATA_DISCONNECTED:I = 0x0

.field public static final DATA_DOMESTIC_ROAMING:Ljava/lang/String; = "data_domestic_roaming"

.field public static final DATA_SUSPENDED:I = 0x3

.field public static final EXTRA_INCOMING_NUMBER:Ljava/lang/String; = "incoming_number"

.field public static final EXTRA_STATE:Ljava/lang/String; = "state"

.field public static final EXTRA_STATE_IDLE:Ljava/lang/String;

.field public static final EXTRA_STATE_OFFHOOK:Ljava/lang/String;

.field public static final EXTRA_STATE_RINGING:Ljava/lang/String;

.field private static final IS_CUST_SINGLE_SIM:Z

.field public static final MCC_CHINA:Ljava/lang/String; = "460"

.field public static final NETWORK_TYPE_1xRTT:I = 0x7

.field public static final NETWORK_TYPE_CDMA:I = 0x4

.field public static final NETWORK_TYPE_DC_HSPAP:I = 0x14

.field public static final NETWORK_TYPE_EDGE:I = 0x2

.field public static final NETWORK_TYPE_EHRPD:I = 0xe

.field public static final NETWORK_TYPE_EVDO_0:I = 0x5

.field public static final NETWORK_TYPE_EVDO_A:I = 0x6

.field public static final NETWORK_TYPE_EVDO_B:I = 0xc

.field public static final NETWORK_TYPE_GPRS:I = 0x1

.field public static final NETWORK_TYPE_HSDPA:I = 0x8

.field public static final NETWORK_TYPE_HSPA:I = 0xa

.field public static final NETWORK_TYPE_HSPAP:I = 0xf

.field public static final NETWORK_TYPE_HSUPA:I = 0x9

.field public static final NETWORK_TYPE_IDEN:I = 0xb

.field public static final NETWORK_TYPE_LTE:I = 0xd

.field public static final NETWORK_TYPE_LTE_CA:I = 0x13

.field public static final NETWORK_TYPE_UMTS:I = 0x3

.field public static final NETWORK_TYPE_UNKNOWN:I = 0x0

.field public static final OPERATOR_NUMERIC_CHINA_MOBILE:Ljava/lang/String; = "46000"

.field public static final OPERATOR_NUMERIC_CHINA_TELECOM:Ljava/lang/String; = "46003"

.field public static final OPERATOR_NUMERIC_CHINA_UNICOM:Ljava/lang/String; = "46001"

.field public static final PHONE_TYPE_CDMA:I = 0x2

.field public static final PHONE_TYPE_GSM:I = 0x1

.field public static final PHONE_TYPE_NONE:I = 0x0

.field public static final PHONE_TYPE_SIP:I = 0x3

.field public static final SET_CALL_FOWARD_FAILURE:I = -0x1

.field public static final SET_CALL_FOWARD_NOT_SUPPORT:I = -0x2

.field public static final SET_CALL_FOWARD_SUCCESS:I = 0x0

.field public static final SIM_STATE_ABSENT:I = 0x1

.field public static final SIM_STATE_NETWORK_LOCKED:I = 0x4

.field public static final SIM_STATE_PIN_REQUIRED:I = 0x2

.field public static final SIM_STATE_PUK_REQUIRED:I = 0x3

.field public static final SIM_STATE_READY:I = 0x5

.field public static final SIM_STATE_UNKNOWN:I = 0x0

.field protected static final TAG:Ljava/lang/String; = "TeleMgr"


# instance fields
.field private BUILD_OPERATOR_TYPE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 132
    sget-object v2, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    sput-object v2, Lmiui/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    .line 140
    sget-object v2, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    sput-object v2, Lmiui/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    .line 148
    sget-object v2, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    sput-object v2, Lmiui/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    .line 399
    const-string/jumbo v2, "ro.miui.singlesim"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    sput-boolean v0, Lmiui/telephony/TelephonyManager;->IS_CUST_SINGLE_SIM:Z

    .line 23
    return-void

    :cond_0
    move v0, v1

    .line 399
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/telephony/TelephonyManager;->BUILD_OPERATOR_TYPE:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public static checkCallingOrSelfPermissionGranted(I)Z
    .locals 3
    .param p0, "callingUid"    # I

    .prologue
    const/4 v2, 0x0

    .line 1536
    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 1537
    .local v0, "appId":I
    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    .line 1538
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-ltz v1, :cond_1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-static {p0, v1}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v1

    .line 1537
    if-eqz v1, :cond_1

    .line 1539
    :cond_0
    const/4 v1, 0x1

    return v1

    .line 1541
    :cond_1
    return v2
.end method

.method public static getDefault()Lmiui/telephony/TelephonyManager;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lmiui/telephony/TelephonyManager$Holder;->INSTANCE:Lmiui/telephony/TelephonyManagerEx;

    return-object v0
.end method

.method public static isCustSingleSimDevice()Z
    .locals 1

    .prologue
    .line 1545
    sget-boolean v0, Lmiui/telephony/TelephonyManager;->IS_CUST_SINGLE_SIM:Z

    return v0
.end method

.method public static isDomesticRoamingEnable(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1528
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "data_domestic_roaming"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static isSupportDomesticRoaming()Z
    .locals 1

    .prologue
    .line 1519
    const-string/jumbo v0, "PL"

    invoke-static {v0}, Lmiui/os/Build;->checkRegion(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static setDomesticRoamingEnable(Landroid/content/Context;Z)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isEnable"    # Z

    .prologue
    .line 1532
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "data_domestic_roaming"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public abstract getCallState()I
.end method

.method public abstract getCallStateForSlot(I)I
.end method

.method public abstract getCallStateForSubscription(I)I
.end method

.method public abstract getDataActivity()I
.end method

.method public abstract getDataActivityForSlot(I)I
.end method

.method public abstract getDataActivityForSubscription(I)I
.end method

.method public abstract getDataState()I
.end method

.method public abstract getDataStateForSlot(I)I
.end method

.method public abstract getDataStateForSubscription(I)I
.end method

.method public abstract getDeviceId()Ljava/lang/String;
.end method

.method public abstract getDeviceIdForSlot(I)Ljava/lang/String;
.end method

.method public abstract getDeviceIdForSubscription(I)Ljava/lang/String;
.end method

.method public getDeviceIdList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 498
    const-string/jumbo v0, "TelephonyManager"

    const-string/jumbo v1, "unexpected getDeviceIdList method call"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getDeviceSoftwareVersion()Ljava/lang/String;
.end method

.method public abstract getDeviceSoftwareVersionForSlot(I)Ljava/lang/String;
.end method

.method public abstract getDeviceSoftwareVersionForSubscription(I)Ljava/lang/String;
.end method

.method public getIccCardCount()I
    .locals 4

    .prologue
    .line 419
    invoke-virtual {p0}, Lmiui/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    .line 420
    .local v2, "max":I
    const/4 v0, 0x0

    .line 421
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 422
    invoke-virtual {p0, v1}, Lmiui/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 423
    add-int/lit8 v0, v0, 0x1

    .line 421
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 426
    :cond_1
    return v0
.end method

.method public abstract getImei()Ljava/lang/String;
.end method

.method public abstract getImeiForSlot(I)Ljava/lang/String;
.end method

.method public abstract getImeiForSubscription(I)Ljava/lang/String;
.end method

.method public getImeiList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 509
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0
.end method

.method public abstract getLine1Number()Ljava/lang/String;
.end method

.method public abstract getLine1NumberForSlot(I)Ljava/lang/String;
.end method

.method public abstract getLine1NumberForSubscription(I)Ljava/lang/String;
.end method

.method public abstract getMeid()Ljava/lang/String;
.end method

.method public abstract getMeidForSlot(I)Ljava/lang/String;
.end method

.method public abstract getMeidForSubscription(I)Ljava/lang/String;
.end method

.method public getMeidList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 518
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0
.end method

.method public abstract getMiuiDeviceId()Ljava/lang/String;
.end method

.method public abstract getNetworkCountryIso()Ljava/lang/String;
.end method

.method public abstract getNetworkCountryIsoForSlot(I)Ljava/lang/String;
.end method

.method public abstract getNetworkCountryIsoForSubscription(I)Ljava/lang/String;
.end method

.method public abstract getNetworkOperator()Ljava/lang/String;
.end method

.method public abstract getNetworkOperatorForSlot(I)Ljava/lang/String;
.end method

.method public abstract getNetworkOperatorForSubscription(I)Ljava/lang/String;
.end method

.method public abstract getNetworkOperatorName()Ljava/lang/String;
.end method

.method public abstract getNetworkOperatorNameForSlot(I)Ljava/lang/String;
.end method

.method public abstract getNetworkOperatorNameForSubscription(I)Ljava/lang/String;
.end method

.method public abstract getNetworkType()I
.end method

.method public abstract getNetworkTypeForSlot(I)I
.end method

.method public abstract getNetworkTypeForSubscription(I)I
.end method

.method public abstract getPhoneCount()I
.end method

.method public abstract getPhoneType()I
.end method

.method public abstract getPhoneTypeForSlot(I)I
.end method

.method public abstract getPhoneTypeForSubscription(I)I
.end method

.method public abstract getSimCountryIso()Ljava/lang/String;
.end method

.method public abstract getSimCountryIsoForSlot(I)Ljava/lang/String;
.end method

.method public abstract getSimCountryIsoForSubscription(I)Ljava/lang/String;
.end method

.method public abstract getSimOperator()Ljava/lang/String;
.end method

.method public abstract getSimOperatorForSlot(I)Ljava/lang/String;
.end method

.method public abstract getSimOperatorForSubscription(I)Ljava/lang/String;
.end method

.method public abstract getSimOperatorName()Ljava/lang/String;
.end method

.method public abstract getSimOperatorNameForSlot(I)Ljava/lang/String;
.end method

.method public abstract getSimOperatorNameForSubscription(I)Ljava/lang/String;
.end method

.method public abstract getSimSerialNumber()Ljava/lang/String;
.end method

.method public abstract getSimSerialNumberForSlot(I)Ljava/lang/String;
.end method

.method public abstract getSimSerialNumberForSubscription(I)Ljava/lang/String;
.end method

.method public abstract getSimState()I
.end method

.method public abstract getSimStateForSlot(I)I
.end method

.method public abstract getSimStateForSubscription(I)I
.end method

.method public abstract getSmallDeviceId()Ljava/lang/String;
.end method

.method public getSpn(Ljava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;
    .locals 2
    .param p1, "numeric"    # Ljava/lang/String;
    .param p2, "slotId"    # I
    .param p3, "spn"    # Ljava/lang/String;
    .param p4, "longName"    # Z

    .prologue
    .line 1467
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Only support android L and above"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract getSubscriberId()Ljava/lang/String;
.end method

.method public abstract getSubscriberIdForSlot(I)Ljava/lang/String;
.end method

.method public abstract getSubscriberIdForSubscription(I)Ljava/lang/String;
.end method

.method public abstract getVoiceMailAlphaTag()Ljava/lang/String;
.end method

.method public abstract getVoiceMailAlphaTagForSlot(I)Ljava/lang/String;
.end method

.method public abstract getVoiceMailAlphaTagForSubscription(I)Ljava/lang/String;
.end method

.method public abstract getVoiceMailNumber()Ljava/lang/String;
.end method

.method public abstract getVoiceMailNumberForSlot(I)Ljava/lang/String;
.end method

.method public abstract getVoiceMailNumberForSubscription(I)Ljava/lang/String;
.end method

.method public abstract hasIccCard()Z
.end method

.method public abstract hasIccCard(I)Z
.end method

.method public isDisableLte(Z)Z
    .locals 8
    .param p1, "checkSim"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v7, 0x0

    .line 1499
    sget-boolean v5, Lmiui/os/Build;->IS_GLOBAL_BUILD:Z

    if-nez v5, :cond_0

    .line 1500
    return v7

    .line 1503
    :cond_0
    const-string/jumbo v5, "ido"

    sget-object v6, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string/jumbo v5, "kenzo"

    sget-object v6, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1504
    .local v0, "disableDevice":Z
    :goto_0
    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 1507
    invoke-virtual {p0}, Lmiui/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    .line 1508
    .local v3, "phoneCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v3, :cond_4

    .line 1509
    invoke-virtual {p0, v1}, Lmiui/telephony/TelephonyManager;->getSimOperatorForSlot(I)Ljava/lang/String;

    move-result-object v2

    .line 1511
    .local v2, "numeric":Ljava/lang/String;
    if-eqz v2, :cond_3

    const-string/jumbo v5, "510"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1512
    return v4

    .end local v0    # "disableDevice":Z
    .end local v1    # "i":I
    .end local v2    # "numeric":Ljava/lang/String;
    .end local v3    # "phoneCount":I
    :cond_1
    move v0, v4

    .line 1503
    goto :goto_0

    .line 1505
    .restart local v0    # "disableDevice":Z
    :cond_2
    return v0

    .line 1508
    .restart local v1    # "i":I
    .restart local v2    # "numeric":Ljava/lang/String;
    .restart local v3    # "phoneCount":I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1515
    .end local v2    # "numeric":Ljava/lang/String;
    :cond_4
    return v7
.end method

.method public isImsRegistered(I)Z
    .locals 1
    .param p1, "phoneId"    # I

    .prologue
    .line 1420
    const/4 v0, 0x0

    return v0
.end method

.method public abstract isMultiSimEnabled()Z
.end method

.method public isSameOperator(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "numeric"    # Ljava/lang/String;
    .param p2, "anotherNumeric"    # Ljava/lang/String;

    .prologue
    .line 1462
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Only support android L and above"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract isVoiceCapable()Z
.end method

.method public isVolteEnabledByPlatform()Z
    .locals 1

    .prologue
    .line 1441
    const/4 v0, 0x0

    return v0
.end method

.method public isVolteEnabledByUser()Z
    .locals 1

    .prologue
    .line 1427
    const/4 v0, 0x0

    return v0
.end method

.method public isVtEnabledByPlatform()Z
    .locals 1

    .prologue
    .line 1434
    const/4 v0, 0x0

    return v0
.end method

.method public abstract listen(Landroid/telephony/PhoneStateListener;I)V
.end method

.method public abstract listenForSlot(ILandroid/telephony/PhoneStateListener;I)V
.end method

.method public abstract listenForSubscription(ILandroid/telephony/PhoneStateListener;I)V
.end method

.method public setCallForwardingOption(IIILjava/lang/String;Landroid/os/ResultReceiver;)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "action"    # I
    .param p3, "reason"    # I
    .param p4, "number"    # Ljava/lang/String;
    .param p5, "callback"    # Landroid/os/ResultReceiver;

    .prologue
    .line 1595
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "setCallForwardingOption not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setIccCardActivate(IZ)V
    .locals 2
    .param p1, "slotId"    # I
    .param p2, "isActivate"    # Z

    .prologue
    .line 1609
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Only support android L and above"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
