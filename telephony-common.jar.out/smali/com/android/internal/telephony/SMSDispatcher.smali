.class public abstract Lcom/android/internal/telephony/SMSDispatcher;
.super Landroid/os/Handler;
.source "SMSDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;,
        Lcom/android/internal/telephony/SMSDispatcher$DataSmsSender;,
        Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;,
        Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSenderCallback;,
        Lcom/android/internal/telephony/SMSDispatcher$SettingsObserver;,
        Lcom/android/internal/telephony/SMSDispatcher$SmsSender;,
        Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;,
        Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;,
        Lcom/android/internal/telephony/SMSDispatcher$TextSmsSender;
    }
.end annotation


# static fields
.field static final DBG:Z = false

.field private static final EVENT_CONFIRM_SEND_TO_POSSIBLE_PREMIUM_SHORT_CODE:I = 0x8

.field private static final EVENT_CONFIRM_SEND_TO_PREMIUM_SHORT_CODE:I = 0x9

.field protected static final EVENT_HANDLE_STATUS_REPORT:I = 0xa

.field protected static final EVENT_ICC_CHANGED:I = 0xf

.field protected static final EVENT_IMS_STATE_CHANGED:I = 0xc

.field protected static final EVENT_IMS_STATE_DONE:I = 0xd

.field protected static final EVENT_NEW_ICC_SMS:I = 0xe

.field protected static final EVENT_RADIO_ON:I = 0xb

.field static final EVENT_SEND_CONFIRMED_SMS:I = 0x5

.field private static final EVENT_SEND_LIMIT_REACHED_CONFIRMATION:I = 0x4

.field private static final EVENT_SEND_RETRY:I = 0x3

.field protected static final EVENT_SEND_SMS_COMPLETE:I = 0x2

.field static final EVENT_STOP_SENDING:I = 0x7

.field private static final MAX_LABEL_SIZE_PX:F = 500.0f

.field private static final MAX_SEND_RETRIES:I = 0x3

.field private static final MO_MSG_QUEUE_LIMIT:I = 0x5

.field private static final PREMIUM_RULE_USE_BOTH:I = 0x3

.field private static final PREMIUM_RULE_USE_NETWORK:I = 0x2

.field private static final PREMIUM_RULE_USE_SIM:I = 0x1

.field private static final SEND_NEXT_MSG_EXTRA:Ljava/lang/String; = "SendNextMsg"

.field private static final SEND_RETRY_DELAY:I = 0x7d0

.field private static final SINGLE_PART_SMS:I = 0x1

.field static final TAG:Ljava/lang/String; = "SMSDispatcher"

.field private static sConcatenatedRef:I


# instance fields
.field protected final deliveryPendingList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;",
            ">;"
        }
    .end annotation
.end field

.field protected final mCi:Lcom/android/internal/telephony/CommandsInterface;

.field protected final mContext:Landroid/content/Context;

.field protected mImsSMSDispatcher:Lcom/android/internal/telephony/ImsSMSDispatcher;

.field private mPendingTrackerCount:I

.field protected mPhone:Lcom/android/internal/telephony/Phone;

.field private final mPremiumSmsRule:Ljava/util/concurrent/atomic/AtomicInteger;

.field protected final mResolver:Landroid/content/ContentResolver;

.field private final mSettingsObserver:Lcom/android/internal/telephony/SMSDispatcher$SettingsObserver;

.field protected mSmsCapable:Z

.field protected mSmsQueue:Lcom/android/internal/telephony/MiuiSmsQueue;

.field protected mSmsSendDisabled:Z

.field protected final mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;


# direct methods
.method static synthetic -wrap0(Landroid/app/PendingIntent;)I
    .locals 1
    .param p0, "deliveryIntent"    # Landroid/app/PendingIntent;

    .prologue
    invoke-static {p0}, Lcom/android/internal/telephony/SMSDispatcher;->getSendSmsFlag(Landroid/app/PendingIntent;)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/internal/telephony/SMSDispatcher;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/telephony/SMSDispatcher;->checkCallerIsPhoneOrCarrierApp()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;II)V
    .locals 0
    .param p1, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .param p2, "result"    # I
    .param p3, "messageRef"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/SMSDispatcher;->processSendSmsResponse(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;II)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 162
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    sput v0, Lcom/android/internal/telephony/SMSDispatcher;->sConcatenatedRef:I

    .line 92
    return-void
.end method

