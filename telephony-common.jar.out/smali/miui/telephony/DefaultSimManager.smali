.class public Lmiui/telephony/DefaultSimManager;
.super Ljava/lang/Object;
.source "DefaultSimManager.java"

# interfaces
.implements Lmiui/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
.implements Lmiui/telephony/VirtualSimUtils$VirtualSimListenner;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/telephony/DefaultSimManager$1;,
        Lmiui/telephony/DefaultSimManager$DataSlotListener;,
        Lmiui/telephony/DefaultSimManager$ImsiListener;,
        Lmiui/telephony/DefaultSimManager$TelephonyBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final EVENT_ICC_CHANGED:I = 0x3

.field private static final EVENT_IMSI_READY:I = 0x4

.field private static final EVENT_INIT_DEFAULT_SLOT:I = 0x0

.field private static final EVENT_SYNC_DEFAULT_DATA_SLOT:I = 0x1

.field private static final EVENT_SYNC_DEFAULT_VOICE_SLOT:I = 0x2

.field public static final IS_CUSTOMIZED_FOR_CM:Z

.field public static final KEY_IS_USE_PREFRRED:Ljava/lang/String; = "key_is_use_preferred"

.field public static final KEY_PREFERRED_DATA_SLOT:Ljava/lang/String; = "key_preferred_data_slot"

.field private static final LAST_ICC_ID_PROPERTY:Ljava/lang/String; = "persist.radio.iccid"

.field private static LOG_TAG:Ljava/lang/String; = null

.field private static final WAITING_SIM_TIME:I = 0xfa0

.field private static sInstance:Lmiui/telephony/DefaultSimManager;


