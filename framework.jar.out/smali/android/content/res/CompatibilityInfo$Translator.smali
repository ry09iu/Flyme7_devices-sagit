.class public Landroid/content/res/CompatibilityInfo$Translator;
.super Ljava/lang/Object;
.source "CompatibilityInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/CompatibilityInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Translator"
.end annotation


# instance fields
.field public final applicationInvertedScale:F

.field public final applicationScale:F

.field private mContentInsetsBuffer:Landroid/graphics/Rect;

.field private mTouchableAreaBuffer:Landroid/graphics/Region;

.field private mVisibleInsetsBuffer:Landroid/graphics/Rect;

.field final synthetic this$0:Landroid/content/res/CompatibilityInfo;


# direct methods
.method constructor <init>(Landroid/content/res/CompatibilityInfo;)V
    .locals 2
    .param p1, "this$0"    # Landroid/content/res/CompatibilityInfo;

    .prologue
    .line 323
    iget v0, p1, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 324
    iget v1, p1, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    .line 323
    invoke-direct {p0, p1, v0, v1}, Landroid/content/res/CompatibilityInfo$Translator;-><init>(Landroid/content/res/CompatibilityInfo;FF)V

    .line 322
    return-void
.end method

.method constructor <init>(Landroid/content/res/CompatibilityInfo;FF)V
    .locals 1
    .param p1, "this$0"    # Landroid/content/res/CompatibilityInfo;
    .param p2, "applicationScale"    # F
    .param p3, "applicationInvertedScale"    # F

    .prologue
    const/4 v0, 0x0

    .line 317
    iput-object p1, p0, Landroid/content/res/CompatibilityInfo$Translator;->this$0:Landroid/content/res/CompatibilityInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 313
    iput-object v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->mContentInsetsBuffer:Landroid/graphics/Rect;

    .line 314
    iput-object v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->mVisibleInsetsBuffer:Landroid/graphics/Rect;

    .line 315
    iput-object v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->mTouchableAreaBuffer:Landroid/graphics/Region;

    .line 318
    iput p2, p0, Landroid/content/res/CompatibilityInfo$Translator;->applicationScale:F

    .line 319
    iput p3, p0, Landroid/content/res/CompatibilityInfo$Translator;->applicationInvertedScale:F

    .line 317
    return-void
.end method


# virtual methods
.method public getTranslatedContentInsets(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 1
    .param p1, "contentInsets"    # Landroid/graphics/Rect;

    .prologue
    .line 420
    iget-object v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->mContentInsetsBuffer:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->mContentInsetsBuffer:Landroid/graphics/Rect;

    .line 421
    :cond_0
    iget-object v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->mContentInsetsBuffer:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 422
    iget-object v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->mContentInsetsBuffer:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInAppWindowToScreen(Landroid/graphics/Rect;)V

    .line 423
    iget-object v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->mContentInsetsBuffer:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getTranslatedTouchableArea(Landroid/graphics/Region;)Landroid/graphics/Region;
    .locals 2
    .param p1, "touchableArea"    # Landroid/graphics/Region;

    .prologue
    .line 442
    iget-object v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->mTouchableAreaBuffer:Landroid/graphics/Region;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->mTouchableAreaBuffer:Landroid/graphics/Region;

    .line 443
    :cond_0
    iget-object v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->mTouchableAreaBuffer:Landroid/graphics/Region;

    invoke-virtual {v0, p1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 444
    iget-object v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->mTouchableAreaBuffer:Landroid/graphics/Region;

    iget v1, p0, Landroid/content/res/CompatibilityInfo$Translator;->applicationScale:F

    invoke-virtual {v0, v1}, Landroid/graphics/Region;->scale(F)V

    .line 445
    iget-object v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->mTouchableAreaBuffer:Landroid/graphics/Region;

    return-object v0
.end method

.method public getTranslatedVisibleInsets(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 1
    .param p1, "visibleInsets"    # Landroid/graphics/Rect;

    .prologue
    .line 431
    iget-object v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->mVisibleInsetsBuffer:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->mVisibleInsetsBuffer:Landroid/graphics/Rect;

    .line 432
    :cond_0
    iget-object v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->mVisibleInsetsBuffer:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 433
    iget-object v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->mVisibleInsetsBuffer:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInAppWindowToScreen(Landroid/graphics/Rect;)V

    .line 434
    iget-object v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->mVisibleInsetsBuffer:Landroid/graphics/Rect;

    return-object v0
.end method

.method public translateCanvas(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const v3, 0x3b2b5601

    .line 345
    iget v1, p0, Landroid/content/res/CompatibilityInfo$Translator;->applicationScale:F

    const/high16 v2, 0x3fc00000    # 1.5f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 361
    const v0, 0x3b2b5601

    .line 362
    .local v0, "tinyOffset":F
    invoke-virtual {p1, v3, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 364
    .end local v0    # "tinyOffset":F
    :cond_0
    iget v1, p0, Landroid/content/res/CompatibilityInfo$Translator;->applicationScale:F

    iget v2, p0, Landroid/content/res/CompatibilityInfo$Translator;->applicationScale:F

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 344
    return-void
.end method

.method public translateEventInScreenToAppWindow(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 371
    iget v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->applicationInvertedScale:F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->scale(F)V

    .line 370
    return-void
.end method

.method public translateLayoutParamsInAppWindowToScreen(Landroid/view/WindowManager$LayoutParams;)V
    .locals 1
    .param p1, "params"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 412
    iget v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->applicationScale:F

    invoke-virtual {p1, v0}, Landroid/view/WindowManager$LayoutParams;->scale(F)V

    .line 411
    return-void
.end method

.method public translatePointInScreenToAppWindow(Landroid/graphics/PointF;)V
    .locals 2
    .param p1, "point"    # Landroid/graphics/PointF;

    .prologue
    .line 400
    iget v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->applicationInvertedScale:F

    .line 401
    .local v0, "scale":F
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    .line 402
    iget v1, p1, Landroid/graphics/PointF;->x:F

    mul-float/2addr v1, v0

    iput v1, p1, Landroid/graphics/PointF;->x:F

    .line 403
    iget v1, p1, Landroid/graphics/PointF;->y:F

    mul-float/2addr v1, v0

    iput v1, p1, Landroid/graphics/PointF;->y:F

    .line 399
    :cond_0
    return-void
.end method

.method public translateRectInAppWindowToScreen(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 386
    iget v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->applicationScale:F

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->scale(F)V

    .line 385
    return-void
.end method

.method public translateRectInScreenToAppWinFrame(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 331
    iget v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->applicationInvertedScale:F

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->scale(F)V

    .line 330
    return-void
.end method

.method public translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 393
    iget v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->applicationInvertedScale:F

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->scale(F)V

    .line 392
    return-void
.end method

.method public translateRegionInWindowToScreen(Landroid/graphics/Region;)V
    .locals 1
    .param p1, "transparentRegion"    # Landroid/graphics/Region;

    .prologue
    .line 338
    iget v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->applicationScale:F

    invoke-virtual {p1, v0}, Landroid/graphics/Region;->scale(F)V

    .line 337
    return-void
.end method

.method public translateWindowLayout(Landroid/view/WindowManager$LayoutParams;)V
    .locals 1
    .param p1, "params"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 379
    iget v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->applicationScale:F

    invoke-virtual {p1, v0}, Landroid/view/WindowManager$LayoutParams;->scale(F)V

    .line 378
    return-void
.end method
