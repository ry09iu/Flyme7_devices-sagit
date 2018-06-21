.class Lmiui/telephony/MiuiTelephony$MiuiTelephonyHandler;
.super Landroid/os/Handler;
.source "MiuiTelephony.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/telephony/MiuiTelephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MiuiTelephonyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/telephony/MiuiTelephony;


# direct methods
.method public constructor <init>(Lmiui/telephony/MiuiTelephony;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lmiui/telephony/MiuiTelephony;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 275
    iput-object p1, p0, Lmiui/telephony/MiuiTelephony$MiuiTelephonyHandler;->this$0:Lmiui/telephony/MiuiTelephony;

    .line 276
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 275
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x0

    .line 282
    invoke-static {}, Lmiui/telephony/MiuiTelephony;->-get0()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Received message:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 280
    :cond_0
    :goto_0
    return-void

    .line 285
    :pswitch_0
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v3, v3, Landroid/os/AsyncResult;

    if-nez v3, :cond_1

    .line 286
    return-void

    .line 288
    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 289
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Landroid/os/ResultReceiver;

    .line 290
    .local v1, "callback":Landroid/os/ResultReceiver;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_2

    const/4 v2, -0x1

    .line 291
    .local v2, "resultCode":I
    :goto_1
    if-eqz v1, :cond_0

    .line 292
    invoke-virtual {v1, v2, v6}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 290
    .end local v2    # "resultCode":I
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "resultCode":I
    goto :goto_1

    .line 283
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
