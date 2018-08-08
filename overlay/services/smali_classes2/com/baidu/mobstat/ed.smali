.class Lcom/baidu/mobstat/ed;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/mobstat/cs$a;


# instance fields
.field final synthetic a:Lcom/baidu/mobstat/ec;


# direct methods
.method constructor <init>(Lcom/baidu/mobstat/ec;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/baidu/mobstat/ed;->a:Lcom/baidu/mobstat/ec;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/KeyEvent;)V
    .locals 0

    .prologue
    .line 106
    invoke-static {p1}, Lcom/baidu/mobstat/da;->a(Landroid/view/KeyEvent;)V

    .line 107
    return-void
.end method

.method public a(Landroid/view/MotionEvent;)V
    .locals 3

    .prologue
    .line 82
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 102
    :goto_0
    :pswitch_0
    return-void

    .line 87
    :pswitch_1
    iget-object v0, p0, Lcom/baidu/mobstat/ed;->a:Lcom/baidu/mobstat/ec;

    invoke-static {v0}, Lcom/baidu/mobstat/ec;->a(Lcom/baidu/mobstat/ec;)Landroid/graphics/PointF;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 90
    :goto_1
    iget-object v0, p0, Lcom/baidu/mobstat/ed;->a:Lcom/baidu/mobstat/ec;

    invoke-static {v0}, Lcom/baidu/mobstat/ec;->a(Lcom/baidu/mobstat/ec;)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_0

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/baidu/mobstat/ed;->a:Lcom/baidu/mobstat/ec;

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    invoke-static {v0, v1}, Lcom/baidu/mobstat/ec;->a(Lcom/baidu/mobstat/ec;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    goto :goto_1

    .line 82
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
