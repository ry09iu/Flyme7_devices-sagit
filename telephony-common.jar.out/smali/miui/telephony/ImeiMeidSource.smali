.class public Lmiui/telephony/ImeiMeidSource;
.super Ljava/lang/Object;
.source "ImeiMeidSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/telephony/ImeiMeidSource$1;
    }
.end annotation


# static fields
.field private static final DELAY_TIME:I = 0x7d0

.field private static final DEVICE_ID_KEY:Ljava/lang/String; = "device_id_key"

.field private static final EVENT_GET_DEVICE_IDENTITY_DONE_BASE:I = 0x12c

.field private static final EVENT_GET_DEVICE_IDENTITY_RETRY_BASE:I = 0x1f4

.field private static final EVENT_GET_IMEI_DONE_BASE:I = 0xc8

.field private static final EVENT_GET_IMEI_RETRY_BASE:I = 0x190

.field private static final EVENT_RADIO_AVAILABLE_BASE:I = 0x64

.field private static final IMEI_KEY_PREFIX:Ljava/lang/String; = "key_imei_slot"

.field private static LOG_TAG:Ljava/lang/String; = null

.field private static final MEID_KEY_PREFIX:Ljava/lang/String; = "key_meid_slot"

.field private static final RETRY_MAX_TIMES:I = 0xa

.field private static final SLOT_1:I = 0x0

.field private static final SLOT_2:I = 0x1

