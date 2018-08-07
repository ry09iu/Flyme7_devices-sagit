.class public Lcom/android/stk/StkMenuActivity;
.super Lmiui/app/ListActivity;
.source "StkMenuActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/stk/StkMenuActivity$1;,
        Lcom/android/stk/StkMenuActivity$2;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static final className:Ljava/lang/String;


# instance fields
.field private appService:Lcom/android/stk/StkAppService;

.field private mAcceptUsersInput:Z

.field private mContext:Landroid/content/Context;

.field mInstance:Landroid/app/Activity;

.field private mIsResponseSent:Z

.field private mProgressView:Landroid/widget/ProgressBar;

.field private mSlotId:I

.field private mState:I

.field private mStkMenu:Lcom/android/internal/telephony/cat/Menu;

.field mTimeoutHandler:Landroid/os/Handler;

.field private mTitleIconView:Landroid/widget/ImageView;

.field private mTitleTextView:Landroid/widget/TextView;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/stk/StkMenuActivity;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/stk/StkMenuActivity;)Lcom/android/stk/StkAppService;
    .locals 1

    iget-object v0, p0, Lcom/android/stk/StkMenuActivity;->appService:Lcom/android/stk/StkAppService;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/stk/StkMenuActivity;)I
    .locals 1

    iget v0, p0, Lcom/android/stk/StkMenuActivity;->mSlotId:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/stk/StkMenuActivity;)I
    .locals 1

    iget v0, p0, Lcom/android/stk/StkMenuActivity;->mState:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/stk/StkMenuActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/stk/StkMenuActivity;->mAcceptUsersInput:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/stk/StkMenuActivity;I)V
    .locals 0
    .param p1, "resId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/stk/StkMenuActivity;->sendResponse(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 66
    new-instance v0, Lcom/android/stk/StkMenuActivity$1;

    invoke-direct {v0}, Lcom/android/stk/StkMenuActivity$1;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/stk/StkMenuActivity;->className:Ljava/lang/String;

    .line 67
    sget-object v0, Lcom/android/stk/StkMenuActivity;->className:Ljava/lang/String;

    sget-object v1, Lcom/android/stk/StkMenuActivity;->className:Ljava/lang/String;

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/stk/StkMenuActivity;->LOG_TAG:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 54
    invoke-direct {p0}, Lmiui/app/ListActivity;-><init>()V

    .line 56
    iput-object v1, p0, Lcom/android/stk/StkMenuActivity;->mStkMenu:Lcom/android/internal/telephony/cat/Menu;

    .line 57
    iput v0, p0, Lcom/android/stk/StkMenuActivity;->mState:I

    .line 58
    iput-boolean v0, p0, Lcom/android/stk/StkMenuActivity;->mAcceptUsersInput:Z

    .line 59
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/stk/StkMenuActivity;->mSlotId:I

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/stk/StkMenuActivity;->mIsResponseSent:Z

    .line 61
    iput-object v1, p0, Lcom/android/stk/StkMenuActivity;->mInstance:Landroid/app/Activity;

    .line 63
    iput-object v1, p0, Lcom/android/stk/StkMenuActivity;->mTitleTextView:Landroid/widget/TextView;

    .line 64
    iput-object v1, p0, Lcom/android/stk/StkMenuActivity;->mTitleIconView:Landroid/widget/ImageView;

    .line 65
    iput-object v1, p0, Lcom/android/stk/StkMenuActivity;->mProgressView:Landroid/widget/ProgressBar;

    .line 69
    invoke-static {}, Lcom/android/stk/StkAppService;->getInstance()Lcom/android/stk/StkAppService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/stk/StkMenuActivity;->appService:Lcom/android/stk/StkAppService;

    .line 85
    new-instance v0, Lcom/android/stk/StkMenuActivity$2;

    invoke-direct {v0, p0}, Lcom/android/stk/StkMenuActivity$2;-><init>(Lcom/android/stk/StkMenuActivity;)V

    iput-object v0, p0, Lcom/android/stk/StkMenuActivity;->mTimeoutHandler:Landroid/os/Handler;

    .line 54
    return-void
.end method

.method private cancelTimeOut()V
    .locals 3

    .prologue
    .line 421
    sget-object v0, Lcom/android/stk/StkMenuActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "cancelTimeOut: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/stk/StkMenuActivity;->mSlotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    iget-object v0, p0, Lcom/android/stk/StkMenuActivity;->mTimeoutHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 420
    return-void
.end method

