.class Lcom/baidu/mobstat/ck;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/app/Activity;Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/baidu/mobstat/ck;->a:Landroid/view/View;

    iput-object p2, p0, Lcom/baidu/mobstat/ck;->b:Landroid/app/Activity;

    iput-object p3, p0, Lcom/baidu/mobstat/ck;->c:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 116
    iget-object v0, p0, Lcom/baidu/mobstat/ck;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 117
    iget-object v1, p0, Lcom/baidu/mobstat/ck;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 119
    iget-object v2, p0, Lcom/baidu/mobstat/ck;->b:Landroid/app/Activity;

    const/high16 v3, 0x425c0000    # 55.0f

    invoke-static {v2, v3}, Lcom/baidu/mobstat/ci;->c(Landroid/content/Context;F)I

    move-result v2

    .line 122
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 125
    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x6

    iput v0, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 126
    sub-int v0, v1, v2

    mul-int/lit8 v0, v0, 0x5

    div-int/lit8 v0, v0, 0x6

    iput v0, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 128
    iget-object v0, p0, Lcom/baidu/mobstat/ck;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 129
    return-void
.end method