.method protected constructor <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/SmsUsageMonitor;Lcom/android/internal/telephony/ImsSMSDispatcher;)V
    .locals 5
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "usageMonitor"    # Lcom/android/internal/telephony/SmsUsageMonitor;
    .param p3, "imsSMSDispatcher"    # Lcom/android/internal/telephony/ImsSMSDispatcher;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 192
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 101
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPremiumSmsRule:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 173
    iput-boolean v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsCapable:Z

    .line 278
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    .line 194
    iput-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 195
    iput-object p3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mImsSMSDispatcher:Lcom/android/internal/telephony/ImsSMSDispatcher;

    .line 196
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    .line 197
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    .line 198
    iget-object v0, p1, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 199
    iput-object p2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    .line 200
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "phone"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 201
    new-instance v0, Lcom/android/internal/telephony/SMSDispatcher$SettingsObserver;

    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPremiumSmsRule:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v3, v4}, Lcom/android/internal/telephony/SMSDispatcher$SettingsObserver;-><init>(Landroid/os/Handler;Ljava/util/concurrent/atomic/AtomicInteger;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSettingsObserver:Lcom/android/internal/telephony/SMSDispatcher$SettingsObserver;

    .line 202
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 203
    const-string/jumbo v3, "sms_short_code_rule"

    .line 202
    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 203
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSettingsObserver:Lcom/android/internal/telephony/SMSDispatcher$SettingsObserver;

    .line 202
    invoke-virtual {v0, v3, v1, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 205
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 206
    const v3, 0x1120060

    .line 205
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsCapable:Z

    .line 207
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 208
    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    iget-boolean v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsCapable:Z

    .line 207
    invoke-virtual {v0, v3, v4}, Landroid/telephony/TelephonyManager;->getSmsSendCapableForPhone(IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsSendDisabled:Z

    .line 210
    new-instance v0, Lcom/android/internal/telephony/MiuiSmsQueue;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/MiuiSmsQueue;-><init>(Lcom/android/internal/telephony/SMSDispatcher;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsQueue:Lcom/android/internal/telephony/MiuiSmsQueue;

    .line 212
    const-string/jumbo v0, "SMSDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SMSDispatcher: ctor mSmsCapable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsCapable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " format="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 213
    const-string/jumbo v2, " mSmsSendDisabled="

    .line 212
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 213
    iget-boolean v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsSendDisabled:Z

    .line 212
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    return-void

    :cond_0
    move v0, v2

    .line 207
    goto :goto_0
.end method

.method private checkCallerIsPhoneOrCarrierApp()V
    .locals 7

    .prologue
    .line 1915
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 1916
    .local v4, "uid":I
    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    .line 1917
    .local v1, "appId":I
    const/16 v5, 0x3e9

    if-eq v1, v5, :cond_0

    if-nez v4, :cond_1

    .line 1918
    :cond_0
    return-void

    .line 1921
    :cond_1
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1922
    .local v2, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher;->getCarrierAppPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1923
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget v5, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-static {v5, v6}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1924
    new-instance v5, Ljava/lang/SecurityException;

    const-string/jumbo v6, "Caller is not phone or carrier app!"

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1926
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v3

    .line 1927
    .local v3, "re":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v5, Ljava/lang/SecurityException;

    const-string/jumbo v6, "Caller is not phone or carrier app!"

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1914
    .end local v3    # "re":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local v2    # "pm":Landroid/content/pm/PackageManager;
    :cond_2
    return-void
.end method

.method private convertSafeLabel(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 8
    .param p1, "labelStr"    # Ljava/lang/String;
    .param p2, "appPackage"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 1222
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 1223
    .local v1, "labelLength":I
    const/4 v2, 0x0

    .line 1224
    .local v2, "offset":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1225
    invoke-virtual {p1, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 1226
    .local v0, "codePoint":I
    invoke-static {v0}, Ljava/lang/Character;->getType(I)I

    move-result v4

    .line 1227
    .local v4, "type":I
    const/16 v5, 0xd

    if-eq v4, v5, :cond_0

    .line 1228
    const/16 v5, 0xf

    if-ne v4, v5, :cond_2

    .line 1230
    :cond_0
    invoke-virtual {p1, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 1241
    .end local v0    # "codePoint":I
    .end local v4    # "type":I
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 1242
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1243
    return-object p2

    .line 1229
    .restart local v0    # "codePoint":I
    .restart local v4    # "type":I
    :cond_2
    const/16 v5, 0xe

    if-eq v4, v5, :cond_0

    .line 1234
    const/16 v5, 0xc

    if-ne v4, v5, :cond_3

    .line 1235
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1236
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v6

    .line 1235
    add-int/2addr v6, v2

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1238
    :cond_3
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    add-int/2addr v2, v5

    goto :goto_0

    .line 1245
    .end local v0    # "codePoint":I
    .end local v4    # "type":I
    :cond_4
    new-instance v3, Landroid/text/TextPaint;

    invoke-direct {v3}, Landroid/text/TextPaint;-><init>()V

    .line 1246
    .local v3, "paint":Landroid/text/TextPaint;
    const/high16 v5, 0x42280000    # 42.0f

    invoke-virtual {v3, v5}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 1249
    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 1248
    const/high16 v6, 0x43fa0000    # 500.0f

    invoke-static {p1, v3, v6, v5}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v5

    return-object v5
.end method

.method private denyIfQueueLimitReached(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)Z
    .locals 4
    .param p1, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x0

    .line 1178
    iget v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPendingTrackerCount:I

    if-lt v0, v3, :cond_0

    .line 1180
    const-string/jumbo v0, "SMSDispatcher"

    const-string/jumbo v1, "Denied because queue limit reached"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1181
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0, v3, v2}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->onFailed(Landroid/content/Context;II)V

    .line 1182
    const/4 v0, 0x1

    return v0

    .line 1184
    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPendingTrackerCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPendingTrackerCount:I

    .line 1185
    return v2
.end method

.method private getAppLabel(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 7
    .param p1, "appPackage"    # Ljava/lang/String;

    .prologue
    .line 1194
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 1196
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1197
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v0, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1198
    .local v2, "label":Ljava/lang/String;
    invoke-direct {p0, v2, p1}, Lcom/android/internal/telephony/SMSDispatcher;->convertSafeLabel(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    return-object v4

    .line 1199
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "label":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1200
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v4, "SMSDispatcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "PackageManager Name Not Found for package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1201
    return-object p1
.end method

.method private getMultipartMessageText(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1889
    .local p1, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1890
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "part$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1891
    .local v0, "part":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1892
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1895
    .end local v0    # "part":Ljava/lang/String;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method protected static getNextConcatenatedRef()I
    .locals 1

    .prologue
    .line 183
    sget v0, Lcom/android/internal/telephony/SMSDispatcher;->sConcatenatedRef:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/internal/telephony/SMSDispatcher;->sConcatenatedRef:I

    .line 184
    sget v0, Lcom/android/internal/telephony/SMSDispatcher;->sConcatenatedRef:I

    return v0
.end method

.method protected static getNotInServiceError(I)I
    .locals 1
    .param p0, "ss"    # I

    .prologue
    .line 740
    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    .line 741
    const/4 v0, 0x2

    return v0

    .line 743
    :cond_0
    const/4 v0, 0x4

    return v0
.end method

.method private static getSendSmsFlag(Landroid/app/PendingIntent;)I
    .locals 1
    .param p0, "deliveryIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 373
    if-nez p0, :cond_0

    .line 374
    const/4 v0, 0x0

    return v0

    .line 376
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected static handleNotInService(ILandroid/app/PendingIntent;)V
    .locals 2
    .param p0, "ss"    # I
    .param p1, "sentIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 724
    if-eqz p1, :cond_0

    .line 726
    const/4 v1, 0x3

    if-ne p0, v1, :cond_1

    .line 727
    const/4 v1, 0x2

    :try_start_0
    invoke-virtual {p1, v1}, Landroid/app/PendingIntent;->send(I)V

    .line 723
    :cond_0
    :goto_0
    return-void

    .line 729
    :cond_1
    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 731
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/app/PendingIntent$CanceledException;
    goto :goto_0
.end method

.method private processSendSmsResponse(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;II)V
    .locals 5
    .param p1, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .param p2, "result"    # I
    .param p3, "messageRef"    # I

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 492
    if-nez p1, :cond_0

    .line 493
    const-string/jumbo v1, "SMSDispatcher"

    const-string/jumbo v2, "processSendSmsResponse: null tracker"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    return-void

    .line 497
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/SmsResponse;

    .line 498
    const/4 v1, -0x1

    .line 497
    invoke-direct {v0, p3, v3, v1}, Lcom/android/internal/telephony/SmsResponse;-><init>(ILjava/lang/String;I)V

    .line 500
    .local v0, "smsResponse":Lcom/android/internal/telephony/SmsResponse;
    packed-switch p2, :pswitch_data_0

    .line 519
    const-string/jumbo v1, "SMSDispatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unknown result "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " Retry on carrier network."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 491
    :goto_0
    return-void

    .line 502
    :pswitch_0
    const-string/jumbo v1, "SMSDispatcher"

    const-string/jumbo v2, "Sending SMS by IP succeeded."

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    new-instance v1, Landroid/os/AsyncResult;

    invoke-direct {v1, p1, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 503
    invoke-virtual {p0, v4, v1}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 509
    :pswitch_1
    const-string/jumbo v1, "SMSDispatcher"

    const-string/jumbo v2, "Sending SMS by IP failed."

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    new-instance v1, Landroid/os/AsyncResult;

    .line 512
    new-instance v2, Lcom/android/internal/telephony/CommandException;

    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 511
    invoke-direct {v1, p1, v0, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 510
    invoke-virtual {p0, v4, v1}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 515
    :pswitch_2
    const-string/jumbo v1, "SMSDispatcher"

    const-string/jumbo v2, "Sending SMS by IP failed. Retry on carrier network."

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_0

    .line 500
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private sendMultipartSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 19
    .param p1, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .prologue
    .line 1413
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->getData()Ljava/util/HashMap;

    move-result-object v16

    .line 1415
    .local v16, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v2, "destination"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1416
    .local v3, "destinationAddress":Ljava/lang/String;
    const-string/jumbo v2, "scaddress"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1418
    .local v4, "scAddress":Ljava/lang/String;
    const-string/jumbo v2, "parts"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 1419
    .local v5, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v2, "sentIntents"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 1420
    .local v6, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const-string/jumbo v2, "deliveryIntents"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    .line 1423
    .local v7, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v18

    .line 1425
    .local v18, "ss":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/SMSDispatcher;->isIms()Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz v18, :cond_2

    .line 1426
    const/4 v15, 0x0

    .local v15, "i":I
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v14

    .local v14, "count":I
    :goto_0
    if-ge v15, v14, :cond_1

    .line 1427
    const/16 v17, 0x0

    .line 1428
    .local v17, "sentIntent":Landroid/app/PendingIntent;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v15, :cond_0

    .line 1429
    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    .end local v17    # "sentIntent":Landroid/app/PendingIntent;
    check-cast v17, Landroid/app/PendingIntent;

    .line 1431
    :cond_0
    move/from16 v0, v18

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->handleNotInService(ILandroid/app/PendingIntent;)V

    .line 1426
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 1433
    :cond_1
    return-void

    .line 1437
    .end local v14    # "count":I
    .end local v15    # "i":I
    :cond_2
    invoke-static/range {p1 .. p1}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->-get1(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)Z

    move-result v10

    .line 1438
    move-object/from16 v0, p1

    iget-boolean v12, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mExpectMore:Z

    move-object/from16 v0, p1

    iget v13, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mvalidityPeriod:I

    .line 1437
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, -0x1

    move-object/from16 v2, p0

    .line 1436
    invoke-virtual/range {v2 .. v13}, Lcom/android/internal/telephony/SMSDispatcher;->sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/net/Uri;Ljava/lang/String;ZIZI)V

    .line 1408
    return-void
.end method


# virtual methods
.method protected abstract calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
.end method

.method checkDestination(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)Z
    .locals 12
    .param p1, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1101
    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "android.permission.SEND_SMS_NO_CONFIRMATION"

    invoke-virtual {v6, v7}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_0

    .line 1103
    return v9

    .line 1105
    :cond_0
    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPremiumSmsRule:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    .line 1106
    .local v3, "rule":I
    const/4 v5, 0x0

    .line 1107
    .local v5, "smsCategory":I
    if-eq v3, v9, :cond_1

    if-ne v3, v11, :cond_4

    .line 1108
    :cond_1
    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v4

    .line 1109
    .local v4, "simCountryIso":Ljava/lang/String;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-eq v6, v10, :cond_3

    .line 1110
    :cond_2
    const-string/jumbo v6, "SMSDispatcher"

    const-string/jumbo v7, "Can\'t get SIM country Iso: trying network country Iso"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v4

    .line 1114
    :cond_3
    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    iget-object v7, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDestAddress:Ljava/lang/String;

    invoke-virtual {v6, v7, v4}, Lcom/android/internal/telephony/SmsUsageMonitor;->checkDestination(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 1116
    .end local v4    # "simCountryIso":Ljava/lang/String;
    :cond_4
    if-eq v3, v10, :cond_5

    if-ne v3, v11, :cond_8

    .line 1117
    :cond_5
    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v1

    .line 1118
    .local v1, "networkCountryIso":Ljava/lang/String;
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-eq v6, v10, :cond_7

    .line 1119
    :cond_6
    const-string/jumbo v6, "SMSDispatcher"

    const-string/jumbo v7, "Can\'t get Network country Iso: trying SIM country Iso"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1120
    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v1

    .line 1124
    :cond_7
    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    iget-object v7, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDestAddress:Ljava/lang/String;

    invoke-virtual {v6, v7, v1}, Lcom/android/internal/telephony/SmsUsageMonitor;->checkDestination(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 1123
    invoke-static {v5, v6}, Lcom/android/internal/telephony/SmsUsageMonitor;->mergeShortCodeCategories(II)I

    move-result v5

    .line 1127
    .end local v1    # "networkCountryIso":Ljava/lang/String;
    :cond_8
    if-eqz v5, :cond_9

    .line 1128
    if-ne v5, v9, :cond_a

    .line 1130
    :cond_9
    return v9

    .line 1129
    :cond_a
    if-eq v5, v10, :cond_9

    .line 1134
    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v7, "device_provisioned"

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-nez v6, :cond_b

    .line 1135
    const-string/jumbo v6, "SMSDispatcher"

    const-string/jumbo v7, "Can\'t send premium sms during Setup Wizard"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1136
    return v8

    .line 1140
    :cond_b
    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    .line 1141
    iget-object v7, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mAppInfo:Landroid/content/pm/PackageInfo;

    iget-object v7, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 1140
    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/SmsUsageMonitor;->getPremiumSmsPermission(Ljava/lang/String;)I

    move-result v2

    .line 1142
    .local v2, "premiumSmsPermission":I
    if-nez v2, :cond_c

    .line 1144
    const/4 v2, 0x1

    .line 1147
    :cond_c
    packed-switch v2, :pswitch_data_0

    .line 1160
    if-ne v5, v11, :cond_d

    .line 1161
    const/16 v0, 0x8

    .line 1165
    .local v0, "event":I
    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/SMSDispatcher;->sendMessage(Landroid/os/Message;)Z

    .line 1166
    return v8

    .line 1149
    .end local v0    # "event":I
    :pswitch_0
    const-string/jumbo v6, "SMSDispatcher"

    const-string/jumbo v7, "User approved this app to send to premium SMS"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1150
    return v9

    .line 1153
    :pswitch_1
    const-string/jumbo v6, "SMSDispatcher"

    const-string/jumbo v7, "User denied this app from sending to premium SMS"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1154
    const/4 v6, 0x7

    invoke-virtual {p0, v6, p1}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/SMSDispatcher;->sendMessage(Landroid/os/Message;)Z

    .line 1155
    return v8

    .line 1163
    :cond_d
    const/16 v0, 0x9

    .restart local v0    # "event":I
    goto :goto_0

    .line 1147
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public dispose()V
    .locals 2

    .prologue
    .line 244
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSettingsObserver:Lcom/android/internal/telephony/SMSDispatcher$SettingsObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 243
    return-void
.end method

.method protected getCarrierAppPackageName()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 1899
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v0

    .line 1900
    .local v0, "card":Lcom/android/internal/telephony/uicc/UiccCard;
    if-nez v0, :cond_0

    .line 1901
    return-object v2

    .line 1905
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v5, "android.service.carrier.CarrierMessagingService"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1904
    invoke-virtual {v0, v3, v4}, Lcom/android/internal/telephony/uicc/UiccCard;->getCarrierPackageNamesForIntent(Landroid/content/pm/PackageManager;Landroid/content/Intent;)Ljava/util/List;

    move-result-object v1

    .line 1906
    .local v1, "carrierPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 1907
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1906
    :cond_1
    return-object v2
.end method

.method protected abstract getFormat()Ljava/lang/String;
.end method

.method public getImsSmsFormat()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1880
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mImsSMSDispatcher:Lcom/android/internal/telephony/ImsSMSDispatcher;

    if-eqz v0, :cond_0

    .line 1881
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mImsSMSDispatcher:Lcom/android/internal/telephony/ImsSMSDispatcher;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ImsSMSDispatcher;->getImsSmsFormat()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1883
    :cond_0
    const-string/jumbo v0, "SMSDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mImsSMSDispatcher:Lcom/android/internal/telephony/ImsSMSDispatcher;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1884
    return-object v3
.end method

.method protected abstract getNewSubmitPduTracker(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsHeader;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;ZIZILjava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
.end method

.method public getPremiumSmsPermission(Ljava/lang/String;)I
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1360
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SmsUsageMonitor;->getPremiumSmsPermission(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected getSmsTracker(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Landroid/net/Uri;ZLjava/lang/String;ZIZLjava/lang/String;)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .locals 15
    .param p2, "sentIntent"    # Landroid/app/PendingIntent;
    .param p3, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p4, "format"    # Ljava/lang/String;
    .param p5, "messageUri"    # Landroid/net/Uri;
    .param p6, "isExpectMore"    # Z
    .param p7, "fullMessageText"    # Ljava/lang/String;
    .param p8, "isText"    # Z
    .param p9, "validityPeriod"    # I
    .param p10, "persistMessage"    # Z
    .param p11, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/app/PendingIntent;",
            "Landroid/app/PendingIntent;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Z",
            "Ljava/lang/String;",
            "ZIZ",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;"
        }
    .end annotation

    .prologue
    .line 1757
    .local p1, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v5, 0x0

    .line 1758
    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v7, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p10

    move-object/from16 v14, p11

    .line 1757
    invoke-virtual/range {v0 .. v14}, Lcom/android/internal/telephony/SMSDispatcher;->getSmsTracker(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/net/Uri;Lcom/android/internal/telephony/SmsHeader;ZLjava/lang/String;ZIZLjava/lang/String;)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v0

    return-object v0
.end method

.method protected getSmsTracker(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Landroid/net/Uri;ZLjava/lang/String;ZZLjava/lang/String;)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .locals 15
    .param p2, "sentIntent"    # Landroid/app/PendingIntent;
    .param p3, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p4, "format"    # Ljava/lang/String;
    .param p5, "messageUri"    # Landroid/net/Uri;
    .param p6, "isExpectMore"    # Z
    .param p7, "fullMessageText"    # Ljava/lang/String;
    .param p8, "isText"    # Z
    .param p9, "persistMessage"    # Z
    .param p10, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/app/PendingIntent;",
            "Landroid/app/PendingIntent;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Z",
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;"
        }
    .end annotation

    .prologue
    .line 1748
    .local p1, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v5, 0x0

    .line 1749
    const/4 v6, 0x0

    const/4 v8, 0x0

    .line 1750
    const/4 v12, -0x1

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v7, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    move/from16 v11, p8

    move/from16 v13, p9

    move-object/from16 v14, p10

    .line 1748
    invoke-virtual/range {v0 .. v14}, Lcom/android/internal/telephony/SMSDispatcher;->getSmsTracker(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/net/Uri;Lcom/android/internal/telephony/SmsHeader;ZLjava/lang/String;ZIZLjava/lang/String;)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v0

    return-object v0
.end method

.method protected getSmsTracker(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/net/Uri;Lcom/android/internal/telephony/SmsHeader;ZLjava/lang/String;ZIZLjava/lang/String;)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .locals 24
    .param p2, "sentIntent"    # Landroid/app/PendingIntent;
    .param p3, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p4, "format"    # Ljava/lang/String;
    .param p5, "unsentPartCount"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .param p6, "anyPartFailed"    # Ljava/util/concurrent/atomic/AtomicBoolean;
    .param p7, "messageUri"    # Landroid/net/Uri;
    .param p8, "smsHeader"    # Lcom/android/internal/telephony/SmsHeader;
    .param p9, "isExpectMore"    # Z
    .param p10, "fullMessageText"    # Ljava/lang/String;
    .param p11, "isText"    # Z
    .param p12, "validityPeriod"    # I
    .param p13, "persistMessage"    # Z
    .param p14, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/app/PendingIntent;",
            "Landroid/app/PendingIntent;",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            "Ljava/util/concurrent/atomic/AtomicBoolean;",
            "Landroid/net/Uri;",
            "Lcom/android/internal/telephony/SmsHeader;",
            "Z",
            "Ljava/lang/String;",
            "ZIZ",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;"
        }
    .end annotation

    .prologue
    .line 1717
    .local p1, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v23

    .line 1718
    .local v23, "pm":Landroid/content/pm/PackageManager;
    move-object/from16 v20, p14

    .line 1719
    .local v20, "callerPackageName":Ljava/lang/String;
    if-nez p14, :cond_0

    .line 1720
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v22

    .line 1721
    .local v22, "packageNames":[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v20, v22, v2

    .line 1725
    .end local v22    # "packageNames":[Ljava/lang/String;
    :cond_0
    const/4 v6, 0x0

    .line 1726
    .local v6, "appInfo":Landroid/content/pm/PackageInfo;
    if-eqz v20, :cond_1

    .line 1729
    const/16 v2, 0x40

    :try_start_0
    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 1735
    .end local v6    # "appInfo":Landroid/content/pm/PackageInfo;
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v6}, Lcom/android/internal/telephony/SMSDispatcherInjector;->getCallerAppInfo(Lcom/android/internal/telephony/SMSDispatcher;Ljava/util/HashMap;Landroid/content/pm/PackageInfo;)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 1738
    .local v6, "appInfo":Landroid/content/pm/PackageInfo;
    const-string/jumbo v2, "destAddr"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1739
    .local v7, "destAddr":Ljava/lang/String;
    new-instance v2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 1741
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/SMSDispatcher;->getSubId()I

    move-result v15

    .line 1739
    const/16 v19, 0x0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    move/from16 v13, p9

    move-object/from16 v14, p10

    move/from16 v16, p11

    move/from16 v17, p12

    move/from16 v18, p13

    invoke-direct/range {v2 .. v19}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;-><init>(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/content/pm/PackageInfo;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/net/Uri;Lcom/android/internal/telephony/SmsHeader;ZLjava/lang/String;IZIZLcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    return-object v2

    .line 1730
    .end local v7    # "destAddr":Ljava/lang/String;
    .local v6, "appInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v21

    .local v21, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method protected getSmsTrackerMap(Ljava/lang/String;Ljava/lang/String;I[BLcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;
    .locals 3
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p3, "destPort"    # I
    .param p4, "data"    # [B
    .param p5, "pdu"    # Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I[B",
            "Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1775
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1776
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v1, "destAddr"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1777
    const-string/jumbo v1, "scAddr"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1778
    const-string/jumbo v1, "destPort"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1779
    const-string/jumbo v1, "data"

    invoke-virtual {v0, v1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1780
    const-string/jumbo v1, "smsc"

    iget-object v2, p5, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedScAddress:[B

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1781
    const-string/jumbo v1, "pdu"

    iget-object v2, p5, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedMessage:[B

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1782
    return-object v0
.end method

.method protected getSmsTrackerMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;
    .locals 3
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "pdu"    # Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1764
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1765
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v1, "destAddr"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1766
    const-string/jumbo v1, "scAddr"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1767
    const-string/jumbo v1, "text"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1768
    const-string/jumbo v1, "smsc"

    iget-object v2, p4, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedScAddress:[B

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1769
    const-string/jumbo v1, "pdu"

    iget-object v2, p4, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedMessage:[B

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1770
    return-object v0
.end method

.method protected getSubId()I
    .locals 2

    .prologue
    .line 1911
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SubscriptionController;->getSubIdUsingPhoneId(I)I

    move-result v0

    return v0
.end method

.method protected handleConfirmShortCode(ZLcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 18
    .param p1, "isPremium"    # Z
    .param p2, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .prologue
    .line 1291
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->denyIfQueueLimitReached(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 1292
    return-void

    .line 1296
    :cond_0
    if-eqz p1, :cond_1

    .line 1297
    const v5, 0x104040f

    .line 1302
    .local v5, "detailsId":I
    :goto_0
    move-object/from16 v0, p2

    iget-object v15, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mAppInfo:Landroid/content/pm/PackageInfo;

    iget-object v15, v15, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/internal/telephony/SMSDispatcher;->getAppLabel(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1303
    .local v2, "appLabel":Ljava/lang/CharSequence;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v13

    .line 1304
    .local v13, "r":Landroid/content/res/Resources;
    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    .line 1305
    const/16 v16, 0x0

    aput-object v2, v15, v16

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDestAddress:Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    aput-object v16, v15, v17

    .line 1304
    const v16, 0x104040d

    move/from16 v0, v16

    invoke-virtual {v13, v0, v15}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v11

    .line 1308
    .local v11, "messageText":Landroid/text/Spanned;
    new-instance v3, Landroid/view/ContextThemeWrapper;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    sget v16, Lmiui/R$style;->Theme_Light:I

    move/from16 v0, v16

    invoke-direct {v3, v15, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 1313
    .local v3, "contextThemeWrapper":Landroid/content/Context;
    const-string/jumbo v15, "layout_inflater"

    .line 1312
    invoke-virtual {v3, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/LayoutInflater;

    .line 1314
    .local v8, "inflater":Landroid/view/LayoutInflater;
    const v15, 0x10900f9

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 1316
    .local v9, "layout":Landroid/view/View;
    new-instance v10, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;

    .line 1317
    const v15, 0x102042a

    invoke-virtual {v9, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 1316
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v10, v0, v1, v15}, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;Landroid/widget/TextView;)V

    .line 1320
    .local v10, "listener":Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;
    const v15, 0x1020424

    invoke-virtual {v9, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 1321
    .local v12, "messageView":Landroid/widget/TextView;
    invoke-virtual {v12, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1324
    const v15, 0x1020425

    .line 1323
    invoke-virtual {v9, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    .line 1326
    .local v6, "detailsLayout":Landroid/view/ViewGroup;
    const v15, 0x1020427

    .line 1325
    invoke-virtual {v6, v15}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 1327
    .local v7, "detailsView":Landroid/widget/TextView;
    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(I)V

    .line 1330
    const v15, 0x1020428

    .line 1329
    invoke-virtual {v9, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/CheckBox;

    .line 1331
    .local v14, "rememberChoice":Landroid/widget/CheckBox;
    invoke-virtual {v14, v10}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1335
    new-instance v15, Lmiui/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    const/16 v17, 0x3

    invoke-direct/range {v15 .. v17}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v15, v9}, Lmiui/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lmiui/app/AlertDialog$Builder;

    move-result-object v15

    .line 1337
    const v16, 0x1040410

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 1335
    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v10}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v15

    .line 1338
    const v16, 0x1040411

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 1335
    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v10}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v15

    invoke-virtual {v15, v10}, Lmiui/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v15

    invoke-virtual {v15}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v4

    .line 1342
    .local v4, "d":Lmiui/app/AlertDialog;
    invoke-virtual {v4}, Lmiui/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v15

    const/16 v16, 0x7d3

    invoke-virtual/range {v15 .. v16}, Landroid/view/Window;->setType(I)V

    .line 1343
    invoke-virtual {v4}, Lmiui/app/AlertDialog;->show()V

    .line 1345
    const/4 v15, -0x1

    invoke-virtual {v4, v15}, Lmiui/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v15

    invoke-virtual {v10, v15}, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;->setPositiveButton(Landroid/widget/Button;)V

    .line 1346
    const/4 v15, -0x2

    invoke-virtual {v4, v15}, Lmiui/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v15

    invoke-virtual {v10, v15}, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;->setNegativeButton(Landroid/widget/Button;)V

    .line 1290
    return-void

    .line 1299
    .end local v2    # "appLabel":Ljava/lang/CharSequence;
    .end local v3    # "contextThemeWrapper":Landroid/content/Context;
    .end local v4    # "d":Lmiui/app/AlertDialog;
    .end local v5    # "detailsId":I
    .end local v6    # "detailsLayout":Landroid/view/ViewGroup;
    .end local v7    # "detailsView":Landroid/widget/TextView;
    .end local v8    # "inflater":Landroid/view/LayoutInflater;
    .end local v9    # "layout":Landroid/view/View;
    .end local v10    # "listener":Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;
    .end local v11    # "messageText":Landroid/text/Spanned;
    .end local v12    # "messageView":Landroid/widget/TextView;
    .end local v13    # "r":Landroid/content/res/Resources;
    .end local v14    # "rememberChoice":Landroid/widget/CheckBox;
    :cond_1
    const v5, 0x104040e

    .restart local v5    # "detailsId":I
    goto/16 :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    .line 287
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 342
    :pswitch_0
    const-string/jumbo v1, "SMSDispatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleMessage() ignoring message of unexpected type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    :goto_0
    return-void

    .line 290
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->handleSendComplete(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 294
    :pswitch_2
    const-string/jumbo v1, "SMSDispatcher"

    const-string/jumbo v2, "SMS retry.."

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->sendRetrySms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_0

    .line 299
    :pswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->handleReachSentLimit(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_0

    .line 303
    :pswitch_4
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    invoke-virtual {p0, v3, v1}, Lcom/android/internal/telephony/SMSDispatcher;->handleConfirmShortCode(ZLcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_0

    .line 307
    :pswitch_5
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    const/4 v2, 0x1

    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/SMSDispatcher;->handleConfirmShortCode(ZLcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_0

    .line 312
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 313
    .local v0, "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    invoke-virtual {v0}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->isMultipart()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 314
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SMSDispatcher;->sendMultipartSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 325
    :goto_1
    iget v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPendingTrackerCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPendingTrackerCount:I

    goto :goto_0

    .line 323
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SMSDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_1

    .line 331
    .end local v0    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 332
    .restart local v0    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->onFailed(Landroid/content/Context;II)V

    .line 333
    iget v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPendingTrackerCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPendingTrackerCount:I

    goto :goto_0

    .line 338
    .end local v0    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :pswitch_8
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->handleStatusReport(Ljava/lang/Object;)V

    goto :goto_0

    .line 287
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_4
        :pswitch_5
        :pswitch_8
    .end packed-switch
.end method

.method protected handleReachSentLimit(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 8
    .param p1, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .prologue
    .line 1257
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->denyIfQueueLimitReached(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1258
    return-void

    .line 1261
    :cond_0
    iget-object v5, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mAppInfo:Landroid/content/pm/PackageInfo;

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/SMSDispatcher;->getAppLabel(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1262
    .local v0, "appLabel":Ljava/lang/CharSequence;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    .line 1263
    .local v4, "r":Landroid/content/res/Resources;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const v6, 0x104040a

    invoke-virtual {v4, v6, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    .line 1265
    .local v3, "messageText":Landroid/text/Spanned;
    new-instance v2, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;

    const/4 v5, 0x0

    invoke-direct {v2, p0, p1, v5}, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;Landroid/widget/TextView;)V

    .line 1269
    .local v2, "listener":Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;
    new-instance v5, Lmiui/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const/4 v7, 0x3

    invoke-direct {v5, v6, v7}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 1271
    const v6, 0x1040409

    .line 1269
    invoke-virtual {v5, v6}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v3}, Lmiui/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    move-result-object v5

    .line 1276
    const v6, 0x104040b

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1269
    invoke-virtual {v5, v6, v2}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v5

    .line 1277
    const v6, 0x104040c

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1269
    invoke-virtual {v5, v6, v2}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v2}, Lmiui/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v1

    .line 1281
    .local v1, "d":Lmiui/app/AlertDialog;
    invoke-virtual {v1}, Lmiui/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x7d3

    invoke-virtual {v5, v6}, Landroid/view/Window;->setType(I)V

    .line 1282
    invoke-virtual {v1}, Lmiui/app/AlertDialog;->show()V

    .line 1256
    return-void
.end method

.method protected handleSendComplete(Landroid/os/AsyncResult;)V
    .locals 11
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x0

    .line 640
    iget-object v5, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v5, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 641
    .local v5, "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    iget-object v3, v5, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    .line 643
    .local v3, "sentIntent":Landroid/app/PendingIntent;
    iget-object v6, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v6, :cond_1

    .line 644
    iget-object v6, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, Lcom/android/internal/telephony/SmsResponse;

    iget v6, v6, Lcom/android/internal/telephony/SmsResponse;->mMessageRef:I

    iput v6, v5, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    .line 649
    :goto_0
    iget-object v6, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v6, :cond_2

    .line 652
    iget-object v6, v5, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    if-eqz v6, :cond_0

    .line 654
    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 656
    :cond_0
    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->onSent(Landroid/content/Context;)V

    .line 658
    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsQueue:Lcom/android/internal/telephony/MiuiSmsQueue;

    invoke-virtual {v6}, Lcom/android/internal/telephony/MiuiSmsQueue;->processNextSms()V

    .line 639
    :goto_1
    return-void

    .line 646
    :cond_1
    const-string/jumbo v6, "SMSDispatcher"

    const-string/jumbo v7, "SmsResponse was null"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 662
    :cond_2
    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getState()I

    move-result v4

    .line 664
    .local v4, "ss":I
    iget v6, v5, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mImsRetry:I

    if-lez v6, :cond_3

    if-eqz v4, :cond_3

    .line 668
    iput v10, v5, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    .line 670
    const-string/jumbo v6, "SMSDispatcher"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "handleSendComplete: Skipping retry:  isIms()="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 671
    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher;->isIms()Z

    move-result v8

    .line 670
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 672
    const-string/jumbo v8, " mRetryCount="

    .line 670
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 672
    iget v8, v5, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    .line 670
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 673
    const-string/jumbo v8, " mImsRetry="

    .line 670
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 673
    iget v8, v5, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mImsRetry:I

    .line 670
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 674
    const-string/jumbo v8, " mMessageRef="

    .line 670
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 674
    iget v8, v5, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    .line 670
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 675
    const-string/jumbo v8, " SS= "

    .line 670
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 675
    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v8}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getState()I

    move-result v8

    .line 670
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher;->isIms()Z

    move-result v6

    if-nez v6, :cond_4

    if-eqz v4, :cond_4

    .line 680
    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/internal/telephony/SMSDispatcher;->getNotInServiceError(I)I

    move-result v7

    invoke-virtual {v5, v6, v7, v9}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->onFailed(Landroid/content/Context;II)V

    .line 682
    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsQueue:Lcom/android/internal/telephony/MiuiSmsQueue;

    invoke-virtual {v6, v9}, Lcom/android/internal/telephony/MiuiSmsQueue;->enableSynced(Z)V

    goto/16 :goto_1

    .line 683
    :cond_4
    iget-object v6, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v6, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v6

    .line 684
    sget-object v7, Lcom/android/internal/telephony/CommandException$Error;->SMS_FAIL_RETRY:Lcom/android/internal/telephony/CommandException$Error;

    .line 683
    if-ne v6, v7, :cond_5

    .line 685
    iget v6, v5, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    if-ge v6, v10, :cond_5

    .line 694
    iget v6, v5, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    .line 695
    invoke-virtual {p0, v10, v5}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 696
    .local v2, "retryMsg":Landroid/os/Message;
    const-wide/16 v6, 0x7d0

    invoke-virtual {p0, v2, v6, v7}, Lcom/android/internal/telephony/SMSDispatcher;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_1

    .line 698
    .end local v2    # "retryMsg":Landroid/os/Message;
    :cond_5
    const/4 v1, 0x0

    .line 699
    .local v1, "errorCode":I
    iget-object v6, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v6, :cond_6

    .line 700
    iget-object v6, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, Lcom/android/internal/telephony/SmsResponse;

    iget v1, v6, Lcom/android/internal/telephony/SmsResponse;->mErrorCode:I

    .line 702
    :cond_6
    const/4 v0, 0x1

    .line 703
    .local v0, "error":I
    iget-object v6, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v6, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v6

    .line 704
    sget-object v7, Lcom/android/internal/telephony/CommandException$Error;->FDN_CHECK_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    .line 703
    if-ne v6, v7, :cond_7

    .line 705
    const/4 v0, 0x6

    .line 707
    :cond_7
    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6, v0, v1}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->onFailed(Landroid/content/Context;II)V

    .line 709
    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsQueue:Lcom/android/internal/telephony/MiuiSmsQueue;

    invoke-virtual {v6}, Lcom/android/internal/telephony/MiuiSmsQueue;->processNextSms()V

    goto/16 :goto_1
.end method

.method protected handleStatusReport(Ljava/lang/Object;)V
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 269
    const-string/jumbo v0, "SMSDispatcher"

    const-string/jumbo v1, "handleStatusReport() called with no subclass."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    return-void
.end method

.method protected abstract injectSmsPdu([BLjava/lang/String;Landroid/app/PendingIntent;)V
.end method

.method public isIms()Z
    .locals 3

    .prologue
    .line 1871
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mImsSMSDispatcher:Lcom/android/internal/telephony/ImsSMSDispatcher;

    if-eqz v0, :cond_0

    .line 1872
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mImsSMSDispatcher:Lcom/android/internal/telephony/ImsSMSDispatcher;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ImsSMSDispatcher;->isIms()Z

    move-result v0

    return v0

    .line 1874
    :cond_0
    const-string/jumbo v0, "SMSDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mImsSMSDispatcher:Lcom/android/internal/telephony/ImsSMSDispatcher;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1875
    const/4 v0, 0x0

    return v0
.end method

.method protected isRetryAlwaysOverIMS()Z
    .locals 5

    .prologue
    .line 1932
    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 1933
    const-string/jumbo v4, "carrier_config"

    .line 1932
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CarrierConfigManager;

    .line 1934
    .local v1, "configManager":Landroid/telephony/CarrierConfigManager;
    const/4 v0, 0x0

    .line 1935
    .local v0, "b":Landroid/os/PersistableBundle;
    const/4 v2, 0x0

    .line 1936
    .local v2, "retryAlwaysOverIMS":Z
    if-eqz v1, :cond_0

    .line 1937
    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher;->getSubId()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    .line 1939
    .end local v0    # "b":Landroid/os/PersistableBundle;
    :cond_0
    if-eqz v0, :cond_1

    .line 1940
    const-string/jumbo v3, "config_retry_sms_over_ims"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 1942
    .end local v2    # "retryAlwaysOverIMS":Z
    :cond_1
    return v2
.end method

.method protected abstract sendData(Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;)V
.end method

.method protected sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/net/Uri;Ljava/lang/String;ZIZI)V
    .locals 31
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p6, "messageUri"    # Landroid/net/Uri;
    .param p7, "callingPkg"    # Ljava/lang/String;
    .param p8, "persistMessage"    # Z
    .param p9, "priority"    # I
    .param p10, "isExpectMore"    # Z
    .param p11, "validityPeriod"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "ZIZI)V"
        }
    .end annotation

    .prologue
    .line 898
    .local p3, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->getMultipartMessageText(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v19

    .line 899
    .local v19, "fullMessageText":Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/SMSDispatcher;->getNextConcatenatedRef()I

    move-result v4

    and-int/lit16 v0, v4, 0xff

    move/from16 v27, v0

    .line 900
    .local v27, "refNumber":I
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v26

    .line 901
    .local v26, "msgCount":I
    const/4 v9, 0x0

    .line 903
    .local v9, "encoding":I
    move/from16 v0, v26

    new-array v0, v0, [Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-object/from16 v24, v0

    .line 904
    .local v24, "encodingForParts":[Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    const/16 v25, 0x0

    .local v25, "i":I
    :goto_0
    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_2

    .line 905
    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/android/internal/telephony/SMSDispatcher;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v23

    .line 906
    .local v23, "details":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    move-object/from16 v0, v23

    iget v4, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    if-eq v9, v4, :cond_1

    .line 907
    if-eqz v9, :cond_0

    .line 908
    const/4 v4, 0x1

    if-ne v9, v4, :cond_1

    .line 909
    :cond_0
    move-object/from16 v0, v23

    iget v9, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    .line 911
    :cond_1
    aput-object v23, v24, v25

    .line 904
    add-int/lit8 v25, v25, 0x1

    goto :goto_0

    .line 914
    .end local v23    # "details":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :cond_2
    move/from16 v0, v26

    new-array v0, v0, [Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-object/from16 v30, v0

    .line 917
    .local v30, "trackers":[Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    new-instance v16, Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v0, v16

    move/from16 v1, v26

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 918
    .local v16, "unsentPartCount":Ljava/util/concurrent/atomic/AtomicInteger;
    new-instance v17, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-direct {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 920
    .local v17, "anyPartFailed":Ljava/util/concurrent/atomic/AtomicBoolean;
    const/16 v25, 0x0

    :goto_1
    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_7

    .line 921
    new-instance v22, Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    invoke-direct/range {v22 .. v22}, Lcom/android/internal/telephony/SmsHeader$ConcatRef;-><init>()V

    .line 922
    .local v22, "concatRef":Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    move/from16 v0, v27

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    .line 923
    add-int/lit8 v4, v25, 0x1

    move-object/from16 v0, v22

    iput v4, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    .line 924
    move/from16 v0, v26

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    .line 931
    const/4 v4, 0x1

    move-object/from16 v0, v22

    iput-boolean v4, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    .line 932
    new-instance v8, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v8}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 933
    .local v8, "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    move-object/from16 v0, v22

    iput-object v0, v8, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    .line 936
    const/4 v4, 0x1

    if-ne v9, v4, :cond_3

    .line 937
    aget-object v4, v24, v25

    iget v4, v4, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageTable:I

    iput v4, v8, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    .line 938
    aget-object v4, v24, v25

    iget v4, v4, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageShiftTable:I

    iput v4, v8, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    .line 941
    :cond_3
    const/4 v10, 0x0

    .line 942
    .local v10, "sentIntent":Landroid/app/PendingIntent;
    if-eqz p4, :cond_4

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v25

    if-le v4, v0, :cond_4

    .line 943
    move-object/from16 v0, p4

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "sentIntent":Landroid/app/PendingIntent;
    check-cast v10, Landroid/app/PendingIntent;

    .line 946
    :cond_4
    const/4 v11, 0x0

    .line 947
    .local v11, "deliveryIntent":Landroid/app/PendingIntent;
    if-eqz p5, :cond_5

    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v25

    if-le v4, v0, :cond_5

    .line 948
    move-object/from16 v0, p5

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "deliveryIntent":Landroid/app/PendingIntent;
    check-cast v11, Landroid/app/PendingIntent;

    .line 952
    :cond_5
    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 953
    add-int/lit8 v4, v26, -0x1

    move/from16 v0, v25

    if-ne v0, v4, :cond_6

    const/4 v12, 0x1

    :goto_2
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move/from16 v13, p9

    move/from16 v14, p10

    move/from16 v15, p11

    move-object/from16 v18, p6

    move-object/from16 v20, p7

    .line 952
    invoke-virtual/range {v4 .. v20}, Lcom/android/internal/telephony/SMSDispatcher;->getNewSubmitPduTracker(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsHeader;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;ZIZILjava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v4

    .line 951
    aput-object v4, v30, v25

    .line 956
    aget-object v4, v30, v25

    move/from16 v0, p8

    invoke-static {v4, v0}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->-set0(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;Z)Z

    .line 920
    add-int/lit8 v25, v25, 0x1

    goto/16 :goto_1

    .line 953
    :cond_6
    const/4 v12, 0x0

    goto :goto_2

    .line 959
    .end local v8    # "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    .end local v22    # "concatRef":Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    :cond_7
    if-eqz p3, :cond_8

    if-nez v30, :cond_9

    .line 961
    :cond_8
    const-string/jumbo v4, "SMSDispatcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Cannot send multipart text. parts="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " trackers="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    return-void

    .line 959
    :cond_9
    move-object/from16 v0, v30

    array-length v4, v0

    if-eqz v4, :cond_8

    .line 960
    const/4 v4, 0x0

    aget-object v4, v30, v4

    if-eqz v4, :cond_8

    .line 965
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/SMSDispatcher;->getCarrierAppPackageName()Ljava/lang/String;

    move-result-object v21

    .line 966
    .local v21, "carrierPackage":Ljava/lang/String;
    if-eqz v21, :cond_b

    .line 967
    const-string/jumbo v4, "SMSDispatcher"

    const-string/jumbo v5, "Found carrier package."

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    new-instance v28, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, v30

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Ljava/util/ArrayList;[Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 969
    .local v28, "smsSender":Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;
    new-instance v4, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSenderCallback;

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v4, v0, v1}, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSenderCallback;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;)V

    move-object/from16 v0, v28

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v4}, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;->sendSmsByCarrierApp(Ljava/lang/String;Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSenderCallback;)V

    .line 897
    .end local v28    # "smsSender":Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;
    :cond_a
    return-void

    .line 971
    :cond_b
    const-string/jumbo v4, "SMSDispatcher"

    const-string/jumbo v5, "No carrier package."

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    const/4 v4, 0x0

    move-object/from16 v0, v30

    array-length v5, v0

    :goto_3
    if-ge v4, v5, :cond_a

    aget-object v29, v30, v4

    .line 973
    .local v29, "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    if-eqz v29, :cond_c

    .line 974
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 972
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 976
    :cond_c
    const-string/jumbo v6, "SMSDispatcher"

    const-string/jumbo v7, "Null tracker."

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method protected sendRawPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 13
    .param p1, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x1

    const/4 v12, 0x0

    .line 1015
    invoke-virtual {p1}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->getData()Ljava/util/HashMap;

    move-result-object v8

    .line 1016
    .local v8, "map":Ljava/util/HashMap;
    const-string/jumbo v0, "pdu"

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [B

    .line 1018
    .local v10, "pdu":[B
    iget-boolean v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsSendDisabled:Z

    if-eqz v0, :cond_0

    .line 1019
    const-string/jumbo v0, "SMSDispatcher"

    const-string/jumbo v1, "Device does not support sending sms."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0, v3, v12}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->onFailed(Landroid/content/Context;II)V

    .line 1021
    return-void

    .line 1024
    :cond_0
    if-nez v10, :cond_1

    .line 1025
    const-string/jumbo v0, "SMSDispatcher"

    const-string/jumbo v1, "Empty PDU"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v12}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->onFailed(Landroid/content/Context;II)V

    .line 1027
    return-void

    .line 1031
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    .line 1032
    .local v11, "pm":Landroid/content/pm/PackageManager;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {v11, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v9

    .line 1034
    .local v9, "packageNames":[Ljava/lang/String;
    if-eqz v9, :cond_2

    array-length v0, v9

    if-nez v0, :cond_3

    .line 1036
    :cond_2
    const-string/jumbo v0, "SMSDispatcher"

    const-string/jumbo v1, "Can\'t get calling app package name: refusing to send SMS"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0, v2, v12}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->onFailed(Landroid/content/Context;II)V

    .line 1038
    return-void

    .line 1045
    :cond_3
    const/4 v0, 0x0

    :try_start_0
    aget-object v0, v9, v0

    const/16 v1, 0x40

    invoke-virtual {v11, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 1055
    .local v6, "appInfo":Landroid/content/pm/PackageInfo;
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->checkDestination(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1059
    iget-object v0, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/telephony/SMSDispatcherInjector;->shouldCheckSmsUsage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1060
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    iget-object v1, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/SmsUsageMonitor;->check(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1065
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsUsageMonitor;->isSmsAuthorizationEnabled()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1066
    new-instance v4, Lcom/android/internal/telephony/SMSDispatcher$1;

    invoke-direct {v4, p0, p1}, Lcom/android/internal/telephony/SMSDispatcher$1;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 1079
    .local v4, "callback":Lcom/android/internal/telephony/SmsUsageMonitor$SmsAuthorizationCallback;
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    iget-object v1, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mAppInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDestAddress:Ljava/lang/String;

    .line 1080
    invoke-static {p1}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->-get0(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)Ljava/lang/String;

    move-result-object v3

    move-object v5, p0

    .line 1079
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/SmsUsageMonitor;->authorizeOutgoingSms(Landroid/content/pm/PackageInfo;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsUsageMonitor$SmsAuthorizationCallback;Landroid/os/Handler;)V

    .line 1088
    .end local v4    # "callback":Lcom/android/internal/telephony/SmsUsageMonitor$SmsAuthorizationCallback;
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    iget-object v1, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDestAddress:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1089
    new-instance v0, Lcom/android/internal/telephony/AsyncEmergencyContactNotifier;

    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/AsyncEmergencyContactNotifier;-><init>(Landroid/content/Context;)V

    new-array v1, v12, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/AsyncEmergencyContactNotifier;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1014
    :cond_6
    return-void

    .line 1046
    .end local v6    # "appInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v7

    .line 1047
    .local v7, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v0, "SMSDispatcher"

    const-string/jumbo v1, "Can\'t get calling app package info: refusing to send SMS"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0, v2, v12}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->onFailed(Landroid/content/Context;II)V

    .line 1049
    return-void

    .line 1061
    .end local v7    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v6    # "appInfo":Landroid/content/pm/PackageInfo;
    :cond_7
    invoke-virtual {p0, v3, p1}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SMSDispatcher;->sendMessage(Landroid/os/Message;)Z

    .line 1062
    return-void

    .line 1084
    :cond_8
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsQueue:Lcom/android/internal/telephony/MiuiSmsQueue;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/MiuiSmsQueue;->enqueueOrSendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_0
.end method

.method public sendRetrySms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 3
    .param p1, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .prologue
    .line 1396
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mImsSMSDispatcher:Lcom/android/internal/telephony/ImsSMSDispatcher;

    if-eqz v0, :cond_0

    .line 1397
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mImsSMSDispatcher:Lcom/android/internal/telephony/ImsSMSDispatcher;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/ImsSMSDispatcher;->sendRetrySms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 1394
    :goto_0
    return-void

    .line 1399
    :cond_0
    const-string/jumbo v0, "SMSDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mImsSMSDispatcher:Lcom/android/internal/telephony/ImsSMSDispatcher;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is null. Retry failed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected abstract sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
.end method

.method protected abstract sendSmsByPstn(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
.end method

.method protected abstract sendSubmitPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
.end method

.method protected abstract sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/net/Uri;Ljava/lang/String;ZIZI)V
.end method

.method public setPremiumSmsPermission(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permission"    # I

    .prologue
    .line 1372
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/SmsUsageMonitor;->setPremiumSmsPermission(Ljava/lang/String;I)V

    .line 1371
    return-void
.end method

.method protected updatePhoneObject(Lcom/android/internal/telephony/Phone;)V
    .locals 3
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 237
    iput-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 238
    iget-object v0, p1, Lcom/android/internal/telephony/Phone;->mSmsUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    .line 239
    const-string/jumbo v0, "SMSDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Active phone changed to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    return-void
.end method