.method private displayMenu()V
    .locals 6

    .prologue
    .line 438
    invoke-virtual {p0}, Lcom/android/stk/StkMenuActivity;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    .line 439
    .local v0, "actionBar":Landroid/app/ActionBar;
    invoke-virtual {v0}, Landroid/app/ActionBar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 440
    iget v3, p0, Lcom/android/stk/StkMenuActivity;->mSlotId:I

    invoke-virtual {p0}, Lcom/android/stk/StkMenuActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/high16 v5, 0x7f060000

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v3, v4}, Lcom/android/stk/MiuiStkUtils;->getAppName(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 441
    .local v2, "appName":Ljava/lang/String;
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 444
    .end local v2    # "appName":Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/android/stk/StkMenuActivity;->mStkMenu:Lcom/android/internal/telephony/cat/Menu;

    if-eqz v3, :cond_2

    .line 462
    iget-object v3, p0, Lcom/android/stk/StkMenuActivity;->mStkMenu:Lcom/android/internal/telephony/cat/Menu;

    iget-boolean v3, v3, Lcom/android/internal/telephony/cat/Menu;->titleIconSelfExplanatory:Z

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/stk/StkMenuActivity;->mStkMenu:Lcom/android/internal/telephony/cat/Menu;

    iget-object v3, v3, Lcom/android/internal/telephony/cat/Menu;->title:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 463
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Lmiui/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 464
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/stk/StkMenuActivity;->mStkMenu:Lcom/android/internal/telephony/cat/Menu;

    iget-object v4, v4, Lcom/android/internal/telephony/cat/Menu;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/stk/StkMenuActivity;->mSlotId:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 471
    :cond_1
    :goto_0
    new-instance v1, Lcom/android/stk/StkMenuAdapter;

    .line 472
    iget-object v3, p0, Lcom/android/stk/StkMenuActivity;->mStkMenu:Lcom/android/internal/telephony/cat/Menu;

    iget-object v3, v3, Lcom/android/internal/telephony/cat/Menu;->items:Ljava/util/List;

    iget-object v4, p0, Lcom/android/stk/StkMenuActivity;->mStkMenu:Lcom/android/internal/telephony/cat/Menu;

    iget-boolean v4, v4, Lcom/android/internal/telephony/cat/Menu;->itemsIconSelfExplanatory:Z

    .line 471
    invoke-direct {v1, p0, v3, v4}, Lcom/android/stk/StkMenuAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Z)V

    .line 474
    .local v1, "adapter":Lcom/android/stk/StkMenuAdapter;
    invoke-virtual {p0, v1}, Lcom/android/stk/StkMenuActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 476
    iget-object v3, p0, Lcom/android/stk/StkMenuActivity;->mStkMenu:Lcom/android/internal/telephony/cat/Menu;

    iget v3, v3, Lcom/android/internal/telephony/cat/Menu;->defaultItem:I

    invoke-virtual {p0, v3}, Lcom/android/stk/StkMenuActivity;->setSelection(I)V

    .line 436
    .end local v1    # "adapter":Lcom/android/stk/StkMenuAdapter;
    :cond_2
    return-void

    .line 466
    :cond_3
    iget-object v3, p0, Lcom/android/stk/StkMenuActivity;->mStkMenu:Lcom/android/internal/telephony/cat/Menu;

    iget-object v3, v3, Lcom/android/internal/telephony/cat/Menu;->title:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private getSelectedItem(I)Lcom/android/internal/telephony/cat/Item;
    .locals 6
    .param p1, "position"    # I

    .prologue
    .line 495
    const/4 v3, 0x0

    .line 496
    .local v3, "item":Lcom/android/internal/telephony/cat/Item;
    iget-object v4, p0, Lcom/android/stk/StkMenuActivity;->mStkMenu:Lcom/android/internal/telephony/cat/Menu;

    if-eqz v4, :cond_0

    .line 498
    :try_start_0
    iget-object v4, p0, Lcom/android/stk/StkMenuActivity;->mStkMenu:Lcom/android/internal/telephony/cat/Menu;

    iget-object v4, v4, Lcom/android/internal/telephony/cat/Menu;->items:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/android/internal/telephony/cat/Item;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 509
    .end local v3    # "item":Lcom/android/internal/telephony/cat/Item;
    :cond_0
    :goto_0
    return-object v3

    .line 503
    .restart local v3    # "item":Lcom/android/internal/telephony/cat/Item;
    :catch_0
    move-exception v2

    .line 505
    .local v2, "e":Ljava/lang/NullPointerException;
    sget-object v4, Lcom/android/stk/StkMenuActivity;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v5, "NPE Invalid menu"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 499
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    .line 501
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    sget-object v4, Lcom/android/stk/StkMenuActivity;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v5, "IOOBE Invalid menu"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initFromIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 484
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/stk/StkMenuActivity;->appService:Lcom/android/stk/StkAppService;

    if-eqz v0, :cond_0

    .line 485
    const-string/jumbo v0, "STATE"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/stk/StkMenuActivity;->mState:I

    .line 486
    const-string/jumbo v0, "SLOT_ID"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/stk/StkMenuActivity;->mSlotId:I

    .line 487
    sget-object v0, Lcom/android/stk/StkMenuActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "slot id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/stk/StkMenuActivity;->mSlotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/stk/StkMenuActivity;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    :goto_0
    return-void

    .line 489
    :cond_0
    sget-object v0, Lcom/android/stk/StkMenuActivity;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "finish!"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    invoke-virtual {p0}, Lcom/android/stk/StkMenuActivity;->finish()V

    goto :goto_0
