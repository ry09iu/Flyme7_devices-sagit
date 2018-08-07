.class public Lcom/android/stk/StkDialogActivity;
.super Landroid/app/Activity;
.source "StkDialogActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/stk/StkDialogActivity$1;,
        Lcom/android/stk/StkDialogActivity$2;
    }
.end annotation


# static fields
.field private static ENABLE_CONTENT_DESCRIPTION:Ljava/lang/String;

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final className:Ljava/lang/String;


# instance fields
.field private appService:Lcom/android/stk/StkAppService;

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mEnableContent:Z

.field private mIsResponseSent:Z

.field private mSlotId:I

.field mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

.field private mTimeoutIntent:Landroid/app/PendingIntent;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/stk/StkDialogActivity;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/stk/StkDialogActivity;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/stk/StkDialogActivity;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/stk/StkDialogActivity;)I
    .locals 1

    iget v0, p0, Lcom/android/stk/StkDialogActivity;->mSlotId:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/stk/StkDialogActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/stk/StkDialogActivity;->mAlertDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/stk/StkDialogActivity;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;
    .locals 0

    iput-object p1, p0, Lcom/android/stk/StkDialogActivity;->mTimeoutIntent:Landroid/app/PendingIntent;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/stk/StkDialogActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/stk/StkDialogActivity;->cancelTimeOut()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/stk/StkDialogActivity;IZ)V
    .locals 0
    .param p1, "resId"    # I
    .param p2, "confirmed"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/stk/StkDialogActivity;->sendResponse(IZ)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/stk/StkDialogActivity;I)V
    .locals 0
    .param p1, "resId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/stk/StkDialogActivity;->sendResponse(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 52
    new-instance v0, Lcom/android/stk/StkDialogActivity$1;

    invoke-direct {v0}, Lcom/android/stk/StkDialogActivity$1;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/stk/StkDialogActivity;->className:Ljava/lang/String;

    .line 53
    sget-object v0, Lcom/android/stk/StkDialogActivity;->className:Ljava/lang/String;

    sget-object v1, Lcom/android/stk/StkDialogActivity;->className:Ljava/lang/String;

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/stk/StkDialogActivity;->LOG_TAG:Ljava/lang/String;

    .line 76
    const-string/jumbo v0, "persist.stk.enable_content"

    sput-object v0, Lcom/android/stk/StkDialogActivity;->ENABLE_CONTENT_DESCRIPTION:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/stk/StkDialogActivity;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    .line 55
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/stk/StkDialogActivity;->mSlotId:I

    .line 56
    invoke-static {}, Lcom/android/stk/StkAppService;->getInstance()Lcom/android/stk/StkAppService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/stk/StkDialogActivity;->appService:Lcom/android/stk/StkAppService;

    .line 58
    iput-boolean v1, p0, Lcom/android/stk/StkDialogActivity;->mIsResponseSent:Z

    .line 77
    sget-object v0, Lcom/android/stk/StkDialogActivity;->ENABLE_CONTENT_DESCRIPTION:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/stk/StkDialogActivity;->mEnableContent:Z

    .line 405
    new-instance v0, Lcom/android/stk/StkDialogActivity$2;

    invoke-direct {v0, p0}, Lcom/android/stk/StkDialogActivity$2;-><init>(Lcom/android/stk/StkDialogActivity;)V

    iput-object v0, p0, Lcom/android/stk/StkDialogActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 50
    return-void
.end method

.method private cancelTimeOut()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 363
    sget-object v0, Lcom/android/stk/StkDialogActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "cancelTimeOut: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/stk/StkDialogActivity;->mSlotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    iget-object v0, p0, Lcom/android/stk/StkDialogActivity;->mTimeoutIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 365
    iget-object v0, p0, Lcom/android/stk/StkDialogActivity;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/stk/StkDialogActivity;->mTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 366
    iput-object v3, p0, Lcom/android/stk/StkDialogActivity;->mTimeoutIntent:Landroid/app/PendingIntent;

    .line 362
    :cond_0
    return-void
.end method

.method private initFromIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 352
    if-eqz p1, :cond_0

    .line 353
    const-string/jumbo v0, "TEXT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cat/TextMessage;

    iput-object v0, p0, Lcom/android/stk/StkDialogActivity;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    .line 354
    const-string/jumbo v0, "SLOT_ID"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/stk/StkDialogActivity;->mSlotId:I

    .line 359
    :goto_0
    sget-object v0, Lcom/android/stk/StkDialogActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "initFromIntent - ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/stk/StkDialogActivity;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "], sim id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/stk/StkDialogActivity;->mSlotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    return-void

    .line 356
    :cond_0
    invoke-virtual {p0}, Lcom/android/stk/StkDialogActivity;->finish()V

    goto :goto_0