.field private static final SMALL_DEVICE_ID_KEY:Ljava/lang/String; = "small_device_id_key"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mImeis:[Ljava/lang/String;

.field private mMeids:[Ljava/lang/String;

.field private mReadImeiException:[Ljava/lang/Throwable;

.field private mReadMeidException:[Ljava/lang/Throwable;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lmiui/telephony/ImeiMeidSource;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lmiui/telephony/ImeiMeidSource;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lmiui/telephony/ImeiMeidSource;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get2(Lmiui/telephony/ImeiMeidSource;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmiui/telephony/ImeiMeidSource;->mImeis:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get3(Lmiui/telephony/ImeiMeidSource;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmiui/telephony/ImeiMeidSource;->mMeids:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get4(Lmiui/telephony/ImeiMeidSource;)[Ljava/lang/Throwable;
    .locals 1

    iget-object v0, p0, Lmiui/telephony/ImeiMeidSource;->mReadImeiException:[Ljava/lang/Throwable;

    return-object v0
.end method

.method static synthetic -get5(Lmiui/telephony/ImeiMeidSource;)[Ljava/lang/Throwable;
    .locals 1

    iget-object v0, p0, Lmiui/telephony/ImeiMeidSource;->mReadMeidException:[Ljava/lang/Throwable;

    return-object v0
.end method

.method static synthetic -wrap0(Lmiui/telephony/ImeiMeidSource;)V
    .locals 0

    invoke-direct {p0}, Lmiui/telephony/ImeiMeidSource;->onDeviceIdLoaded()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-string/jumbo v0, "ImeiMeidSource"

    sput-object v0, Lmiui/telephony/ImeiMeidSource;->LOG_TAG:Ljava/lang/String;

    .line 27
    return-void
.end method

.method constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v4, Lmiui/telephony/ImeiMeidSource$1;

    invoke-direct {v4, p0}, Lmiui/telephony/ImeiMeidSource$1;-><init>(Lmiui/telephony/ImeiMeidSource;)V

    iput-object v4, p0, Lmiui/telephony/ImeiMeidSource;->mHandler:Landroid/os/Handler;

    .line 214
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 215
    .local v2, "phones":[Lcom/android/internal/telephony/Phone;
    array-length v4, v2

    new-array v4, v4, [Ljava/lang/String;

    iput-object v4, p0, Lmiui/telephony/ImeiMeidSource;->mImeis:[Ljava/lang/String;

    .line 216
    array-length v4, v2

    new-array v4, v4, [Ljava/lang/String;

    iput-object v4, p0, Lmiui/telephony/ImeiMeidSource;->mMeids:[Ljava/lang/String;

    .line 217
    array-length v4, v2

    new-array v4, v4, [Ljava/lang/Throwable;

    iput-object v4, p0, Lmiui/telephony/ImeiMeidSource;->mReadImeiException:[Ljava/lang/Throwable;

    .line 218
    array-length v4, v2

    new-array v4, v4, [Ljava/lang/Throwable;

    iput-object v4, p0, Lmiui/telephony/ImeiMeidSource;->mReadMeidException:[Ljava/lang/Throwable;

    .line 219
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v2

    if-ge v1, v4, :cond_0

    .line 220
    iget-object v4, p0, Lmiui/telephony/ImeiMeidSource;->mReadImeiException:[Ljava/lang/Throwable;

    new-instance v5, Ljava/lang/Throwable;

    const-string/jumbo v6, "init"

    invoke-direct {v5, v6}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    aput-object v5, v4, v1

    .line 221
    iget-object v4, p0, Lmiui/telephony/ImeiMeidSource;->mReadMeidException:[Ljava/lang/Throwable;

    new-instance v5, Ljava/lang/Throwable;

    const-string/jumbo v6, "init"

    invoke-direct {v5, v6}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    aput-object v5, v4, v1

    .line 222
    iget-object v4, p0, Lmiui/telephony/ImeiMeidSource;->mImeis:[Ljava/lang/String;

    aput-object v7, v4, v1

    .line 223
    iget-object v4, p0, Lmiui/telephony/ImeiMeidSource;->mMeids:[Ljava/lang/String;

    aput-object v7, v4, v1

    .line 224
    aget-object v4, v2, v1

    invoke-static {v4}, Lmiui/telephony/ImeiMeidSource;->getCommandsInterface(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v4

    iget-object v5, p0, Lmiui/telephony/ImeiMeidSource;->mHandler:Landroid/os/Handler;

    add-int/lit8 v6, v1, 0x64

    invoke-interface {v4, v5, v6, v7}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 219
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 227
    :cond_0
    sget-object v4, Lmiui/telephony/MiuiTelephony;->sContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 228
    .local v3, "sp":Landroid/content/SharedPreferences;
    const-string/jumbo v4, "device_id_key"

    const-string/jumbo v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 229
    const-string/jumbo v4, "key_imei_slot0"

    const-string/jumbo v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 213
    :cond_1
    :goto_1
    return-void

    .line 230
    :cond_2
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 231
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v4, "device_id_key"

    const-string/jumbo v5, "key_imei_slot0"

    const-string/jumbo v6, ""

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 232
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v4

    if-nez v4, :cond_1

    .line 233
    sget-object v4, Lmiui/telephony/ImeiMeidSource;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v5, "failed to commit preference when init"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static getCommandsInterface(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/CommandsInterface;
    .locals 1
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 364
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    return-object v0
.end method

.method private onDeviceIdLoaded()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 155
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v6, p0, Lmiui/telephony/ImeiMeidSource;->mImeis:[Ljava/lang/String;

    array-length v6, v6

    if-ge v2, v6, :cond_2

    .line 156
    iget-object v6, p0, Lmiui/telephony/ImeiMeidSource;->mReadImeiException:[Ljava/lang/Throwable;

    aget-object v6, v6, v2

    if-nez v6, :cond_0

    iget-object v6, p0, Lmiui/telephony/ImeiMeidSource;->mImeis:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 158
    :cond_0
    return-void

    .line 155
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 162
    :cond_2
    sget-object v6, Lmiui/telephony/MiuiTelephony;->sContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 163
    .local v5, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 165
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const/4 v2, 0x0

    :goto_1
    iget-object v6, p0, Lmiui/telephony/ImeiMeidSource;->mImeis:[Ljava/lang/String;

    array-length v6, v6

    if-ge v2, v6, :cond_5

    .line 166
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "key_imei_slot"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lmiui/telephony/ImeiMeidSource;->mImeis:[Ljava/lang/String;

    aget-object v7, v7, v2

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 167
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "ro.ril.miui.imei"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 168
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "ro.ril.miui.imei"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lmiui/telephony/ImeiMeidSource;->mImeis:[Ljava/lang/String;

    aget-object v7, v7, v2

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    :cond_3
    iget-object v6, p0, Lmiui/telephony/ImeiMeidSource;->mMeids:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 171
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "key_meid_slot"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lmiui/telephony/ImeiMeidSource;->mMeids:[Ljava/lang/String;

    aget-object v7, v7, v2

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 165
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 175
    :cond_5
    const-string/jumbo v6, "device_id_key"

    const-string/jumbo v7, ""

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 176
    .local v0, "deviceId":Ljava/lang/String;
    const-string/jumbo v6, "small_device_id_key"

    const-string/jumbo v7, ""

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 178
    .local v4, "smallDeviceId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 180
    :cond_6
    iget-object v6, p0, Lmiui/telephony/ImeiMeidSource;->mImeis:[Ljava/lang/String;

    aget-object v0, v6, v8

    .line 181
    iget-object v6, p0, Lmiui/telephony/ImeiMeidSource;->mImeis:[Ljava/lang/String;

    aget-object v4, v6, v8

    .line 182
    const/4 v3, 0x0

    .line 183
    .local v3, "slotId":I
    iget-object v6, p0, Lmiui/telephony/ImeiMeidSource;->mImeis:[Ljava/lang/String;

    array-length v6, v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_7

    .line 184
    iget-object v6, p0, Lmiui/telephony/ImeiMeidSource;->mImeis:[Ljava/lang/String;

    aget-object v6, v6, v8

    iget-object v7, p0, Lmiui/telephony/ImeiMeidSource;->mImeis:[Ljava/lang/String;

    aget-object v7, v7, v9

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-gez v6, :cond_b

    .line 185
    iget-object v6, p0, Lmiui/telephony/ImeiMeidSource;->mImeis:[Ljava/lang/String;

    aget-object v0, v6, v9

    .line 186
    const/4 v3, 0x1

    .line 188
    iget-object v6, p0, Lmiui/telephony/ImeiMeidSource;->mImeis:[Ljava/lang/String;

    aget-object v6, v6, v8

    const-string/jumbo v7, "^0*$"

    invoke-virtual {v6, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 189
    iget-object v6, p0, Lmiui/telephony/ImeiMeidSource;->mImeis:[Ljava/lang/String;

    aget-object v4, v6, v9

    .line 195
    :cond_7
    :goto_2
    const-string/jumbo v6, "^0*$"

    invoke-virtual {v4, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    const-string/jumbo v4, ""

    .line 196
    :cond_8
    const-string/jumbo v6, "small_device_id_key"

    invoke-interface {v1, v6, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 197
    const-string/jumbo v6, "device_id_key"

    invoke-interface {v1, v6, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 198
    invoke-direct {p0, v0, v3}, Lmiui/telephony/ImeiMeidSource;->sendDeviceIdReadyBroadcast(Ljava/lang/String;I)V

    .line 201
    .end local v3    # "slotId":I
    :cond_9
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v6

    if-nez v6, :cond_a

    .line 202
    sget-object v6, Lmiui/telephony/ImeiMeidSource;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v7, "failed to commit preference"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_a
    return-void

    .line 191
    .restart local v3    # "slotId":I
    :cond_b
    iget-object v6, p0, Lmiui/telephony/ImeiMeidSource;->mImeis:[Ljava/lang/String;

    aget-object v6, v6, v9

    const-string/jumbo v7, "^0*$"

    invoke-virtual {v6, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 192
    iget-object v6, p0, Lmiui/telephony/ImeiMeidSource;->mImeis:[Ljava/lang/String;

    aget-object v4, v6, v9

    goto :goto_2
.end method

.method private sendDeviceIdReadyBroadcast(Ljava/lang/String;I)V
    .locals 3
    .param p1, "newImei"    # Ljava/lang/String;
    .param p2, "slotId"    # I

    .prologue
    .line 207
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.DEVICE_ID_READY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 208
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "device_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 209
    invoke-static {v0, p2}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 210
    sget-object v1, Lmiui/telephony/MiuiTelephony;->sContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 206
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 8
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    const/4 v7, 0x3

    .line 347
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v4, 0x100

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 348
    .local v2, "sb":Ljava/lang/StringBuilder;
    sget-object v4, Lmiui/telephony/MiuiTelephony;->sContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 349
    const-string/jumbo v5, "device_id_key"

    const-string/jumbo v6, ""

    .line 348
    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 350
    .local v0, "deviceId":Ljava/lang/String;
    const-string/jumbo v4, " deviceId="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0, v7}, Lmiui/telephony/PhoneNumberUtils;->toLogSafePhoneNumber(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    sget-object v4, Lmiui/telephony/MiuiTelephony;->sContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 352
    const-string/jumbo v5, "small_device_id_key"

    const-string/jumbo v6, ""

    .line 351
    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 353
    .local v3, "smallDeviceId":Ljava/lang/String;
    const-string/jumbo v4, " smallDeviceId="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3, v7}, Lmiui/telephony/PhoneNumberUtils;->toLogSafePhoneNumber(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lmiui/telephony/ImeiMeidSource;->mImeis:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_0

    .line 355
    const-string/jumbo v4, " slot"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " imei="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lmiui/telephony/ImeiMeidSource;->mImeis:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-static {v5, v7}, Lmiui/telephony/PhoneNumberUtils;->toLogSafePhoneNumber(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 356
    const-string/jumbo v5, " mReadImeiException="

    .line 355
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 356
    iget-object v5, p0, Lmiui/telephony/ImeiMeidSource;->mReadImeiException:[Ljava/lang/Throwable;

    aget-object v5, v5, v1

    .line 355
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 357
    const-string/jumbo v5, " meid="

    .line 355
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 357
    iget-object v5, p0, Lmiui/telephony/ImeiMeidSource;->mMeids:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-static {v5, v7}, Lmiui/telephony/PhoneNumberUtils;->toLogSafePhoneNumber(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 355
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 358
    const-string/jumbo v5, " mReadMeidException="

    .line 355
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 358
    iget-object v5, p0, Lmiui/telephony/ImeiMeidSource;->mReadMeidException:[Ljava/lang/Throwable;

    aget-object v5, v5, v1

    .line 355
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 354
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 360
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ImeiMeidSource: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 346
    return-void
.end method

.method public getDeviceId(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 243
    invoke-static {}, Lmiui/telephony/MiuiTelephony;->getInstance()Lmiui/telephony/MiuiTelephony;

    move-result-object v0

    const-string/jumbo v1, "getDeviceId"

    invoke-virtual {v0, p1, v1}, Lmiui/telephony/MiuiTelephony;->canReadPhoneState(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 244
    const/4 v0, 0x0

    return-object v0

    .line 247
    :cond_0
    sget-object v0, Lmiui/telephony/MiuiTelephony;->sContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "device_id_key"

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceIdList(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 262
    invoke-static {}, Lmiui/telephony/MiuiTelephony;->getInstance()Lmiui/telephony/MiuiTelephony;

    move-result-object v4

    const-string/jumbo v5, "getDeviceIdList"

    invoke-virtual {v4, p1, v5}, Lmiui/telephony/MiuiTelephony;->canReadPhoneState(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 263
    new-instance v4, Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    return-object v4

    .line 266
    :cond_0
    sget-object v4, Lmiui/telephony/MiuiTelephony;->sContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 267
    .local v3, "sp":Landroid/content/SharedPreferences;
    new-instance v0, Ljava/util/ArrayList;

    iget-object v4, p0, Lmiui/telephony/ImeiMeidSource;->mImeis:[Ljava/lang/String;

    array-length v4, v4

    mul-int/lit8 v4, v4, 0x2

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 268
    .local v0, "deviceIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lmiui/telephony/ImeiMeidSource;->mImeis:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_5

    .line 269
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "key_imei_slot"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 270
    .local v2, "id":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 273
    :cond_1
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "key_meid_slot"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 274
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 268
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 271
    :cond_3
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 275
    :cond_4
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 278
    .end local v2    # "id":Ljava/lang/String;
    :cond_5
    return-object v0
.end method

.method public getImei(ILjava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "slotId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 321
    invoke-static {}, Lmiui/telephony/MiuiTelephony;->getInstance()Lmiui/telephony/MiuiTelephony;

    move-result-object v1

    const-string/jumbo v2, "getImei"

    invoke-virtual {v1, p2, v2}, Lmiui/telephony/MiuiTelephony;->canReadPhoneState(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 322
    const/4 v1, 0x0

    return-object v1

    .line 325
    :cond_0
    if-ltz p1, :cond_1

    iget-object v1, p0, Lmiui/telephony/ImeiMeidSource;->mImeis:[Ljava/lang/String;

    array-length v1, v1

    if-lt p1, v1, :cond_2

    :cond_1
    const/4 v0, 0x0

    .line 326
    .local v0, "realSlotId":I
    :goto_0
    iget-object v1, p0, Lmiui/telephony/ImeiMeidSource;->mImeis:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 327
    sget-object v1, Lmiui/telephony/MiuiTelephony;->sContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 328
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "key_imei_slot"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ""

    .line 327
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 325
    .end local v0    # "realSlotId":I
    :cond_2
    move v0, p1

    .restart local v0    # "realSlotId":I
    goto :goto_0

    .line 330
    :cond_3
    iget-object v1, p0, Lmiui/telephony/ImeiMeidSource;->mImeis:[Ljava/lang/String;

    aget-object v1, v1, v0

    return-object v1
.end method

.method getImeiList(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 282
    invoke-static {}, Lmiui/telephony/MiuiTelephony;->getInstance()Lmiui/telephony/MiuiTelephony;

    move-result-object v4

    const-string/jumbo v5, "getSortedImeiList"

    invoke-virtual {v4, p1, v5}, Lmiui/telephony/MiuiTelephony;->canReadPhoneState(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 283
    new-instance v4, Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    return-object v4

    .line 286
    :cond_0
    sget-object v4, Lmiui/telephony/MiuiTelephony;->sContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 287
    .local v3, "sp":Landroid/content/SharedPreferences;
    new-instance v2, Ljava/util/ArrayList;

    sget v4, Lmiui/telephony/MiuiTelephony;->PHONE_COUNT:I

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 288
    .local v2, "imeis":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v4, Lmiui/telephony/MiuiTelephony;->PHONE_COUNT:I

    if-ge v0, v4, :cond_3

    .line 289
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "key_imei_slot"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 290
    .local v1, "imei":Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 288
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 291
    :cond_2
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 294
    .end local v1    # "imei":Ljava/lang/String;
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_4

    .line 295
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 297
    :cond_4
    return-object v2
.end method

.method public getMeid(ILjava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "slotId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 334
    invoke-static {}, Lmiui/telephony/MiuiTelephony;->getInstance()Lmiui/telephony/MiuiTelephony;

    move-result-object v1

    const-string/jumbo v2, "getMeid"

    invoke-virtual {v1, p2, v2}, Lmiui/telephony/MiuiTelephony;->canReadPhoneState(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 335
    const/4 v1, 0x0

    return-object v1

    .line 338
    :cond_0
    if-ltz p1, :cond_1

    iget-object v1, p0, Lmiui/telephony/ImeiMeidSource;->mMeids:[Ljava/lang/String;

    array-length v1, v1

    if-lt p1, v1, :cond_2

    :cond_1
    const/4 v0, 0x0

    .line 339
    .local v0, "realSlotId":I
    :goto_0
    iget-object v1, p0, Lmiui/telephony/ImeiMeidSource;->mMeids:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 340
    sget-object v1, Lmiui/telephony/MiuiTelephony;->sContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 341
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "key_meid_slot"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ""

    .line 340
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 338
    .end local v0    # "realSlotId":I
    :cond_2
    move v0, p1

    .restart local v0    # "realSlotId":I
    goto :goto_0

    .line 343
    :cond_3
    iget-object v1, p0, Lmiui/telephony/ImeiMeidSource;->mMeids:[Ljava/lang/String;

    aget-object v1, v1, v0

    return-object v1
.end method

.method getMeidList(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 301
    invoke-static {}, Lmiui/telephony/MiuiTelephony;->getInstance()Lmiui/telephony/MiuiTelephony;

    move-result-object v4

    const-string/jumbo v5, "getSortedMeidList"

    invoke-virtual {v4, p1, v5}, Lmiui/telephony/MiuiTelephony;->canReadPhoneState(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 302
    new-instance v4, Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    return-object v4

    .line 305
    :cond_0
    sget-object v4, Lmiui/telephony/MiuiTelephony;->sContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 306
    .local v3, "sp":Landroid/content/SharedPreferences;
    new-instance v2, Ljava/util/ArrayList;

    sget v4, Lmiui/telephony/MiuiTelephony;->PHONE_COUNT:I

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 307
    .local v2, "meids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v4, Lmiui/telephony/MiuiTelephony;->PHONE_COUNT:I

    if-ge v0, v4, :cond_3

    .line 308
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "key_meid_slot"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 310
    .local v1, "meid":Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 307
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 310
    :cond_2
    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 311
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 314
    .end local v1    # "meid":Ljava/lang/String;
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_4

    .line 315
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 317
    :cond_4
    return-object v2
.end method

.method public getSmallDeviceId(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 254
    invoke-static {}, Lmiui/telephony/MiuiTelephony;->getInstance()Lmiui/telephony/MiuiTelephony;

    move-result-object v0

    const-string/jumbo v1, "getSmallDeviceId"

    invoke-virtual {v0, p1, v1}, Lmiui/telephony/MiuiTelephony;->canReadPhoneState(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 255
    const/4 v0, 0x0

    return-object v0

    .line 258
    :cond_0
    sget-object v0, Lmiui/telephony/MiuiTelephony;->sContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "small_device_id_key"

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
