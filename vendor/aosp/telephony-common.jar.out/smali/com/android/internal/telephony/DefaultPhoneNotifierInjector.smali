.class public Lcom/android/internal/telephony/DefaultPhoneNotifierInjector;
.super Ljava/lang/Object;
.source "DefaultPhoneNotifierInjector.java"


# static fields
.field private static final synthetic -com-android-internal-telephony-PhoneConstants$DataStateSwitchesValues:[I = null

.field private static final DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "DefaultPhoneNotifierInjector"

.field private static mDataState:[Lcom/android/internal/telephony/PhoneConstants$DataState;


# direct methods
.method private static synthetic -getcom-android-internal-telephony-PhoneConstants$DataStateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/internal/telephony/DefaultPhoneNotifierInjector;->-com-android-internal-telephony-PhoneConstants$DataStateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/DefaultPhoneNotifierInjector;->-com-android-internal-telephony-PhoneConstants$DataStateSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneConstants$DataState;->values()[Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneConstants$DataState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTING:Lcom/android/internal/telephony/PhoneConstants$DataState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneConstants$DataState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneConstants$DataState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$DataState;->SUSPENDED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneConstants$DataState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Lcom/android/internal/telephony/DefaultPhoneNotifierInjector;->-com-android-internal-telephony-PhoneConstants$DataStateSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    new-array v0, v0, [Lcom/android/internal/telephony/PhoneConstants$DataState;

    sput-object v0, Lcom/android/internal/telephony/DefaultPhoneNotifierInjector;->mDataState:[Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 22
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cbNotifyDataConnection(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneConstants$DataState;)V
    .locals 4
    .param p0, "sender"    # Lcom/android/internal/telephony/Phone;
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "apnType"    # Ljava/lang/String;
    .param p3, "state"    # Lcom/android/internal/telephony/PhoneConstants$DataState;

    .prologue
    .line 35
    const-string/jumbo v2, "default"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 36
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    .line 37
    .local v1, "phoneId":I
    invoke-static {}, Lmiui/telephony/DefaultSimManager;->getDefaultDataSlotId()I

    move-result v0

    .line 41
    .local v0, "ddsPhoneId":I
    if-ne v1, v0, :cond_1

    sget-object v2, Lcom/android/internal/telephony/DefaultPhoneNotifierInjector;->mDataState:[Lcom/android/internal/telephony/PhoneConstants$DataState;

    aget-object v2, v2, v1

    if-eq v2, p3, :cond_1

    .line 43
    :goto_0
    sget-object v2, Lcom/android/internal/telephony/DefaultPhoneNotifierInjector;->mDataState:[Lcom/android/internal/telephony/PhoneConstants$DataState;

    aput-object p3, v2, v1

    .line 44
    invoke-static {p3}, Lcom/android/internal/telephony/DefaultPhoneNotifierInjector;->convertDataState(Lcom/android/internal/telephony/PhoneConstants$DataState;)I

    move-result v2

    invoke-static {v1, v2}, Lmiui/telephony/TelephonyStatAdapter;->notifyDataConnection(II)V

    .line 34
    .end local v0    # "ddsPhoneId":I
    .end local v1    # "phoneId":I
    :cond_0
    return-void

    .line 42
    .restart local v0    # "ddsPhoneId":I
    .restart local v1    # "phoneId":I
    :cond_1
    sget-object v2, Lcom/android/internal/telephony/DefaultPhoneNotifierInjector;->mDataState:[Lcom/android/internal/telephony/PhoneConstants$DataState;

    aget-object v2, v2, v1

    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    if-ne v2, v3, :cond_0

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    if-ne p3, v2, :cond_0

    goto :goto_0
.end method

.method public static cbNotifyServiceStateForPhoneId(ILandroid/telephony/ServiceState;)V
    .locals 0
    .param p0, "phoneId"    # I
    .param p1, "ss"    # Landroid/telephony/ServiceState;

    .prologue
    .line 54
    invoke-static {p0, p1}, Lmiui/telephony/TelephonyStatAdapter;->notifyServiceState(ILandroid/telephony/ServiceState;)V

    .line 53
    return-void
.end method

.method public static cbNotifySignalStrengthForPhoneId(ILandroid/telephony/SignalStrength;)V
    .locals 0
    .param p0, "phoneId"    # I
    .param p1, "signal"    # Landroid/telephony/SignalStrength;

    .prologue
    .line 50
    invoke-static {p0, p1}, Lmiui/telephony/TelephonyStatAdapter;->notifySignalStrength(ILandroid/telephony/SignalStrength;)V

    .line 49
    return-void
.end method

.method public static convertDataState(Lcom/android/internal/telephony/PhoneConstants$DataState;)I
    .locals 2
    .param p0, "state"    # Lcom/android/internal/telephony/PhoneConstants$DataState;

    .prologue
    .line 58
    invoke-static {}, Lcom/android/internal/telephony/DefaultPhoneNotifierInjector;->-getcom-android-internal-telephony-PhoneConstants$DataStateSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneConstants$DataState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 66
    const/4 v0, 0x0

    return v0

    .line 60
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 62
    :pswitch_1
    const/4 v0, 0x2

    return v0

    .line 64
    :pswitch_2
    const/4 v0, 0x3

    return v0

    .line 58
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static initValues()V
    .locals 3

    .prologue
    .line 28
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 29
    sget-object v1, Lcom/android/internal/telephony/DefaultPhoneNotifierInjector;->mDataState:[Lcom/android/internal/telephony/PhoneConstants$DataState;

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    aput-object v2, v1, v0

    .line 28
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 27
    :cond_0
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 71
    const-string/jumbo v0, "DefaultPhoneNotifierInjector"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    return-void
.end method
