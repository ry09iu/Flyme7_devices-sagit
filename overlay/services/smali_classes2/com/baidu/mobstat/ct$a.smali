.class Lcom/baidu/mobstat/ct$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mobstat/ct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/mobstat/ct;


# direct methods
.method public constructor <init>(Lcom/baidu/mobstat/ct;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 208
    iput-object p1, p0, Lcom/baidu/mobstat/ct$a;->a:Lcom/baidu/mobstat/ct;

    .line 209
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 210
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 215
    iget v0, p1, Landroid/os/Message;->what:I

    .line 216
    packed-switch v0, :pswitch_data_0

    .line 238
    :cond_0
    :goto_0
    return-void

    .line 218
    :pswitch_0
    iget-object v0, p0, Lcom/baidu/mobstat/ct$a;->a:Lcom/baidu/mobstat/ct;

    invoke-static {v0}, Lcom/baidu/mobstat/ct;->h(Lcom/baidu/mobstat/ct;)V

    goto :goto_0

    .line 222
    :pswitch_1
    iget-object v0, p0, Lcom/baidu/mobstat/ct$a;->a:Lcom/baidu/mobstat/ct;

    invoke-static {v0}, Lcom/baidu/mobstat/ct;->i(Lcom/baidu/mobstat/ct;)V

    goto :goto_0

    .line 226
    :pswitch_2
    iget-object v0, p0, Lcom/baidu/mobstat/ct$a;->a:Lcom/baidu/mobstat/ct;

    invoke-static {v0}, Lcom/baidu/mobstat/ct;->j(Lcom/baidu/mobstat/ct;)V

    goto :goto_0

    .line 230
    :pswitch_3
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 231
    if-eqz v0, :cond_0

    const-string/jumbo v1, "autoconfig.key"

    .line 232
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 233
    iget-object v1, p0, Lcom/baidu/mobstat/ct$a;->a:Lcom/baidu/mobstat/ct;

    invoke-static {v1, v0}, Lcom/baidu/mobstat/ct;->a(Lcom/baidu/mobstat/ct;Ljava/lang/String;)V

    goto :goto_0

    .line 216
    nop

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
