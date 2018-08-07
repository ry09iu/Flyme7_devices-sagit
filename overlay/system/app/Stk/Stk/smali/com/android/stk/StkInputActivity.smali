.class public Lcom/android/stk/StkInputActivity;
.super Landroid/app/Activity;
.source "StkInputActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/stk/StkInputActivity$1;,
        Lcom/android/stk/StkInputActivity$2;
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

.field private mNormalLayout:Landroid/view/View;

.field private mPromptView:Landroid/widget/TextView;

.field private mSlotId:I

.field private mState:I

.field private mStkInput:Lcom/android/internal/telephony/cat/Input;

.field private mTextIn:Landroid/widget/EditText;

.field mTimeoutHandler:Landroid/os/Handler;

.field private mYesNoLayout:Landroid/view/View;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/stk/StkInputActivity;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/stk/StkInputActivity;)Lcom/android/stk/StkAppService;
    .locals 1

    iget-object v0, p0, Lcom/android/stk/StkInputActivity;->appService:Lcom/android/stk/StkAppService;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/stk/StkInputActivity;)I
    .locals 1

    iget v0, p0, Lcom/android/stk/StkInputActivity;->mSlotId:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/stk/StkInputActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/stk/StkInputActivity;->mAcceptUsersInput:Z

    return p1
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 60
    new-instance v0, Lcom/android/stk/StkInputActivity$1;

    invoke-direct {v0}, Lcom/android/stk/StkInputActivity$1;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/stk/StkInputActivity;->className:Ljava/lang/String;

    .line 61
    sget-object v0, Lcom/android/stk/StkInputActivity;->className:Ljava/lang/String;

    sget-object v1, Lcom/android/stk/StkInputActivity;->className:Ljava/lang/String;

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/stk/StkInputActivity;->LOG_TAG:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 54
    iput-object v1, p0, Lcom/android/stk/StkInputActivity;->mTextIn:Landroid/widget/EditText;

    .line 55
    iput-object v1, p0, Lcom/android/stk/StkInputActivity;->mPromptView:Landroid/widget/TextView;

    .line 56
    iput-object v1, p0, Lcom/android/stk/StkInputActivity;->mYesNoLayout:Landroid/view/View;

    .line 57
    iput-object v1, p0, Lcom/android/stk/StkInputActivity;->mNormalLayout:Landroid/view/View;

    .line 63
    iput-object v1, p0, Lcom/android/stk/StkInputActivity;->mStkInput:Lcom/android/internal/telephony/cat/Input;

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/stk/StkInputActivity;->mAcceptUsersInput:Z

    .line 79
    invoke-static {}, Lcom/android/stk/StkAppService;->getInstance()Lcom/android/stk/StkAppService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/stk/StkInputActivity;->appService:Lcom/android/stk/StkAppService;

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/stk/StkInputActivity;->mIsResponseSent:Z

    .line 82
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/stk/StkInputActivity;->mSlotId:I

    .line 83
    iput-object v1, p0, Lcom/android/stk/StkInputActivity;->mInstance:Landroid/app/Activity;

    .line 85
    new-instance v0, Lcom/android/stk/StkInputActivity$2;

    invoke-direct {v0, p0}, Lcom/android/stk/StkInputActivity$2;-><init>(Lcom/android/stk/StkInputActivity;)V

    iput-object v0, p0, Lcom/android/stk/StkInputActivity;->mTimeoutHandler:Landroid/os/Handler;

    .line 48
    return-void
.end method

.method private cancelTimeOut()V
    .locals 2

    .prologue
    .line 341
    iget-object v0, p0, Lcom/android/stk/StkInputActivity;->mTimeoutHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 340
    return-void
.end method

