.class Lcom/android/server/am/PKTopWindow$13;
.super Ljava/lang/Object;
.source "PKTopWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/PKTopWindow;->dismissWindowsAt(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/PKTopWindow;

.field final synthetic val$windowIndex:I


# direct methods
.method constructor <init>(Lcom/android/server/am/PKTopWindow;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/PKTopWindow;
    .param p2, "val$windowIndex"    # I

    .prologue
    .line 1023
    iput-object p1, p0, Lcom/android/server/am/PKTopWindow$13;->this$0:Lcom/android/server/am/PKTopWindow;

    iput p2, p0, Lcom/android/server/am/PKTopWindow$13;->val$windowIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1026
    iget v0, p0, Lcom/android/server/am/PKTopWindow$13;->val$windowIndex:I

    packed-switch v0, :pswitch_data_0

    .line 1062
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/PKTopWindow$13;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-static {v0}, Lcom/android/server/am/PKTopWindow;->-get5(Lcom/android/server/am/PKTopWindow;)Lcom/android/server/am/PKTopWindow$DissmissListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1063
    iget-object v0, p0, Lcom/android/server/am/PKTopWindow$13;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-static {v0}, Lcom/android/server/am/PKTopWindow;->-get5(Lcom/android/server/am/PKTopWindow;)Lcom/android/server/am/PKTopWindow$DissmissListener;

    move-result-object v0

    iget v1, p0, Lcom/android/server/am/PKTopWindow$13;->val$windowIndex:I

    invoke-interface {v0, v1}, Lcom/android/server/am/PKTopWindow$DissmissListener;->onDissmissListener(I)V

    .line 1025
    :cond_0
    return-void

    .line 1028
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/am/PKTopWindow$13;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-static {v0}, Lcom/android/server/am/PKTopWindow;->-wrap2(Lcom/android/server/am/PKTopWindow;)V

    .line 1029
    iget-object v0, p0, Lcom/android/server/am/PKTopWindow$13;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-static {v0}, Lcom/android/server/am/PKTopWindow;->-get26(Lcom/android/server/am/PKTopWindow;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1030
    iget-object v0, p0, Lcom/android/server/am/PKTopWindow$13;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-static {v0}, Lcom/android/server/am/PKTopWindow;->-get26(Lcom/android/server/am/PKTopWindow;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1032
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/PKTopWindow$13;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-static {v0}, Lcom/android/server/am/PKTopWindow;->-get0(Lcom/android/server/am/PKTopWindow;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1033
    iget-object v0, p0, Lcom/android/server/am/PKTopWindow$13;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-static {v0}, Lcom/android/server/am/PKTopWindow;->-get0(Lcom/android/server/am/PKTopWindow;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1035
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/PKTopWindow$13;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-static {v0}, Lcom/android/server/am/PKTopWindow;->-get7(Lcom/android/server/am/PKTopWindow;)Lcom/android/server/am/PKTopWindowViewFactory$FirstWindow;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1036
    iget-object v0, p0, Lcom/android/server/am/PKTopWindow$13;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-static {v0}, Lcom/android/server/am/PKTopWindow;->-get7(Lcom/android/server/am/PKTopWindow;)Lcom/android/server/am/PKTopWindowViewFactory$FirstWindow;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/server/am/PKTopWindowViewFactory$FirstWindow;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1038
    :cond_3
    iget-object v0, p0, Lcom/android/server/am/PKTopWindow$13;->this$0:Lcom/android/server/am/PKTopWindow;

    iget-object v1, p0, Lcom/android/server/am/PKTopWindow$13;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-static {v1}, Lcom/android/server/am/PKTopWindow;->-get7(Lcom/android/server/am/PKTopWindow;)Lcom/android/server/am/PKTopWindowViewFactory$FirstWindow;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/am/PKTopWindow;->-wrap3(Lcom/android/server/am/PKTopWindow;Landroid/view/View;)V

    .line 1039
    iget-object v0, p0, Lcom/android/server/am/PKTopWindow$13;->this$0:Lcom/android/server/am/PKTopWindow;

    iget-object v1, p0, Lcom/android/server/am/PKTopWindow$13;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-static {v1}, Lcom/android/server/am/PKTopWindow;->-get18(Lcom/android/server/am/PKTopWindow;)Lcom/android/server/am/PKTopWindowViewFactory$SecondWindow;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/am/PKTopWindow;->-wrap3(Lcom/android/server/am/PKTopWindow;Landroid/view/View;)V

    .line 1040
    iget-object v0, p0, Lcom/android/server/am/PKTopWindow$13;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-static {v0}, Lcom/android/server/am/PKTopWindow;->-wrap1(Lcom/android/server/am/PKTopWindow;)V

    goto :goto_0

    .line 1043
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/am/PKTopWindow$13;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-static {v0}, Lcom/android/server/am/PKTopWindow;->-get26(Lcom/android/server/am/PKTopWindow;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1044
    iget-object v0, p0, Lcom/android/server/am/PKTopWindow$13;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-static {v0}, Lcom/android/server/am/PKTopWindow;->-get26(Lcom/android/server/am/PKTopWindow;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1046
    :cond_4
    iget-object v0, p0, Lcom/android/server/am/PKTopWindow$13;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-static {v0}, Lcom/android/server/am/PKTopWindow;->-get0(Lcom/android/server/am/PKTopWindow;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1047
    iget-object v0, p0, Lcom/android/server/am/PKTopWindow$13;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-static {v0}, Lcom/android/server/am/PKTopWindow;->-get0(Lcom/android/server/am/PKTopWindow;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1049
    :cond_5
    iget-object v0, p0, Lcom/android/server/am/PKTopWindow$13;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-static {v0}, Lcom/android/server/am/PKTopWindow;->-get7(Lcom/android/server/am/PKTopWindow;)Lcom/android/server/am/PKTopWindowViewFactory$FirstWindow;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 1050
    iget-object v0, p0, Lcom/android/server/am/PKTopWindow$13;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-static {v0}, Lcom/android/server/am/PKTopWindow;->-get7(Lcom/android/server/am/PKTopWindow;)Lcom/android/server/am/PKTopWindowViewFactory$FirstWindow;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/server/am/PKTopWindowViewFactory$FirstWindow;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1052
    :cond_6
    iget-object v0, p0, Lcom/android/server/am/PKTopWindow$13;->this$0:Lcom/android/server/am/PKTopWindow;

    iget-object v1, p0, Lcom/android/server/am/PKTopWindow$13;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-static {v1}, Lcom/android/server/am/PKTopWindow;->-get7(Lcom/android/server/am/PKTopWindow;)Lcom/android/server/am/PKTopWindowViewFactory$FirstWindow;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/am/PKTopWindow;->-wrap3(Lcom/android/server/am/PKTopWindow;Landroid/view/View;)V

    goto/16 :goto_0

    .line 1055
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/am/PKTopWindow$13;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-static {v0}, Lcom/android/server/am/PKTopWindow;->-wrap2(Lcom/android/server/am/PKTopWindow;)V

    .line 1056
    iget-object v0, p0, Lcom/android/server/am/PKTopWindow$13;->this$0:Lcom/android/server/am/PKTopWindow;

    iget-object v1, p0, Lcom/android/server/am/PKTopWindow$13;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-static {v1}, Lcom/android/server/am/PKTopWindow;->-get18(Lcom/android/server/am/PKTopWindow;)Lcom/android/server/am/PKTopWindowViewFactory$SecondWindow;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/am/PKTopWindow;->-wrap3(Lcom/android/server/am/PKTopWindow;Landroid/view/View;)V

    .line 1057
    iget-object v0, p0, Lcom/android/server/am/PKTopWindow$13;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-static {v0}, Lcom/android/server/am/PKTopWindow;->-wrap1(Lcom/android/server/am/PKTopWindow;)V

    goto/16 :goto_0

    .line 1026
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