.end method

.method private sendResponse(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 347
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/stk/StkDialogActivity;->sendResponse(IZ)V

    .line 346
    return-void
.end method

.method private sendResponse(IZ)V
    .locals 4
    .param p1, "resId"    # I
    .param p2, "confirmed"    # Z

    .prologue
    .line 316
    iget v1, p0, Lcom/android/stk/StkDialogActivity;->mSlotId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 317
    sget-object v1, Lcom/android/stk/StkDialogActivity;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "sim id is invalid"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    return-void

    .line 321
    :cond_0
    invoke-static {}, Lcom/android/stk/StkAppService;->getInstance()Lcom/android/stk/StkAppService;

    move-result-object v1

    if-nez v1, :cond_1

    .line 322
    sget-object v1, Lcom/android/stk/StkDialogActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Ignore response: id is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    return-void

    .line 327
    :cond_1
    iget v1, p0, Lcom/android/stk/StkDialogActivity;->mSlotId:I

    invoke-static {v1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IccCard;->hasIccCard()Z

    move-result v1

    if-nez v1, :cond_2

    .line 328
    sget-object v1, Lcom/android/stk/StkDialogActivity;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "Ignore response when card is absent"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    return-void

    .line 333
    :cond_2
    sget-object v1, Lcom/android/stk/StkDialogActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendResponse resID["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] confirmed["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    iget-object v1, p0, Lcom/android/stk/StkDialogActivity;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-boolean v1, v1, Lcom/android/internal/telephony/cat/TextMessage;->responseNeeded:Z

    if-eqz v1, :cond_3

    .line 336
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 337
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v1, "op"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 338
    const-string/jumbo v1, "SLOT_ID"

    iget v2, p0, Lcom/android/stk/StkDialogActivity;->mSlotId:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 339
    const-string/jumbo v1, "response id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 340
    const-string/jumbo v1, "confirm"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 341
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/stk/StkAppService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/stk/StkDialogActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 342
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/stk/StkDialogActivity;->mIsResponseSent:Z

    .line 315
    .end local v0    # "args":Landroid/os/Bundle;
    :cond_3
    return-void
.end method

.method private startTimeOut(Z)V
    .locals 9
    .param p1, "waitForUserToClear"    # Z

    .prologue
    const/4 v8, 0x2

    const/4 v5, 0x0

    .line 373
    invoke-direct {p0}, Lcom/android/stk/StkDialogActivity;->cancelTimeOut()V

    .line 374
    iget-object v2, p0, Lcom/android/stk/StkDialogActivity;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/TextMessage;->duration:Lcom/android/internal/telephony/cat/Duration;

    invoke-static {v2}, Lcom/android/stk/StkApp;->calculateDurationInMilis(Lcom/android/internal/telephony/cat/Duration;)I

    move-result v0

    .line 377
    .local v0, "dialogDuration":I
    iget-object v2, p0, Lcom/android/stk/StkDialogActivity;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-boolean v2, v2, Lcom/android/internal/telephony/cat/TextMessage;->userClear:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/stk/StkDialogActivity;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-boolean v2, v2, Lcom/android/internal/telephony/cat/TextMessage;->responseNeeded:Z

    if-nez v2, :cond_0

    .line 378
    return-void

    .line 381
    :cond_0
    if-nez v0, :cond_1

    .line 382
    if-eqz p1, :cond_2

    .line 383
    const/16 v0, 0x2710

    .line 388
    :cond_1
    :goto_0
    sget-object v2, Lcom/android/stk/StkDialogActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startTimeOut: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/stk/StkDialogActivity;->mSlotId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.android.stk.DIALOG_ALARM_TIMEOUT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 390
    .local v1, "mAlarmIntent":Landroid/content/Intent;
    const-string/jumbo v2, "SLOT_ID"

    iget v3, p0, Lcom/android/stk/StkDialogActivity;->mSlotId:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 391
    iget-object v2, p0, Lcom/android/stk/StkDialogActivity;->mContext:Landroid/content/Context;

    const/high16 v3, 0x10000000

    invoke-static {v2, v5, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/stk/StkDialogActivity;->mTimeoutIntent:Landroid/app/PendingIntent;

    .line 394
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_3

    .line 395
    iget-object v2, p0, Lcom/android/stk/StkDialogActivity;->mAlarmManager:Landroid/app/AlarmManager;

    .line 396
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    int-to-long v6, v0

    add-long/2addr v4, v6

    iget-object v3, p0, Lcom/android/stk/StkDialogActivity;->mTimeoutIntent:Landroid/app/PendingIntent;

    .line 395
    invoke-virtual {v2, v8, v4, v5, v3}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 370
    :goto_1
    return-void

    .line 385
    .end local v1    # "mAlarmIntent":Landroid/content/Intent;
    :cond_2
    const/16 v0, 0x1388

    goto :goto_0

    .line 399
    .restart local v1    # "mAlarmIntent":Landroid/content/Intent;
    :cond_3
    iget-object v2, p0, Lcom/android/stk/StkDialogActivity;->mAlarmManager:Landroid/app/AlarmManager;

    .line 400
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    int-to-long v6, v0

    add-long/2addr v4, v6

    iget-object v3, p0, Lcom/android/stk/StkDialogActivity;->mTimeoutIntent:Landroid/app/PendingIntent;

    .line 399
    invoke-virtual {v2, v8, v4, v5, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 82
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/stk/StkDialogActivity;->requestWindowFeature(I)Z

    .line 83
    invoke-virtual {p0}, Lcom/android/stk/StkDialogActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x106000d

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 85
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 87
    iget-object v1, p0, Lcom/android/stk/StkDialogActivity;->appService:Lcom/android/stk/StkAppService;

    if-nez v1, :cond_0

    .line 88
    const-string/jumbo v1, "onCreate appService = null"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Lcom/android/stk/StkDialogActivity;->finish()V

    .line 90
    return-void

    .line 93
    :cond_0
    sget-object v1, Lcom/android/stk/StkDialogActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onCreate, sim id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/stk/StkDialogActivity;->mSlotId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/stk/StkDialogActivity;->mIsResponseSent:Z

    .line 109
    invoke-virtual {p0}, Lcom/android/stk/StkDialogActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/stk/StkDialogActivity;->mContext:Landroid/content/Context;

    .line 110
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 111
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "com.android.stk.DIALOG_ALARM_TIMEOUT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 112
    iget-object v1, p0, Lcom/android/stk/StkDialogActivity;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/stk/StkDialogActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 113
    iget-object v1, p0, Lcom/android/stk/StkDialogActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    iput-object v1, p0, Lcom/android/stk/StkDialogActivity;->mAlarmManager:Landroid/app/AlarmManager;

    .line 80
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 270
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 272
    iget-object v0, p0, Lcom/android/stk/StkDialogActivity;->appService:Lcom/android/stk/StkAppService;

    if-nez v0, :cond_0

    .line 273
    const-string/jumbo v0, "onDestroy appService = null"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 274
    return-void

    .line 277
    :cond_0
    sget-object v0, Lcom/android/stk/StkDialogActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDestroy - mIsResponseSent["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/stk/StkDialogActivity;->mIsResponseSent:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 278
    const-string/jumbo v2, "], sim id: "

    .line 277
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 278
    iget v2, p0, Lcom/android/stk/StkDialogActivity;->mSlotId:I

    .line 277
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    iget-boolean v0, p0, Lcom/android/stk/StkDialogActivity;->mIsResponseSent:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/stk/StkDialogActivity;->appService:Lcom/android/stk/StkAppService;

    iget v1, p0, Lcom/android/stk/StkDialogActivity;->mSlotId:I

    invoke-virtual {v0, v1}, Lcom/android/stk/StkAppService;->isDialogPending(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 285
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/stk/StkDialogActivity;->cancelTimeOut()V

    .line 287
    iget-object v0, p0, Lcom/android/stk/StkDialogActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_2

    .line 288
    iget-object v0, p0, Lcom/android/stk/StkDialogActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/stk/StkDialogActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 269
    :cond_2
    return-void

    .line 283
    :cond_3
    const/16 v0, 0xd

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/stk/StkDialogActivity;->sendResponse(IZ)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 136
    packed-switch p1, :pswitch_data_0

    .line 144
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 138
    :pswitch_0
    sget-object v0, Lcom/android/stk/StkDialogActivity;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "onKeyDown - KEYCODE_BACK"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-direct {p0}, Lcom/android/stk/StkDialogActivity;->cancelTimeOut()V

    .line 140
    const/16 v0, 0x15

    invoke-direct {p0, v0}, Lcom/android/stk/StkDialogActivity;->sendResponse(I)V

    .line 141
    invoke-virtual {p0}, Lcom/android/stk/StkDialogActivity;->finish()V

    goto :goto_0

    .line 136
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 311
    sget-object v0, Lcom/android/stk/StkDialogActivity;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "onNewIntent - updating the same Dialog box"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    invoke-virtual {p0, p1}, Lcom/android/stk/StkDialogActivity;->setIntent(Landroid/content/Intent;)V

    .line 310
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 225
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 227
    iget-object v0, p0, Lcom/android/stk/StkDialogActivity;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 228
    const-string/jumbo v0, "onPause dismiss mAlertDialog"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lcom/android/stk/StkDialogActivity;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 230
    iput-object v1, p0, Lcom/android/stk/StkDialogActivity;->mAlertDialog:Landroid/app/AlertDialog;

    .line 233
    :cond_0
    sget-object v0, Lcom/android/stk/StkDialogActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPause, sim id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/stk/StkDialogActivity;->mSlotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Lcom/android/stk/StkDialogActivity;->appService:Lcom/android/stk/StkAppService;

    iget v1, p0, Lcom/android/stk/StkDialogActivity;->mSlotId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/stk/StkAppService;->setDisplayTextDlgVisibility(ZI)V

    .line 224
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 303
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 305
    const-string/jumbo v0, "text"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cat/TextMessage;

    iput-object v0, p0, Lcom/android/stk/StkDialogActivity;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    .line 306
    sget-object v0, Lcom/android/stk/StkDialogActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onRestoreInstanceState - ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/stk/StkDialogActivity;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    return-void
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 149
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 150
    sget-object v3, Lcom/android/stk/StkDialogActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onResume - mIsResponseSent["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/stk/StkDialogActivity;->mIsResponseSent:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 151
    const-string/jumbo v5, "], sim id: "

    .line 150
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 151
    iget v5, p0, Lcom/android/stk/StkDialogActivity;->mSlotId:I

    .line 150
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    invoke-virtual {p0}, Lcom/android/stk/StkDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/stk/StkDialogActivity;->initFromIntent(Landroid/content/Intent;)V

    .line 154
    iget-object v3, p0, Lcom/android/stk/StkDialogActivity;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    if-nez v3, :cond_0

    .line 155
    invoke-virtual {p0}, Lcom/android/stk/StkDialogActivity;->finish()V

    .line 156
    return-void

    .line 186
    :cond_0
    const-string/jumbo v0, ""

    .line 187
    .local v0, "message":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/stk/StkDialogActivity;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-boolean v3, v3, Lcom/android/internal/telephony/cat/TextMessage;->iconSelfExplanatory:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/stk/StkDialogActivity;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v3, v3, Lcom/android/internal/telephony/cat/TextMessage;->icon:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_1

    move v1, v2

    :cond_1
    if-nez v1, :cond_2

    .line 188
    iget-object v1, p0, Lcom/android/stk/StkDialogActivity;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v0, v1, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    .line 190
    :cond_2
    iget-object v1, p0, Lcom/android/stk/StkDialogActivity;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/TextMessage;->title:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/android/stk/StkDialogActivity;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    iget-object v1, p0, Lcom/android/stk/StkDialogActivity;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/TextMessage;->duration:Lcom/android/internal/telephony/cat/Duration;

    invoke-static {v1}, Lcom/android/stk/StkApp;->calculateDurationInMilis(Lcom/android/internal/telephony/cat/Duration;)I

    move-result v1

    if-nez v1, :cond_3

    .line 200
    iget-object v1, p0, Lcom/android/stk/StkDialogActivity;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-boolean v1, v1, Lcom/android/internal/telephony/cat/TextMessage;->responseNeeded:Z

    if-eqz v1, :cond_4

    .line 205
    :cond_3
    iget-object v1, p0, Lcom/android/stk/StkDialogActivity;->appService:Lcom/android/stk/StkAppService;

    iget v3, p0, Lcom/android/stk/StkDialogActivity;->mSlotId:I

    invoke-virtual {v1, v2, v3}, Lcom/android/stk/StkAppService;->setDisplayTextDlgVisibility(ZI)V

    .line 214
    iget-object v1, p0, Lcom/android/stk/StkDialogActivity;->mTimeoutIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_5

    .line 215
    sget-object v1, Lcom/android/stk/StkDialogActivity;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "Pending Alarm! Let it finish counting down..."

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    :goto_0
    return-void

    .line 200
    :cond_4
    iget-object v1, p0, Lcom/android/stk/StkDialogActivity;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-boolean v1, v1, Lcom/android/internal/telephony/cat/TextMessage;->userClear:Z

    .line 199
    if-eqz v1, :cond_3

    .line 201
    sget-object v1, Lcom/android/stk/StkDialogActivity;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "User should clear text..showing message forever"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    return-void

    .line 218
    :cond_5
    sget-object v1, Lcom/android/stk/StkDialogActivity;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "No Pending Alarm! OK to start timer..."

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    iget-object v1, p0, Lcom/android/stk/StkDialogActivity;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-boolean v1, v1, Lcom/android/internal/telephony/cat/TextMessage;->userClear:Z

    invoke-direct {p0, v1}, Lcom/android/stk/StkDialogActivity;->startTimeOut(Z)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 294
    sget-object v0, Lcom/android/stk/StkDialogActivity;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "onSaveInstanceState"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 298
    const-string/jumbo v0, "text"

    iget-object v1, p0, Lcom/android/stk/StkDialogActivity;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 293
    return-void
.end method

.method protected onStart()V
    .locals 3

    .prologue
    .line 249
    sget-object v0, Lcom/android/stk/StkDialogActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onStart, sim id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/stk/StkDialogActivity;->mSlotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 248
    return-void
.end method

.method public onStop()V
    .locals 3

    .prologue
    .line 255
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 256
    sget-object v0, Lcom/android/stk/StkDialogActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onStop - before Send CONFIRM false mIsResponseSent["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 257
    iget-boolean v2, p0, Lcom/android/stk/StkDialogActivity;->mIsResponseSent:Z

    .line 256
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 257
    const-string/jumbo v2, "], sim id: "

    .line 256
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 257
    iget v2, p0, Lcom/android/stk/StkDialogActivity;->mSlotId:I

    .line 256
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    iget-boolean v0, p0, Lcom/android/stk/StkDialogActivity;->mIsResponseSent:Z

    if-nez v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/android/stk/StkDialogActivity;->appService:Lcom/android/stk/StkAppService;

    iget v1, p0, Lcom/android/stk/StkDialogActivity;->mSlotId:I

    invoke-virtual {v0, v1}, Lcom/android/stk/StkAppService;->getStkContext(I)Lcom/android/stk/StkAppService$StkContext;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/stk/StkAppService$StkContext;->setPendingDialogInstance(Landroid/app/Activity;)V

    .line 254
    :goto_0
    return-void

    .line 261
    :cond_0
    sget-object v0, Lcom/android/stk/StkDialogActivity;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "finish."

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    iget-object v0, p0, Lcom/android/stk/StkDialogActivity;->appService:Lcom/android/stk/StkAppService;

    iget v1, p0, Lcom/android/stk/StkDialogActivity;->mSlotId:I

    invoke-virtual {v0, v1}, Lcom/android/stk/StkAppService;->getStkContext(I)Lcom/android/stk/StkAppService$StkContext;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/stk/StkAppService$StkContext;->setPendingDialogInstance(Landroid/app/Activity;)V

    .line 263
    invoke-direct {p0}, Lcom/android/stk/StkDialogActivity;->cancelTimeOut()V

    .line 264
    invoke-virtual {p0}, Lcom/android/stk/StkDialogActivity;->finish()V

    goto :goto_0
.end method

.method public showDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 431
    iget-object v1, p0, Lcom/android/stk/StkDialogActivity;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 432
    iget-object v1, p0, Lcom/android/stk/StkDialogActivity;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 433
    iput-object v2, p0, Lcom/android/stk/StkDialogActivity;->mAlertDialog:Landroid/app/AlertDialog;

    .line 435
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 438
    new-instance v2, Lcom/android/stk/StkDialogActivity$3;

    invoke-direct {v2, p0}, Lcom/android/stk/StkDialogActivity$3;-><init>(Lcom/android/stk/StkDialogActivity;)V

    const v3, 0x7f060006

    .line 435
    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 448
    new-instance v2, Lcom/android/stk/StkDialogActivity$4;

    invoke-direct {v2, p0}, Lcom/android/stk/StkDialogActivity$4;-><init>(Lcom/android/stk/StkDialogActivity;)V

    const v3, 0x7f060007

    .line 435
    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 459
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/stk/StkDialogActivity;->mAlertDialog:Landroid/app/AlertDialog;

    .line 460
    iget-object v1, p0, Lcom/android/stk/StkDialogActivity;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v2, Lcom/android/stk/StkDialogActivity$5;

    invoke-direct {v2, p0}, Lcom/android/stk/StkDialogActivity$5;-><init>(Lcom/android/stk/StkDialogActivity;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 470
    iget-object v1, p0, Lcom/android/stk/StkDialogActivity;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v2, Lcom/android/stk/StkDialogActivity$6;

    invoke-direct {v2, p0}, Lcom/android/stk/StkDialogActivity$6;-><init>(Lcom/android/stk/StkDialogActivity;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 430
    return-void
.end method
