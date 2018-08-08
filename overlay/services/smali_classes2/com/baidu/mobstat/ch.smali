.class Lcom/baidu/mobstat/ch;
.super Landroid/widget/TextView;
.source "SourceFile"


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:Landroid/graphics/PaintFlagsDrawFilter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 13
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/ch;->a:Landroid/graphics/Paint;

    .line 15
    new-instance v0, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    iput-object v0, p0, Lcom/baidu/mobstat/ch;->b:Landroid/graphics/PaintFlagsDrawFilter;

    .line 29
    iget-object v0, p0, Lcom/baidu/mobstat/ch;->a:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 30
    iget-object v0, p0, Lcom/baidu/mobstat/ch;->a:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 31
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    .line 59
    iget-object v0, p0, Lcom/baidu/mobstat/ch;->b:Landroid/graphics/PaintFlagsDrawFilter;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 60
    invoke-virtual {p0}, Lcom/baidu/mobstat/ch;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/baidu/mobstat/ch;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/baidu/mobstat/ch;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/baidu/mobstat/ch;->getHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/baidu/mobstat/ch;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 62
    invoke-super {p0, p1}, Landroid/widget/TextView;->draw(Landroid/graphics/Canvas;)V

    .line 63
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .prologue
    .line 36
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 37
    invoke-virtual {p0}, Lcom/baidu/mobstat/ch;->getMeasuredWidth()I

    move-result v0

    .line 38
    invoke-virtual {p0}, Lcom/baidu/mobstat/ch;->getMeasuredHeight()I

    move-result v1

    .line 39
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 40
    invoke-virtual {p0, v0, v0}, Lcom/baidu/mobstat/ch;->setMeasuredDimension(II)V

    .line 41
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/baidu/mobstat/ch;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 46
    return-void
.end method
