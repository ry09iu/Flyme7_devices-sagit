.class public Lcom/android/internal/telephony/ServiceStateTrackerInjector;
.super Ljava/lang/Object;
.source "ServiceStateTrackerInjector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ServiceStateTrackerInjector$1;,
        Lcom/android/internal/telephony/ServiceStateTrackerInjector$2;
    }
.end annotation


# static fields
.field public static final DATA_DEREGISTERED:Ljava/lang/String; = "Data Deregistered"

.field private static final DEACTIVATE_CHECK_DELAY_TIME:I = 0x2710

.field private static final EVENT_DEACTIVATE_CHECK_DELAY:I = 0x1

.field private static final EVENT_SCREEN_STATE_CHANGED:I = 0x2

.field private static final NON_ROAMING_MCC:[[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "GSSTInjector"

.field public static final VOICE_DEREGISTERED:Ljava/lang/String; = "Voice Deregistered"

.field private static mHandler:Landroid/os/Handler;

.field private static sNewScreenOffIgnoreRat:[I

.field private static sNitzOperator:[Ljava/lang/String;

.field private static sReceiveNitz:[Z

.field private static sScreenStateListener:Lcom/android/internal/telephony/RILInjector$ScreenStateListener;

.field private static sTimeZoneIdByMcc:[[Ljava/lang/String;

.field private static sTimeZoneIdOfCapitalCity:[[Ljava/lang/String;


# direct methods
.method static synthetic -get0()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcom/android/internal/telephony/ServiceStateTrackerInjector;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get1()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/internal/telephony/ServiceStateTrackerInjector;->sNitzOperator:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2()[Z
    .locals 1

    sget-object v0, Lcom/android/internal/telephony/ServiceStateTrackerInjector;->sReceiveNitz:[Z

    return-object v0
.end method

.method static synthetic -wrap0()V
    .locals 0

    invoke-static {}, Lcom/android/internal/telephony/ServiceStateTrackerInjector;->checkDeactiveForCustSingleSim()V

    return-void
.end method

.method static synthetic -wrap1()V
    .locals 0

    invoke-static {}, Lcom/android/internal/telephony/ServiceStateTrackerInjector;->processScreenStateChange()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 37
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/internal/telephony/ServiceStateTrackerInjector;->sNewScreenOffIgnoreRat:[I

    .line 82
    new-instance v0, Lcom/android/internal/telephony/ServiceStateTrackerInjector$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/ServiceStateTrackerInjector$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/ServiceStateTrackerInjector;->mHandler:Landroid/os/Handler;

    .line 159
    new-array v0, v4, [[Ljava/lang/String;

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "404"

    aput-object v2, v1, v3

    const-string/jumbo v2, "405"

    aput-object v2, v1, v4

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/internal/telephony/ServiceStateTrackerInjector;->NON_ROAMING_MCC:[[Ljava/lang/String;

    .line 194
    const/4 v0, 0x6

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "334"

    aput-object v2, v1, v3

    const-string/jumbo v2, "America/Mexico_City"

    aput-object v2, v1, v4

    aput-object v1, v0, v3

    .line 195
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "460"

    aput-object v2, v1, v3

    const-string/jumbo v2, "Asia/Shanghai"

    aput-object v2, v1, v4

    aput-object v1, v0, v4

    .line 196
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "404"

    aput-object v2, v1, v3

    const-string/jumbo v2, "Asia/Calcutta"

    aput-object v2, v1, v4

    aput-object v1, v0, v5

    .line 197
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "405"

    aput-object v2, v1, v3

    const-string/jumbo v2, "Asia/Calcutta"

    aput-object v2, v1, v4

    aput-object v1, v0, v6

    .line 198
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "406"

    aput-object v2, v1, v3

    const-string/jumbo v2, "Asia/Calcutta"

    aput-object v2, v1, v4

    aput-object v1, v0, v7

    .line 199
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "454"

    aput-object v2, v1, v3

    const-string/jumbo v2, "Asia/Hong_Kong"

    aput-object v2, v1, v4

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 194
    sput-object v0, Lcom/android/internal/telephony/ServiceStateTrackerInjector;->sTimeZoneIdByMcc:[[Ljava/lang/String;

    .line 202
    const/16 v0, 0x10

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "au"

    aput-object v2, v1, v3

    const-string/jumbo v2, "Australia/Sydney"

    aput-object v2, v1, v4

    aput-object v1, v0, v3

    .line 203
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "cn"

    aput-object v2, v1, v3

    const-string/jumbo v2, "Asia/Shanghai"

    aput-object v2, v1, v4

    aput-object v1, v0, v4

    .line 204
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "br"

    aput-object v2, v1, v3

    const-string/jumbo v2, "America/Sao_Paulo"

    aput-object v2, v1, v4

    aput-object v1, v0, v5

    .line 205
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "ca"

    aput-object v2, v1, v3

    const-string/jumbo v2, "America/Toronto"

    aput-object v2, v1, v4

    aput-object v1, v0, v6

    .line 206
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "cl"

    aput-object v2, v1, v3

    const-string/jumbo v2, "America/Santiago"

    aput-object v2, v1, v4

    aput-object v1, v0, v7

    .line 207
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "es"

    aput-object v2, v1, v3

    const-string/jumbo v2, "Europe/Madrid"

    aput-object v2, v1, v4

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 208
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "fm"

    aput-object v2, v1, v3

    const-string/jumbo v2, "Pacific/Ponape"

    aput-object v2, v1, v4

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 209
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "gl"

    aput-object v2, v1, v3

    const-string/jumbo v2, "America/Godthab"

    aput-object v2, v1, v4

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 210
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "id"

    aput-object v2, v1, v3

    const-string/jumbo v2, "Asia/Jakarta"

    aput-object v2, v1, v4

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 211
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "kz"

    aput-object v2, v1, v3

    const-string/jumbo v2, "Asia/Almaty"

    aput-object v2, v1, v4

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 212
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "mn"

    aput-object v2, v1, v3

    const-string/jumbo v2, "Asia/Ulaanbaatar"

    aput-object v2, v1, v4

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 213
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "mx"

    aput-object v2, v1, v3

    const-string/jumbo v2, "America/Mexico_City"

    aput-object v2, v1, v4

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 214
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "pf"

    aput-object v2, v1, v3

    const-string/jumbo v2, "Pacific/Tahiti"

    aput-object v2, v1, v4

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 215
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "pt"

    aput-object v2, v1, v3

    const-string/jumbo v2, "Europe/Lisbon"

    aput-object v2, v1, v4

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 216
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "ru"

    aput-object v2, v1, v3

    const-string/jumbo v2, "Europe/Moscow"

    aput-object v2, v1, v4

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 217
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "us"

    aput-object v2, v1, v3

    const-string/jumbo v2, "America/New_York"

    aput-object v2, v1, v4

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 202
    sput-object v0, Lcom/android/internal/telephony/ServiceStateTrackerInjector;->sTimeZoneIdOfCapitalCity:[[Ljava/lang/String;

    .line 406
    new-instance v0, Lcom/android/internal/telephony/ServiceStateTrackerInjector$2;

    invoke-direct {v0}, Lcom/android/internal/telephony/ServiceStateTrackerInjector$2;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/ServiceStateTrackerInjector;->sScreenStateListener:Lcom/android/internal/telephony/RILInjector$ScreenStateListener;

    .line 33
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkDeactiveForCustSingleSim()V
    .locals 2

    .prologue
    .line 384
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 385
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-nez v1, :cond_0

    .line 386
    new-instance v1, Lcom/android/internal/telephony/ServiceStateTrackerInjector$5;

    invoke-direct {v1}, Lcom/android/internal/telephony/ServiceStateTrackerInjector$5;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/ServiceStateTrackerInjector$5;->start()V

    .line 383
    :cond_0
    return-void
.end method

.method public static convertNetworkType(Lcom/android/internal/telephony/ServiceStateTracker;I)I
    .locals 3
    .param p0, "sst"    # Lcom/android/internal/telephony/ServiceStateTracker;
    .param p1, "type"    # I

    .prologue
    .line 183
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    .line 184
    .local v0, "operator":Ljava/lang/String;
    const/16 v1, 0x14

    if-ne v1, p1, :cond_0

    .line 185
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 186
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/GsmCdmaPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1108000e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 189
    :cond_0
    return p1

    .line 187
    :cond_1
    const/16 v1, 0xf

    return v1
.end method

.method public static dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .prologue
    .line 397
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x200

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "ServiceStateTrackerInjector: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 398
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v2, Lmiui/telephony/MiuiTelephony;->PHONE_COUNT:I

    if-ge v0, v2, :cond_0

    .line 399
    const-string/jumbo v2, " sReceiveNitz="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/ServiceStateTrackerInjector;->sReceiveNitz:[Z

    aget-boolean v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " sNitzOperator="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/ServiceStateTrackerInjector;->sNitzOperator:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 401
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 402
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    .line 396
    return-void
.end method

.method public static getPlmn(Lcom/android/internal/telephony/ServiceStateTracker;)Ljava/lang/String;
    .locals 8
    .param p0, "sst"    # Lcom/android/internal/telephony/ServiceStateTracker;

    .prologue
    .line 132
    const-string/jumbo v5, "45006"

    iget-object v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 133
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 136
    :cond_0
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v5, :cond_2

    .line 138
    const-string/jumbo v5, "46697"

    iget-object v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string/jumbo v5, "46605"

    iget-object v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 139
    const-string/jumbo v5, "Gt"

    return-object v5

    .line 141
    :cond_1
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/IccRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v3

    .line 142
    .local v3, "spn":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getPhoneId()I

    move-result v6

    invoke-static {v5, v6, v3}, Lmiui/telephony/ServiceProviderUtils;->isVirtualServiceProvider(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    .line 143
    .local v0, "isMvno":Z
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v1

    .line 144
    .local v1, "isRoaming":Z
    const-string/jumbo v5, "GSSTInjector"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isRoaming="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " isMvno="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    if-nez v1, :cond_2

    if-eqz v0, :cond_2

    .line 146
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getPhoneId()I

    move-result v6

    invoke-static {v5, v6, v3}, Lmiui/telephony/ServiceProviderUtils;->get(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 147
    .local v4, "spnOverride":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 148
    return-object v4

    .line 152
    .end local v0    # "isMvno":Z
    .end local v1    # "isRoaming":Z
    .end local v3    # "spn":Ljava/lang/String;
    .end local v4    # "spnOverride":Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getPhoneId()I

    move-result v6

    iget-object v7, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v7}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lmiui/telephony/ServiceProviderUtils;->get(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 153
    .local v2, "plmn":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 154
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v2

    .line 156
    :cond_3
    return-object v2
.end method

.method public static getReceivedNitz()Z
    .locals 2

    .prologue
    .line 360
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/android/internal/telephony/ServiceStateTrackerInjector;->sReceiveNitz:[Z

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 361
    sget-object v1, Lcom/android/internal/telephony/ServiceStateTrackerInjector;->sReceiveNitz:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_0

    .line 362
    const/4 v1, 0x1

    return v1

    .line 360
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 365
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public static getReceivedNitz(I)Z
    .locals 1
    .param p0, "phoneId"    # I

    .prologue
    .line 238
    sget-object v0, Lcom/android/internal/telephony/ServiceStateTrackerInjector;->sReceiveNitz:[Z

    aget-boolean v0, v0, p0

    return v0
.end method

.method public static getRevertTimeZoneId(ILjava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p0, "phoneId"    # I
    .param p1, "numeric"    # Ljava/lang/String;

    .prologue
    .line 329
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x3

    if-ge v9, v10, :cond_5

    :cond_0
    const/4 v5, 0x0

    .line 330
    .local v5, "mcc":Ljava/lang/String;
    :goto_0
    const/4 v2, 0x0

    .line 331
    .local v2, "iso":Ljava/lang/String;
    if-eqz v5, :cond_1

    const-string/jumbo v9, "000"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 338
    .end local v2    # "iso":Ljava/lang/String;
    :cond_1
    :goto_1
    const/4 v3, 0x0

    .line 339
    .local v3, "isoZoneId":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    const/16 v10, 0x100

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v10, "SUB["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "]revertToNitzTimeZone mcc="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 340
    const-string/jumbo v10, " iso="

    .line 339
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 341
    .local v4, "logStr":Ljava/lang/StringBuilder;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 342
    const/4 v8, 0x0

    .line 344
    .local v8, "zone":Ljava/util/TimeZone;
    const-string/jumbo v9, "telephony.test.ignore.nitz"

    const/4 v10, 0x0

    .line 343
    invoke-static {v9, v10}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 344
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    const-wide/16 v12, 0x1

    and-long/2addr v10, v12

    const-wide/16 v12, 0x0

    cmp-long v9, v10, v12

    if-nez v9, :cond_7

    const/4 v1, 0x1

    .line 345
    .local v1, "isTest":Z
    :goto_2
    invoke-static {v2}, Landroid/util/TimeUtils;->getTimeZonesWithUniqueOffsets(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 346
    .local v7, "uniqueZones":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/TimeZone;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 347
    .local v6, "size":I
    const/4 v9, 0x1

    if-eq v6, v9, :cond_2

    if-eqz v1, :cond_9

    .line 348
    :cond_2
    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "zone":Ljava/util/TimeZone;
    check-cast v8, Ljava/util/TimeZone;

    .line 352
    :cond_3
    :goto_3
    if-nez v8, :cond_a

    const/4 v3, 0x0

    .line 353
    .end local v3    # "isoZoneId":Ljava/lang/String;
    :goto_4
    const-string/jumbo v9, " size="

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " isTest="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 355
    .end local v1    # "isTest":Z
    .end local v6    # "size":I
    .end local v7    # "uniqueZones":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/TimeZone;>;"
    :cond_4
    const-string/jumbo v9, "GSSTInjector"

    const-string/jumbo v10, " isoZoneId="

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    return-object v3

    .line 329
    .end local v4    # "logStr":Ljava/lang/StringBuilder;
    .end local v5    # "mcc":Ljava/lang/String;
    :cond_5
    const/4 v9, 0x0

    const/4 v10, 0x3

    invoke-virtual {p1, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 333
    .restart local v2    # "iso":Ljava/lang/String;
    .restart local v5    # "mcc":Ljava/lang/String;
    :cond_6
    :try_start_0
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .local v2, "iso":Ljava/lang/String;
    goto/16 :goto_1

    .line 334
    .local v2, "iso":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 335
    .local v0, "ex":Ljava/lang/NumberFormatException;
    const-string/jumbo v9, "GSSTInjector"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "getRevertTimeZoneId: invalid numeric "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 344
    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    .end local v2    # "iso":Ljava/lang/String;
    .restart local v3    # "isoZoneId":Ljava/lang/String;
    .restart local v4    # "logStr":Ljava/lang/StringBuilder;
    .restart local v8    # "zone":Ljava/util/TimeZone;
    :cond_7
    const/4 v1, 0x0

    .restart local v1    # "isTest":Z
    goto :goto_2

    .line 343
    .end local v1    # "isTest":Z
    :cond_8
    const/4 v1, 0x0

    .restart local v1    # "isTest":Z
    goto :goto_2

    .line 349
    .restart local v6    # "size":I
    .restart local v7    # "uniqueZones":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/TimeZone;>;"
    :cond_9
    const/4 v9, 0x1

    if-le v6, v9, :cond_3

    .line 350
    const/4 v9, 0x1

    invoke-static {v2, v9}, Lcom/android/internal/telephony/ServiceStateTrackerInjector;->getTimeZoneWithCapitalCity(Ljava/lang/String;Z)Ljava/util/TimeZone;

    move-result-object v8

    .local v8, "zone":Ljava/util/TimeZone;
    goto :goto_3

    .line 352
    .end local v8    # "zone":Ljava/util/TimeZone;
    :cond_a
    invoke-virtual {v8}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v3

    .local v3, "isoZoneId":Ljava/lang/String;
    goto :goto_4
.end method

.method public static getSpn(Lcom/android/internal/telephony/ServiceStateTracker;)Ljava/lang/String;
    .locals 4
    .param p0, "sst"    # Lcom/android/internal/telephony/ServiceStateTracker;

    .prologue
    .line 118
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-nez v2, :cond_0

    .line 119
    const-string/jumbo v2, ""

    return-object v2

    .line 121
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/IccRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, "spn":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getPhoneId()I

    move-result v3

    invoke-static {v2, v3, v0}, Lmiui/telephony/ServiceProviderUtils;->get(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 123
    .local v1, "spnOverride":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 124
    move-object v0, v1

    .line 126
    :cond_1
    return-object v0
.end method

.method public static getSpnUpdateActionName(Lcom/android/internal/telephony/ServiceStateTracker;)Ljava/lang/String;
    .locals 3
    .param p0, "sst"    # Lcom/android/internal/telephony/ServiceStateTracker;

    .prologue
    .line 112
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v0

    .line 113
    .local v0, "slotId":I
    if-nez v0, :cond_0

    const-string/jumbo v1, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    :goto_0
    return-object v1

    .line 114
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getTimeZoneByMcc(Ljava/lang/String;)Ljava/util/TimeZone;
    .locals 6
    .param p0, "mcc"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 250
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 251
    return-object v4

    .line 254
    :cond_0
    const/4 v2, 0x0

    .line 255
    .local v2, "ret":Ljava/util/TimeZone;
    const/4 v1, 0x0

    .line 256
    .local v1, "mccTz":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v3, Lcom/android/internal/telephony/ServiceStateTrackerInjector;->sTimeZoneIdByMcc:[[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 257
    sget-object v3, Lcom/android/internal/telephony/ServiceStateTrackerInjector;->sTimeZoneIdByMcc:[[Ljava/lang/String;

    aget-object v3, v3, v0

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 258
    sget-object v3, Lcom/android/internal/telephony/ServiceStateTrackerInjector;->sTimeZoneIdByMcc:[[Ljava/lang/String;

    aget-object v3, v3, v0

    const/4 v4, 0x1

    aget-object v1, v3, v4

    .line 262
    .end local v1    # "mccTz":Ljava/lang/String;
    :cond_1
    if-eqz v1, :cond_2

    .line 263
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    .line 265
    .end local v2    # "ret":Ljava/util/TimeZone;
    :cond_2
    const-string/jumbo v4, "GSSTInjector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getTimeZoneByMcc mcc:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " zone.getID="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez v2, :cond_4

    const-string/jumbo v3, ""

    :goto_1
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    return-object v2

    .line 256
    .restart local v1    # "mccTz":Ljava/lang/String;
    .restart local v2    # "ret":Ljava/util/TimeZone;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 265
    .end local v1    # "mccTz":Ljava/lang/String;
    .end local v2    # "ret":Ljava/util/TimeZone;
    :cond_4
    invoke-virtual {v2}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method public static getTimeZoneByMcc(Ljava/lang/String;Ljava/util/TimeZone;)Ljava/util/TimeZone;
    .locals 2
    .param p0, "mcc"    # Ljava/lang/String;
    .param p1, "originalTimeZone"    # Ljava/util/TimeZone;

    .prologue
    .line 242
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/ServiceStateTrackerInjector;->getReceivedNitz()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 243
    :cond_0
    return-object p1

    .line 245
    :cond_1
    invoke-static {p0}, Lcom/android/internal/telephony/ServiceStateTrackerInjector;->getTimeZoneByMcc(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .line 246
    .local v0, "zone":Ljava/util/TimeZone;
    if-nez v0, :cond_2

    .end local p1    # "originalTimeZone":Ljava/util/TimeZone;
    :goto_0
    return-object p1

    .restart local p1    # "originalTimeZone":Ljava/util/TimeZone;
    :cond_2
    move-object p1, v0

    goto :goto_0
.end method

.method public static getTimeZoneWithCapitalCity(Ljava/lang/String;Z)Ljava/util/TimeZone;
    .locals 10
    .param p0, "iso"    # Ljava/lang/String;
    .param p1, "canGet"    # Z

    .prologue
    const/4 v9, 0x0

    .line 305
    if-eqz p1, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 306
    :cond_0
    return-object v9

    .line 308
    :cond_1
    invoke-static {p0}, Landroid/util/TimeUtils;->getTimeZones(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 309
    .local v5, "zones":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/TimeZone;>;"
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    .line 310
    .local v0, "currentZoneID":Ljava/lang/String;
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "zone$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/TimeZone;

    .line 311
    .local v3, "zone":Ljava/util/TimeZone;
    invoke-virtual {v3}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 312
    const-string/jumbo v6, "GSSTInjector"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getTimeZonesWithCapitalCity iso "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " , current zone ID "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    return-object v9

    .line 316
    .end local v3    # "zone":Ljava/util/TimeZone;
    :cond_3
    const/4 v2, 0x0

    .line 317
    .local v2, "ret":Ljava/util/TimeZone;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v6, Lcom/android/internal/telephony/ServiceStateTrackerInjector;->sTimeZoneIdOfCapitalCity:[[Ljava/lang/String;

    array-length v6, v6

    if-ge v1, v6, :cond_4

    .line 318
    sget-object v6, Lcom/android/internal/telephony/ServiceStateTrackerInjector;->sTimeZoneIdOfCapitalCity:[[Ljava/lang/String;

    aget-object v6, v6, v1

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 319
    sget-object v6, Lcom/android/internal/telephony/ServiceStateTrackerInjector;->sTimeZoneIdOfCapitalCity:[[Ljava/lang/String;

    aget-object v6, v6, v1

    const/4 v7, 0x1

    aget-object v6, v6, v7

    invoke-static {v6}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    .line 323
    .end local v2    # "ret":Ljava/util/TimeZone;
    :cond_4
    const-string/jumbo v7, "GSSTInjector"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getTimeZonesWithCapitalCity iso="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, " zone.getID="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-nez v2, :cond_6

    const-string/jumbo v6, ""

    :goto_1
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    return-object v2

    .line 317
    .restart local v2    # "ret":Ljava/util/TimeZone;
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 323
    .end local v2    # "ret":Ljava/util/TimeZone;
    :cond_6
    invoke-virtual {v2}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v6

    goto :goto_1
.end method

.method public static handleMccMncChange(Landroid/content/Context;Landroid/telephony/ServiceState;Landroid/telephony/ServiceState;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "newSS"    # Landroid/telephony/ServiceState;
    .param p2, "ss"    # Landroid/telephony/ServiceState;

    .prologue
    .line 474
    invoke-static {}, Lcom/android/internal/telephony/vsim/CountryMonitor;->getInstance()Lcom/android/internal/telephony/vsim/CountryMonitor;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/internal/telephony/vsim/CountryMonitor;->handleMccMncChange(Landroid/content/Context;Landroid/telephony/ServiceState;Landroid/telephony/ServiceState;)V

    .line 473
    return-void
.end method

.method public static init(Lcom/android/internal/telephony/ServiceStateTracker;)V
    .locals 7
    .param p0, "sst"    # Lcom/android/internal/telephony/ServiceStateTracker;

    .prologue
    const/4 v6, 0x0

    .line 44
    sget-object v4, Lcom/android/internal/telephony/ServiceStateTrackerInjector;->sReceiveNitz:[Z

    if-nez v4, :cond_1

    .line 45
    sget v4, Lmiui/telephony/MiuiTelephony;->PHONE_COUNT:I

    new-array v4, v4, [Z

    sput-object v4, Lcom/android/internal/telephony/ServiceStateTrackerInjector;->sReceiveNitz:[Z

    .line 46
    sget v4, Lmiui/telephony/MiuiTelephony;->PHONE_COUNT:I

    new-array v4, v4, [Ljava/lang/String;

    sput-object v4, Lcom/android/internal/telephony/ServiceStateTrackerInjector;->sNitzOperator:[Ljava/lang/String;

    .line 47
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget v4, Lmiui/telephony/MiuiTelephony;->PHONE_COUNT:I

    if-ge v1, v4, :cond_0

    .line 48
    sget-object v4, Lcom/android/internal/telephony/ServiceStateTrackerInjector;->sReceiveNitz:[Z

    aput-boolean v6, v4, v1

    .line 49
    sget-object v4, Lcom/android/internal/telephony/ServiceStateTrackerInjector;->sNitzOperator:[Ljava/lang/String;

    const-string/jumbo v5, ""

    aput-object v5, v4, v1

    .line 47
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 51
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v4, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v0, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 52
    .local v0, "filter":Landroid/content/IntentFilter;
    new-instance v2, Lcom/android/internal/telephony/ServiceStateTrackerInjector$3;

    invoke-direct {v2}, Lcom/android/internal/telephony/ServiceStateTrackerInjector$3;-><init>()V

    .line 69
    .local v2, "mIntentReceiver":Landroid/content/BroadcastReceiver;
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 72
    sget-object v4, Lcom/android/internal/telephony/ServiceStateTrackerInjector;->sScreenStateListener:Lcom/android/internal/telephony/RILInjector$ScreenStateListener;

    invoke-static {v4}, Lcom/android/internal/telephony/RILInjector;->registerScreenStateListener(Lcom/android/internal/telephony/RILInjector$ScreenStateListener;)V

    .line 74
    .end local v0    # "filter":Landroid/content/IntentFilter;
    .end local v1    # "i":I
    .end local v2    # "mIntentReceiver":Landroid/content/BroadcastReceiver;
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v3

    .line 75
    .local v3, "slotId":I
    sget-object v4, Lcom/android/internal/telephony/ServiceStateTrackerInjector;->sReceiveNitz:[Z

    aput-boolean v6, v4, v3

    .line 76
    sget-object v4, Lcom/android/internal/telephony/ServiceStateTrackerInjector;->sNitzOperator:[Ljava/lang/String;

    const-string/jumbo v5, ""

    aput-object v5, v4, v3

    .line 43
    return-void
.end method

.method private static is4gDataRat(I)Z
    .locals 1
    .param p0, "dataRat"    # I

    .prologue
    .line 462
    const/16 v0, 0xe

    if-eq p0, v0, :cond_0

    .line 463
    const/16 v0, 0x13

    if-ne p0, v0, :cond_1

    .line 464
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 466
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private static isHspaDataRat(I)Z
    .locals 1
    .param p0, "dataRat"    # I

    .prologue
    .line 451
    const/16 v0, 0x9

    if-eq p0, v0, :cond_0

    .line 452
    const/16 v0, 0xa

    if-ne p0, v0, :cond_1

    .line 455
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 453
    :cond_1
    const/16 v0, 0xb

    if-eq p0, v0, :cond_0

    .line 454
    const/16 v0, 0xf

    if-eq p0, v0, :cond_0

    .line 457
    const/4 v0, 0x0

    return v0
.end method

.method public static isOperatorConsideredNonRoaming(Lcom/android/internal/telephony/ServiceStateTracker;Ljava/lang/String;)Z
    .locals 9
    .param p0, "sst"    # Lcom/android/internal/telephony/ServiceStateTracker;
    .param p1, "newOperatorNumeric"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x0

    .line 163
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v4, :cond_0

    if-nez p1, :cond_1

    .line 164
    :cond_0
    return v5

    .line 163
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v4, v6, :cond_0

    .line 166
    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 167
    .local v2, "networkMcc":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/IccRecords;->getIMSI()Ljava/lang/String;

    move-result-object v0

    .line 168
    .local v0, "imsi":Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v4, v6, :cond_3

    .line 169
    :cond_2
    return v5

    .line 171
    :cond_3
    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 172
    .local v3, "simMcc":Ljava/lang/String;
    sget-object v6, Lcom/android/internal/telephony/ServiceStateTrackerInjector;->NON_ROAMING_MCC:[[Ljava/lang/String;

    array-length v7, v6

    move v4, v5

    :goto_0
    if-ge v4, v7, :cond_5

    aget-object v1, v6, v4

    .line 173
    .local v1, "mccArray":[Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-static {v1, v3}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 174
    const-string/jumbo v4, "GSSTInjector"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Consider "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " with sim mcc "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " as non roaming."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    const/4 v4, 0x1

    return v4

    .line 172
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 178
    .end local v1    # "mccArray":[Ljava/lang/String;
    :cond_5
    return v5
.end method

.method public static processForCustSingleSimDevice()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 369
    sget-object v0, Lcom/android/internal/telephony/ServiceStateTrackerInjector;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 370
    return-void

    .line 372
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/ServiceStateTrackerInjector$4;

    invoke-direct {v0}, Lcom/android/internal/telephony/ServiceStateTrackerInjector$4;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTrackerInjector$4;->start()V

    .line 380
    sget-object v0, Lcom/android/internal/telephony/ServiceStateTrackerInjector;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 368
    return-void
.end method

.method private static processScreenStateChange()V
    .locals 9

    .prologue
    const/4 v4, 0x0

    .line 417
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v5

    array-length v6, v5

    move v3, v4

    .local v0, "newRat":I
    .local v1, "oldRat":I
    .local v2, "phone":Lcom/android/internal/telephony/Phone;
    :goto_0
    if-ge v3, v6, :cond_2

    aget-object v2, v5, v3

    .line 418
    .end local v0    # "newRat":I
    .end local v1    # "oldRat":I
    sget-object v7, Lcom/android/internal/telephony/ServiceStateTrackerInjector;->sNewScreenOffIgnoreRat:[I

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v8

    aget v0, v7, v8

    .line 419
    .restart local v0    # "newRat":I
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v7

    iget-object v7, v7, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v7}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v1

    .line 420
    .restart local v1    # "oldRat":I
    if-eqz v0, :cond_1

    .line 421
    if-eq v0, v1, :cond_1

    .line 422
    invoke-static {v1}, Lcom/android/internal/telephony/ServiceStateTrackerInjector;->isHspaDataRat(I)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static {v1}, Lcom/android/internal/telephony/ServiceStateTrackerInjector;->is4gDataRat(I)Z

    move-result v7

    .line 420
    if-eqz v7, :cond_1

    .line 424
    :cond_0
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->pollStateDoneScreenOnTriggered(I)V

    .line 427
    :cond_1
    sget-object v7, Lcom/android/internal/telephony/ServiceStateTrackerInjector;->sNewScreenOffIgnoreRat:[I

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v8

    aput v4, v7, v8

    .line 417
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 416
    :cond_2
    return-void
.end method

.method public static sendIssueIntent(Lcom/android/internal/telephony/ServiceStateTracker;Ljava/lang/String;)V
    .locals 4
    .param p0, "sst"    # Lcom/android/internal/telephony/ServiceStateTracker;
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 102
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_ON:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v1, v2, :cond_0

    .line 103
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.xiaomi.issuecollection.TelephonyIssueReceiver.RECEIVE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 104
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "tag"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    const-string/jumbo v1, "UTCtime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 106
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v1

    invoke-static {v0, v1}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 107
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 101
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public static setReceivedNitz(IZ)V
    .locals 3
    .param p0, "phoneId"    # I
    .param p1, "received"    # Z

    .prologue
    .line 221
    sget-object v0, Lcom/android/internal/telephony/ServiceStateTrackerInjector;->sReceiveNitz:[Z

    aput-boolean p1, v0, p0

    .line 222
    const-string/jumbo v0, "GSSTInjector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setReceivedNitz phoneId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " received="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    return-void
.end method

.method public static setReceivedNitzAndOperator(IZLjava/lang/String;)V
    .locals 3
    .param p0, "phoneId"    # I
    .param p1, "received"    # Z
    .param p2, "nitzOperator"    # Ljava/lang/String;

    .prologue
    .line 231
    sget-object v0, Lcom/android/internal/telephony/ServiceStateTrackerInjector;->sReceiveNitz:[Z

    aput-boolean p1, v0, p0

    .line 232
    sget-object v1, Lcom/android/internal/telephony/ServiceStateTrackerInjector;->sNitzOperator:[Ljava/lang/String;

    if-nez p2, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    aput-object v0, v1, p0

    .line 233
    const-string/jumbo v0, "GSSTInjector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setReceivedNitz phoneId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " received="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " nitzOperator="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    return-void

    :cond_0
    move-object v0, p2

    .line 232
    goto :goto_0
.end method

.method public static setReceivedNitzOperator(ILjava/lang/String;)V
    .locals 3
    .param p0, "phoneId"    # I
    .param p1, "nitzOperator"    # Ljava/lang/String;

    .prologue
    .line 226
    sget-object v1, Lcom/android/internal/telephony/ServiceStateTrackerInjector;->sNitzOperator:[Ljava/lang/String;

    if-nez p1, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    aput-object v0, v1, p0

    .line 227
    const-string/jumbo v0, "GSSTInjector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setReceivedNitzOperator phoneId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " nitzOperator="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    return-void

    :cond_0
    move-object v0, p1

    .line 226
    goto :goto_0
.end method

.method public static tryResetDataRat(Lcom/android/internal/telephony/ServiceStateTracker;)V
    .locals 5
    .param p0, "sst"    # Lcom/android/internal/telephony/ServiceStateTracker;

    .prologue
    .line 432
    sget-boolean v2, Lcom/android/internal/telephony/RILInjector;->sIsScreenOn:Z

    if-eqz v2, :cond_0

    return-void

    .line 435
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v1

    .line 436
    .local v1, "oldRat":I
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v0

    .line 438
    .local v0, "newRat":I
    invoke-static {v1}, Lcom/android/internal/telephony/ServiceStateTrackerInjector;->isHspaDataRat(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v0}, Lcom/android/internal/telephony/ServiceStateTrackerInjector;->isHspaDataRat(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 439
    :cond_1
    invoke-static {v1}, Lcom/android/internal/telephony/ServiceStateTrackerInjector;->is4gDataRat(I)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {v0}, Lcom/android/internal/telephony/ServiceStateTrackerInjector;->is4gDataRat(I)Z

    move-result v2

    .line 438
    if-eqz v2, :cond_3

    .line 440
    :cond_2
    sget-object v2, Lcom/android/internal/telephony/ServiceStateTrackerInjector;->sNewScreenOffIgnoreRat:[I

    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v3

    aput v0, v2, v3

    .line 441
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2, v1}, Landroid/telephony/ServiceState;->setRilDataRadioTechnology(I)V

    .line 442
    const-string/jumbo v2, "GSSTInjector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "screen state is OFF, reset new rat "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " to old rat"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    :goto_0
    return-void

    .line 444
    :cond_3
    sget-object v2, Lcom/android/internal/telephony/ServiceStateTrackerInjector;->sNewScreenOffIgnoreRat:[I

    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v3

    const/4 v4, 0x0

    aput v4, v2, v3

    goto :goto_0
.end method

.method public static updateNitzInfo(IILjava/lang/String;)Z
    .locals 8
    .param p0, "slot"    # I
    .param p1, "zoneOffset"    # I
    .param p2, "currentOperator"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x0

    .line 270
    sget-object v3, Lcom/android/internal/telephony/ServiceStateTrackerInjector;->sReceiveNitz:[Z

    aget-boolean v3, v3, p0

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/internal/telephony/ServiceStateTrackerInjector;->sNitzOperator:[Ljava/lang/String;

    aget-object v3, v3, p0

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 271
    const-string/jumbo v3, "GSSTInjector"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateNitzInfo from  slot="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " NitzOperator old="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/ServiceStateTrackerInjector;->sNitzOperator:[Ljava/lang/String;

    aget-object v5, v5, p0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " new="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    sget-object v3, Lcom/android/internal/telephony/ServiceStateTrackerInjector;->sNitzOperator:[Ljava/lang/String;

    aput-object p2, v3, p0

    .line 274
    :cond_0
    if-nez p1, :cond_1

    .line 275
    return v6

    .line 277
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v3, v7, :cond_2

    invoke-virtual {p2, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 278
    .local v0, "currentMcc":Ljava/lang/String;
    :goto_0
    const-string/jumbo v3, "460"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 280
    return v6

    .line 277
    .end local v0    # "currentMcc":Ljava/lang/String;
    :cond_2
    const-string/jumbo v0, ""

    .restart local v0    # "currentMcc":Ljava/lang/String;
    goto :goto_0

    .line 282
    :cond_3
    sget-object v3, Lcom/android/internal/telephony/ServiceStateTrackerInjector;->sNitzOperator:[Ljava/lang/String;

    aget-object v3, v3, p0

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 284
    return v6

    .line 287
    :cond_4
    invoke-static {v0}, Lcom/android/internal/telephony/ServiceStateTrackerInjector;->getTimeZoneByMcc(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    .line 288
    .local v1, "mccZone":Ljava/util/TimeZone;
    if-nez v1, :cond_5

    .line 289
    return v6

    .line 291
    :cond_5
    invoke-virtual {v1}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v2

    .line 292
    .local v2, "mccZoneOffset":I
    const-string/jumbo v3, "GSSTInjector"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "needResetTimezone slot="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " mccZoneOffset="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 293
    const-string/jumbo v5, " zoneOffset="

    .line 292
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 293
    const-string/jumbo v5, " nitzOperator"

    .line 292
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 293
    sget-object v5, Lcom/android/internal/telephony/ServiceStateTrackerInjector;->sNitzOperator:[Ljava/lang/String;

    aget-object v5, v5, p0

    .line 292
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    if-ne p1, v2, :cond_7

    .line 295
    sget-object v3, Lcom/android/internal/telephony/ServiceStateTrackerInjector;->sNitzOperator:[Ljava/lang/String;

    aget-object v3, v3, p0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v3, v7, :cond_6

    sget-object v3, Lcom/android/internal/telephony/ServiceStateTrackerInjector;->sNitzOperator:[Ljava/lang/String;

    aget-object v3, v3, p0

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 294
    if-eqz v3, :cond_7

    .line 297
    return v6

    .line 295
    :cond_6
    const-string/jumbo v3, ""

    goto :goto_1

    .line 299
    :cond_7
    sget-object v3, Lcom/android/internal/telephony/ServiceStateTrackerInjector;->sReceiveNitz:[Z

    aput-boolean v6, v3, p0

    .line 300
    sget-object v3, Lcom/android/internal/telephony/ServiceStateTrackerInjector;->sNitzOperator:[Ljava/lang/String;

    const-string/jumbo v4, ""

    aput-object v4, v3, p0

    .line 301
    const/4 v3, 0x1

    return v3
.end method
