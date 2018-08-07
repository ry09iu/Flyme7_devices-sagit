.class public Lcom/android/stk/ToneDialog;
.super Landroid/app/Activity;
.source "ToneDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/stk/ToneDialog$1;,
        Lcom/android/stk/ToneDialog$2;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mFinishActivityReceiver:Landroid/content/BroadcastReceiver;

.field mSlotId:I

.field toneMsg:Lcom/android/internal/telephony/cat/TextMessage;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    new-instance v0, Lcom/android/stk/ToneDialog$1;

    invoke-direct {v0}, Lcom/android/stk/ToneDialog$1;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/stk/ToneDialog;->LOG_TAG:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/stk/ToneDialog;->toneMsg:Lcom/android/internal/telephony/cat/TextMessage;

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/stk/ToneDialog;->mSlotId:I

    .line 115
    new-instance v0, Lcom/android/stk/ToneDialog$2;

    invoke-direct {v0, p0}, Lcom/android/stk/ToneDialog$2;-><init>(Lcom/android/stk/ToneDialog;)V

    iput-object v0, p0, Lcom/android/stk/ToneDialog;->mFinishActivityReceiver:Landroid/content/BroadcastReceiver;

    .line 40
    return-void
.end method

.method private initFromIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 128
    if-nez p1, :cond_0

    .line 129
    invoke-virtual {p0}, Lcom/android/stk/ToneDialog;->finish()V

    .line 131
    :cond_0
    const-string/jumbo v0, "TEXT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cat/TextMessage;

    iput-object v0, p0, Lcom/android/stk/ToneDialog;->toneMsg:Lcom/android/internal/telephony/cat/TextMessage;

    .line 132
    const-string/jumbo v0, "SLOT_ID"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/stk/ToneDialog;->mSlotId:I

    .line 127
    return-void
.end method

.method private sendStopTone()V
    .locals 3

    .prologue
    .line 137
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 138
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v1, "op"

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 139
    const-string/jumbo v1, "SLOT_ID"

    iget v2, p0, Lcom/android/stk/ToneDialog;->mSlotId:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 140
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/stk/StkAppService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/stk/ToneDialog;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 136
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 48
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    sget-object v4, Lcom/android/stk/ToneDialog;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v5, "onCreate"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Lcom/android/stk/ToneDialog;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/stk/ToneDialog;->initFromIntent(Landroid/content/Intent;)V

    .line 53
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 54
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v4, "org.codeaurora.intent.action.stk.finish_activity"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 55
    iget-object v4, p0, Lcom/android/stk/ToneDialog;->mFinishActivityReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4, v0}, Lcom/android/stk/ToneDialog;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 58
    const v4, 0x1020016

    invoke-virtual {p0, v4}, Lcom/android/stk/ToneDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 61
    .local v2, "title":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 62
    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 66
    :cond_0
    const v4, 0x7f030007

    invoke-virtual {p0, v4}, Lcom/android/stk/ToneDialog;->setContentView(I)V

    .line 68
    const v4, 0x7f070018

    invoke-virtual {p0, v4}, Lcom/android/stk/ToneDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 69
    .local v3, "tv":Landroid/widget/TextView;
    const v4, 0x7f070001

    invoke-virtual {p0, v4}, Lcom/android/stk/ToneDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 72
    .local v1, "iv":Landroid/widget/ImageView;
    iget-object v4, p0, Lcom/android/stk/ToneDialog;->toneMsg:Lcom/android/internal/telephony/cat/TextMessage;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/stk/ToneDialog;->toneMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v4, v4, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-nez v4, :cond_2

    .line 73
    :cond_1
    sget-object v4, Lcom/android/stk/ToneDialog;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v5, "onCreate - null tone text"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    :goto_0
    iget-object v4, p0, Lcom/android/stk/ToneDialog;->toneMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v4, v4, Lcom/android/internal/telephony/cat/TextMessage;->icon:Landroid/graphics/Bitmap;

    if-nez v4, :cond_3

    .line 79
    const v4, 0x108045e

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 47
    :goto_1
    return-void

    .line 72
    :cond_2
    iget-object v4, p0, Lcom/android/stk/ToneDialog;->toneMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v4, v4, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 75
    iget-object v4, p0, Lcom/android/stk/ToneDialog;->toneMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v4, v4, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 81
    :cond_3
    iget-object v4, p0, Lcom/android/stk/ToneDialog;->toneMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v4, v4, Lcom/android/internal/telephony/cat/TextMessage;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 87
    sget-object v0, Lcom/android/stk/ToneDialog;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/android/stk/ToneDialog;->mFinishActivityReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/stk/ToneDialog;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 90
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 86
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 95
    packed-switch p1, :pswitch_data_0

    .line 101
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 97
    :pswitch_0
    invoke-direct {p0}, Lcom/android/stk/ToneDialog;->sendStopTone()V

    .line 98
    invoke-virtual {p0}, Lcom/android/stk/ToneDialog;->finish()V

    goto :goto_0

    .line 95
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 106
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 112
    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 108
    :pswitch_0
    invoke-direct {p0}, Lcom/android/stk/ToneDialog;->sendStopTone()V

    .line 109
    invoke-virtual {p0}, Lcom/android/stk/ToneDialog;->finish()V

    .line 110
    const/4 v0, 0x1

    return v0

    .line 106
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