# instance fields
.field private m3gpp2IccRecords:[Lcom/android/internal/telephony/uicc/IccRecords;

.field private m3gppIccRecords:[Lcom/android/internal/telephony/uicc/IccRecords;

.field private mDataSlotListener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lmiui/telephony/DefaultSimManager$DataSlotListener;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultSlotSelector:Lmiui/telephony/DefaultSlotSelector;

.field private mHandler:Landroid/os/Handler;

.field private mImsiListener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lmiui/telephony/DefaultSimManager$ImsiListener;",
            ">;"
        }
    .end annotation
.end field

.field private mInitModes:Ljava/lang/String;

.field private mIsUsePreferred:Z

.field private mLastSubInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lmiui/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mOldDefaultDataSlotId:I

.field private mOldDefaultDataSubId:I

.field private mPreferredDataSlot:I

.field private mPropertyDefautlDataSlotId:I

.field private mPropertyDefautlVoiceSlotId:I

.field private final mSc:Lcom/android/internal/telephony/SubscriptionController;

.field private mSimApplicationNum:[I

.field private mSimInsertStates:[I

.field private final mSimStatus:[Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lmiui/telephony/DefaultSimManager;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lmiui/telephony/DefaultSimManager;)[Lcom/android/internal/telephony/uicc/IccRecords;
    .locals 1

    iget-object v0, p0, Lmiui/telephony/DefaultSimManager;->m3gpp2IccRecords:[Lcom/android/internal/telephony/uicc/IccRecords;

    return-object v0
.end method

.method static synthetic -get2(Lmiui/telephony/DefaultSimManager;)[Lcom/android/internal/telephony/uicc/IccRecords;
    .locals 1

    iget-object v0, p0, Lmiui/telephony/DefaultSimManager;->m3gppIccRecords:[Lcom/android/internal/telephony/uicc/IccRecords;

    return-object v0
.end method

.method static synthetic -get3(Lmiui/telephony/DefaultSimManager;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lmiui/telephony/DefaultSimManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get4(Lmiui/telephony/DefaultSimManager;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lmiui/telephony/DefaultSimManager;->mLastSubInfos:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get5(Lmiui/telephony/DefaultSimManager;)[I
    .locals 1

    iget-object v0, p0, Lmiui/telephony/DefaultSimManager;->mSimApplicationNum:[I

    return-object v0
.end method

.method static synthetic -set0(Lmiui/telephony/DefaultSimManager;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lmiui/telephony/DefaultSimManager;->mLastSubInfos:Ljava/util/List;

    return-object p1
.end method

.method static synthetic -wrap0(Lmiui/telephony/DefaultSimManager;Ljava/util/List;)Z
    .locals 1
    .param p1, "subInfos"    # Ljava/util/List;

    .prologue
    invoke-direct {p0, p1}, Lmiui/telephony/DefaultSimManager;->isAllInfoReady(Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lmiui/telephony/DefaultSimManager;)Z
    .locals 1

    invoke-direct {p0}, Lmiui/telephony/DefaultSimManager;->needListenImsiReady()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lmiui/telephony/DefaultSimManager;)V
    .locals 0

    invoke-direct {p0}, Lmiui/telephony/DefaultSimManager;->onDefaultVoiceSubscriptionChanged()V

    return-void
.end method

.method static synthetic -wrap3(Lmiui/telephony/DefaultSimManager;Ljava/util/List;)V
    .locals 0
    .param p1, "subInfos"    # Ljava/util/List;

    .prologue
    invoke-direct {p0, p1}, Lmiui/telephony/DefaultSimManager;->syncDataSubscription(Ljava/util/List;)V

    return-void
.end method

.method static synthetic -wrap4(Lmiui/telephony/DefaultSimManager;Ljava/util/List;)V
    .locals 0
    .param p1, "subInfos"    # Ljava/util/List;

    .prologue
    invoke-direct {p0, p1}, Lmiui/telephony/DefaultSimManager;->syncVoiceSubscription(Ljava/util/List;)V

    return-void
.end method

.method static synthetic -wrap5(Lmiui/telephony/DefaultSimManager;Lcom/android/internal/telephony/uicc/UiccCard;I)V
    .locals 0
    .param p1, "card"    # Lcom/android/internal/telephony/uicc/UiccCard;
    .param p2, "slot"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lmiui/telephony/DefaultSimManager;->updateCard(Lcom/android/internal/telephony/uicc/UiccCard;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 46
    const-string/jumbo v0, "DefaultSimManager"

    sput-object v0, Lmiui/telephony/DefaultSimManager;->LOG_TAG:Ljava/lang/String;

    .line 51
    const-string/jumbo v0, "cm"

    invoke-static {}, Lmiui/util/Network;->getOperatorType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lmiui/telephony/DefaultSimManager;->IS_CUSTOMIZED_FOR_CM:Z

    .line 45
    return-void
.end method

.method private constructor <init>()V
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lmiui/telephony/DefaultSimManager;->mDataSlotListener:Ljava/util/List;

    .line 54
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lmiui/telephony/DefaultSimManager;->mImsiListener:Ljava/util/List;

    .line 58
    const-string/jumbo v3, "persist.radio.default.data"

    sget v4, Lmiui/telephony/SubscriptionManager;->INVALID_SLOT_ID:I

    .line 57
    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lmiui/telephony/DefaultSimManager;->mPropertyDefautlDataSlotId:I

    .line 60
    const-string/jumbo v3, "persist.radio.default.voice"

    sget v4, Lmiui/telephony/SubscriptionManager;->INVALID_SLOT_ID:I

    .line 59
    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lmiui/telephony/DefaultSimManager;->mPropertyDefautlVoiceSlotId:I

    .line 97
    new-instance v3, Lmiui/telephony/DefaultSimManager$1;

    invoke-direct {v3, p0}, Lmiui/telephony/DefaultSimManager$1;-><init>(Lmiui/telephony/DefaultSimManager;)V

    iput-object v3, p0, Lmiui/telephony/DefaultSimManager;->mHandler:Landroid/os/Handler;

    .line 155
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v3

    iput-object v3, p0, Lmiui/telephony/DefaultSimManager;->mSc:Lcom/android/internal/telephony/SubscriptionController;

    .line 156
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 157
    .local v1, "phones":[Lcom/android/internal/telephony/Phone;
    array-length v3, v1

    new-array v3, v3, [Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    iput-object v3, p0, Lmiui/telephony/DefaultSimManager;->mSimStatus:[Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    .line 158
    sget v3, Lmiui/telephony/MiuiTelephony;->PHONE_COUNT:I

    new-array v3, v3, [I

    iput-object v3, p0, Lmiui/telephony/DefaultSimManager;->mSimApplicationNum:[I

    .line 159
    sget v3, Lmiui/telephony/MiuiTelephony;->PHONE_COUNT:I

    new-array v3, v3, [Lcom/android/internal/telephony/uicc/IccRecords;

    iput-object v3, p0, Lmiui/telephony/DefaultSimManager;->m3gppIccRecords:[Lcom/android/internal/telephony/uicc/IccRecords;

    .line 160
    sget v3, Lmiui/telephony/MiuiTelephony;->PHONE_COUNT:I

    new-array v3, v3, [Lcom/android/internal/telephony/uicc/IccRecords;

    iput-object v3, p0, Lmiui/telephony/DefaultSimManager;->m3gpp2IccRecords:[Lcom/android/internal/telephony/uicc/IccRecords;

    .line 161
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v3, Lmiui/telephony/MiuiTelephony;->PHONE_COUNT:I

    if-ge v0, v3, :cond_0

    .line 162
    iget-object v3, p0, Lmiui/telephony/DefaultSimManager;->mSimStatus:[Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    sget-object v4, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ERROR:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    aput-object v4, v3, v0

    .line 163
    iget-object v3, p0, Lmiui/telephony/DefaultSimManager;->mSimApplicationNum:[I

    aput v7, v3, v0

    .line 164
    iget-object v3, p0, Lmiui/telephony/DefaultSimManager;->m3gppIccRecords:[Lcom/android/internal/telephony/uicc/IccRecords;

    aput-object v6, v3, v0

    .line 165
    iget-object v3, p0, Lmiui/telephony/DefaultSimManager;->m3gpp2IccRecords:[Lcom/android/internal/telephony/uicc/IccRecords;

    aput-object v6, v3, v0

    .line 161
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 168
    :cond_0
    iget v3, p0, Lmiui/telephony/DefaultSimManager;->mPropertyDefautlDataSlotId:I

    iput v3, p0, Lmiui/telephony/DefaultSimManager;->mOldDefaultDataSlotId:I

    .line 169
    new-instance v3, Lmiui/telephony/DefaultSimManager$TelephonyBroadcastReceiver;

    invoke-direct {v3, p0, v6}, Lmiui/telephony/DefaultSimManager$TelephonyBroadcastReceiver;-><init>(Lmiui/telephony/DefaultSimManager;Lmiui/telephony/DefaultSimManager$TelephonyBroadcastReceiver;)V

    sget-object v4, Lmiui/telephony/MiuiTelephony;->sContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lmiui/telephony/DefaultSimManager$TelephonyBroadcastReceiver;->register(Landroid/content/Context;)V

    .line 171
    iget-object v3, p0, Lmiui/telephony/DefaultSimManager;->mSc:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v3}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v3

    iput v3, p0, Lmiui/telephony/DefaultSimManager;->mOldDefaultDataSubId:I

    .line 172
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v3

    iget-object v4, p0, Lmiui/telephony/DefaultSimManager;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x3

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/internal/telephony/uicc/UiccController;->registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 173
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v3

    invoke-virtual {v3, p0}, Lmiui/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Lmiui/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 174
    sget-object v3, Lmiui/telephony/MiuiTelephony;->sContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "preferred_network_mode"

    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lmiui/telephony/DefaultSimManager;->mInitModes:Ljava/lang/String;

    .line 175
    invoke-static {}, Lmiui/telephony/VirtualSimUtils;->init()V

    .line 176
    invoke-static {}, Lmiui/telephony/VirtualSimUtils;->getInstance()Lmiui/telephony/VirtualSimUtils;

    move-result-object v3

    invoke-virtual {v3, p0}, Lmiui/telephony/VirtualSimUtils;->addVirtualSimChangedListener(Lmiui/telephony/VirtualSimUtils$VirtualSimListenner;)V

    .line 177
    sget-object v3, Lmiui/telephony/MiuiTelephony;->sContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 178
    .local v2, "sp":Landroid/content/SharedPreferences;
    const-string/jumbo v3, "key_is_use_preferred"

    invoke-interface {v2, v3, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lmiui/telephony/DefaultSimManager;->mIsUsePreferred:Z

    .line 179
    const-string/jumbo v3, "key_preferred_data_slot"

    sget v4, Lmiui/telephony/SubscriptionManager;->INVALID_SLOT_ID:I

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lmiui/telephony/DefaultSimManager;->mPreferredDataSlot:I

    .line 154
    return-void
.end method

.method private broadcastDataSlotChanged(I)V
    .locals 4
    .param p1, "newSlotId"    # I

    .prologue
    .line 545
    sget-object v1, Lmiui/telephony/DefaultSimManager;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "broadcastDataSlotChanged old="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lmiui/telephony/DefaultSimManager;->mOldDefaultDataSlotId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", new="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "miui.intent.action.ACTION_DEFAULT_DATA_SLOT_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 547
    .local v0, "i":Landroid/content/Intent;
    const-string/jumbo v1, "old_data_slot"

    iget v2, p0, Lmiui/telephony/DefaultSimManager;->mOldDefaultDataSlotId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 548
    invoke-static {v0, p1}, Lmiui/telephony/SubscriptionManager;->putSlotIdExtra(Landroid/content/Intent;I)V

    .line 549
    sget-object v1, Lmiui/telephony/MiuiTelephony;->sContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 550
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lmiui/telephony/DefaultSimManager;->notifyDataSlotReady(Z)V

    .line 544
    return-void
.end method

.method private broadcastDataSlotReady(I[I)V
    .locals 5
    .param p1, "slotId"    # I
    .param p2, "simInsertStates"    # [I

    .prologue
    .line 316
    if-nez p2, :cond_0

    const-string/jumbo v1, "null"

    .line 317
    .local v1, "states":Ljava/lang/String;
    :goto_0
    sget-object v2, Lmiui/telephony/DefaultSimManager;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "broadcastDataSlotReady dataSlot = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", sim state =["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "miui.intent.action.ACTION_DEFAULT_DATA_SLOT_READY"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 319
    .local v0, "i":Landroid/content/Intent;
    invoke-static {v0, p1}, Lmiui/telephony/SubscriptionManager;->putSlotIdExtra(Landroid/content/Intent;I)V

    .line 320
    const-string/jumbo v2, "sim_insert_state_array"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 321
    sget-object v2, Lmiui/telephony/MiuiTelephony;->sContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 322
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lmiui/telephony/DefaultSimManager;->notifyDataSlotReady(Z)V

    .line 315
    return-void

    .line 316
    .end local v0    # "i":Landroid/content/Intent;
    .end local v1    # "states":Ljava/lang/String;
    :cond_0
    invoke-direct {p0, p2}, Lmiui/telephony/DefaultSimManager;->simInsertStatesToString([I)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "states":Ljava/lang/String;
    goto :goto_0
.end method

.method private getDataSlotForVirtualSim(ILjava/util/List;)I
    .locals 9
    .param p1, "ds"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lmiui/telephony/SubscriptionInfo;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p2, "sis":Ljava/util/List;, "Ljava/util/List<Lmiui/telephony/SubscriptionInfo;>;"
    const/4 v8, 0x0

    .line 709
    move v1, p1

    .line 710
    .local v1, "ret":I
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_4

    .line 711
    sget-object v5, Lmiui/telephony/MiuiTelephony;->sContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 712
    .local v2, "sp":Landroid/content/SharedPreferences;
    const-string/jumbo v5, "key_is_use_preferred"

    invoke-interface {v2, v5, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 713
    .local v3, "usePreferred":Z
    sget v0, Lmiui/telephony/SubscriptionManager;->INVALID_SLOT_ID:I

    .line 714
    .local v0, "preferredSlot":I
    if-eqz v3, :cond_0

    .line 715
    const-string/jumbo v5, "key_preferred_data_slot"

    sget v6, Lmiui/telephony/SubscriptionManager;->INVALID_SLOT_ID:I

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 717
    :cond_0
    invoke-static {}, Lmiui/telephony/VirtualSimUtils;->getInstance()Lmiui/telephony/VirtualSimUtils;

    move-result-object v5

    invoke-virtual {v5}, Lmiui/telephony/VirtualSimUtils;->getVirtualSimSlotId()I

    move-result v4

    .line 718
    .local v4, "virtualSlot":I
    sget v5, Lmiui/telephony/SubscriptionManager;->INVALID_SLOT_ID:I

    if-eq v0, v5, :cond_3

    .line 721
    move v1, v0

    .line 725
    :cond_1
    :goto_0
    sget-object v5, Lmiui/telephony/DefaultSimManager;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getDataSlotForVirtualSim ret="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " usePreferred="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 726
    const-string/jumbo v7, " preferredSlot="

    .line 725
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 726
    const-string/jumbo v7, " virtualSLotId="

    .line 725
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    .end local v0    # "preferredSlot":I
    .end local v2    # "sp":Landroid/content/SharedPreferences;
    .end local v3    # "usePreferred":Z
    .end local v4    # "virtualSlot":I
    :cond_2
    :goto_1
    return v1

    .line 722
    .restart local v0    # "preferredSlot":I
    .restart local v2    # "sp":Landroid/content/SharedPreferences;
    .restart local v3    # "usePreferred":Z
    .restart local v4    # "virtualSlot":I
    :cond_3
    sget v5, Lmiui/telephony/SubscriptionManager;->INVALID_SLOT_ID:I

    if-eq v4, v5, :cond_1

    .line 723
    move v1, v4

    goto :goto_0

    .line 727
    .end local v0    # "preferredSlot":I
    .end local v2    # "sp":Landroid/content/SharedPreferences;
    .end local v3    # "usePreferred":Z
    .end local v4    # "virtualSlot":I
    :cond_4
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    .line 728
    invoke-static {}, Lmiui/telephony/VirtualSimUtils;->getInstance()Lmiui/telephony/VirtualSimUtils;

    move-result-object v5

    invoke-virtual {v5}, Lmiui/telephony/VirtualSimUtils;->isVirtualSimEnabled()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 729
    invoke-interface {p2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmiui/telephony/SubscriptionInfo;

    invoke-virtual {v5}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v5

    sget-object v6, Lmiui/telephony/MiuiTelephony;->sContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/provider/MiuiSettings$VirtualSim;->getVirtualSimSlotId(Landroid/content/Context;)I

    move-result v6

    if-ne v5, v6, :cond_5

    .line 731
    sget-object v5, Lmiui/telephony/DefaultSimManager;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v6, "getDataSlotForVirtualSim restore for only virtual sim inserted"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    const-string/jumbo v6, "key_is_use_preferred"

    const-string/jumbo v7, "key_preferred_data_slot"

    invoke-interface {p2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmiui/telephony/SubscriptionInfo;

    invoke-virtual {v5}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v5

    invoke-static {v6, v8, v7, v5}, Lmiui/telephony/DefaultSimManager;->storeValues(Ljava/lang/String;ZLjava/lang/String;I)V

    goto :goto_1

    .line 735
    :cond_5
    sget-object v5, Lmiui/telephony/DefaultSimManager;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v6, "getDataSlotForVirtualSim waiting for virtual sim ready"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 738
    :cond_6
    sget-object v5, Lmiui/telephony/DefaultSimManager;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v6, "getDataSlotForVirtualSim restore for virtual sim disabled"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    const-string/jumbo v5, "key_is_use_preferred"

    const-string/jumbo v6, "key_preferred_data_slot"

    sget v7, Lmiui/telephony/SubscriptionManager;->INVALID_SLOT_ID:I

    invoke-static {v5, v8, v6, v7}, Lmiui/telephony/DefaultSimManager;->storeValues(Ljava/lang/String;ZLjava/lang/String;I)V

    goto :goto_1
.end method

.method public static getDefaultDataSlotId()I
    .locals 2

    .prologue
    .line 239
    sget-object v0, Lmiui/telephony/DefaultSimManager;->sInstance:Lmiui/telephony/DefaultSimManager;

    if-eqz v0, :cond_0

    sget-object v0, Lmiui/telephony/DefaultSimManager;->sInstance:Lmiui/telephony/DefaultSimManager;

    iget v0, v0, Lmiui/telephony/DefaultSimManager;->mPropertyDefautlDataSlotId:I

    sget v1, Lmiui/telephony/SubscriptionManager;->INVALID_SLOT_ID:I

    if-eq v0, v1, :cond_0

    .line 240
    sget-object v0, Lmiui/telephony/DefaultSimManager;->sInstance:Lmiui/telephony/DefaultSimManager;

    iget v0, v0, Lmiui/telephony/DefaultSimManager;->mPropertyDefautlDataSlotId:I

    return v0

    .line 242
    :cond_0
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getDefaultDataSlotId()I

    move-result v0

    return v0
.end method

.method public static getDefaultVoiceSlotId()I
    .locals 2

    .prologue
    .line 246
    sget-object v0, Lmiui/telephony/DefaultSimManager;->sInstance:Lmiui/telephony/DefaultSimManager;

    if-eqz v0, :cond_0

    .line 247
    sget-object v0, Lmiui/telephony/DefaultSimManager;->sInstance:Lmiui/telephony/DefaultSimManager;

    iget v0, v0, Lmiui/telephony/DefaultSimManager;->mPropertyDefautlVoiceSlotId:I

    return v0

    .line 249
    :cond_0
    const-string/jumbo v0, "persist.radio.default.voice"

    .line 250
    sget v1, Lmiui/telephony/SubscriptionManager;->INVALID_SLOT_ID:I

    .line 249
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getInstance()Lmiui/telephony/DefaultSimManager;
    .locals 1

    .prologue
    .line 187
    sget-object v0, Lmiui/telephony/DefaultSimManager;->sInstance:Lmiui/telephony/DefaultSimManager;

    return-object v0
.end method

.method public static getPreferredNetworkModeFromDb(Landroid/content/Context;I)I
    .locals 6
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "slot"    # I

    .prologue
    .line 798
    sget-boolean v3, Lmiui/telephony/MiuiTelephony;->IS_MTK:Z

    if-nez v3, :cond_0

    sget-boolean v3, Lmiui/telephony/MiuiTelephony;->IS_PINECONE:Z

    if-eqz v3, :cond_2

    .line 799
    :cond_0
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Lmiui/telephony/SubscriptionManager;->getSubscriptionInfoForSlot(I)Lmiui/telephony/SubscriptionInfo;

    move-result-object v2

    .line 800
    .local v2, "subInfo":Lmiui/telephony/SubscriptionInfo;
    if-eqz v2, :cond_1

    .line 801
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 802
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "preferred_network_mode"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lmiui/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 803
    sget v5, Lcom/android/internal/telephony/RILConstants;->PREFERRED_NETWORK_MODE:I

    .line 801
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    return v3

    .line 805
    :cond_1
    sget v3, Lcom/android/internal/telephony/RILConstants;->PREFERRED_NETWORK_MODE:I

    return v3

    .line 807
    .end local v2    # "subInfo":Lmiui/telephony/SubscriptionInfo;
    :cond_2
    sget v1, Lcom/android/internal/telephony/Phone;->PREFERRED_NT_MODE:I

    .line 809
    .local v1, "ret":I
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 810
    const-string/jumbo v4, "preferred_network_mode"

    .line 809
    invoke-static {v3, v4, p1}, Landroid/telephony/TelephonyManager;->getIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 815
    :goto_0
    return v1

    .line 811
    :catch_0
    move-exception v0

    .line 813
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    sget-object v3, Lmiui/telephony/DefaultSimManager;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getPreferredNetworkModeFromDb slot="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static init()V
    .locals 1

    .prologue
    .line 183
    new-instance v0, Lmiui/telephony/DefaultSimManager;

    invoke-direct {v0}, Lmiui/telephony/DefaultSimManager;-><init>()V

    sput-object v0, Lmiui/telephony/DefaultSimManager;->sInstance:Lmiui/telephony/DefaultSimManager;

    .line 182
    return-void
.end method

.method private initDefaultDataSlotId(I[I)V
    .locals 3
    .param p1, "slotId"    # I
    .param p2, "simInsertStates"    # [I

    .prologue
    .line 301
    iput p1, p0, Lmiui/telephony/DefaultSimManager;->mPropertyDefautlDataSlotId:I

    .line 302
    const-string/jumbo v1, "persist.radio.default.data"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    iget-object v1, p0, Lmiui/telephony/DefaultSimManager;->mSc:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v1}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v1

    iput v1, p0, Lmiui/telephony/DefaultSimManager;->mOldDefaultDataSubId:I

    .line 304
    iget-object v1, p0, Lmiui/telephony/DefaultSimManager;->mSc:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/SubscriptionController;->getSubIdUsingPhoneId(I)I

    move-result v0

    .line 305
    .local v0, "subId":I
    iget v1, p0, Lmiui/telephony/DefaultSimManager;->mOldDefaultDataSubId:I

    if-eq v1, v0, :cond_0

    .line 306
    iget-object v1, p0, Lmiui/telephony/DefaultSimManager;->mSc:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultDataSubId(I)V

    .line 300
    :goto_0
    return-void

    .line 307
    :cond_0
    iget v1, p0, Lmiui/telephony/DefaultSimManager;->mOldDefaultDataSlotId:I

    if-eq v1, p1, :cond_1

    .line 308
    invoke-direct {p0, p1}, Lmiui/telephony/DefaultSimManager;->broadcastDataSlotChanged(I)V

    .line 309
    iput p1, p0, Lmiui/telephony/DefaultSimManager;->mOldDefaultDataSlotId:I

    goto :goto_0

    .line 311
    :cond_1
    invoke-direct {p0, p1, p2}, Lmiui/telephony/DefaultSimManager;->broadcastDataSlotReady(I[I)V

    goto :goto_0
.end method

.method private isAllInfoReady(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lmiui/telephony/SubscriptionInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "subInfos":Ljava/util/List;, "Ljava/util/List<Lmiui/telephony/SubscriptionInfo;>;"
    const/4 v2, 0x0

    .line 352
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 353
    :cond_0
    return v2

    .line 355
    :cond_1
    invoke-direct {p0, p1}, Lmiui/telephony/DefaultSimManager;->isApplicationReady(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 356
    sget-object v0, Lmiui/telephony/DefaultSimManager;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "onSubscriptionsChanged return for no sim application"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    return v2

    .line 359
    :cond_2
    invoke-direct {p0, p1}, Lmiui/telephony/DefaultSimManager;->isAllSubscriptionInfoCreated(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 360
    sget-object v0, Lmiui/telephony/DefaultSimManager;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "onSubscriptionsChanged return for some SubscriptionInfo is not created"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    return v2

    .line 363
    :cond_3
    invoke-direct {p0, p1}, Lmiui/telephony/DefaultSimManager;->isMccMncReady(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 364
    sget-object v0, Lmiui/telephony/DefaultSimManager;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "onSubscriptionsChanged return for mcc is not ready"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    return v2

    .line 367
    :cond_4
    const/4 v0, 0x1

    return v0
.end method

.method private isAllSubscriptionInfoCreated(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lmiui/telephony/SubscriptionInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 372
    .local p1, "subInfos":Ljava/util/List;, "Ljava/util/List<Lmiui/telephony/SubscriptionInfo;>;"
    const/4 v0, 0x0

    .line 373
    .local v0, "cardCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget v2, Lmiui/telephony/MiuiTelephony;->PHONE_COUNT:I

    if-ge v1, v2, :cond_1

    .line 374
    iget-object v2, p0, Lmiui/telephony/DefaultSimManager;->mSimStatus:[Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    aget-object v2, v2, v1

    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne v2, v3, :cond_0

    .line 375
    add-int/lit8 v0, v0, 0x1

    .line 373
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 378
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ne v0, v2, :cond_2

    const/4 v2, 0x1

    :goto_1
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private isApplicationReady(Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lmiui/telephony/SubscriptionInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "subInfos":Ljava/util/List;, "Ljava/util/List<Lmiui/telephony/SubscriptionInfo;>;"
    const/4 v4, 0x1

    .line 382
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "si$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/telephony/SubscriptionInfo;

    .line 383
    .local v0, "si":Lmiui/telephony/SubscriptionInfo;
    iget-object v2, p0, Lmiui/telephony/DefaultSimManager;->mSimStatus:[Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v3

    aget-object v2, v2, v3

    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ERROR:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lmiui/telephony/DefaultSimManager;->mSimApplicationNum:[I

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v3

    aget v2, v2, v3

    if-ge v2, v4, :cond_0

    .line 384
    const/4 v2, 0x0

    return v2

    .line 387
    .end local v0    # "si":Lmiui/telephony/SubscriptionInfo;
    :cond_1
    return v4
.end method

.method public static isDcOnlyVirtualSim(I)Z
    .locals 2
    .param p0, "voiceSlot"    # I

    .prologue
    const/4 v1, 0x1

    .line 657
    sget-object v0, Lmiui/telephony/MiuiTelephony;->sContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/provider/MiuiSettings$VirtualSim;->isVirtualSimEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 658
    sget-object v0, Lmiui/telephony/MiuiTelephony;->sContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/provider/MiuiSettings$VirtualSim;->getVirtualSimSlotId(Landroid/content/Context;)I

    move-result v0

    if-ne v0, p0, :cond_0

    .line 659
    sget-object v0, Lmiui/telephony/MiuiTelephony;->sContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/provider/MiuiSettings$VirtualSim;->getVirtualSimType(Landroid/content/Context;)I

    move-result v0

    if-ne v1, v0, :cond_0

    .line 660
    return v1

    .line 662
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isMccMncReady(Ljava/util/List;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lmiui/telephony/SubscriptionInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "subInfos":Ljava/util/List;, "Ljava/util/List<Lmiui/telephony/SubscriptionInfo;>;"
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 633
    sget-boolean v3, Lmiui/os/Build;->IS_CM_CUSTOMIZATION:Z

    if-nez v3, :cond_0

    sget-boolean v3, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v3, :cond_2

    .line 637
    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_3

    .line 638
    :cond_1
    return v5

    .line 634
    :cond_2
    return v5

    .line 640
    :cond_3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "si$iterator":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/telephony/SubscriptionInfo;

    .line 641
    .local v1, "si":Lmiui/telephony/SubscriptionInfo;
    invoke-virtual {v1}, Lmiui/telephony/SubscriptionInfo;->getMcc()I

    move-result v3

    if-nez v3, :cond_4

    .line 644
    invoke-virtual {v1}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v3

    invoke-virtual {p0, v3}, Lmiui/telephony/DefaultSimManager;->getSimImsi(I)Ljava/lang/String;

    move-result-object v0

    .line 645
    .local v0, "imsi":Ljava/lang/String;
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 646
    :cond_5
    invoke-virtual {v1}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v3

    invoke-virtual {p0, v3}, Lmiui/telephony/DefaultSimManager;->getRuimImsi(I)Ljava/lang/String;

    move-result-object v0

    .line 647
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 648
    :cond_6
    sget-object v3, Lmiui/telephony/DefaultSimManager;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "isMccMncReady both cdma and gsm imsi is null"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    return v6

    .line 653
    .end local v0    # "imsi":Ljava/lang/String;
    .end local v1    # "si":Lmiui/telephony/SubscriptionInfo;
    :cond_7
    return v5
.end method

.method private isSameWithBefore(Ljava/util/List;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lmiui/telephony/SubscriptionInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "newSubInfos":Ljava/util/List;, "Ljava/util/List<Lmiui/telephony/SubscriptionInfo;>;"
    const/4 v6, 0x0

    .line 391
    iget-object v4, p0, Lmiui/telephony/DefaultSimManager;->mLastSubInfos:Ljava/util/List;

    if-nez v4, :cond_0

    .line 392
    return v6

    .line 394
    :cond_0
    iget-object v4, p0, Lmiui/telephony/DefaultSimManager;->mLastSubInfos:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    .line 395
    .local v2, "oldSize":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ne v2, v4, :cond_4

    .line 397
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_3

    .line 398
    iget-object v4, p0, Lmiui/telephony/DefaultSimManager;->mLastSubInfos:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/telephony/SubscriptionInfo;

    .line 399
    .local v3, "oldSub":Lmiui/telephony/SubscriptionInfo;
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/telephony/SubscriptionInfo;

    .line 400
    .local v1, "newSub":Lmiui/telephony/SubscriptionInfo;
    invoke-virtual {v3}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v4

    invoke-virtual {v1}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v5

    if-ne v4, v5, :cond_1

    invoke-virtual {v3}, Lmiui/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    invoke-virtual {v1}, Lmiui/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v5

    if-eq v4, v5, :cond_2

    .line 401
    :cond_1
    return v6

    .line 397
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 404
    .end local v1    # "newSub":Lmiui/telephony/SubscriptionInfo;
    .end local v3    # "oldSub":Lmiui/telephony/SubscriptionInfo;
    :cond_3
    const/4 v4, 0x1

    return v4

    .line 406
    .end local v0    # "i":I
    :cond_4
    return v6
.end method

.method private needListenImsiReady()Z
    .locals 1

    .prologue
    .line 666
    sget-boolean v0, Lmiui/os/Build;->IS_CM_CUSTOMIZATION:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lmiui/telephony/DefaultSimManager;->IS_CUSTOMIZED_FOR_CM:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private onDefaultVoiceSubscriptionChanged()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 530
    iget-object v1, p0, Lmiui/telephony/DefaultSimManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 531
    sget-object v1, Lmiui/telephony/DefaultSimManager;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "onDefaultVoiceSubscriptionChanged inconsistent and wait for init"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    return-void

    .line 534
    :cond_0
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/telephony/SubscriptionManager;->getSubscriptionInfoListInternal()Ljava/util/List;

    move-result-object v0

    .line 535
    .local v0, "subInfos":Ljava/util/List;, "Ljava/util/List<Lmiui/telephony/SubscriptionInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    sget v2, Lmiui/telephony/MiuiTelephony;->PHONE_COUNT:I

    if-ne v1, v2, :cond_1

    .line 536
    invoke-direct {p0, v0}, Lmiui/telephony/DefaultSimManager;->syncVoiceSubscription(Ljava/util/List;)V

    .line 529
    :goto_0
    return-void

    .line 538
    :cond_1
    sget-object v1, Lmiui/telephony/DefaultSimManager;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "onDefaultVoiceSubscriptionChanged delay"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    iget-object v1, p0, Lmiui/telephony/DefaultSimManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 540
    iget-object v1, p0, Lmiui/telephony/DefaultSimManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xfa0

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public static setNetworkModeInDb(II)V
    .locals 5
    .param p0, "slotId"    # I
    .param p1, "networkType"    # I

    .prologue
    .line 819
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x80

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "setNetworkModeInDb slotId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 820
    const-string/jumbo v3, " networkType="

    .line 819
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 821
    .local v0, "logs":Ljava/lang/StringBuilder;
    sget-boolean v2, Lmiui/telephony/MiuiTelephony;->IS_QCOM:Z

    if-eqz v2, :cond_0

    .line 822
    sget-object v2, Lmiui/telephony/MiuiTelephony;->sContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 823
    const-string/jumbo v3, "preferred_network_mode"

    .line 822
    invoke-static {v2, v3, p0, p1}, Landroid/telephony/TelephonyManager;->putIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 825
    :cond_0
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Lmiui/telephony/SubscriptionManager;->getSubscriptionInfoForSlot(I)Lmiui/telephony/SubscriptionInfo;

    move-result-object v1

    .line 826
    .local v1, "subInfo":Lmiui/telephony/SubscriptionInfo;
    if-eqz v1, :cond_1

    .line 827
    sget-object v2, Lmiui/telephony/MiuiTelephony;->sContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 828
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "preferred_network_mode"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lmiui/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 827
    invoke-static {v2, v3, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 830
    const-string/jumbo v2, " sub="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lmiui/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 834
    :goto_0
    sget-object v2, Lmiui/telephony/DefaultSimManager;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    return-void

    .line 832
    :cond_1
    const-string/jumbo v2, " sub="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "invalid"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private simInsertStatesToString([I)Ljava/lang/String;
    .locals 3
    .param p1, "simInsertStates"    # [I

    .prologue
    .line 603
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 604
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 605
    if-eqz v1, :cond_0

    .line 606
    const-string/jumbo v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 609
    :cond_0
    aget v2, p1, v1

    packed-switch v2, :pswitch_data_0

    .line 604
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 611
    :pswitch_0
    const-string/jumbo v2, "NO_CHANGE"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 614
    :pswitch_1
    const-string/jumbo v2, "NEW_CARD"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 617
    :pswitch_2
    const-string/jumbo v2, "REMOVED"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 620
    :pswitch_3
    const-string/jumbo v2, "CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 623
    :pswitch_4
    const-string/jumbo v2, "NO CARD"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 629
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 609
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static storeValues(Ljava/lang/String;ZLjava/lang/String;I)V
    .locals 5
    .param p0, "key1"    # Ljava/lang/String;
    .param p1, "value1"    # Z
    .param p2, "key2"    # Ljava/lang/String;
    .param p3, "value2"    # I

    .prologue
    .line 763
    sget-object v2, Lmiui/telephony/MiuiTelephony;->sContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 764
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 765
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    if-eqz p0, :cond_0

    .line 766
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 768
    :cond_0
    if-eqz p2, :cond_1

    .line 769
    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 771
    :cond_1
    sget-object v2, Lmiui/telephony/DefaultSimManager;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "storeValues "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 762
    return-void
.end method

.method private syncDataSubscription(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lmiui/telephony/SubscriptionInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 339
    .local p1, "subInfos":Ljava/util/List;, "Ljava/util/List<Lmiui/telephony/SubscriptionInfo;>;"
    iget-object v4, p0, Lmiui/telephony/DefaultSimManager;->mSc:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v4}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v0

    .line 340
    .local v0, "modemDataSubId":I
    iget v3, p0, Lmiui/telephony/DefaultSimManager;->mPropertyDefautlDataSlotId:I

    .line 341
    .local v3, "userDataSlotId":I
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "si$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/telephony/SubscriptionInfo;

    .line 342
    .local v1, "si":Lmiui/telephony/SubscriptionInfo;
    invoke-virtual {v1}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v4

    if-ne v4, v3, :cond_0

    invoke-virtual {v1}, Lmiui/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    if-eq v4, v0, :cond_0

    .line 343
    sget-object v4, Lmiui/telephony/DefaultSimManager;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v5, "syncDataSubscription reset"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    iget-object v4, p0, Lmiui/telephony/DefaultSimManager;->mSc:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v1}, Lmiui/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultDataSubId(I)V

    .line 345
    return-void

    .line 348
    .end local v1    # "si":Lmiui/telephony/SubscriptionInfo;
    :cond_1
    sget-object v4, Lmiui/telephony/DefaultSimManager;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v5, "syncDataSubscription ignore"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    return-void
.end method

.method private syncVoiceSubscription(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lmiui/telephony/SubscriptionInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 326
    .local p1, "subInfos":Ljava/util/List;, "Ljava/util/List<Lmiui/telephony/SubscriptionInfo;>;"
    iget-object v4, p0, Lmiui/telephony/DefaultSimManager;->mSc:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v4}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultVoiceSubId()I

    move-result v0

    .line 327
    .local v0, "modemVoiceSubId":I
    iget v3, p0, Lmiui/telephony/DefaultSimManager;->mPropertyDefautlVoiceSlotId:I

    .line 328
    .local v3, "userVoiceSlotId":I
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "si$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/telephony/SubscriptionInfo;

    .line 329
    .local v1, "si":Lmiui/telephony/SubscriptionInfo;
    invoke-virtual {v1}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v4

    if-ne v4, v3, :cond_0

    invoke-virtual {v1}, Lmiui/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    if-eq v4, v0, :cond_0

    .line 330
    sget-object v4, Lmiui/telephony/DefaultSimManager;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v5, "syncVoiceSubscription reset"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    iget-object v4, p0, Lmiui/telephony/DefaultSimManager;->mSc:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v1}, Lmiui/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultVoiceSubId(I)V

    .line 332
    return-void

    .line 335
    .end local v1    # "si":Lmiui/telephony/SubscriptionInfo;
    :cond_1
    sget-object v4, Lmiui/telephony/DefaultSimManager;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v5, "syncVoiceSubscription ignore"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    return-void
.end method

.method private updateCard(Lcom/android/internal/telephony/uicc/UiccCard;I)V
    .locals 10
    .param p1, "card"    # Lcom/android/internal/telephony/uicc/UiccCard;
    .param p2, "slot"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v5, 0x0

    .line 670
    if-nez p1, :cond_2

    .line 671
    iget-object v6, p0, Lmiui/telephony/DefaultSimManager;->mSimStatus:[Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    sget-object v7, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ERROR:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    aput-object v7, v6, p2

    .line 672
    iget-object v6, p0, Lmiui/telephony/DefaultSimManager;->mSimApplicationNum:[I

    const/4 v7, 0x0

    aput v7, v6, p2

    .line 677
    :goto_0
    const/4 v6, 0x2

    filled-new-array {v9, v6}, [I

    move-result-object v1

    .line 679
    .local v1, "appTypes":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v6, v1

    if-ge v2, v6, :cond_6

    .line 680
    aget v6, v1, v2

    if-ne v6, v9, :cond_3

    iget-object v4, p0, Lmiui/telephony/DefaultSimManager;->m3gppIccRecords:[Lcom/android/internal/telephony/uicc/IccRecords;

    .line 681
    .local v4, "oldRecordsArray":[Lcom/android/internal/telephony/uicc/IccRecords;
    :goto_2
    if-nez p1, :cond_4

    move-object v0, v5

    .line 682
    .local v0, "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    :goto_3
    if-nez v0, :cond_5

    const/4 v3, 0x0

    .line 683
    :goto_4
    aget-object v6, v4, p2

    if-eq v3, v6, :cond_1

    .line 684
    aget-object v6, v4, p2

    if-eqz v6, :cond_0

    .line 685
    aget-object v6, v4, p2

    iget-object v7, p0, Lmiui/telephony/DefaultSimManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForImsiReady(Landroid/os/Handler;)V

    .line 687
    :cond_0
    if-eqz v3, :cond_1

    .line 688
    iget-object v6, p0, Lmiui/telephony/DefaultSimManager;->mHandler:Landroid/os/Handler;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x4

    invoke-virtual {v3, v6, v8, v7}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForImsiReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 691
    :cond_1
    aput-object v3, v4, p2

    .line 679
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 674
    .end local v0    # "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .end local v1    # "appTypes":[I
    .end local v2    # "i":I
    .end local v4    # "oldRecordsArray":[Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_2
    iget-object v6, p0, Lmiui/telephony/DefaultSimManager;->mSimStatus:[Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v7

    aput-object v7, v6, p2

    .line 675
    iget-object v6, p0, Lmiui/telephony/DefaultSimManager;->mSimApplicationNum:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/UiccCard;->getNumApplications()I

    move-result v7

    aput v7, v6, p2

    goto :goto_0

    .line 680
    .restart local v1    # "appTypes":[I
    .restart local v2    # "i":I
    :cond_3
    iget-object v4, p0, Lmiui/telephony/DefaultSimManager;->m3gpp2IccRecords:[Lcom/android/internal/telephony/uicc/IccRecords;

    .restart local v4    # "oldRecordsArray":[Lcom/android/internal/telephony/uicc/IccRecords;
    goto :goto_2

    .line 681
    :cond_4
    aget v6, v1, v2

    invoke-virtual {p1, v6}, Lcom/android/internal/telephony/uicc/UiccCard;->getApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    goto :goto_3

    .line 682
    .restart local v0    # "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    :cond_5
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v3

    .local v3, "newRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    goto :goto_4

    .line 669
    .end local v0    # "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .end local v3    # "newRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    .end local v4    # "oldRecordsArray":[Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_6
    return-void
.end method

.method private updateNewIccIds(Ljava/util/List;)[I
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lmiui/telephony/SubscriptionInfo;",
            ">;)[I"
        }
    .end annotation

    .prologue
    .local p1, "sis":Ljava/util/List;, "Ljava/util/List<Lmiui/telephony/SubscriptionInfo;>;"
    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 554
    sget v9, Lmiui/telephony/MiuiTelephony;->PHONE_COUNT:I

    new-array v8, v9, [I

    .line 555
    .local v8, "simInsertStates":[I
    array-length v9, v8

    new-array v7, v9, [Ljava/lang/String;

    .line 557
    .local v7, "simIccIds":[Ljava/lang/String;
    const-string/jumbo v9, "persist.radio.iccid"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 558
    .local v2, "iccids":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 559
    array-length v9, v7

    invoke-static {v7, v11, v9, v10}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 570
    :cond_0
    array-length v9, v8

    new-array v3, v9, [Ljava/lang/String;

    .line 571
    .local v3, "newSimIccIds":[Ljava/lang/String;
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "si$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmiui/telephony/SubscriptionInfo;

    .line 572
    .local v5, "si":Lmiui/telephony/SubscriptionInfo;
    invoke-virtual {v5}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v1

    .line 573
    .local v1, "i":I
    invoke-virtual {v5}, Lmiui/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v3, v1

    goto :goto_0

    .line 561
    .end local v1    # "i":I
    .end local v3    # "newSimIccIds":[Ljava/lang/String;
    .end local v5    # "si":Lmiui/telephony/SubscriptionInfo;
    .end local v6    # "si$iterator":Ljava/util/Iterator;
    :cond_1
    const-string/jumbo v9, ","

    invoke-virtual {v2, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 562
    .local v4, "parts":[Ljava/lang/String;
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    array-length v9, v7

    if-ge v1, v9, :cond_0

    .line 563
    array-length v9, v4

    if-ge v1, v9, :cond_3

    aget-object v9, v4, v1

    :goto_2
    aput-object v9, v7, v1

    .line 564
    const-string/jumbo v9, "<null>"

    aget-object v12, v7, v1

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 565
    aput-object v10, v7, v1

    .line 562
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    move-object v9, v10

    .line 563
    goto :goto_2

    .line 576
    .end local v1    # "i":I
    .end local v4    # "parts":[Ljava/lang/String;
    .restart local v3    # "newSimIccIds":[Ljava/lang/String;
    .restart local v6    # "si$iterator":Ljava/util/Iterator;
    :cond_4
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    array-length v9, v8

    if-ge v1, v9, :cond_9

    .line 577
    aget-object v9, v7, v1

    if-nez v9, :cond_6

    .line 578
    aget-object v9, v3, v1

    if-nez v9, :cond_5

    const/4 v9, 0x1

    :goto_4
    aput v9, v8, v1

    .line 576
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 578
    :cond_5
    const/4 v9, 0x2

    goto :goto_4

    .line 580
    :cond_6
    aget-object v9, v3, v1

    if-nez v9, :cond_7

    .line 581
    const/4 v9, 0x3

    aput v9, v8, v1

    goto :goto_5

    .line 583
    :cond_7
    aget-object v9, v3, v1

    aget-object v10, v7, v1

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    move v9, v11

    :goto_6
    aput v9, v8, v1

    goto :goto_5

    .line 584
    :cond_8
    const/4 v9, 0x4

    goto :goto_6

    .line 589
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 590
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    :goto_7
    array-length v9, v3

    if-ge v1, v9, :cond_c

    .line 591
    if-eqz v1, :cond_a

    .line 592
    const/16 v9, 0x2c

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 595
    :cond_a
    aget-object v9, v3, v1

    if-nez v9, :cond_b

    const-string/jumbo v9, "<null>"

    :goto_8
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 590
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 595
    :cond_b
    aget-object v9, v3, v1

    goto :goto_8

    .line 597
    :cond_c
    const-string/jumbo v9, "persist.radio.iccid"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    return-object v8
.end method


# virtual methods
.method public addDataSlotListener(Lmiui/telephony/DefaultSimManager$DataSlotListener;)V
    .locals 2
    .param p1, "l"    # Lmiui/telephony/DefaultSimManager$DataSlotListener;

    .prologue
    .line 838
    iget-object v1, p0, Lmiui/telephony/DefaultSimManager;->mDataSlotListener:Ljava/util/List;

    monitor-enter v1

    .line 839
    if-eqz p1, :cond_0

    .line 840
    :try_start_0
    iget-object v0, p0, Lmiui/telephony/DefaultSimManager;->mDataSlotListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 837
    return-void

    .line 838
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public addImsiListener(Lmiui/telephony/DefaultSimManager$ImsiListener;)V
    .locals 2
    .param p1, "l"    # Lmiui/telephony/DefaultSimManager$ImsiListener;

    .prologue
    .line 862
    iget-object v1, p0, Lmiui/telephony/DefaultSimManager;->mImsiListener:Ljava/util/List;

    monitor-enter v1

    .line 863
    if-eqz p1, :cond_0

    .line 864
    :try_start_0
    iget-object v0, p0, Lmiui/telephony/DefaultSimManager;->mImsiListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 861
    return-void

    .line 862
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 776
    sget-object v3, Lmiui/telephony/MiuiTelephony;->sContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 777
    .local v2, "sp":Landroid/content/SharedPreferences;
    sget-object v3, Lmiui/telephony/MiuiTelephony;->sContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 778
    const-string/jumbo v4, "preferred_network_mode"

    .line 777
    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 779
    .local v0, "currentMode":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x200

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 780
    const-string/jumbo v4, "DefaultSimManager: PREFERRED_NETWORK_MODE init="

    .line 779
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 780
    iget-object v4, p0, Lmiui/telephony/DefaultSimManager;->mInitModes:Ljava/lang/String;

    .line 779
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 781
    const-string/jumbo v4, " current="

    .line 779
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 782
    const-string/jumbo v4, " mIsUsePreferred="

    .line 779
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 782
    iget-boolean v4, p0, Lmiui/telephony/DefaultSimManager;->mIsUsePreferred:Z

    .line 779
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 783
    const-string/jumbo v4, " mPreferredDataSlot="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lmiui/telephony/DefaultSimManager;->mPreferredDataSlot:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 784
    const-string/jumbo v4, " isUsePreferred="

    .line 779
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 784
    const-string/jumbo v4, "key_is_use_preferred"

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 779
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 785
    const-string/jumbo v4, " preferredDataSlot="

    .line 779
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 785
    const-string/jumbo v4, "key_preferred_data_slot"

    sget v5, Lmiui/telephony/SubscriptionManager;->INVALID_SLOT_ID:I

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 779
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 786
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 775
    return-void
.end method

.method public getImsi(I)Ljava/lang/String;
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    .line 890
    invoke-virtual {p0, p1}, Lmiui/telephony/DefaultSimManager;->getRuimImsi(I)Ljava/lang/String;

    move-result-object v0

    .line 891
    .local v0, "imsi":Ljava/lang/String;
    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lmiui/telephony/DefaultSimManager;->getSimImsi(I)Ljava/lang/String;

    move-result-object v0

    .end local v0    # "imsi":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public getPresentCardCount()I
    .locals 6

    .prologue
    .line 895
    const/4 v0, 0x0

    .line 896
    .local v0, "count":I
    iget-object v3, p0, Lmiui/telephony/DefaultSimManager;->mSimStatus:[Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    const/4 v2, 0x0

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v1, v3, v2

    .line 897
    .local v1, "cs":Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    sget-object v5, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne v1, v5, :cond_0

    .line 898
    add-int/lit8 v0, v0, 0x1

    .line 896
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 901
    .end local v1    # "cs":Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    :cond_1
    return v0
.end method

.method public getRuimImsi(I)Ljava/lang/String;
    .locals 2
    .param p1, "slotId"    # I

    .prologue
    const/4 v0, 0x0

    .line 700
    iget-object v1, p0, Lmiui/telephony/DefaultSimManager;->m3gpp2IccRecords:[Lcom/android/internal/telephony/uicc/IccRecords;

    aget-object v1, v1, p1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lmiui/telephony/DefaultSimManager;->m3gpp2IccRecords:[Lcom/android/internal/telephony/uicc/IccRecords;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getIMSI()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSimImsi(I)Ljava/lang/String;
    .locals 2
    .param p1, "slotId"    # I

    .prologue
    const/4 v0, 0x0

    .line 696
    iget-object v1, p0, Lmiui/telephony/DefaultSimManager;->m3gppIccRecords:[Lcom/android/internal/telephony/uicc/IccRecords;

    aget-object v1, v1, p1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lmiui/telephony/DefaultSimManager;->m3gppIccRecords:[Lcom/android/internal/telephony/uicc/IccRecords;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getIMSI()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSimInsertStates(I)I
    .locals 2
    .param p1, "slotId"    # I

    .prologue
    .line 790
    iget-object v0, p0, Lmiui/telephony/DefaultSimManager;->mSimInsertStates:[I

    if-nez v0, :cond_0

    .line 791
    sget-object v0, Lmiui/telephony/DefaultSimManager;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "mSimInsertStates is not initialized,return SIM_NO_CARD"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    const/4 v0, 0x1

    return v0

    .line 794
    :cond_0
    iget-object v0, p0, Lmiui/telephony/DefaultSimManager;->mSimInsertStates:[I

    aget v0, v0, p1

    return v0
.end method

.method getSystemDefaultSlotId()I
    .locals 3

    .prologue
    .line 254
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v1, Lmiui/telephony/MiuiTelephony;->PHONE_COUNT:I

    if-ge v0, v1, :cond_1

    .line 255
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    iget-object v2, p0, Lmiui/telephony/DefaultSimManager;->mSimStatus:[Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    aget-object v2, v2, v0

    if-eq v1, v2, :cond_0

    .line 256
    return v0

    .line 254
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 259
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public isCardPresent(I)Z
    .locals 2
    .param p1, "slotId"    # I

    .prologue
    .line 886
    iget-object v0, p0, Lmiui/telephony/DefaultSimManager;->mSimStatus:[Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    aget-object v0, v0, p1

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyDataSlotReady(Z)V
    .locals 4
    .param p1, "isDataSlotChanged"    # Z

    .prologue
    .line 854
    iget-object v3, p0, Lmiui/telephony/DefaultSimManager;->mDataSlotListener:Ljava/util/List;

    monitor-enter v3

    .line 855
    :try_start_0
    iget-object v2, p0, Lmiui/telephony/DefaultSimManager;->mDataSlotListener:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/telephony/DefaultSimManager$DataSlotListener;

    .line 856
    .local v0, "l":Lmiui/telephony/DefaultSimManager$DataSlotListener;
    invoke-interface {v0, p1}, Lmiui/telephony/DefaultSimManager$DataSlotListener;->onDataSlotReady(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 854
    .end local v0    # "l":Lmiui/telephony/DefaultSimManager$DataSlotListener;
    .end local v1    # "l$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .restart local v1    # "l$iterator":Ljava/util/Iterator;
    :cond_0
    monitor-exit v3

    .line 853
    return-void
.end method

.method public notifyImsiReady(I)V
    .locals 4
    .param p1, "slotId"    # I

    .prologue
    .line 878
    iget-object v3, p0, Lmiui/telephony/DefaultSimManager;->mImsiListener:Ljava/util/List;

    monitor-enter v3

    .line 879
    :try_start_0
    iget-object v2, p0, Lmiui/telephony/DefaultSimManager;->mImsiListener:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/telephony/DefaultSimManager$ImsiListener;

    .line 880
    .local v0, "l":Lmiui/telephony/DefaultSimManager$ImsiListener;
    invoke-interface {v0, p1}, Lmiui/telephony/DefaultSimManager$ImsiListener;->onImsiReady(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 878
    .end local v0    # "l":Lmiui/telephony/DefaultSimManager$ImsiListener;
    .end local v1    # "l$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .restart local v1    # "l$iterator":Ljava/util/Iterator;
    :cond_0
    monitor-exit v3

    .line 877
    return-void
.end method

.method onDefaultDataSubscriptionChanged()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 485
    iget v5, p0, Lmiui/telephony/DefaultSimManager;->mPropertyDefautlDataSlotId:I

    .line 486
    .local v5, "userDataSlotId":I
    sget v6, Lmiui/telephony/SubscriptionManager;->INVALID_SLOT_ID:I

    if-ne v5, v6, :cond_0

    .line 487
    sget-object v6, Lmiui/telephony/DefaultSimManager;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v7, "onDefaultDataSubscriptionChanged waiting for valid user data slot"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    return-void

    .line 490
    :cond_0
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v6

    invoke-virtual {v6}, Lmiui/telephony/SubscriptionManager;->getSubscriptionInfoListInternal()Ljava/util/List;

    move-result-object v4

    .line 491
    .local v4, "subInfos":Ljava/util/List;, "Ljava/util/List<Lmiui/telephony/SubscriptionInfo;>;"
    iget-object v6, p0, Lmiui/telephony/DefaultSimManager;->mSc:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v6}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v1

    .line 492
    .local v1, "modemDataSubId":I
    sget v0, Lmiui/telephony/SubscriptionManager;->INVALID_SLOT_ID:I

    .line 493
    .local v0, "modemDataSlotId":I
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "subInfo$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/telephony/SubscriptionInfo;

    .line 494
    .local v2, "subInfo":Lmiui/telephony/SubscriptionInfo;
    invoke-virtual {v2}, Lmiui/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v6

    if-ne v6, v1, :cond_1

    .line 495
    invoke-virtual {v2}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v0

    goto :goto_0

    .line 498
    .end local v2    # "subInfo":Lmiui/telephony/SubscriptionInfo;
    :cond_2
    sget v6, Lmiui/telephony/SubscriptionManager;->INVALID_SLOT_ID:I

    if-ne v0, v6, :cond_3

    .line 499
    sget-object v6, Lmiui/telephony/DefaultSimManager;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v7, "onDefaultDataSubscriptionChanged waiting for valid modem data slot"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    return-void

    .line 502
    :cond_3
    if-ne v0, v5, :cond_6

    .line 503
    iget v6, p0, Lmiui/telephony/DefaultSimManager;->mOldDefaultDataSlotId:I

    if-eq v6, v0, :cond_4

    .line 504
    invoke-direct {p0, v0}, Lmiui/telephony/DefaultSimManager;->broadcastDataSlotChanged(I)V

    .line 505
    iput v0, p0, Lmiui/telephony/DefaultSimManager;->mOldDefaultDataSlotId:I

    .line 506
    iput v1, p0, Lmiui/telephony/DefaultSimManager;->mOldDefaultDataSubId:I

    .line 484
    :goto_1
    return-void

    .line 507
    :cond_4
    iget v6, p0, Lmiui/telephony/DefaultSimManager;->mOldDefaultDataSubId:I

    if-eq v6, v1, :cond_5

    .line 508
    iput v1, p0, Lmiui/telephony/DefaultSimManager;->mOldDefaultDataSubId:I

    .line 509
    iget-object v6, p0, Lmiui/telephony/DefaultSimManager;->mSimInsertStates:[I

    invoke-direct {p0, v0, v6}, Lmiui/telephony/DefaultSimManager;->broadcastDataSlotReady(I[I)V

    goto :goto_1

    .line 511
    :cond_5
    sget-object v6, Lmiui/telephony/DefaultSimManager;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v7, "onDefaultDataSubscriptionChanged ignore"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 515
    :cond_6
    iget-object v6, p0, Lmiui/telephony/DefaultSimManager;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 516
    sget-object v6, Lmiui/telephony/DefaultSimManager;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v7, "onDefaultDataSubscriptionChanged inconsistent and wait for init"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    return-void

    .line 519
    :cond_7
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    sget v7, Lmiui/telephony/MiuiTelephony;->PHONE_COUNT:I

    if-ne v6, v7, :cond_8

    .line 520
    invoke-direct {p0, v4}, Lmiui/telephony/DefaultSimManager;->syncDataSubscription(Ljava/util/List;)V

    goto :goto_1

    .line 522
    :cond_8
    sget-object v6, Lmiui/telephony/DefaultSimManager;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v7, "onDefaultDataSubscriptionChanged delay"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    iget-object v6, p0, Lmiui/telephony/DefaultSimManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 524
    iget-object v6, p0, Lmiui/telephony/DefaultSimManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v8, 0xfa0

    invoke-virtual {v6, v10, v8, v9}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    goto :goto_1
.end method

.method onInitDefaultSlot()V
    .locals 14

    .prologue
    const/4 v11, 0x0

    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 410
    const-string/jumbo v10, "sys.in_shutdown_progress"

    invoke-static {v10, v12}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v10

    if-ne v10, v13, :cond_0

    .line 411
    sget-object v10, Lmiui/telephony/DefaultSimManager;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v11, "this device is being shut down, ignore set sefault data slot."

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    return-void

    .line 414
    :cond_0
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v10

    invoke-virtual {v10}, Lmiui/telephony/SubscriptionManager;->getSubscriptionInfoListInternal()Ljava/util/List;

    move-result-object v8

    .line 415
    .local v8, "sis":Ljava/util/List;, "Ljava/util/List<Lmiui/telephony/SubscriptionInfo;>;"
    invoke-direct {p0, v8}, Lmiui/telephony/DefaultSimManager;->isAllInfoReady(Ljava/util/List;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 417
    invoke-virtual {p0}, Lmiui/telephony/DefaultSimManager;->onSubscriptionsChanged()V

    .line 418
    return-void

    .line 420
    :cond_1
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    if-ne v10, v13, :cond_2

    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lmiui/telephony/SubscriptionInfo;

    invoke-virtual {v10}, Lmiui/telephony/SubscriptionInfo;->isActivated()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 433
    :cond_2
    invoke-direct {p0, v8}, Lmiui/telephony/DefaultSimManager;->updateNewIccIds(Ljava/util/List;)[I

    move-result-object v10

    iput-object v10, p0, Lmiui/telephony/DefaultSimManager;->mSimInsertStates:[I

    .line 435
    iget v9, p0, Lmiui/telephony/DefaultSimManager;->mPropertyDefautlVoiceSlotId:I

    .local v9, "vs":I
    iget v1, p0, Lmiui/telephony/DefaultSimManager;->mPropertyDefautlDataSlotId:I

    .line 436
    .local v1, "ds":I
    iput v1, p0, Lmiui/telephony/DefaultSimManager;->mOldDefaultDataSlotId:I

    .line 437
    invoke-direct {p0, v1, v8}, Lmiui/telephony/DefaultSimManager;->getDataSlotForVirtualSim(ILjava/util/List;)I

    move-result v1

    .line 438
    invoke-static {v9}, Lmiui/telephony/SubscriptionManager;->isRealSlotId(I)Z

    move-result v10

    if-eqz v10, :cond_3

    sget-object v10, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    iget-object v11, p0, Lmiui/telephony/DefaultSimManager;->mSimStatus:[Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    aget-object v11, v11, v9

    if-ne v10, v11, :cond_7

    .line 440
    :cond_3
    :goto_0
    sget v9, Lmiui/telephony/SubscriptionManager;->INVALID_SLOT_ID:I

    .line 442
    :cond_4
    const/4 v3, 0x0

    .line 443
    .local v3, "foundDataSubInfo":Z
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v10, 0x200

    invoke-direct {v4, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 444
    .local v4, "logSb":Ljava/lang/StringBuilder;
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "si$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmiui/telephony/SubscriptionInfo;

    .line 445
    .local v6, "si":Lmiui/telephony/SubscriptionInfo;
    const/16 v10, 0x5b

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "]: sub="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Lmiui/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 446
    const-string/jumbo v11, ", iccid="

    .line 445
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 446
    invoke-virtual {v6}, Lmiui/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v11

    .line 445
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 446
    const-string/jumbo v11, ", mcc="

    .line 445
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 446
    invoke-virtual {v6}, Lmiui/telephony/SubscriptionInfo;->getMcc()I

    move-result v11

    .line 445
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 447
    const-string/jumbo v11, ", mnc="

    .line 445
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 447
    invoke-virtual {v6}, Lmiui/telephony/SubscriptionInfo;->getMnc()I

    move-result v11

    .line 445
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 448
    if-nez v3, :cond_5

    invoke-virtual {v6}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v10

    if-ne v10, v1, :cond_8

    :cond_5
    const/4 v3, 0x1

    goto :goto_1

    .line 421
    .end local v1    # "ds":I
    .end local v3    # "foundDataSubInfo":Z
    .end local v4    # "logSb":Ljava/lang/StringBuilder;
    .end local v6    # "si":Lmiui/telephony/SubscriptionInfo;
    .end local v7    # "si$iterator":Ljava/util/Iterator;
    .end local v9    # "vs":I
    :cond_6
    iput-object v11, p0, Lmiui/telephony/DefaultSimManager;->mLastSubInfos:Ljava/util/List;

    .line 422
    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lmiui/telephony/SubscriptionInfo;

    invoke-virtual {v10}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v0

    .line 423
    .local v0, "dataSlot":I
    new-instance v10, Lmiui/telephony/DefaultSimManager$2;

    invoke-direct {v10, p0, v0}, Lmiui/telephony/DefaultSimManager$2;-><init>(Lmiui/telephony/DefaultSimManager;I)V

    invoke-virtual {v10}, Lmiui/telephony/DefaultSimManager$2;->start()V

    .line 430
    return-void

    .line 439
    .end local v0    # "dataSlot":I
    .restart local v1    # "ds":I
    .restart local v9    # "vs":I
    :cond_7
    sget v10, Lmiui/telephony/MiuiTelephony;->PHONE_COUNT:I

    if-le v10, v13, :cond_4

    invoke-static {v9}, Lmiui/telephony/DefaultSimManager;->isDcOnlyVirtualSim(I)Z

    move-result v10

    .line 438
    if-eqz v10, :cond_4

    goto/16 :goto_0

    .line 448
    .restart local v3    # "foundDataSubInfo":Z
    .restart local v4    # "logSb":Ljava/lang/StringBuilder;
    .restart local v6    # "si":Lmiui/telephony/SubscriptionInfo;
    .restart local v7    # "si$iterator":Ljava/util/Iterator;
    :cond_8
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 450
    .end local v6    # "si":Lmiui/telephony/SubscriptionInfo;
    :cond_9
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    if-ne v10, v13, :cond_c

    .line 451
    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lmiui/telephony/SubscriptionInfo;

    invoke-virtual {v10}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v1

    .line 465
    :cond_a
    :goto_2
    iget-object v10, p0, Lmiui/telephony/DefaultSimManager;->mDefaultSlotSelector:Lmiui/telephony/DefaultSlotSelector;

    if-eqz v10, :cond_b

    .line 466
    iget-object v10, p0, Lmiui/telephony/DefaultSimManager;->mDefaultSlotSelector:Lmiui/telephony/DefaultSlotSelector;

    iget-object v11, p0, Lmiui/telephony/DefaultSimManager;->mSimInsertStates:[I

    invoke-interface {v10, v11, v1}, Lmiui/telephony/DefaultSlotSelector;->getDefaultDataSlot([II)I

    move-result v5

    .line 467
    .local v5, "newDs":I
    if-eq v1, v5, :cond_b

    invoke-static {v5}, Lmiui/telephony/SubscriptionManager;->isRealSlotId(I)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 468
    move v1, v5

    .line 469
    const-string/jumbo v10, " selected="

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 472
    .end local v5    # "newDs":I
    :cond_b
    const-string/jumbo v10, ", vs = "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", ds = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", current_ds = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 473
    iget v11, p0, Lmiui/telephony/DefaultSimManager;->mOldDefaultDataSlotId:I

    .line 472
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 473
    const-string/jumbo v11, " simInsertStates="

    .line 472
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 474
    iget-object v11, p0, Lmiui/telephony/DefaultSimManager;->mSimInsertStates:[I

    invoke-direct {p0, v11}, Lmiui/telephony/DefaultSimManager;->simInsertStatesToString([I)Ljava/lang/String;

    move-result-object v11

    .line 472
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    sget-object v10, Lmiui/telephony/DefaultSimManager;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    :try_start_0
    iget-object v10, p0, Lmiui/telephony/DefaultSimManager;->mSimInsertStates:[I

    invoke-direct {p0, v1, v10}, Lmiui/telephony/DefaultSimManager;->initDefaultDataSlotId(I[I)V

    .line 478
    sget-object v10, Lmiui/telephony/MiuiTelephony;->sContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v9, v10}, Lmiui/telephony/DefaultSimManager;->setDefaultVoiceSlotId(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 409
    :goto_3
    return-void

    .line 452
    :cond_c
    if-nez v3, :cond_d

    .line 453
    invoke-virtual {p0}, Lmiui/telephony/DefaultSimManager;->getSystemDefaultSlotId()I

    move-result v1

    .line 454
    const-string/jumbo v10, " system="

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 455
    :cond_d
    invoke-static {v1}, Lcom/android/internal/telephony/IccCardActivateHelper;->isActivate(I)Z

    move-result v10

    if-nez v10, :cond_a

    .line 456
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_e
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmiui/telephony/SubscriptionInfo;

    .line 457
    .restart local v6    # "si":Lmiui/telephony/SubscriptionInfo;
    invoke-virtual {v6}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v10

    if-eq v10, v1, :cond_e

    invoke-virtual {v6}, Lmiui/telephony/SubscriptionInfo;->isActivated()Z

    move-result v10

    if-eqz v10, :cond_e

    .line 458
    invoke-virtual {v6}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v1

    .line 459
    const-string/jumbo v10, " activated="

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 479
    .end local v6    # "si":Lmiui/telephony/SubscriptionInfo;
    :catch_0
    move-exception v2

    .local v2, "e":Landroid/os/RemoteException;
    goto :goto_3
.end method

.method public onSubscriptionsChanged()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 264
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/telephony/SubscriptionManager;->getSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    .line 265
    .local v0, "subInfoImpls":Ljava/util/List;, "Ljava/util/List<Lmiui/telephony/SubscriptionInfo;>;"
    invoke-direct {p0, v0}, Lmiui/telephony/DefaultSimManager;->isAllInfoReady(Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 266
    const/4 v1, 0x0

    iput-object v1, p0, Lmiui/telephony/DefaultSimManager;->mLastSubInfos:Ljava/util/List;

    .line 267
    iget-object v1, p0, Lmiui/telephony/DefaultSimManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 263
    :goto_0
    return-void

    .line 268
    :cond_0
    invoke-direct {p0, v0}, Lmiui/telephony/DefaultSimManager;->isSameWithBefore(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 269
    return-void

    .line 270
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 271
    sget-object v1, Lmiui/telephony/DefaultSimManager;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "onSubscriptionsChanged for one sub"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    iput-object v0, p0, Lmiui/telephony/DefaultSimManager;->mLastSubInfos:Ljava/util/List;

    .line 273
    iget-object v1, p0, Lmiui/telephony/DefaultSimManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xfa0

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 275
    :cond_2
    sget-object v1, Lmiui/telephony/DefaultSimManager;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onSubscriptionsChanged update subSize="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    iput-object v0, p0, Lmiui/telephony/DefaultSimManager;->mLastSubInfos:Ljava/util/List;

    .line 277
    iget-object v1, p0, Lmiui/telephony/DefaultSimManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public onVirtualSimPreciseStateChanged()V
    .locals 4

    .prologue
    .line 747
    invoke-static {}, Lmiui/telephony/VirtualSimUtils;->getInstance()Lmiui/telephony/VirtualSimUtils;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/telephony/VirtualSimUtils;->isDisablingVirtualSim()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 749
    const-string/jumbo v0, "key_is_use_preferred"

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lmiui/telephony/DefaultSimManager;->storeValues(Ljava/lang/String;ZLjava/lang/String;I)V

    .line 746
    :cond_0
    return-void
.end method

.method public onVirtualSimStateChanged()V
    .locals 4

    .prologue
    .line 755
    invoke-static {}, Lmiui/telephony/VirtualSimUtils;->getInstance()Lmiui/telephony/VirtualSimUtils;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/telephony/VirtualSimUtils;->isVirtualSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 757
    const-string/jumbo v0, "key_is_use_preferred"

    .line 758
    const-string/jumbo v1, "key_preferred_data_slot"

    const-string/jumbo v2, "persist.radio.default.data"

    sget v3, Lmiui/telephony/SubscriptionManager;->INVALID_SLOT_ID:I

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 757
    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Lmiui/telephony/DefaultSimManager;->storeValues(Ljava/lang/String;ZLjava/lang/String;I)V

    .line 754
    :cond_0
    return-void
.end method

.method public removeDataSlotListener(Lmiui/telephony/DefaultSimManager$DataSlotListener;)V
    .locals 2
    .param p1, "l"    # Lmiui/telephony/DefaultSimManager$DataSlotListener;

    .prologue
    .line 846
    iget-object v1, p0, Lmiui/telephony/DefaultSimManager;->mDataSlotListener:Ljava/util/List;

    monitor-enter v1

    .line 847
    if-eqz p1, :cond_0

    .line 848
    :try_start_0
    iget-object v0, p0, Lmiui/telephony/DefaultSimManager;->mDataSlotListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 845
    return-void

    .line 846
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public removeImsiListener(Lmiui/telephony/DefaultSimManager$ImsiListener;)V
    .locals 2
    .param p1, "l"    # Lmiui/telephony/DefaultSimManager$ImsiListener;

    .prologue
    .line 870
    iget-object v1, p0, Lmiui/telephony/DefaultSimManager;->mImsiListener:Ljava/util/List;

    monitor-enter v1

    .line 871
    if-eqz p1, :cond_0

    .line 872
    :try_start_0
    iget-object v0, p0, Lmiui/telephony/DefaultSimManager;->mImsiListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 869
    return-void

    .line 870
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method setDefaultDataSlotId(ILjava/lang/String;)Z
    .locals 4
    .param p1, "slotId"    # I
    .param p2, "opPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 215
    sget-object v1, Lmiui/telephony/DefaultSimManager;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "<"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "> is trying to set default data slot to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    sget-object v1, Lmiui/telephony/MiuiTelephony;->sContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.MODIFY_PHONE_STATE"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    invoke-static {p1}, Lmiui/telephony/SubscriptionManager;->isRealSlotId(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 219
    iput p1, p0, Lmiui/telephony/DefaultSimManager;->mPropertyDefautlDataSlotId:I

    .line 220
    const-string/jumbo v1, "persist.radio.default.data"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    const-string/jumbo v1, "key_is_use_preferred"

    invoke-static {}, Lmiui/telephony/VirtualSimUtils;->getInstance()Lmiui/telephony/VirtualSimUtils;

    move-result-object v2

    invoke-virtual {v2}, Lmiui/telephony/VirtualSimUtils;->isVirtualSimEnabled()Z

    move-result v2

    const-string/jumbo v3, "key_preferred_data_slot"

    invoke-static {v1, v2, v3, p1}, Lmiui/telephony/DefaultSimManager;->storeValues(Ljava/lang/String;ZLjava/lang/String;I)V

    .line 226
    iget-object v1, p0, Lmiui/telephony/DefaultSimManager;->mSc:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/SubscriptionController;->getSubIdUsingPhoneId(I)I

    move-result v0

    .line 227
    .local v0, "subId":I
    iget-object v1, p0, Lmiui/telephony/DefaultSimManager;->mSc:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v1}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v1

    if-eq v1, v0, :cond_1

    .line 228
    iget-object v1, p0, Lmiui/telephony/DefaultSimManager;->mSc:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultDataSubId(I)V

    .line 233
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 229
    :cond_1
    iget v1, p0, Lmiui/telephony/DefaultSimManager;->mOldDefaultDataSlotId:I

    if-eq v1, p1, :cond_0

    .line 230
    invoke-direct {p0, p1}, Lmiui/telephony/DefaultSimManager;->broadcastDataSlotChanged(I)V

    .line 231
    iput p1, p0, Lmiui/telephony/DefaultSimManager;->mOldDefaultDataSlotId:I

    goto :goto_0

    .line 235
    .end local v0    # "subId":I
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method public setDefaultSlotSelector(Lmiui/telephony/DefaultSlotSelector;)V
    .locals 0
    .param p1, "selector"    # Lmiui/telephony/DefaultSlotSelector;

    .prologue
    .line 191
    iput-object p1, p0, Lmiui/telephony/DefaultSimManager;->mDefaultSlotSelector:Lmiui/telephony/DefaultSlotSelector;

    .line 190
    return-void
.end method

.method setDefaultVoiceSlotId(ILjava/lang/String;)V
    .locals 4
    .param p1, "slotId"    # I
    .param p2, "opPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 195
    sget-object v1, Lmiui/telephony/DefaultSimManager;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "<"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "> is trying to set default voice slot to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    sget-object v1, Lmiui/telephony/MiuiTelephony;->sContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.MODIFY_PHONE_STATE"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    sget v1, Lmiui/telephony/SubscriptionManager;->DEFAULT_SLOT_ID:I

    if-eq p1, v1, :cond_0

    .line 199
    invoke-static {p1}, Lmiui/telephony/SubscriptionManager;->isRealSlotId(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .end local p1    # "slotId":I
    :goto_0
    iput p1, p0, Lmiui/telephony/DefaultSimManager;->mPropertyDefautlVoiceSlotId:I

    .line 200
    const-string/jumbo v1, "persist.radio.default.voice"

    iget v2, p0, Lmiui/telephony/DefaultSimManager;->mPropertyDefautlVoiceSlotId:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    iget v1, p0, Lmiui/telephony/DefaultSimManager;->mPropertyDefautlVoiceSlotId:I

    sget v2, Lmiui/telephony/SubscriptionManager;->INVALID_SLOT_ID:I

    if-ne v1, v2, :cond_2

    .line 202
    iget-object v1, p0, Lmiui/telephony/DefaultSimManager;->mSc:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v1}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultVoiceSubId()I

    move-result v1

    invoke-static {v1}, Lmiui/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 203
    iget-object v1, p0, Lmiui/telephony/DefaultSimManager;->mSc:Lcom/android/internal/telephony/SubscriptionController;

    sget v2, Lmiui/telephony/SubscriptionManager;->INVALID_SUBSCRIPTION_ID:I

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultVoiceSubId(I)V

    .line 194
    :cond_0
    :goto_1
    return-void

    .line 199
    .restart local p1    # "slotId":I
    :cond_1
    sget p1, Lmiui/telephony/SubscriptionManager;->INVALID_SLOT_ID:I

    goto :goto_0

    .line 206
    .end local p1    # "slotId":I
    :cond_2
    iget-object v1, p0, Lmiui/telephony/DefaultSimManager;->mSc:Lcom/android/internal/telephony/SubscriptionController;

    iget v2, p0, Lmiui/telephony/DefaultSimManager;->mPropertyDefautlVoiceSlotId:I

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/SubscriptionController;->getSubIdUsingPhoneId(I)I

    move-result v0

    .line 207
    .local v0, "subId":I
    iget-object v1, p0, Lmiui/telephony/DefaultSimManager;->mSc:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v1}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultVoiceSubId()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 208
    iget-object v1, p0, Lmiui/telephony/DefaultSimManager;->mSc:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultVoiceSubId(I)V

    goto :goto_1
.end method
