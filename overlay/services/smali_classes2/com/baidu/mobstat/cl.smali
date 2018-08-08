.class Lcom/baidu/mobstat/cl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field a:I

.field b:I

.field c:I

.field d:I

.field final synthetic e:Landroid/view/View;

.field final synthetic f:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/app/Activity;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 141
    iput-object p1, p0, Lcom/baidu/mobstat/cl;->e:Landroid/view/View;

    iput-object p2, p0, Lcom/baidu/mobstat/cl;->f:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    iput v0, p0, Lcom/baidu/mobstat/cl;->a:I

    .line 144
    iput v0, p0, Lcom/baidu/mobstat/cl;->b:I

    .line 145
    iput v0, p0, Lcom/baidu/mobstat/cl;->c:I

    .line 146
    iput v0, p0, Lcom/baidu/mobstat/cl;->d:I

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    .line 153
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    .line 154
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    .line 156
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 204
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 158
    :pswitch_0
    iput v0, p0, Lcom/baidu/mobstat/cl;->a:I

    .line 159
    iput v1, p0, Lcom/baidu/mobstat/cl;->b:I

    .line 162
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/baidu/mobstat/cl;->c:I

    .line 163
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int v0, v1, v0

    iput v0, p0, Lcom/baidu/mobstat/cl;->d:I

    goto :goto_0

    .line 170
    :pswitch_1
    iget v2, p0, Lcom/baidu/mobstat/cl;->c:I

    sub-int v2, v0, v2

    .line 171
    iget v0, p0, Lcom/baidu/mobstat/cl;->d:I

    sub-int/2addr v1, v0

    .line 173
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 175
    iget-object v3, p0, Lcom/baidu/mobstat/cl;->e:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 177
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v5, v1

    invoke-direct {v3, v2, v1, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 178
    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 183
    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 184
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 185
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 190
    :pswitch_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    .line 191
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    .line 193
    iget v2, p0, Lcom/baidu/mobstat/cl;->a:I

    int-to-float v2, v2

    int-to-float v0, v0

    iget v3, p0, Lcom/baidu/mobstat/cl;->b:I

    int-to-float v3, v3

    int-to-float v1, v1

    invoke-static {v2, v0, v3, v1}, Lcom/baidu/mobstat/cj;->a(FFFF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/baidu/mobstat/cl;->f:Landroid/app/Activity;

    invoke-static {v0}, Lcom/baidu/mobstat/cj;->a(Landroid/content/Context;)V

    goto :goto_0

    .line 156
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
