.class Lcom/baidu/mobstat/ct$c;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mobstat/ct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/mobstat/ct;


# direct methods
.method public constructor <init>(Lcom/baidu/mobstat/ct;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lcom/baidu/mobstat/ct$c;->a:Lcom/baidu/mobstat/ct;

    .line 145
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 146
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 150
    iget v0, p1, Landroid/os/Message;->what:I

    .line 151
    packed-switch v0, :pswitch_data_0

    .line 161
    :goto_0
    return-void

    .line 153
    :pswitch_0
    iget-object v0, p0, Lcom/baidu/mobstat/ct$c;->a:Lcom/baidu/mobstat/ct;

    invoke-static {v0}, Lcom/baidu/mobstat/ct;->b(Lcom/baidu/mobstat/ct;)V

    goto :goto_0

    .line 157
    :pswitch_1
    iget-object v0, p0, Lcom/baidu/mobstat/ct$c;->a:Lcom/baidu/mobstat/ct;

    invoke-static {v0}, Lcom/baidu/mobstat/ct;->c(Lcom/baidu/mobstat/ct;)V

    goto :goto_0

    .line 151
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
