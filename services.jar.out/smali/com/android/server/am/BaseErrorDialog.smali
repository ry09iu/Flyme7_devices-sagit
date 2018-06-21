.class Lcom/android/server/am/BaseErrorDialog;
.super Lmiui/app/AlertDialog;
.source "BaseErrorDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/BaseErrorDialog$1;
    }
.end annotation


# instance fields
.field private mConsuming:Z

.field private mHandler:Landroid/os/Handler;


# direct methods
.method static synthetic -set0(Lcom/android/server/am/BaseErrorDialog;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/am/BaseErrorDialog;->mConsuming:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/am/BaseErrorDialog;Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/am/BaseErrorDialog;->setEnabled(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v3, 0x20000

    sget v1, Lmiui/R$style;->Theme_Light_Dialog_Alert:I

    invoke-direct {p0, p1, v1}, Lmiui/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    new-instance v1, Lcom/android/server/am/BaseErrorDialog$1;

    invoke-direct {v1, p0}, Lcom/android/server/am/BaseErrorDialog$1;-><init>(Lcom/android/server/am/BaseErrorDialog;)V

    iput-object v1, p0, Lcom/android/server/am/BaseErrorDialog;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/am/BaseErrorDialog;->mConsuming:Z

    invoke-virtual {p0}, Lcom/android/server/am/BaseErrorDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 32
    invoke-virtual {p0}, Lcom/android/server/am/BaseErrorDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 34
    invoke-virtual {p0}, Lcom/android/server/am/BaseErrorDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    const-string v1, "Error Dialog"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/server/am/BaseErrorDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const v1, #android:attr@alertDialogIcon#t

    invoke-virtual {p0, v1}, Lcom/android/server/am/BaseErrorDialog;->setIconAttribute(I)V

    return-void
.end method

.method private setEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    const v1, #android:id@button1#t

    invoke-virtual {p0, v1}, Lcom/android/server/am/BaseErrorDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 57
    .local v0, "b":Landroid/widget/Button;
    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 60
    :cond_0
    const v1, #android:id@button2#t

    invoke-virtual {p0, v1}, Lcom/android/server/am/BaseErrorDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "b":Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 61
    .restart local v0    # "b":Landroid/widget/Button;
    if-eqz v0, :cond_1

    .line 62
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 64
    :cond_1
    const v1, #android:id@button3#t

    invoke-virtual {p0, v1}, Lcom/android/server/am/BaseErrorDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "b":Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 65
    .restart local v0    # "b":Landroid/widget/Button;
    if-eqz v0, :cond_2

    .line 66
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 55
    :cond_2
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/android/server/am/BaseErrorDialog;->mConsuming:Z

    if-eqz v0, :cond_0

    .line 49
    const/4 v0, 0x1

    return v0

    .line 52
    :cond_0
    invoke-super {p0, p1}, Lmiui/app/AlertDialog;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onStart()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 41
    invoke-super {p0}, Lmiui/app/AlertDialog;->onStart()V

    .line 42
    invoke-direct {p0, v2}, Lcom/android/server/am/BaseErrorDialog;->setEnabled(Z)V

    .line 43
    iget-object v0, p0, Lcom/android/server/am/BaseErrorDialog;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/am/BaseErrorDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 40
    return-void
.end method
