.class Lcom/android/stk/StkInputActivity$2;
.super Landroid/os/Handler;
.source "StkInputActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/stk/StkInputActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stk/StkInputActivity;


# direct methods
.method constructor <init>(Lcom/android/stk/StkInputActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/stk/StkInputActivity;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/stk/StkInputActivity$2;->this$0:Lcom/android/stk/StkInputActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
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
    invoke-static {}, Lcom/android/stk/StkInputActivity;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Msg timeout."

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/android/stk/StkInputActivity$2;->this$0:Lcom/android/stk/StkInputActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/stk/StkInputActivity;->-set0(Lcom/android/stk/StkInputActivity;Z)Z

    .line 92
    iget-object v0, p0, Lcom/android/stk/StkInputActivity$2;->this$0:Lcom/android/stk/StkInputActivity;

    invoke-static {v0}, Lcom/android/stk/StkInputActivity;->-get1(Lcom/android/stk/StkInputActivity;)Lcom/android/stk/StkAppService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/stk/StkInputActivity$2;->this$0:Lcom/android/stk/StkInputActivity;

    invoke-static {v1}, Lcom/android/stk/StkInputActivity;->-get2(Lcom/android/stk/StkInputActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/stk/StkAppService;->getStkContext(I)Lcom/android/stk/StkAppService$StkContext;

    move-result-object v0

    iget-object v1, p0, Lcom/android/stk/StkInputActivity$2;->this$0:Lcom/android/stk/StkInputActivity;

    iget-object v1, v1, Lcom/android/stk/StkInputActivity;->mInstance:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/android/stk/StkAppService$StkContext;->setPendingActivityInstance(Landroid/app/Activity;)V

    .line 93
    iget-object v0, p0, Lcom/android/stk/StkInputActivity$2;->this$0:Lcom/android/stk/StkInputActivity;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/android/stk/StkInputActivity;->sendResponse(I)V

    goto :goto_0

    .line 88
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