.method private configInputDisplay()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 356
    const v7, 0x7f070006

    invoke-virtual {p0, v7}, Lcom/android/stk/StkInputActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 357
    .local v6, "numOfCharsView":Landroid/widget/TextView;
    const v7, 0x7f070005

    invoke-virtual {p0, v7}, Lcom/android/stk/StkInputActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 359
    .local v2, "inTypeView":Landroid/widget/TextView;
    const v1, 0x7f06000a

    .line 362
    .local v1, "inTypeId":I
    iget-object v7, p0, Lcom/android/stk/StkInputActivity;->mPromptView:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/android/stk/StkInputActivity;->mStkInput:Lcom/android/internal/telephony/cat/Input;

    iget-object v8, v8, Lcom/android/internal/telephony/cat/Input;->text:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 365
    iget-object v7, p0, Lcom/android/stk/StkInputActivity;->mStkInput:Lcom/android/internal/telephony/cat/Input;

    iget-boolean v7, v7, Lcom/android/internal/telephony/cat/Input;->digitOnly:Z

    if-eqz v7, :cond_0

    .line 366
    iget-object v7, p0, Lcom/android/stk/StkInputActivity;->mTextIn:Landroid/widget/EditText;

    invoke-static {}, Lcom/android/stk/StkDigitsKeyListener;->getInstance()Lcom/android/stk/StkDigitsKeyListener;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 367
    const v1, 0x7f06000b

    .line 369
    :cond_0
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    .line 371
    const v7, 0x7f070001

    invoke-virtual {p0, v7}, Lcom/android/stk/StkInputActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 372
    .local v0, "imageView":Landroid/widget/ImageView;
    iget-object v7, p0, Lcom/android/stk/StkInputActivity;->mStkInput:Lcom/android/internal/telephony/cat/Input;

    iget-object v7, v7, Lcom/android/internal/telephony/cat/Input;->icon:Landroid/graphics/Bitmap;

    if-eqz v7, :cond_1

    .line 373
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Stk Icon from Command: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 374
    iget-object v8, p0, Lcom/android/stk/StkInputActivity;->mStkInput:Lcom/android/internal/telephony/cat/Input;

    iget-object v8, v8, Lcom/android/internal/telephony/cat/Input;->text:Ljava/lang/String;

    .line 373
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 375
    iget-object v7, p0, Lcom/android/stk/StkInputActivity;->mStkInput:Lcom/android/internal/telephony/cat/Input;

    iget-object v7, v7, Lcom/android/internal/telephony/cat/Input;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 379
    :cond_1
    iget v7, p0, Lcom/android/stk/StkInputActivity;->mState:I

    packed-switch v7, :pswitch_data_0

    .line 355
    :goto_0
    return-void

    .line 381
    :pswitch_0
    iget-object v7, p0, Lcom/android/stk/StkInputActivity;->mStkInput:Lcom/android/internal/telephony/cat/Input;

    iget v4, v7, Lcom/android/internal/telephony/cat/Input;->maxLen:I

    .line 382
    .local v4, "maxLen":I
    iget-object v7, p0, Lcom/android/stk/StkInputActivity;->mStkInput:Lcom/android/internal/telephony/cat/Input;

    iget v5, v7, Lcom/android/internal/telephony/cat/Input;->minLen:I

    .line 383
    .local v5, "minLen":I
    iget-object v7, p0, Lcom/android/stk/StkInputActivity;->mTextIn:Landroid/widget/EditText;

    const/4 v8, 0x1

    new-array v8, v8, [Landroid/text/InputFilter;

    new-instance v9, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v9, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v9, v8, v10

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 387
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 388
    .local v3, "lengthLimit":Ljava/lang/String;
    if-eq v4, v5, :cond_2

    .line 389
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 391
    :cond_2
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 393
    iget-object v7, p0, Lcom/android/stk/StkInputActivity;->mStkInput:Lcom/android/internal/telephony/cat/Input;

    iget-boolean v7, v7, Lcom/android/internal/telephony/cat/Input;->echo:Z

    if-nez v7, :cond_3

    .line 394
    iget-object v7, p0, Lcom/android/stk/StkInputActivity;->mTextIn:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 397
    :cond_3
    iget-object v7, p0, Lcom/android/stk/StkInputActivity;->mTextIn:Landroid/widget/EditText;

    const/high16 v8, 0x2000000

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 399
    iget-object v7, p0, Lcom/android/stk/StkInputActivity;->mStkInput:Lcom/android/internal/telephony/cat/Input;

    iget-object v7, v7, Lcom/android/internal/telephony/cat/Input;->defaultText:Ljava/lang/String;

    if-eqz v7, :cond_4

    .line 400
    iget-object v7, p0, Lcom/android/stk/StkInputActivity;->mTextIn:Landroid/widget/EditText;

    iget-object v8, p0, Lcom/android/stk/StkInputActivity;->mStkInput:Lcom/android/internal/telephony/cat/Input;

    iget-object v8, v8, Lcom/android/internal/telephony/cat/Input;->defaultText:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 403
    :cond_4
    iget-object v7, p0, Lcom/android/stk/StkInputActivity;->mTextIn:Landroid/widget/EditText;

    const-string/jumbo v8, ""

    sget-object v9, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v7, v8, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    goto :goto_0

    .line 409
    .end local v3    # "lengthLimit":Ljava/lang/String;
    .end local v4    # "maxLen":I
    .end local v5    # "minLen":I
    :pswitch_1
    iget-object v7, p0, Lcom/android/stk/StkInputActivity;->mYesNoLayout:Landroid/view/View;

    invoke-virtual {v7, v10}, Landroid/view/View;->setVisibility(I)V

    .line 410
    iget-object v7, p0, Lcom/android/stk/StkInputActivity;->mNormalLayout:Landroid/view/View;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 379
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private initFromIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 425
    sget-object v0, Lcom/android/stk/StkInputActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "initFromIntent - slot id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/stk/StkInputActivity;->mSlotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    if-eqz p1, :cond_2

    .line 427
    const-string/jumbo v0, "INPUT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cat/Input;

    iput-object v0, p0, Lcom/android/stk/StkInputActivity;->mStkInput:Lcom/android/internal/telephony/cat/Input;

    .line 428
    const-string/jumbo v0, "SLOT_ID"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/stk/StkInputActivity;->mSlotId:I

    .line 429
    sget-object v0, Lcom/android/stk/StkInputActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCreate - slot id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/stk/StkInputActivity;->mSlotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    iget-object v0, p0, Lcom/android/stk/StkInputActivity;->mStkInput:Lcom/android/internal/telephony/cat/Input;

    if-nez v0, :cond_0

    .line 431
    invoke-virtual {p0}, Lcom/android/stk/StkInputActivity;->finish()V

    .line 422
    :goto_0
    return-void

    .line 433
    :cond_0
    iget-object v0, p0, Lcom/android/stk/StkInputActivity;->mStkInput:Lcom/android/internal/telephony/cat/Input;

    iget-boolean v0, v0, Lcom/android/internal/telephony/cat/Input;->yesNo:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    :goto_1
    iput v0, p0, Lcom/android/stk/StkInputActivity;->mState:I

    .line 435
    invoke-direct {p0}, Lcom/android/stk/StkInputActivity;->configInputDisplay()V

    goto :goto_0

    .line 434
    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    .line 438
    :cond_2
    invoke-virtual {p0}, Lcom/android/stk/StkInputActivity;->finish()V

    goto :goto_0
.end method

.method private startTimeOut()V
    .locals 6

    .prologue
    .line 345
    iget-object v1, p0, Lcom/android/stk/StkInputActivity;->mStkInput:Lcom/android/internal/telephony/cat/Input;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/Input;->duration:Lcom/android/internal/telephony/cat/Duration;

    invoke-static {v1}, Lcom/android/stk/StkApp;->calculateDurationInMilis(Lcom/android/internal/telephony/cat/Duration;)I

    move-result v0

    .line 347
    .local v0, "duration":I
    if-gtz v0, :cond_0

    .line 348
    const/16 v0, 0x7530

    .line 350
    :cond_0
    invoke-direct {p0}, Lcom/android/stk/StkInputActivity;->cancelTimeOut()V

    .line 351
    iget-object v1, p0, Lcom/android/stk/StkInputActivity;->mTimeoutHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/stk/StkInputActivity;->mTimeoutHandler:Landroid/os/Handler;

    .line 352
    const/4 v3, 0x1

    .line 351
    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 352
    int-to-long v4, v0

    .line 351
    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 344
    return-void
.end method

.method private verfiyTypedText()Z
    .locals 2

    .prologue
    .line 333
    iget-object v0, p0, Lcom/android/stk/StkInputActivity;->mTextIn:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    iget-object v1, p0, Lcom/android/stk/StkInputActivity;->mStkInput:Lcom/android/internal/telephony/cat/Input;

    iget v1, v1, Lcom/android/internal/telephony/cat/Input;->minLen:I

    if-ge v0, v1, :cond_0

    .line 334
    const/4 v0, 0x0

    return v0

    .line 337
    :cond_0
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 328
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 320
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 101
    const/4 v0, 0x0

    .line 102
    .local v0, "input":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/android/stk/StkInputActivity;->mAcceptUsersInput:Z

    if-nez v1, :cond_0

    .line 103
    sget-object v1, Lcom/android/stk/StkInputActivity;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "mAcceptUsersInput:false"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    return-void

    .line 107
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 127
    .end local v0    # "input":Ljava/lang/String;
    :goto_0
    :pswitch_0
    sget-object v1, Lcom/android/stk/StkInputActivity;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "handleClick, ready to response"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    invoke-direct {p0}, Lcom/android/stk/StkInputActivity;->cancelTimeOut()V

    .line 129
    iget-object v1, p0, Lcom/android/stk/StkInputActivity;->appService:Lcom/android/stk/StkAppService;

    iget v2, p0, Lcom/android/stk/StkInputActivity;->mSlotId:I

    invoke-virtual {v1, v2}, Lcom/android/stk/StkAppService;->getStkContext(I)Lcom/android/stk/StkAppService$StkContext;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/stk/StkAppService$StkContext;->setPendingActivityInstance(Landroid/app/Activity;)V

    .line 130
    const/16 v1, 0xc

    invoke-virtual {p0, v1, v0, v3}, Lcom/android/stk/StkInputActivity;->sendResponse(ILjava/lang/String;Z)V

    .line 100
    return-void

    .line 110
    .restart local v0    # "input":Ljava/lang/String;
    :pswitch_1
    invoke-direct {p0}, Lcom/android/stk/StkInputActivity;->verfiyTypedText()Z

    move-result v1

    if-nez v1, :cond_1

    .line 111
    sget-object v1, Lcom/android/stk/StkInputActivity;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "handleClick, invalid text"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    return-void

    .line 114
    :cond_1
    iput-boolean v3, p0, Lcom/android/stk/StkInputActivity;->mAcceptUsersInput:Z

    .line 115
    iget-object v1, p0, Lcom/android/stk/StkInputActivity;->mTextIn:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "input":Ljava/lang/String;
    goto :goto_0

    .line 119
    .local v0, "input":Ljava/lang/String;
    :pswitch_2
    iput-boolean v3, p0, Lcom/android/stk/StkInputActivity;->mAcceptUsersInput:Z

    .line 120
    const-string/jumbo v0, "YES"

    .local v0, "input":Ljava/lang/String;
    goto :goto_0

    .line 123
    .local v0, "input":Ljava/lang/String;
    :pswitch_3
    iput-boolean v3, p0, Lcom/android/stk/StkInputActivity;->mAcceptUsersInput:Z

    .line 124
    const-string/jumbo v0, "NO"

    .local v0, "input":Ljava/lang/String;
    goto :goto_0

    .line 107
    :pswitch_data_0
    .packed-switch 0x7f070008
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 135
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 137
    sget-object v3, Lcom/android/stk/StkInputActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onCreate - mIsResponseSent["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/stk/StkInputActivity;->mIsResponseSent:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const/16 v3, 0x8

    invoke-virtual {p0, v3}, Lcom/android/stk/StkInputActivity;->requestWindowFeature(I)Z

    .line 141
    const v3, 0x7f030002

    invoke-virtual {p0, v3}, Lcom/android/stk/StkInputActivity;->setContentView(I)V

    .line 144
    const v3, 0x7f070007

    invoke-virtual {p0, v3}, Lcom/android/stk/StkInputActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/android/stk/StkInputActivity;->mTextIn:Landroid/widget/EditText;

    .line 145
    const v3, 0x7f070002

    invoke-virtual {p0, v3}, Lcom/android/stk/StkInputActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/stk/StkInputActivity;->mPromptView:Landroid/widget/TextView;

    .line 146
    iput-object p0, p0, Lcom/android/stk/StkInputActivity;->mInstance:Landroid/app/Activity;

    .line 148
    const v3, 0x7f070008

    invoke-virtual {p0, v3}, Lcom/android/stk/StkInputActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 149
    .local v1, "okButton":Landroid/widget/Button;
    const v3, 0x7f07000a

    invoke-virtual {p0, v3}, Lcom/android/stk/StkInputActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 150
    .local v2, "yesButton":Landroid/widget/Button;
    const v3, 0x7f07000b

    invoke-virtual {p0, v3}, Lcom/android/stk/StkInputActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 152
    .local v0, "noButton":Landroid/widget/Button;
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    const v3, 0x7f070009

    invoke-virtual {p0, v3}, Lcom/android/stk/StkInputActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/stk/StkInputActivity;->mYesNoLayout:Landroid/view/View;

    .line 157
    const v3, 0x7f070003

    invoke-virtual {p0, v3}, Lcom/android/stk/StkInputActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/stk/StkInputActivity;->mNormalLayout:Landroid/view/View;

    .line 158
    invoke-virtual {p0}, Lcom/android/stk/StkInputActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/stk/StkInputActivity;->initFromIntent(Landroid/content/Intent;)V

    .line 159
    invoke-virtual {p0}, Lcom/android/stk/StkInputActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Lcom/android/stk/StkInputActivity;->mContext:Landroid/content/Context;

    .line 160
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/stk/StkInputActivity;->mAcceptUsersInput:Z

    .line 134
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 267
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 269
    const v0, 0x7f060001

    .line 268
    invoke-interface {p1, v4, v3, v3, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 270
    const/4 v0, 0x3

    const/4 v1, 0x2

    const v2, 0x7f060002

    invoke-interface {p1, v4, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 272
    return v3
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 203
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 204
    sget-object v0, Lcom/android/stk/StkInputActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDestroy - before Send End Session mIsResponseSent["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 205
    iget-boolean v2, p0, Lcom/android/stk/StkInputActivity;->mIsResponseSent:Z

    .line 204
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 205
    const-string/jumbo v2, " , "

    .line 204
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 205
    iget v2, p0, Lcom/android/stk/StkInputActivity;->mSlotId:I

    .line 204
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 205
    const-string/jumbo v2, "]"

    .line 204
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    iget-boolean v0, p0, Lcom/android/stk/StkInputActivity;->mIsResponseSent:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/stk/StkInputActivity;->appService:Lcom/android/stk/StkAppService;

    iget v1, p0, Lcom/android/stk/StkInputActivity;->mSlotId:I

    invoke-virtual {v0, v1}, Lcom/android/stk/StkAppService;->isInputPending(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 213
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/stk/StkInputActivity;->cancelTimeOut()V

    .line 202
    return-void

    .line 210
    :cond_1
    sget-object v0, Lcom/android/stk/StkInputActivity;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "handleDestroy - Send End Session"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    const/16 v0, 0x16

    invoke-virtual {p0, v0}, Lcom/android/stk/StkInputActivity;->sendResponse(I)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 218
    iget-boolean v0, p0, Lcom/android/stk/StkInputActivity;->mAcceptUsersInput:Z

    if-nez v0, :cond_0

    .line 219
    sget-object v0, Lcom/android/stk/StkInputActivity;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "mAcceptUsersInput:false"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    return v3

    .line 223
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 232
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 225
    :pswitch_0
    sget-object v0, Lcom/android/stk/StkInputActivity;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "onKeyDown - KEYCODE_BACK"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    iput-boolean v2, p0, Lcom/android/stk/StkInputActivity;->mAcceptUsersInput:Z

    .line 227
    invoke-direct {p0}, Lcom/android/stk/StkInputActivity;->cancelTimeOut()V

    .line 228
    iget-object v0, p0, Lcom/android/stk/StkInputActivity;->appService:Lcom/android/stk/StkAppService;

    iget v1, p0, Lcom/android/stk/StkInputActivity;->mSlotId:I

    invoke-virtual {v0, v1}, Lcom/android/stk/StkAppService;->getStkContext(I)Lcom/android/stk/StkAppService$StkContext;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/stk/StkAppService$StkContext;->setPendingActivityInstance(Landroid/app/Activity;)V

    .line 229
    const/16 v0, 0x15

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/stk/StkInputActivity;->sendResponse(ILjava/lang/String;Z)V

    .line 230
    return v3

    .line 223
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 286
    iget-boolean v0, p0, Lcom/android/stk/StkInputActivity;->mAcceptUsersInput:Z

    if-nez v0, :cond_0

    .line 287
    sget-object v0, Lcom/android/stk/StkInputActivity;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "mAcceptUsersInput:false"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    return v2

    .line 290
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 304
    :pswitch_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 292
    :pswitch_1
    iput-boolean v1, p0, Lcom/android/stk/StkInputActivity;->mAcceptUsersInput:Z

    .line 293
    invoke-direct {p0}, Lcom/android/stk/StkInputActivity;->cancelTimeOut()V

    .line 294
    const/16 v0, 0x16

    invoke-virtual {p0, v0}, Lcom/android/stk/StkInputActivity;->sendResponse(I)V

    .line 295
    invoke-virtual {p0}, Lcom/android/stk/StkInputActivity;->finish()V

    .line 296
    return v2

    .line 298
    :pswitch_2
    iput-boolean v1, p0, Lcom/android/stk/StkInputActivity;->mAcceptUsersInput:Z

    .line 299
    invoke-direct {p0}, Lcom/android/stk/StkInputActivity;->cancelTimeOut()V

    .line 300
    const-string/jumbo v0, ""

    const/16 v1, 0xc

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/stk/StkInputActivity;->sendResponse(ILjava/lang/String;Z)V

    .line 301
    invoke-virtual {p0}, Lcom/android/stk/StkInputActivity;->finish()V

    .line 302
    return v2

    .line 290
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
    .line 185
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 186
    sget-object v0, Lcom/android/stk/StkInputActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPause - mIsResponseSent["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/stk/StkInputActivity;->mIsResponseSent:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 165
    invoke-super {p0, p1}, Landroid/app/Activity;->onPostCreate(Landroid/os/Bundle;)V

    .line 167
    iget-object v0, p0, Lcom/android/stk/StkInputActivity;->mTextIn:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 164
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x1

    .line 277
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 278
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 279
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/android/stk/StkInputActivity;->mStkInput:Lcom/android/internal/telephony/cat/Input;

    iget-boolean v1, v1, Lcom/android/internal/telephony/cat/Input;->helpAvailable:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 281
    return v2
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 315
    sget-object v0, Lcom/android/stk/StkInputActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onRestoreInstanceState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/stk/StkInputActivity;->mSlotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    const-string/jumbo v0, "ACCEPT_USERS_INPUT"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/stk/StkInputActivity;->mAcceptUsersInput:Z

    .line 314
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 172
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 173
    sget-object v0, Lcom/android/stk/StkInputActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onResume - mIsResponseSent["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/stk/StkInputActivity;->mIsResponseSent:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 174
    const-string/jumbo v2, "], slot id: "

    .line 173
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 174
    iget v2, p0, Lcom/android/stk/StkInputActivity;->mSlotId:I

    .line 173
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    invoke-direct {p0}, Lcom/android/stk/StkInputActivity;->startTimeOut()V

    .line 176
    iget-object v0, p0, Lcom/android/stk/StkInputActivity;->appService:Lcom/android/stk/StkAppService;

    iget v1, p0, Lcom/android/stk/StkInputActivity;->mSlotId:I

    invoke-virtual {v0, v1}, Lcom/android/stk/StkAppService;->getStkContext(I)Lcom/android/stk/StkAppService$StkContext;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/stk/StkAppService$StkContext;->setPendingActivityInstance(Landroid/app/Activity;)V

    .line 177
    iget-boolean v0, p0, Lcom/android/stk/StkInputActivity;->mIsResponseSent:Z

    if-eqz v0, :cond_0

    .line 178
    invoke-direct {p0}, Lcom/android/stk/StkInputActivity;->cancelTimeOut()V

    .line 179
    invoke-virtual {p0}, Lcom/android/stk/StkInputActivity;->finish()V

    .line 171
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 309
    sget-object v0, Lcom/android/stk/StkInputActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSaveInstanceState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/stk/StkInputActivity;->mSlotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    const-string/jumbo v0, "ACCEPT_USERS_INPUT"

    iget-boolean v1, p0, Lcom/android/stk/StkInputActivity;->mAcceptUsersInput:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 308
    return-void
.end method

.method public onStop()V
    .locals 3

    .prologue
    .line 191
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 192
    sget-object v0, Lcom/android/stk/StkInputActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onStop - mIsResponseSent["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/stk/StkInputActivity;->mIsResponseSent:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    iget-boolean v0, p0, Lcom/android/stk/StkInputActivity;->mIsResponseSent:Z

    if-eqz v0, :cond_0

    .line 194
    invoke-direct {p0}, Lcom/android/stk/StkInputActivity;->cancelTimeOut()V

    .line 195
    invoke-virtual {p0}, Lcom/android/stk/StkInputActivity;->finish()V

    .line 190
    :goto_0
    return-void

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/android/stk/StkInputActivity;->appService:Lcom/android/stk/StkAppService;

    iget v1, p0, Lcom/android/stk/StkInputActivity;->mSlotId:I

    invoke-virtual {v0, v1}, Lcom/android/stk/StkAppService;->getStkContext(I)Lcom/android/stk/StkAppService$StkContext;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/stk/StkAppService$StkContext;->setPendingActivityInstance(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 325
    invoke-direct {p0}, Lcom/android/stk/StkInputActivity;->startTimeOut()V

    .line 323
    return-void
.end method

.method sendResponse(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 236
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/stk/StkInputActivity;->sendResponse(ILjava/lang/String;Z)V

    .line 235
    return-void
.end method

.method sendResponse(ILjava/lang/String;Z)V
    .locals 5
    .param p1, "resId"    # I
    .param p2, "input"    # Ljava/lang/String;
    .param p3, "help"    # Z

    .prologue
    .line 240
    iget v1, p0, Lcom/android/stk/StkInputActivity;->mSlotId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 241
    sget-object v1, Lcom/android/stk/StkInputActivity;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "slot id is invalid"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    return-void

    .line 245
    :cond_0
    invoke-static {}, Lcom/android/stk/StkAppService;->getInstance()Lcom/android/stk/StkAppService;

    move-result-object v1

    if-nez v1, :cond_1

    .line 246
    sget-object v1, Lcom/android/stk/StkInputActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "StkAppService is null, Ignore response: id is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    return-void

    .line 250
    :cond_1
    sget-object v1, Lcom/android/stk/StkInputActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendResponse resID["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] input[*****] help["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 251
    const-string/jumbo v3, "]"

    .line 250
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/stk/StkInputActivity;->mIsResponseSent:Z

    .line 253
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 254
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v1, "op"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 255
    const-string/jumbo v1, "SLOT_ID"

    iget v2, p0, Lcom/android/stk/StkInputActivity;->mSlotId:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 256
    const-string/jumbo v1, "response id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 257
    if-eqz p2, :cond_2

    .line 258
    const-string/jumbo v1, "input"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    :cond_2
    const-string/jumbo v1, "help"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 261
    iget-object v1, p0, Lcom/android/stk/StkInputActivity;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/stk/StkInputActivity;->mContext:Landroid/content/Context;

    const-class v4, Lcom/android/stk/StkAppService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 239
    return-void
.end method
