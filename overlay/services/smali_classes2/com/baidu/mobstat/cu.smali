.class Lcom/baidu/mobstat/cu;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/baidu/mobstat/ct;


# direct methods
.method constructor <init>(Lcom/baidu/mobstat/ct;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/baidu/mobstat/cu;->a:Lcom/baidu/mobstat/ct;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 122
    iget v0, p1, Landroid/os/Message;->what:I

    .line 123
    packed-switch v0, :pswitch_data_0

    .line 138
    :goto_0
    return-void

    .line 125
    :pswitch_0
    iget-object v0, p0, Lcom/baidu/mobstat/cu;->a:Lcom/baidu/mobstat/ct;

    invoke-virtual {v0}, Lcom/baidu/mobstat/ct;->b()V

    goto :goto_0

    .line 129
    :pswitch_1
    iget-object v0, p0, Lcom/baidu/mobstat/cu;->a:Lcom/baidu/mobstat/ct;

    invoke-virtual {v0}, Lcom/baidu/mobstat/ct;->c()V

    goto :goto_0

    .line 133
    :pswitch_2
    iget-object v0, p0, Lcom/baidu/mobstat/cu;->a:Lcom/baidu/mobstat/ct;

    invoke-static {v0}, Lcom/baidu/mobstat/ct;->a(Lcom/baidu/mobstat/ct;)V

    goto :goto_0

    .line 123
    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
