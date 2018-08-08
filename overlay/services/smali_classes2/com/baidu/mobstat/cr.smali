.class Lcom/baidu/mobstat/cr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/mobstat/cs$a;


# instance fields
.field final synthetic a:Lcom/baidu/mobstat/cp;


# direct methods
.method constructor <init>(Lcom/baidu/mobstat/cp;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/baidu/mobstat/cr;->a:Lcom/baidu/mobstat/cp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/KeyEvent;)V
    .locals 0

    .prologue
    .line 164
    return-void
.end method

.method public a(Landroid/view/MotionEvent;)V
    .locals 12

    .prologue
    const-wide/16 v10, 0x9c4

    const/4 v9, 0x2

    const/4 v1, 0x0

    const/16 v8, 0x64

    const/4 v0, 0x1

    .line 132
    invoke-static {v0}, Lcom/baidu/mobstat/cp;->a(Z)V

    .line 134
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 159
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 142
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    cmp-long v2, v2, v10

    if-ltz v2, :cond_1

    :goto_1
    if-nez v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/baidu/mobstat/cr;->a:Lcom/baidu/mobstat/cp;

    invoke-static {v0}, Lcom/baidu/mobstat/cp;->b(Lcom/baidu/mobstat/cp;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 142
    goto :goto_1

    .line 149
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    .line 150
    if-eq v2, v9, :cond_3

    .line 152
    :cond_2
    if-le v2, v9, :cond_0

    .line 153
    iget-object v0, p0, Lcom/baidu/mobstat/cr;->a:Lcom/baidu/mobstat/cp;

    invoke-static {v0}, Lcom/baidu/mobstat/cp;->b(Lcom/baidu/mobstat/cp;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 150
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x32

    cmp-long v3, v4, v6

    if-lez v3, :cond_4

    :goto_2
    if-nez v0, :cond_2

    .line 151
    iget-object v0, p0, Lcom/baidu/mobstat/cr;->a:Lcom/baidu/mobstat/cp;

    invoke-static {v0}, Lcom/baidu/mobstat/cp;->b(Lcom/baidu/mobstat/cp;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v8, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_4
    move v0, v1

    .line 150
    goto :goto_2

    .line 134
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
