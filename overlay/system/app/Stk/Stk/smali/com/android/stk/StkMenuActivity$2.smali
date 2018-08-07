.class Lcom/android/stk/StkMenuActivity$2;
.super Landroid/os/Handler;
.source "StkMenuActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/stk/StkMenuActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stk/StkMenuActivity;


# direct methods
.method constructor <init>(Lcom/android/stk/StkMenuActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/stk/StkMenuActivity;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/stk/StkMenuActivity$2;->this$0:Lcom/android/stk/StkMenuActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 88
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 87
    :goto_0
    return-void

    .line 90
    :pswitch_0
    invoke-static {}, Lcom/android/stk/StkMenuActivity;->-get0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "MSG_ID_TIMEOUT mState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/stk/StkMenuActivity$2;->this$0:Lcom/android/stk/StkMenuActivity;

    invoke-static {v2}, Lcom/android/stk/StkMenuActivity;->-get3(Lcom/android/stk/StkMenuActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/android/stk/StkMenuActivity$2;->this$0:Lcom/android/stk/StkMenuActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/stk/StkMenuActivity;->-set0(Lcom/android/stk/StkMenuActivity;Z)Z

    .line 92
    iget-object v0, p0, Lcom/android/stk/StkMenuActivity$2;->this$0:Lcom/android/stk/StkMenuActivity;

    invoke-static {v0}, Lcom/android/stk/StkMenuActivity;->-get3(Lcom/android/stk/StkMenuActivity;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 93
    iget-object v0, p0, Lcom/android/stk/StkMenuActivity$2;->this$0:Lcom/android/stk/StkMenuActivity;

    invoke-static {v0}, Lcom/android/stk/StkMenuActivity;->-get1(Lcom/android/stk/StkMenuActivity;)Lcom/android/stk/StkAppService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/stk/StkMenuActivity$2;->this$0:Lcom/android/stk/StkMenuActivity;

    invoke-static {v1}, Lcom/android/stk/StkMenuActivity;->-get2(Lcom/android/stk/StkMenuActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/stk/StkAppService;->getStkContext(I)Lcom/android/stk/StkAppService$StkContext;

    move-result-object v0

    iget-object v1, p0, Lcom/android/stk/StkMenuActivity$2;->this$0:Lcom/android/stk/StkMenuActivity;

    iget-object v1, v1, Lcom/android/stk/StkMenuActivity;->mInstance:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/android/stk/StkAppService$StkContext;->setPendingActivityInstance(Landroid/app/Activity;)V

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/android/stk/StkMenuActivity$2;->this$0:Lcom/android/stk/StkMenuActivity;

    const/16 v1, 0x14

    invoke-static {v0, v1}, Lcom/android/stk/StkMenuActivity;->-wrap0(Lcom/android/stk/StkMenuActivity;I)V

    goto :goto_0

    .line 88
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