.end method

.method private sendResponse(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    const/4 v0, 0x0

    .line 513
    invoke-direct {p0, p1, v0, v0}, Lcom/android/stk/StkMenuActivity;->sendResponse(IIZ)V

    .line 512
    return-void
.end method

.method private sendResponse(IIZ)V
    .locals 5
    .param p1, "resId"    # I
    .param p2, "itemId"    # I
    .param p3, "help"    # Z

    .prologue
    .line 517
    sget-object v1, Lcom/android/stk/StkMenuActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendResponse resID["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] itemId["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 518
    const-string/jumbo v3, "] help["

    .line 517
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 518
    const-string/jumbo v3, "]"

    .line 517
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/stk/StkMenuActivity;->mIsResponseSent:Z

    .line 520
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 521
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v1, "op"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 522
    const-string/jumbo v1, "SLOT_ID"

    iget v2, p0, Lcom/android/stk/StkMenuActivity;->mSlotId:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 523
    const-string/jumbo v1, "response id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 524
    const-string/jumbo v1, "menu selection"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 525
    const-string/jumbo v1, "help"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 526
    iget-object v1, p0, Lcom/android/stk/StkMenuActivity;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/stk/StkMenuActivity;->mContext:Landroid/content/Context;

    const-class v4, Lcom/android/stk/StkAppService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 516
    return-void
.end method

.method private startTimeOut()V
    .locals 4

    .prologue
    .line 426
    iget v0, p0, Lcom/android/stk/StkMenuActivity;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 428
    invoke-direct {p0}, Lcom/android/stk/StkMenuActivity;->cancelTimeOut()V

    .line 429
    sget-object v0, Lcom/android/stk/StkMenuActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startTimeOut: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/stk/StkMenuActivity;->mSlotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    iget-object v0, p0, Lcom/android/stk/StkMenuActivity;->mTimeoutHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/stk/StkMenuActivity;->mTimeoutHandler:Landroid/os/Handler;

    .line 431
    const/4 v2, 0x1

    .line 430
    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 431
    const-wide/16 v2, 0x7530

    .line 430
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 425
    :cond_0
    return-void
.end method


# virtual methods
.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 382
    :try_start_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v1

    check-cast v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 386
    .local v1, "info":Landroid/widget/AdapterView$AdapterContextMenuInfo;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 400
    invoke-super {p0, p1}, Lmiui/app/ListActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v4

    return v4

    .line 383
    .end local v1    # "info":Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :catch_0
    move-exception v0

    .line 384
    .local v0, "e":Ljava/lang/ClassCastException;
    return v5

    .line 388
    .end local v0    # "e":Ljava/lang/ClassCastException;
    .restart local v1    # "info":Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :pswitch_0
    invoke-direct {p0}, Lcom/android/stk/StkMenuActivity;->cancelTimeOut()V

    .line 389
    iput-boolean v5, p0, Lcom/android/stk/StkMenuActivity;->mAcceptUsersInput:Z

    .line 390
    iget v2, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    .line 391
    .local v2, "position":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Position:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 392
    invoke-direct {p0, v2}, Lcom/android/stk/StkMenuActivity;->getSelectedItem(I)Lcom/android/internal/telephony/cat/Item;

    move-result-object v3

    .line 393
    .local v3, "stkItem":Lcom/android/internal/telephony/cat/Item;
    if-eqz v3, :cond_0

    .line 394
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "item id:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v3, Lcom/android/internal/telephony/cat/Item;->id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 395
    iget v4, v3, Lcom/android/internal/telephony/cat/Item;->id:I

    const/16 v5, 0xb

    invoke-direct {p0, v5, v4, v6}, Lcom/android/stk/StkMenuActivity;->sendResponse(IIZ)V

    .line 397
    :cond_0
    return v6

    .line 386
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/16 v7, 0x10

    const/4 v6, -0x2

    const/4 v5, 0x1

    .line 105
    invoke-virtual {p0, v5}, Lcom/android/stk/StkMenuActivity;->requestWindowFeature(I)Z

    .line 106
    invoke-super {p0, p1}, Lmiui/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 108
    sget-object v1, Lcom/android/stk/StkMenuActivity;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "onCreate"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const v1, 0x7f030004

    invoke-virtual {p0, v1}, Lcom/android/stk/StkMenuActivity;->setContentView(I)V

    .line 114
    iput-object p0, p0, Lcom/android/stk/StkMenuActivity;->mInstance:Landroid/app/Activity;

    .line 119
    invoke-virtual {p0}, Lcom/android/stk/StkMenuActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const/high16 v2, 0x7f030000

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/android/stk/StkMenuActivity;->mProgressView:Landroid/widget/ProgressBar;

    .line 120
    invoke-virtual {p0}, Lcom/android/stk/StkMenuActivity;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    .line 121
    .local v0, "actionBar":Landroid/app/ActionBar;
    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 122
    invoke-virtual {v0, v7, v7}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 123
    iget-object v1, p0, Lcom/android/stk/StkMenuActivity;->mProgressView:Landroid/widget/ProgressBar;

    new-instance v2, Landroid/app/ActionBar$LayoutParams;

    .line 126
    const/16 v3, 0x15

    .line 123
    invoke-direct {v2, v6, v6, v3}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 128
    invoke-virtual {p0}, Lcom/android/stk/StkMenuActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/stk/StkMenuActivity;->mContext:Landroid/content/Context;

    .line 129
    iput-boolean v5, p0, Lcom/android/stk/StkMenuActivity;->mAcceptUsersInput:Z

    .line 130
    invoke-virtual {p0}, Lcom/android/stk/StkMenuActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 131
    invoke-virtual {p0}, Lcom/android/stk/StkMenuActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/stk/StkMenuActivity;->initFromIntent(Landroid/content/Intent;)V

    .line 103
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    const/4 v2, 0x0

    .line 367
    const-string/jumbo v1, "onCreateContextMenu"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 368
    const/4 v0, 0x0

    .line 369
    .local v0, "helpVisible":Z
    iget-object v1, p0, Lcom/android/stk/StkMenuActivity;->mStkMenu:Lcom/android/internal/telephony/cat/Menu;

    if-eqz v1, :cond_0

    .line 370
    iget-object v1, p0, Lcom/android/stk/StkMenuActivity;->mStkMenu:Lcom/android/internal/telephony/cat/Menu;

    iget-boolean v0, v1, Lcom/android/internal/telephony/cat/Menu;->helpAvailable:Z

    .line 372
    .end local v0    # "helpVisible":Z
    :cond_0
    if-eqz v0, :cond_1

    .line 373
    const-string/jumbo v1, "add menu"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 374
    const v1, 0x7f060002

    invoke-interface {p1, v2, v2, v2, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 366
    :cond_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 310
    invoke-super {p0, p1}, Lmiui/app/ListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 311
    const v0, 0x7f060001

    invoke-interface {p1, v4, v3, v3, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 312
    const/4 v0, 0x3

    const/4 v1, 0x2

    const v2, 0x7f060002

    invoke-interface {p1, v4, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 313
    return v3
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 290
    invoke-virtual {p0}, Lcom/android/stk/StkMenuActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 291
    invoke-super {p0}, Lmiui/app/ListActivity;->onDestroy()V

    .line 292
    sget-object v0, Lcom/android/stk/StkMenuActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDestroy, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/stk/StkMenuActivity;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    iget-boolean v0, p0, Lcom/android/stk/StkMenuActivity;->mIsResponseSent:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/stk/StkMenuActivity;->appService:Lcom/android/stk/StkAppService;

    iget v1, p0, Lcom/android/stk/StkMenuActivity;->mSlotId:I

    invoke-virtual {v0, v1}, Lcom/android/stk/StkAppService;->isMenuPending(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 299
    :cond_0
    :goto_0
    iget v0, p0, Lcom/android/stk/StkMenuActivity;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 300
    iget-object v0, p0, Lcom/android/stk/StkMenuActivity;->appService:Lcom/android/stk/StkAppService;

    if-eqz v0, :cond_3

    .line 301
    iget-object v0, p0, Lcom/android/stk/StkMenuActivity;->appService:Lcom/android/stk/StkAppService;

    iget v1, p0, Lcom/android/stk/StkMenuActivity;->mSlotId:I

    invoke-virtual {v0, v1}, Lcom/android/stk/StkAppService;->getStkContext(I)Lcom/android/stk/StkAppService$StkContext;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/stk/StkAppService$StkContext;->setMainActivityInstance(Landroid/app/Activity;)V

    .line 289
    :cond_1
    :goto_1
    return-void

    .line 296
    :cond_2
    sget-object v0, Lcom/android/stk/StkMenuActivity;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "handleDestroy - Send End Session"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    const/16 v0, 0x16

    invoke-direct {p0, v0}, Lcom/android/stk/StkMenuActivity;->sendResponse(I)V

    goto :goto_0

    .line 303
    :cond_3
    sget-object v0, Lcom/android/stk/StkMenuActivity;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "onDestroy: null appService."

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x1

    .line 163
    sget-object v0, Lcom/android/stk/StkMenuActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mAcceptUsersInput: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/stk/StkMenuActivity;->mAcceptUsersInput:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    iget-boolean v0, p0, Lcom/android/stk/StkMenuActivity;->mAcceptUsersInput:Z

    if-nez v0, :cond_0

    .line 165
    return v3

    .line 168
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 188
    :goto_0
    invoke-super {p0, p1, p2}, Lmiui/app/ListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 170
    :pswitch_0
    sget-object v0, Lcom/android/stk/StkMenuActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "KEYCODE_BACK - mState["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/stk/StkMenuActivity;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iget v0, p0, Lcom/android/stk/StkMenuActivity;->mState:I

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 180
    :pswitch_1
    sget-object v0, Lcom/android/stk/StkMenuActivity;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "STATE_MAIN"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Lcom/android/stk/StkMenuActivity;->appService:Lcom/android/stk/StkAppService;

    iget v1, p0, Lcom/android/stk/StkMenuActivity;->mSlotId:I

    invoke-virtual {v0, v1}, Lcom/android/stk/StkAppService;->getStkContext(I)Lcom/android/stk/StkAppService$StkContext;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/stk/StkAppService$StkContext;->setMainActivityInstance(Landroid/app/Activity;)V

    .line 182
    invoke-direct {p0}, Lcom/android/stk/StkMenuActivity;->cancelTimeOut()V

    .line 183
    invoke-virtual {p0}, Lcom/android/stk/StkMenuActivity;->finish()V

    .line 184
    return v3

    .line 173
    :pswitch_2
    sget-object v0, Lcom/android/stk/StkMenuActivity;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "STATE_SECONDARY"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    invoke-direct {p0}, Lcom/android/stk/StkMenuActivity;->cancelTimeOut()V

    .line 175
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/stk/StkMenuActivity;->mAcceptUsersInput:Z

    .line 176
    iget-object v0, p0, Lcom/android/stk/StkMenuActivity;->appService:Lcom/android/stk/StkAppService;

    iget v1, p0, Lcom/android/stk/StkMenuActivity;->mSlotId:I

    invoke-virtual {v0, v1}, Lcom/android/stk/StkAppService;->getStkContext(I)Lcom/android/stk/StkAppService$StkContext;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/stk/StkAppService$StkContext;->setPendingActivityInstance(Landroid/app/Activity;)V

    .line 177
    const/16 v0, 0x15

    invoke-direct {p0, v0}, Lcom/android/stk/StkMenuActivity;->sendResponse(I)V

    .line 178
    return v3

    .line 168
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch

    .line 171
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 6
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    const/4 v4, 0x0

    .line 136
    invoke-super/range {p0 .. p5}, Lmiui/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 138
    iget-boolean v1, p0, Lcom/android/stk/StkMenuActivity;->mAcceptUsersInput:Z

    if-nez v1, :cond_0

    .line 139
    sget-object v1, Lcom/android/stk/StkMenuActivity;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "mAcceptUsersInput:false"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    return-void

    .line 143
    :cond_0
    invoke-direct {p0, p3}, Lcom/android/stk/StkMenuActivity;->getSelectedItem(I)Lcom/android/internal/telephony/cat/Item;

    move-result-object v0

    .line 144
    .local v0, "item":Lcom/android/internal/telephony/cat/Item;
    if-nez v0, :cond_1

    .line 145
    sget-object v1, Lcom/android/stk/StkMenuActivity;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "Item is null"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    return-void

    .line 149
    :cond_1
    sget-object v1, Lcom/android/stk/StkMenuActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onListItemClick Id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/internal/telephony/cat/Item;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", mState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/stk/StkMenuActivity;->mState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    iget v1, p0, Lcom/android/stk/StkMenuActivity;->mState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 152
    iget-object v1, p0, Lcom/android/stk/StkMenuActivity;->appService:Lcom/android/stk/StkAppService;

    iget v2, p0, Lcom/android/stk/StkMenuActivity;->mSlotId:I

    invoke-virtual {v1, v2}, Lcom/android/stk/StkAppService;->getStkContext(I)Lcom/android/stk/StkAppService$StkContext;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/stk/StkAppService$StkContext;->setPendingActivityInstance(Landroid/app/Activity;)V

    .line 154
    :cond_2
    invoke-direct {p0}, Lcom/android/stk/StkMenuActivity;->cancelTimeOut()V

    .line 155
    iget v1, v0, Lcom/android/internal/telephony/cat/Item;->id:I

    const/16 v2, 0xb

    invoke-direct {p0, v2, v1, v4}, Lcom/android/stk/StkMenuActivity;->sendResponse(IIZ)V

    .line 156
    iput-boolean v4, p0, Lcom/android/stk/StkMenuActivity;->mAcceptUsersInput:Z

    .line 157
    iget-object v1, p0, Lcom/android/stk/StkMenuActivity;->mProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 158
    iget-object v1, p0, Lcom/android/stk/StkMenuActivity;->mProgressView:Landroid/widget/ProgressBar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 135
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 4
    .param p1, "featureId"    # I
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v3, 0x1

    .line 533
    sget-object v0, Lcom/android/stk/StkMenuActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onMenuItemSelected mAcceptUsersInput: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/stk/StkMenuActivity;->mAcceptUsersInput:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    iget-boolean v0, p0, Lcom/android/stk/StkMenuActivity;->mAcceptUsersInput:Z

    if-nez v0, :cond_0

    .line 535
    return v3

    .line 537
    :cond_0
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_1

    .line 538
    sget-object v0, Lcom/android/stk/StkMenuActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onMenuItemSelected BACK - mState["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/stk/StkMenuActivity;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    iget v0, p0, Lcom/android/stk/StkMenuActivity;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 555
    :cond_1
    invoke-super {p0, p1, p2}, Lmiui/app/ListActivity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 541
    :pswitch_0
    sget-object v0, Lcom/android/stk/StkMenuActivity;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "STATE_SECONDARY"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    invoke-direct {p0}, Lcom/android/stk/StkMenuActivity;->cancelTimeOut()V

    .line 543
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/stk/StkMenuActivity;->mAcceptUsersInput:Z

    .line 544
    iget-object v0, p0, Lcom/android/stk/StkMenuActivity;->appService:Lcom/android/stk/StkAppService;

    iget v1, p0, Lcom/android/stk/StkMenuActivity;->mSlotId:I

    invoke-virtual {v0, v1}, Lcom/android/stk/StkAppService;->getStkContext(I)Lcom/android/stk/StkAppService$StkContext;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/stk/StkAppService$StkContext;->setPendingActivityInstance(Landroid/app/Activity;)V

    .line 545
    const/16 v0, 0x15

    invoke-direct {p0, v0}, Lcom/android/stk/StkMenuActivity;->sendResponse(I)V

    .line 546
    return v3

    .line 548
    :pswitch_1
    sget-object v0, Lcom/android/stk/StkMenuActivity;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "STATE_MAIN"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    iget-object v0, p0, Lcom/android/stk/StkMenuActivity;->appService:Lcom/android/stk/StkAppService;

    iget v1, p0, Lcom/android/stk/StkMenuActivity;->mSlotId:I

    invoke-virtual {v0, v1}, Lcom/android/stk/StkAppService;->getStkContext(I)Lcom/android/stk/StkAppService$StkContext;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/stk/StkAppService$StkContext;->setMainActivityInstance(Landroid/app/Activity;)V

    .line 550
    invoke-direct {p0}, Lcom/android/stk/StkMenuActivity;->cancelTimeOut()V

    .line 551
    invoke-virtual {p0}, Lcom/android/stk/StkMenuActivity;->finish()V

    .line 552
    return v3

    .line 539
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 337
    iget-boolean v2, p0, Lcom/android/stk/StkMenuActivity;->mAcceptUsersInput:Z

    if-nez v2, :cond_0

    .line 338
    return v4

    .line 340
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 361
    :cond_1
    :pswitch_0
    invoke-super {p0, p1}, Lmiui/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    return v2

    .line 342
    :pswitch_1
    invoke-direct {p0}, Lcom/android/stk/StkMenuActivity;->cancelTimeOut()V

    .line 343
    iput-boolean v3, p0, Lcom/android/stk/StkMenuActivity;->mAcceptUsersInput:Z

    .line 345
    const/16 v2, 0x16

    invoke-direct {p0, v2}, Lcom/android/stk/StkMenuActivity;->sendResponse(I)V

    .line 346
    invoke-direct {p0}, Lcom/android/stk/StkMenuActivity;->cancelTimeOut()V

    .line 347
    invoke-virtual {p0}, Lcom/android/stk/StkMenuActivity;->finish()V

    .line 348
    return v4

    .line 350
    :pswitch_2
    invoke-direct {p0}, Lcom/android/stk/StkMenuActivity;->cancelTimeOut()V

    .line 351
    iput-boolean v3, p0, Lcom/android/stk/StkMenuActivity;->mAcceptUsersInput:Z

    .line 352
    invoke-virtual {p0}, Lcom/android/stk/StkMenuActivity;->getSelectedItemPosition()I

    move-result v0

    .line 353
    .local v0, "position":I
    invoke-direct {p0, v0}, Lcom/android/stk/StkMenuActivity;->getSelectedItem(I)Lcom/android/internal/telephony/cat/Item;

    move-result-object v1

    .line 354
    .local v1, "stkItem":Lcom/android/internal/telephony/cat/Item;
    if-eqz v1, :cond_1

    .line 358
    iget v2, v1, Lcom/android/internal/telephony/cat/Item;->id:I

    const/16 v3, 0xb

    invoke-direct {p0, v3, v2, v4}, Lcom/android/stk/StkMenuActivity;->sendResponse(IIZ)V

    .line 359
    return v4

    .line 340
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 238
    invoke-super {p0}, Lmiui/app/ListActivity;->onPause()V

    .line 239
    sget-object v0, Lcom/android/stk/StkMenuActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPause, slot id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/stk/StkMenuActivity;->mSlotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/stk/StkMenuActivity;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    iget-object v0, p0, Lcom/android/stk/StkMenuActivity;->appService:Lcom/android/stk/StkAppService;

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/android/stk/StkMenuActivity;->appService:Lcom/android/stk/StkAppService;

    iget v1, p0, Lcom/android/stk/StkMenuActivity;->mSlotId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/stk/StkAppService;->indicateMenuVisibility(ZI)V

    .line 237
    :goto_0
    return-void

    .line 244
    :cond_0
    sget-object v0, Lcom/android/stk/StkMenuActivity;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "onPause: null appService."

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x1

    .line 318
    invoke-super {p0, p1}, Lmiui/app/ListActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 319
    const/4 v0, 0x0

    .line 320
    .local v0, "helpVisible":Z
    const/4 v1, 0x0

    .line 322
    .local v1, "mainVisible":Z
    iget v3, p0, Lcom/android/stk/StkMenuActivity;->mState:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 323
    const/4 v1, 0x1

    .line 325
    :cond_0
    iget-object v3, p0, Lcom/android/stk/StkMenuActivity;->mStkMenu:Lcom/android/internal/telephony/cat/Menu;

    if-eqz v3, :cond_1

    .line 326
    iget-object v3, p0, Lcom/android/stk/StkMenuActivity;->mStkMenu:Lcom/android/internal/telephony/cat/Menu;

    iget-boolean v0, v3, Lcom/android/internal/telephony/cat/Menu;->helpAvailable:Z

    .line 329
    .end local v0    # "helpVisible":Z
    :cond_1
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 330
    const/4 v3, 0x3

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 332
    if-nez v1, :cond_2

    :goto_0
    return v0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method public onRestart()V
    .locals 3

    .prologue
    .line 193
    invoke-super {p0}, Lmiui/app/ListActivity;->onRestart()V

    .line 194
    sget-object v0, Lcom/android/stk/StkMenuActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onRestart, slot id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/stk/StkMenuActivity;->mSlotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 414
    sget-object v0, Lcom/android/stk/StkMenuActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onRestoreInstanceState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/stk/StkMenuActivity;->mSlotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    const-string/jumbo v0, "STATE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/stk/StkMenuActivity;->mState:I

    .line 416
    const-string/jumbo v0, "MENU"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cat/Menu;

    iput-object v0, p0, Lcom/android/stk/StkMenuActivity;->mStkMenu:Lcom/android/internal/telephony/cat/Menu;

    .line 417
    const-string/jumbo v0, "ACCEPT_USERS_INPUT"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/stk/StkMenuActivity;->mAcceptUsersInput:Z

    .line 413
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 199
    invoke-super {p0}, Lmiui/app/ListActivity;->onResume()V

    .line 201
    sget-object v0, Lcom/android/stk/StkMenuActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onResume, slot id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/stk/StkMenuActivity;->mSlotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/stk/StkMenuActivity;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    iget-object v0, p0, Lcom/android/stk/StkMenuActivity;->appService:Lcom/android/stk/StkAppService;

    iget v1, p0, Lcom/android/stk/StkMenuActivity;->mSlotId:I

    invoke-virtual {v0, v3, v1}, Lcom/android/stk/StkAppService;->indicateMenuVisibility(ZI)V

    .line 203
    iget v0, p0, Lcom/android/stk/StkMenuActivity;->mState:I

    if-ne v0, v3, :cond_0

    .line 204
    iget-object v0, p0, Lcom/android/stk/StkMenuActivity;->appService:Lcom/android/stk/StkAppService;

    iget v1, p0, Lcom/android/stk/StkMenuActivity;->mSlotId:I

    invoke-virtual {v0, v1}, Lcom/android/stk/StkAppService;->getMainMenu(I)Lcom/android/internal/telephony/cat/Menu;

    move-result-object v0

    iput-object v0, p0, Lcom/android/stk/StkMenuActivity;->mStkMenu:Lcom/android/internal/telephony/cat/Menu;

    .line 208
    :goto_0
    iget-object v0, p0, Lcom/android/stk/StkMenuActivity;->mStkMenu:Lcom/android/internal/telephony/cat/Menu;

    if-nez v0, :cond_1

    .line 209
    sget-object v0, Lcom/android/stk/StkMenuActivity;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "menu is null"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    invoke-direct {p0}, Lcom/android/stk/StkMenuActivity;->cancelTimeOut()V

    .line 211
    invoke-virtual {p0}, Lcom/android/stk/StkMenuActivity;->finish()V

    .line 212
    return-void

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/android/stk/StkMenuActivity;->appService:Lcom/android/stk/StkAppService;

    iget v1, p0, Lcom/android/stk/StkMenuActivity;->mSlotId:I

    invoke-virtual {v0, v1}, Lcom/android/stk/StkAppService;->getMenu(I)Lcom/android/internal/telephony/cat/Menu;

    move-result-object v0

    iput-object v0, p0, Lcom/android/stk/StkMenuActivity;->mStkMenu:Lcom/android/internal/telephony/cat/Menu;

    goto :goto_0

    .line 216
    :cond_1
    iget v0, p0, Lcom/android/stk/StkMenuActivity;->mState:I

    if-ne v0, v3, :cond_2

    .line 217
    sget-object v0, Lcom/android/stk/StkMenuActivity;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "set main menu instance."

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    iget-object v0, p0, Lcom/android/stk/StkMenuActivity;->appService:Lcom/android/stk/StkAppService;

    iget v1, p0, Lcom/android/stk/StkMenuActivity;->mSlotId:I

    invoke-virtual {v0, v1}, Lcom/android/stk/StkAppService;->getStkContext(I)Lcom/android/stk/StkAppService$StkContext;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/stk/StkAppService$StkContext;->setMainActivityInstance(Landroid/app/Activity;)V

    .line 220
    :cond_2
    invoke-direct {p0}, Lcom/android/stk/StkMenuActivity;->displayMenu()V

    .line 221
    invoke-direct {p0}, Lcom/android/stk/StkMenuActivity;->startTimeOut()V

    .line 225
    iget-boolean v0, p0, Lcom/android/stk/StkMenuActivity;->mAcceptUsersInput:Z

    if-nez v0, :cond_3

    .line 227
    iput-boolean v3, p0, Lcom/android/stk/StkMenuActivity;->mAcceptUsersInput:Z

    .line 229
    :cond_3
    invoke-virtual {p0}, Lcom/android/stk/StkMenuActivity;->invalidateOptionsMenu()V

    .line 232
    iget-object v0, p0, Lcom/android/stk/StkMenuActivity;->mProgressView:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 233
    iget-object v0, p0, Lcom/android/stk/StkMenuActivity;->mProgressView:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 198
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 406
    sget-object v0, Lcom/android/stk/StkMenuActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSaveInstanceState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/stk/StkMenuActivity;->mSlotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    const-string/jumbo v0, "STATE"

    iget v1, p0, Lcom/android/stk/StkMenuActivity;->mState:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 408
    const-string/jumbo v0, "MENU"

    iget-object v1, p0, Lcom/android/stk/StkMenuActivity;->mStkMenu:Lcom/android/internal/telephony/cat/Menu;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 409
    const-string/jumbo v0, "ACCEPT_USERS_INPUT"

    iget-boolean v1, p0, Lcom/android/stk/StkMenuActivity;->mAcceptUsersInput:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 405
    return-void
.end method

.method public onStop()V
    .locals 3

    .prologue
    .line 261
    invoke-super {p0}, Lmiui/app/ListActivity;->onStop()V

    .line 262
    sget-object v0, Lcom/android/stk/StkMenuActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onStop, slot id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/stk/StkMenuActivity;->mSlotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/stk/StkMenuActivity;->mIsResponseSent:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/stk/StkMenuActivity;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    iget-boolean v0, p0, Lcom/android/stk/StkMenuActivity;->mIsResponseSent:Z

    if-eqz v0, :cond_2

    .line 268
    iget v0, p0, Lcom/android/stk/StkMenuActivity;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 269
    iget-object v0, p0, Lcom/android/stk/StkMenuActivity;->appService:Lcom/android/stk/StkAppService;

    iget-object v1, p0, Lcom/android/stk/StkMenuActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/stk/StkAppService;->isStkDialogActivated(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 270
    sget-object v0, Lcom/android/stk/StkMenuActivity;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "STATE_SECONDARY finish."

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    invoke-direct {p0}, Lcom/android/stk/StkMenuActivity;->cancelTimeOut()V

    .line 272
    invoke-virtual {p0}, Lcom/android/stk/StkMenuActivity;->finish()V

    .line 260
    :cond_0
    :goto_0
    return-void

    .line 274
    :cond_1
    iget-object v0, p0, Lcom/android/stk/StkMenuActivity;->appService:Lcom/android/stk/StkAppService;

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/android/stk/StkMenuActivity;->appService:Lcom/android/stk/StkAppService;

    iget v1, p0, Lcom/android/stk/StkMenuActivity;->mSlotId:I

    invoke-virtual {v0, v1}, Lcom/android/stk/StkAppService;->getStkContext(I)Lcom/android/stk/StkAppService$StkContext;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/stk/StkAppService$StkContext;->setPendingActivityInstance(Landroid/app/Activity;)V

    goto :goto_0

    .line 280
    :cond_2
    iget-object v0, p0, Lcom/android/stk/StkMenuActivity;->appService:Lcom/android/stk/StkAppService;

    if-eqz v0, :cond_3

    .line 281
    iget-object v0, p0, Lcom/android/stk/StkMenuActivity;->appService:Lcom/android/stk/StkAppService;

    iget v1, p0, Lcom/android/stk/StkMenuActivity;->mSlotId:I

    invoke-virtual {v0, v1}, Lcom/android/stk/StkAppService;->getStkContext(I)Lcom/android/stk/StkAppService$StkContext;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/stk/StkAppService$StkContext;->setPendingActivityInstance(Landroid/app/Activity;)V

    goto :goto_0

    .line 283
    :cond_3
    sget-object v0, Lcom/android/stk/StkMenuActivity;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "onStop: null appService."

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
