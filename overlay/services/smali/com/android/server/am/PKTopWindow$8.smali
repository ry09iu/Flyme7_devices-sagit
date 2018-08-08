.class Lcom/android/server/am/PKTopWindow$8;
.super Landroid/os/CountDownTimer;
.source "PKTopWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/PKTopWindow;->showFirstWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/PKTopWindow;

.field private time:I


# direct methods
.method constructor <init>(Lcom/android/server/am/PKTopWindow;JJ)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/PKTopWindow;
    .param p2, "$anonymous0"    # J
    .param p4, "$anonymous1"    # J

    .prologue
    .line 678
    iput-object p1, p0, Lcom/android/server/am/PKTopWindow$8;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .prologue
    .line 704
    iget-object v0, p0, Lcom/android/server/am/PKTopWindow$8;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-static {v0}, Lcom/android/server/am/PKTopWindow;->-get26(Lcom/android/server/am/PKTopWindow;)Landroid/widget/TextView;

    move-result-object v0

    const-string/jumbo v1, "\u8df3\u8fc7"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 705
    iget-object v0, p0, Lcom/android/server/am/PKTopWindow$8;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-static {v0}, Lcom/android/server/am/PKTopWindow;->-get26(Lcom/android/server/am/PKTopWindow;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 703
    return-void
.end method

.method public onTick(J)V
    .locals 3
    .param p1, "millisUntilFinished"    # J

    .prologue
    const/4 v2, 0x1

    .line 683
    const-wide/16 v0, 0x3e8

    div-long v0, p1, v0

    long-to-int v0, v0

    iput v0, p0, Lcom/android/server/am/PKTopWindow$8;->time:I

    .line 684
    iget v0, p0, Lcom/android/server/am/PKTopWindow$8;->time:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/am/PKTopWindow$8;->time:I

    if-ne v0, v2, :cond_1

    .line 685
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/PKTopWindow$8;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-static {v0}, Lcom/android/server/am/PKTopWindow;->-get26(Lcom/android/server/am/PKTopWindow;)Landroid/widget/TextView;

    move-result-object v0

    const-string/jumbo v1, "\u8df3\u8fc7"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 686
    iget-object v0, p0, Lcom/android/server/am/PKTopWindow$8;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-static {v0}, Lcom/android/server/am/PKTopWindow;->-get26(Lcom/android/server/am/PKTopWindow;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 687
    iget-object v0, p0, Lcom/android/server/am/PKTopWindow$8;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-static {v0}, Lcom/android/server/am/PKTopWindow;->-get26(Lcom/android/server/am/PKTopWindow;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 688
    iget-object v0, p0, Lcom/android/server/am/PKTopWindow$8;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-static {v0}, Lcom/android/server/am/PKTopWindow;->-get26(Lcom/android/server/am/PKTopWindow;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/PKTopWindow$8;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-static {v1}, Lcom/android/server/am/PKTopWindow;->-get21(Lcom/android/server/am/PKTopWindow;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 682
    :goto_0
    return-void

    .line 690
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/PKTopWindow$8;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-static {v0}, Lcom/android/server/am/PKTopWindow;->-get26(Lcom/android/server/am/PKTopWindow;)Landroid/widget/TextView;

    move-result-object v0

    iget v1, p0, Lcom/android/server/am/PKTopWindow$8;->time:I

    add-int/lit8 v1, v1, -0x2

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 692
    iget-object v0, p0, Lcom/android/server/am/PKTopWindow$8;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-static {v0}, Lcom/android/server/am/PKTopWindow;->-get26(Lcom/android/server/am/PKTopWindow;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Lcom/android/server/am/PKTopWindow$8$1;

    invoke-direct {v1, p0}, Lcom/android/server/am/PKTopWindow$8$1;-><init>(Lcom/android/server/am/PKTopWindow$8;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method
