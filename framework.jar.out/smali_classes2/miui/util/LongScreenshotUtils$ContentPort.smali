.class public Lmiui/util/LongScreenshotUtils$ContentPort;
.super Ljava/lang/Object;
.source "LongScreenshotUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/LongScreenshotUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContentPort"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/util/LongScreenshotUtils$ContentPort$H;
    }
.end annotation


# instance fields
.field private mHandler:Lmiui/util/LongScreenshotUtils$ContentPort$H;

.field private mIsFakeTouchForScroll:Z

.field private mIsFirstMove:Z

.field private mMainScrollView:Landroid/view/View;

.field private mMainScrollViewTop:I

.field private mNeedUseMultiTouch:Z

.field private mPrevScrolledY:I

.field private mPrevScrolledYChildView:Landroid/view/View;

.field private mScreenRect:Landroid/graphics/Rect;

.field private mTempLoc:[I

.field private mTmpPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

.field private mTmpPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

.field private mTotalScrollDistance:I

.field private mTouchY:I

.field private mVerticalEdge:I

.field private mVerticalScrollBarEnabled:Z


# direct methods
.method static synthetic -get0(Lmiui/util/LongScreenshotUtils$ContentPort;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -wrap0(Lmiui/util/LongScreenshotUtils$ContentPort;)V
    .locals 0

    invoke-direct {p0}, Lmiui/util/LongScreenshotUtils$ContentPort;->broadcastCallback()V

    return-void
.end method

.method static synthetic -wrap1(Lmiui/util/LongScreenshotUtils$ContentPort;)V
    .locals 0

    invoke-direct {p0}, Lmiui/util/LongScreenshotUtils$ContentPort;->finish()V

    return-void
.end method

.method static synthetic -wrap2(Lmiui/util/LongScreenshotUtils$ContentPort;)V
    .locals 0

    invoke-direct {p0}, Lmiui/util/LongScreenshotUtils$ContentPort;->scrollView()V

    return-void
.end method

.method static synthetic -wrap3(Lmiui/util/LongScreenshotUtils$ContentPort;)V
    .locals 0

    invoke-direct {p0}, Lmiui/util/LongScreenshotUtils$ContentPort;->start()V

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x2

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mScreenRect:Landroid/graphics/Rect;

    .line 181
    new-instance v1, Lmiui/util/LongScreenshotUtils$ContentPort$H;

    invoke-direct {v1, p0}, Lmiui/util/LongScreenshotUtils$ContentPort$H;-><init>(Lmiui/util/LongScreenshotUtils$ContentPort;)V

    iput-object v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mHandler:Lmiui/util/LongScreenshotUtils$ContentPort$H;

    .line 182
    new-array v1, v3, [I

    iput-object v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTempLoc:[I

    .line 285
    new-array v1, v3, [Landroid/view/MotionEvent$PointerProperties;

    iput-object v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTmpPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    .line 286
    new-array v1, v3, [Landroid/view/MotionEvent$PointerCoords;

    iput-object v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTmpPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 288
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 289
    iget-object v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTmpPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    new-instance v2, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v2}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    aput-object v2, v1, v0

    .line 290
    iget-object v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTmpPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    aget-object v1, v1, v0

    iput v0, v1, Landroid/view/MotionEvent$PointerProperties;->id:I

    .line 291
    iget-object v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTmpPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    new-instance v2, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v2}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v2, v1, v0

    .line 292
    iget-object v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTmpPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v1, v1, v0

    iput v4, v1, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 293
    iget-object v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTmpPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v1, v1, v0

    iput v4, v1, Landroid/view/MotionEvent$PointerCoords;->size:F

    .line 288
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 169
    :cond_0
    return-void
.end method

.method private broadcastCallback()V
    .locals 7

    .prologue
    const/4 v5, 0x1

    .line 324
    iget-object v3, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 325
    iget v3, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTotalScrollDistance:I

    iget-object v4, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    mul-int/lit8 v4, v4, 0x8

    if-lt v3, v4, :cond_2

    const/4 v1, 0x1

    .line 328
    .local v1, "isEnd":Z
    :goto_0
    iget-object v3, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mPrevScrolledYChildView:Landroid/view/View;

    if-eqz v3, :cond_3

    .line 329
    iget v3, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mPrevScrolledY:I

    iget-object v4, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mPrevScrolledYChildView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int v2, v3, v4

    .line 334
    .local v2, "scrolledY":I
    :goto_1
    iget v3, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTotalScrollDistance:I

    add-int/2addr v3, v2

    iput v3, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTotalScrollDistance:I

    .line 336
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "com.miui.util.LongScreenshotUtils.LongScreenshot"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 337
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "IsEnd"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 338
    const-string/jumbo v3, "TopLoc"

    iget v4, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollViewTop:I

    invoke-direct {p0}, Lmiui/util/LongScreenshotUtils$ContentPort;->getScrollViewVisibleHeight()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mVerticalEdge:I

    sub-int/2addr v4, v5

    sub-int/2addr v4, v2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 339
    const-string/jumbo v3, "BottomLoc"

    iget v4, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollViewTop:I

    invoke-direct {p0}, Lmiui/util/LongScreenshotUtils$ContentPort;->getScrollViewVisibleHeight()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mVerticalEdge:I

    sub-int/2addr v4, v5

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 340
    const-string/jumbo v3, "ViewTop"

    iget v4, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollViewTop:I

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 341
    const-string/jumbo v3, "ViewBottom"

    iget v4, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollViewTop:I

    invoke-direct {p0}, Lmiui/util/LongScreenshotUtils$ContentPort;->getScrollViewVisibleHeight()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 342
    iget-object v3, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 344
    if-eqz v1, :cond_0

    .line 345
    iget-object v3, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mHandler:Lmiui/util/LongScreenshotUtils$ContentPort$H;

    const-wide/16 v4, 0x1f4

    const/4 v6, 0x4

    invoke-virtual {v3, v6, v4, v5}, Lmiui/util/LongScreenshotUtils$ContentPort$H;->sendEmptyMessageDelayed(IJ)Z

    .line 323
    :cond_0
    return-void

    .line 324
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "isEnd":Z
    .end local v2    # "scrolledY":I
    :cond_1
    const/4 v1, 0x1

    .restart local v1    # "isEnd":Z
    goto :goto_0

    .line 325
    .end local v1    # "isEnd":Z
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "isEnd":Z
    goto :goto_0

    .line 331
    :cond_3
    iget-object v3, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    iget-object v4, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTempLoc:[I

    invoke-virtual {v3, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 332
    iget-object v3, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getScrollY()I

    move-result v3

    iget-object v4, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTempLoc:[I

    aget v4, v4, v5

    sub-int/2addr v3, v4

    iget v4, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mPrevScrolledY:I

    sub-int v2, v3, v4

    .restart local v2    # "scrolledY":I
    goto :goto_1
.end method

.method private checkIsMainScrollView(Landroid/view/View;)Z
    .locals 11
    .param p1, "currView"    # Landroid/view/View;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 433
    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {p1, v4}, Landroid/view/View;->canScrollVertically(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-nez v4, :cond_0

    return v9

    .line 434
    :catch_0
    move-exception v0

    .line 435
    .local v0, "ex":Ljava/lang/Exception;
    const-string/jumbo v4, "LongScreenshotUtils"

    const-string/jumbo v5, ""

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 436
    return v9

    .line 439
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_0
    iget-object v4, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/lit8 v2, v4, 0x3

    .line 440
    .local v2, "minWidth":I
    iget-object v4, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/lit8 v1, v4, 0x2

    .line 441
    .local v1, "halfScreenHeight":I
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    if-lt v4, v2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    if-ge v4, v1, :cond_2

    .line 442
    :cond_1
    return v9

    .line 445
    :cond_2
    iget-object v4, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTempLoc:[I

    invoke-virtual {p1, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 446
    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mScreenRect:Landroid/graphics/Rect;

    invoke-direct {v3, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 447
    .local v3, "rect":Landroid/graphics/Rect;
    iget-object v4, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTempLoc:[I

    aget v4, v4, v9

    iget-object v5, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTempLoc:[I

    aget v5, v5, v10

    .line 448
    iget-object v6, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTempLoc:[I

    aget v6, v6, v9

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int/2addr v6, v7

    iget-object v7, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTempLoc:[I

    aget v7, v7, v10

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int/2addr v7, v8

    .line 447
    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 449
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-ge v4, v2, :cond_4

    .line 450
    :cond_3
    return v9

    .line 449
    :cond_4
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-lt v4, v1, :cond_3

    .line 453
    iget-object v4, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTempLoc:[I

    aget v4, v4, v10

    iput v4, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollViewTop:I

    .line 454
    iget v4, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollViewTop:I

    invoke-static {p1, v4}, Lmiui/util/LongScreenshotUtils$ContentPort;->findVisibleTop(Landroid/view/View;I)I

    move-result v4

    iput v4, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollViewTop:I

    .line 455
    return v10
.end method

.method private checkIsMayHasBg()Z
    .locals 3

    .prologue
    .line 350
    iget-object v2, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 351
    .local v1, "pkgName":Ljava/lang/String;
    iget-object v2, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 352
    .local v0, "mainClsName":Ljava/lang/String;
    const-string/jumbo v2, "com.miui.notes"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 353
    const-string/jumbo v2, "com.miui.notes.editor.RichEditView$RichEditScrollView"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 352
    if-nez v2, :cond_2

    .line 354
    :cond_0
    const-string/jumbo v2, "com.tencent.mobileqq"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 355
    const-string/jumbo v2, "com.tencent.mobileqq.bubble.ChatXListView"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 352
    if-nez v2, :cond_2

    .line 356
    :cond_1
    const-string/jumbo v2, "com.tencent.mm"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 357
    iget-object v2, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    instance-of v2, v2, Landroid/widget/ListView;

    .line 352
    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    .line 356
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private checkNeedFakeTouchForScroll()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 361
    iget-object v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/AbsListView;

    if-nez v0, :cond_0

    .line 362
    iget-object v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/ScrollView;

    .line 361
    if-nez v0, :cond_0

    .line 363
    iget-object v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lmiui/util/LongScreenshotUtils$ContentPort;->isRecyclerView(Ljava/lang/Class;)Z

    move-result v0

    .line 361
    if-nez v0, :cond_0

    .line 364
    iget-object v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lmiui/util/LongScreenshotUtils$ContentPort;->isNestedScrollView(Ljava/lang/Class;)Z

    move-result v0

    .line 361
    if-eqz v0, :cond_1

    .line 365
    :cond_0
    return v2

    .line 367
    :cond_1
    iget-object v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/AbsoluteLayout;

    if-eqz v0, :cond_3

    .line 368
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-le v0, v1, :cond_2

    .line 369
    const-string/jumbo v0, "com.ucmobile"

    iget-object v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 368
    if-nez v0, :cond_2

    .line 370
    const-string/jumbo v0, "com.eg.android.AlipayGphone"

    iget-object v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 367
    if-eqz v0, :cond_3

    .line 371
    :cond_2
    return v2

    .line 373
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method private dispatchFakeTouchEvent(I)V
    .locals 19
    .param p1, "action"    # I

    .prologue
    .line 298
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTmpPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x0

    iput v3, v2, Landroid/view/MotionEvent$PointerProperties;->id:I

    .line 299
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTmpPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iput v3, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 300
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTmpPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTouchY:I

    int-to-float v3, v3

    iput v3, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 301
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 302
    move-object/from16 v0, p0

    iget-object v8, v0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTmpPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    .line 303
    move-object/from16 v0, p0

    iget-object v9, v0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTmpPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 302
    const/4 v7, 0x1

    .line 303
    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 304
    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v6, p1

    .line 301
    invoke-static/range {v2 .. v17}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v18

    .line 305
    .local v18, "event":Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 306
    invoke-virtual/range {v18 .. v18}, Landroid/view/MotionEvent;->recycle()V

    .line 297
    return-void
.end method

.method private dispatchMoveAndReset(I)V
    .locals 4
    .param p1, "distance"    # I

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 310
    iget-boolean v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mIsFirstMove:Z

    if-eqz v0, :cond_0

    .line 311
    iget v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTouchY:I

    sub-int/2addr v0, p1

    iput v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTouchY:I

    .line 312
    invoke-direct {p0, v3}, Lmiui/util/LongScreenshotUtils$ContentPort;->dispatchFakeTouchEvent(I)V

    .line 313
    iput-boolean v2, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mIsFirstMove:Z

    .line 309
    :goto_0
    return-void

    .line 315
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lmiui/util/LongScreenshotUtils$ContentPort;->dispatchFakeTouchEvent(I)V

    .line 316
    invoke-direct {p0}, Lmiui/util/LongScreenshotUtils$ContentPort;->getScrollViewVisibleHeight()I

    move-result v0

    iget v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mVerticalEdge:I

    sub-int/2addr v0, v1

    iput v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTouchY:I

    .line 317
    invoke-direct {p0, v2}, Lmiui/util/LongScreenshotUtils$ContentPort;->dispatchFakeTouchEvent(I)V

    .line 318
    iget v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTouchY:I

    sub-int/2addr v0, p1

    iput v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTouchY:I

    .line 319
    invoke-direct {p0, v3}, Lmiui/util/LongScreenshotUtils$ContentPort;->dispatchFakeTouchEvent(I)V

    goto :goto_0
.end method

.method private findMainScrollView()Landroid/view/View;
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 398
    invoke-static {}, Lmiui/util/LongScreenshotUtils$ContentPort;->getTopActivity()Landroid/app/Activity;

    move-result-object v0

    .line 399
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 400
    iget-object v2, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 401
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 400
    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 402
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 403
    .local v1, "decorView":Landroid/view/View;
    invoke-direct {p0, v1}, Lmiui/util/LongScreenshotUtils$ContentPort;->findScrollView(Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    return-object v2

    .line 405
    .end local v1    # "decorView":Landroid/view/View;
    :cond_0
    const-string/jumbo v2, "LongScreenshotUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Get top activity in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " failed."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    return-object v6
.end method

.method private findScrollView(Landroid/view/View;)Landroid/view/View;
    .locals 5
    .param p1, "currView"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 411
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_1

    .line 412
    :cond_0
    return-object v4

    .line 414
    :cond_1
    instance-of v3, p1, Landroid/view/ViewGroup;

    if-eqz v3, :cond_3

    move-object v0, p1

    .line 415
    check-cast v0, Landroid/view/ViewGroup;

    .line 416
    .local v0, "group":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_3

    .line 417
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3}, Lmiui/util/LongScreenshotUtils$ContentPort;->findScrollView(Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    .line 418
    .local v2, "result":Landroid/view/View;
    if-eqz v2, :cond_2

    .line 419
    return-object v2

    .line 416
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 424
    .end local v0    # "group":Landroid/view/ViewGroup;
    .end local v1    # "i":I
    .end local v2    # "result":Landroid/view/View;
    :cond_3
    invoke-direct {p0, p1}, Lmiui/util/LongScreenshotUtils$ContentPort;->checkIsMainScrollView(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 425
    return-object p1

    .line 428
    :cond_4
    return-object v4
.end method

.method private static findVisibleTop(Landroid/view/View;I)I
    .locals 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "absTop"    # I

    .prologue
    const/4 v2, 0x0

    .line 459
    const/4 v0, 0x0

    .line 461
    .local v0, "offset":I
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v1

    add-int/2addr v0, v1

    .line 462
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/View;

    if-eqz v1, :cond_0

    .line 463
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    .end local p0    # "view":Landroid/view/View;
    check-cast p0, Landroid/view/View;

    .restart local p0    # "view":Landroid/view/View;
    goto :goto_0

    .line 468
    :cond_0
    if-gez v0, :cond_1

    .line 469
    sub-int/2addr p1, v0

    .line 471
    :cond_1
    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    return v1
.end method

.method private finish()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 272
    iget-object v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 274
    :cond_0
    iget-object v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mHandler:Lmiui/util/LongScreenshotUtils$ContentPort$H;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lmiui/util/LongScreenshotUtils$ContentPort$H;->removeMessages(I)V

    .line 275
    iget-object v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    iget-boolean v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mVerticalScrollBarEnabled:Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 277
    iget-boolean v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mIsFakeTouchForScroll:Z

    if-eqz v0, :cond_1

    .line 278
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lmiui/util/LongScreenshotUtils$ContentPort;->dispatchFakeTouchEvent(I)V

    .line 281
    :cond_1
    iput-object v2, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    .line 282
    iput-object v2, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mPrevScrolledYChildView:Landroid/view/View;

    .line 271
    return-void
.end method

.method private getExpectScrollDistance()I
    .locals 4

    .prologue
    .line 481
    invoke-direct {p0}, Lmiui/util/LongScreenshotUtils$ContentPort;->getScrollViewVisibleHeight()I

    move-result v2

    iget v3, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mVerticalEdge:I

    mul-int/lit8 v3, v3, 0x2

    sub-int v0, v2, v3

    .line 482
    .local v0, "h":I
    invoke-direct {p0}, Lmiui/util/LongScreenshotUtils$ContentPort;->isTencentApp()Z

    move-result v1

    .line 483
    .local v1, "isTencentApp":Z
    if-eqz v1, :cond_0

    .line 485
    iget-object v2, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    instance-of v2, v2, Landroid/widget/AbsoluteLayout;

    if-eqz v2, :cond_0

    .line 486
    div-int/lit8 v0, v0, 0x2

    .line 489
    :cond_0
    return v0
.end method

.method private getScrollViewVisibleHeight()I
    .locals 3

    .prologue
    .line 551
    iget-object v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 552
    .local v0, "height":I
    iget v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollViewTop:I

    add-int/2addr v1, v0

    iget-object v2, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-gt v1, v2, :cond_0

    .line 553
    return v0

    .line 555
    :cond_0
    iget-object v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget v2, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollViewTop:I

    sub-int/2addr v1, v2

    return v1
.end method

.method private static getTopActivity()Landroid/app/Activity;
    .locals 10

    .prologue
    .line 377
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v3

    .line 379
    .local v3, "activityThread":Landroid/app/ActivityThread;
    :try_start_0
    const-class v8, Landroid/app/ActivityThread;

    const-string/jumbo v9, "mActivities"

    invoke-virtual {v8, v9}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 380
    .local v5, "field":Ljava/lang/reflect/Field;
    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 381
    invoke-virtual {v5, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/ArrayMap;

    .line 382
    .local v7, "map":Landroid/util/ArrayMap;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v8

    if-ge v6, v8, :cond_1

    .line 383
    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    .line 384
    .local v1, "activityClientRecord":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    const-string/jumbo v9, "activity"

    invoke-virtual {v8, v9}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 385
    .local v2, "activityField":Ljava/lang/reflect/Field;
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 386
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 387
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->isResumed()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-eqz v8, :cond_0

    .line 388
    return-object v0

    .line 382
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 391
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v1    # "activityClientRecord":Ljava/lang/Object;
    .end local v2    # "activityField":Ljava/lang/reflect/Field;
    .end local v5    # "field":Ljava/lang/reflect/Field;
    .end local v6    # "i":I
    .end local v7    # "map":Landroid/util/ArrayMap;
    :catch_0
    move-exception v4

    .line 392
    .local v4, "ex":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 394
    .end local v4    # "ex":Ljava/lang/Exception;
    :cond_1
    const/4 v8, 0x0

    return-object v8
.end method

.method private isNestedScrollView(Ljava/lang/Class;)Z
    .locals 2
    .param p1, "cls"    # Ljava/lang/Class;

    .prologue
    .line 498
    const-string/jumbo v0, "android.support.v4.widget.NestedScrollView"

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 499
    const/4 v0, 0x1

    return v0

    .line 501
    :cond_0
    const-class v0, Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 502
    const/4 v0, 0x0

    return v0

    .line 504
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lmiui/util/LongScreenshotUtils$ContentPort;->isNestedScrollView(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method private isRecyclerView(Ljava/lang/Class;)Z
    .locals 2
    .param p1, "cls"    # Ljava/lang/Class;

    .prologue
    .line 508
    const-string/jumbo v0, "android.support.v7.widget.RecyclerView"

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 509
    const/4 v0, 0x1

    return v0

    .line 511
    :cond_0
    const-class v0, Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 512
    const/4 v0, 0x0

    return v0

    .line 514
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lmiui/util/LongScreenshotUtils$ContentPort;->isRecyclerView(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method private isTencentApp()Z
    .locals 2

    .prologue
    .line 493
    iget-object v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 494
    .local v0, "pkgName":Ljava/lang/String;
    const-string/jumbo v1, "com.tencent."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private scrollView()V
    .locals 2

    .prologue
    .line 475
    iget-object v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 476
    iget-object v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    invoke-direct {p0}, Lmiui/util/LongScreenshotUtils$ContentPort;->getExpectScrollDistance()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lmiui/util/LongScreenshotUtils$ContentPort;->scrollY(Landroid/view/View;I)V

    .line 474
    :cond_0
    return-void
.end method

.method private scrollY(Landroid/view/View;I)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "distance"    # I

    .prologue
    const/4 v4, 0x0

    .line 518
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 519
    instance-of v1, p1, Landroid/widget/ScrollView;

    if-eqz v1, :cond_1

    .line 528
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mPrevScrolledYChildView:Landroid/view/View;

    .line 529
    iget-object v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTempLoc:[I

    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 530
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v1

    iget-object v2, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTempLoc:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    sub-int/2addr v1, v2

    iput v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mPrevScrolledY:I

    .line 533
    :goto_0
    iget-boolean v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mIsFakeTouchForScroll:Z

    if-eqz v1, :cond_3

    .line 534
    iget-boolean v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mNeedUseMultiTouch:Z

    if-eqz v1, :cond_2

    .line 535
    invoke-direct {p0, p2}, Lmiui/util/LongScreenshotUtils$ContentPort;->dispatchMoveAndReset(I)V

    .line 517
    .end local p1    # "view":Landroid/view/View;
    :goto_1
    return-void

    .line 520
    .restart local p1    # "view":Landroid/view/View;
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p0, v1}, Lmiui/util/LongScreenshotUtils$ContentPort;->isNestedScrollView(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 521
    instance-of v1, p1, Landroid/webkit/WebView;

    if-nez v1, :cond_0

    .line 522
    instance-of v1, p1, Landroid/widget/AbsoluteLayout;

    if-nez v1, :cond_0

    move-object v1, p1

    .line 523
    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    move-object v0, p1

    .line 524
    check-cast v0, Landroid/view/ViewGroup;

    .line 525
    .local v0, "viewGroup":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mPrevScrolledYChildView:Landroid/view/View;

    .line 526
    iget-object v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mPrevScrolledYChildView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    iput v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mPrevScrolledY:I

    goto :goto_0

    .line 537
    .end local v0    # "viewGroup":Landroid/view/ViewGroup;
    :cond_2
    iget v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTouchY:I

    sub-int/2addr v1, p2

    iput v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTouchY:I

    .line 538
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lmiui/util/LongScreenshotUtils$ContentPort;->dispatchFakeTouchEvent(I)V

    goto :goto_1

    .line 541
    :cond_3
    instance-of v1, p1, Landroid/widget/AbsListView;

    if-eqz v1, :cond_4

    .line 542
    check-cast p1, Landroid/widget/AbsListView;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1, p2}, Landroid/widget/AbsListView;->scrollListBy(I)V

    goto :goto_1

    .line 545
    .restart local p1    # "view":Landroid/view/View;
    :cond_4
    invoke-virtual {p1, v4, p2}, Landroid/view/View;->scrollBy(II)V

    goto :goto_1
.end method

.method private start()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 253
    iput v2, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTotalScrollDistance:I

    .line 254
    invoke-direct {p0}, Lmiui/util/LongScreenshotUtils$ContentPort;->getScrollViewVisibleHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x5

    iput v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mVerticalEdge:I

    .line 255
    iget-object v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isVerticalScrollBarEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mVerticalScrollBarEnabled:Z

    .line 256
    invoke-direct {p0}, Lmiui/util/LongScreenshotUtils$ContentPort;->checkNeedFakeTouchForScroll()Z

    move-result v0

    iput-boolean v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mIsFakeTouchForScroll:Z

    .line 258
    iget-boolean v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mIsFakeTouchForScroll:Z

    if-eqz v0, :cond_0

    .line 260
    invoke-direct {p0}, Lmiui/util/LongScreenshotUtils$ContentPort;->isTencentApp()Z

    move-result v0

    iput-boolean v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mNeedUseMultiTouch:Z

    .line 262
    invoke-direct {p0}, Lmiui/util/LongScreenshotUtils$ContentPort;->getScrollViewVisibleHeight()I

    move-result v0

    iget v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mVerticalEdge:I

    sub-int/2addr v0, v1

    iput v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTouchY:I

    .line 263
    invoke-direct {p0, v2}, Lmiui/util/LongScreenshotUtils$ContentPort;->dispatchFakeTouchEvent(I)V

    .line 264
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mIsFirstMove:Z

    .line 267
    :cond_0
    iget-object v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 268
    iget-object v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mHandler:Lmiui/util/LongScreenshotUtils$ContentPort$H;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lmiui/util/LongScreenshotUtils$ContentPort$H;->sendEmptyMessage(I)Z

    .line 252
    return-void
.end method


# virtual methods
.method public longScreenshot(I)Z
    .locals 4
    .param p1, "cmd"    # I

    .prologue
    const/4 v3, 0x1

    .line 220
    packed-switch p1, :pswitch_data_0

    .line 249
    :goto_0
    return v3

    .line 223
    :pswitch_0
    invoke-direct {p0}, Lmiui/util/LongScreenshotUtils$ContentPort;->findMainScrollView()Landroid/view/View;

    move-result-object v0

    .line 225
    .local v0, "mainScrollView":Landroid/view/View;
    if-nez v0, :cond_0

    .line 226
    const/4 v1, 0x0

    return v1

    .line 229
    :cond_0
    if-ne p1, v3, :cond_1

    .line 230
    return v3

    .line 233
    :cond_1
    iput-object v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    .line 234
    iget-object v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mHandler:Lmiui/util/LongScreenshotUtils$ContentPort$H;

    invoke-virtual {v1, v3}, Lmiui/util/LongScreenshotUtils$ContentPort$H;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 239
    .end local v0    # "mainScrollView":Landroid/view/View;
    :pswitch_1
    iget-object v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mHandler:Lmiui/util/LongScreenshotUtils$ContentPort$H;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lmiui/util/LongScreenshotUtils$ContentPort$H;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 244
    :pswitch_2
    iget-object v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mHandler:Lmiui/util/LongScreenshotUtils$ContentPort$H;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lmiui/util/LongScreenshotUtils$ContentPort$H;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 220
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
