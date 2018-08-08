.class Lcom/baidu/mobstat/cq;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/baidu/mobstat/cp;


# direct methods
.method constructor <init>(Lcom/baidu/mobstat/cp;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/baidu/mobstat/cq;->a:Lcom/baidu/mobstat/cp;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 50
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 59
    :cond_0
    :goto_0
    return-void

    .line 52
    :pswitch_0
    iget-object v0, p0, Lcom/baidu/mobstat/cq;->a:Lcom/baidu/mobstat/cp;

    invoke-static {v0}, Lcom/baidu/mobstat/cp;->a(Lcom/baidu/mobstat/cp;)Lcom/baidu/mobstat/cp$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/baidu/mobstat/cq;->a:Lcom/baidu/mobstat/cp;

    invoke-static {v0}, Lcom/baidu/mobstat/cp;->a(Lcom/baidu/mobstat/cp;)Lcom/baidu/mobstat/cp$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/baidu/mobstat/cp$a;->a()V

    goto :goto_0

    .line 50
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
