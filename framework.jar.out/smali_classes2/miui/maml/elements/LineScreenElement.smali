.class public Lmiui/maml/elements/LineScreenElement;
.super Lmiui/maml/elements/GeometryScreenElement;
.source "LineScreenElement.java"


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "Line"


# instance fields
.field private mEndXExp:Lmiui/maml/data/Expression;

.field private mEndYExp:Lmiui/maml/data/Expression;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .locals 2
    .param p1, "node"    # Lorg/w3c/dom/Element;
    .param p2, "root"    # Lmiui/maml/ScreenElementRoot;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/GeometryScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    .line 22
    invoke-virtual {p2}, Lmiui/maml/ScreenElementRoot;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v0

    const-string/jumbo v1, "x1"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/elements/LineScreenElement;->mEndXExp:Lmiui/maml/data/Expression;

    .line 23
    invoke-virtual {p2}, Lmiui/maml/ScreenElementRoot;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v0

    const-string/jumbo v1, "y1"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/elements/LineScreenElement;->mEndYExp:Lmiui/maml/data/Expression;

    .line 19
    return-void
.end method

.method private final getEndX()F
    .locals 3

    .prologue
    .line 33
    iget-object v2, p0, Lmiui/maml/elements/LineScreenElement;->mEndXExp:Lmiui/maml/data/Expression;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lmiui/maml/elements/LineScreenElement;->mEndXExp:Lmiui/maml/data/Expression;

    invoke-virtual {v2}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    .line 34
    .local v0, "x":D
    :goto_0
    invoke-virtual {p0, v0, v1}, Lmiui/maml/elements/LineScreenElement;->scale(D)F

    move-result v2

    return v2

    .line 33
    .end local v0    # "x":D
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method private final getEndY()F
    .locals 3

    .prologue
    .line 38
    iget-object v2, p0, Lmiui/maml/elements/LineScreenElement;->mEndYExp:Lmiui/maml/data/Expression;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lmiui/maml/elements/LineScreenElement;->mEndYExp:Lmiui/maml/data/Expression;

    invoke-virtual {v2}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    .line 39
    .local v0, "y":D
    :goto_0
    invoke-virtual {p0, v0, v1}, Lmiui/maml/elements/LineScreenElement;->scale(D)F

    move-result v2

    return v2

    .line 38
    .end local v0    # "y":D
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;Lmiui/maml/elements/GeometryScreenElement$DrawMode;)V
    .locals 6
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "mode"    # Lmiui/maml/elements/GeometryScreenElement$DrawMode;

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-direct {p0}, Lmiui/maml/elements/LineScreenElement;->getEndX()F

    move-result v0

    invoke-virtual {p0}, Lmiui/maml/elements/LineScreenElement;->getX()F

    move-result v2

    sub-float v3, v0, v2

    invoke-direct {p0}, Lmiui/maml/elements/LineScreenElement;->getEndY()F

    move-result v0

    invoke-virtual {p0}, Lmiui/maml/elements/LineScreenElement;->getY()F

    move-result v2

    sub-float v4, v0, v2

    iget-object v5, p0, Lmiui/maml/elements/LineScreenElement;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 27
    return-void
.end method
