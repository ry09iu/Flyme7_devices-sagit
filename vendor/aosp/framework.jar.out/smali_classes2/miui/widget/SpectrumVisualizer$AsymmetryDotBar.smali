.class Lmiui/widget/SpectrumVisualizer$AsymmetryDotBar;
.super Ljava/lang/Object;
.source "SpectrumVisualizer.java"

# interfaces
.implements Lmiui/widget/SpectrumVisualizer$DotBarDrawer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/SpectrumVisualizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AsymmetryDotBar"
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/widget/SpectrumVisualizer;


# direct methods
.method constructor <init>(Lmiui/widget/SpectrumVisualizer;)V
    .locals 0
    .param p1, "this$0"    # Lmiui/widget/SpectrumVisualizer;

    .prologue
    .line 401
    iput-object p1, p0, Lmiui/widget/SpectrumVisualizer$AsymmetryDotBar;->this$0:Lmiui/widget/SpectrumVisualizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drawDotBar(Landroid/graphics/Canvas;I)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "index"    # I

    .prologue
    .line 404
    iget-object v0, p0, Lmiui/widget/SpectrumVisualizer$AsymmetryDotBar;->this$0:Lmiui/widget/SpectrumVisualizer;

    iget v0, v0, Lmiui/widget/SpectrumVisualizer;->mDotbarHeight:I

    int-to-float v0, v0

    iget-object v1, p0, Lmiui/widget/SpectrumVisualizer$AsymmetryDotBar;->this$0:Lmiui/widget/SpectrumVisualizer;

    iget-object v1, v1, Lmiui/widget/SpectrumVisualizer;->mPointData:[F

    aget v1, v1, p2

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v1, v2, v1

    mul-float/2addr v0, v1

    iget-object v1, p0, Lmiui/widget/SpectrumVisualizer$AsymmetryDotBar;->this$0:Lmiui/widget/SpectrumVisualizer;

    iget v1, v1, Lmiui/widget/SpectrumVisualizer;->mCellSize:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    double-to-int v0, v0

    iget-object v1, p0, Lmiui/widget/SpectrumVisualizer$AsymmetryDotBar;->this$0:Lmiui/widget/SpectrumVisualizer;

    iget v1, v1, Lmiui/widget/SpectrumVisualizer;->mCellSize:I

    mul-int v5, v0, v1

    .line 405
    .local v5, "top":I
    iget-object v0, p0, Lmiui/widget/SpectrumVisualizer$AsymmetryDotBar;->this$0:Lmiui/widget/SpectrumVisualizer;

    iget v0, v0, Lmiui/widget/SpectrumVisualizer;->mDotbarHeight:I

    if-ge v5, v0, :cond_0

    .line 406
    iget-object v0, p0, Lmiui/widget/SpectrumVisualizer$AsymmetryDotBar;->this$0:Lmiui/widget/SpectrumVisualizer;

    iget-object v1, v0, Lmiui/widget/SpectrumVisualizer;->mPixels:[I

    .line 407
    iget-object v0, p0, Lmiui/widget/SpectrumVisualizer$AsymmetryDotBar;->this$0:Lmiui/widget/SpectrumVisualizer;

    iget v0, v0, Lmiui/widget/SpectrumVisualizer;->mCellSize:I

    mul-int v2, v0, v5

    .line 408
    iget-object v0, p0, Lmiui/widget/SpectrumVisualizer$AsymmetryDotBar;->this$0:Lmiui/widget/SpectrumVisualizer;

    iget v3, v0, Lmiui/widget/SpectrumVisualizer;->mCellSize:I

    .line 409
    iget-object v0, p0, Lmiui/widget/SpectrumVisualizer$AsymmetryDotBar;->this$0:Lmiui/widget/SpectrumVisualizer;

    iget v0, v0, Lmiui/widget/SpectrumVisualizer;->mCellSize:I

    mul-int v4, v0, p2

    .line 411
    iget-object v0, p0, Lmiui/widget/SpectrumVisualizer$AsymmetryDotBar;->this$0:Lmiui/widget/SpectrumVisualizer;

    iget v6, v0, Lmiui/widget/SpectrumVisualizer;->mCellSize:I

    .line 412
    iget-object v0, p0, Lmiui/widget/SpectrumVisualizer$AsymmetryDotBar;->this$0:Lmiui/widget/SpectrumVisualizer;

    iget v0, v0, Lmiui/widget/SpectrumVisualizer;->mDotbarHeight:I

    sub-int v7, v0, v5

    .line 414
    iget-object v0, p0, Lmiui/widget/SpectrumVisualizer$AsymmetryDotBar;->this$0:Lmiui/widget/SpectrumVisualizer;

    iget-object v9, v0, Lmiui/widget/SpectrumVisualizer;->mPaint:Landroid/graphics/Paint;

    .line 413
    const/4 v8, 0x1

    move-object v0, p1

    .line 406
    invoke-virtual/range {v0 .. v9}, Landroid/graphics/Canvas;->drawBitmap([IIIIIIIZLandroid/graphics/Paint;)V

    .line 403
    :cond_0
    return-void
.end method
