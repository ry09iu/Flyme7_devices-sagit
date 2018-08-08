.class public Lcom/android/server/am/PKTopWindowViewFactory;
.super Ljava/lang/Object;
.source "PKTopWindowViewFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/PKTopWindowViewFactory$ADWebView;,
        Lcom/android/server/am/PKTopWindowViewFactory$FirstWindow;,
        Lcom/android/server/am/PKTopWindowViewFactory$Preview;,
        Lcom/android/server/am/PKTopWindowViewFactory$SecondWindow;
    }
.end annotation


# static fields
.field public static final AD:Ljava/lang/String; = "\u5e7f\u544a"

.field public static final PKLOGO_SCALE:D = 0.15625

.field public static final SKIP:Ljava/lang/String; = "\u8df3\u8fc7"

.field public static final SPE_HEIGHT:I = 0x780

.field public static final SPE_WIDTH:I = 0x438

.field private static final TAG:Ljava/lang/String; = "PKTopWindowViewFactory"

.field public static final TAG_PREVIEW_IMAGEVIEW:Ljava/lang/String; = "preview:imageview"

.field public static final TAG_PREVIEW_LOGOAPP:Ljava/lang/String; = "preview:logoapp"

.field public static final TAG_PREVIEW_LOGOICON:Ljava/lang/String; = "preview:logoicon"


# instance fields
.field private largeAspectRatio:Z

.field private mContext:Landroid/content/Context;

.field private screenHeightPx:I

.field private screenWidthPx:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/android/server/am/PKTopWindowViewFactory;->mContext:Landroid/content/Context;

    .line 60
    iget-object v5, p0, Lcom/android/server/am/PKTopWindowViewFactory;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "window"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    .line 61
    .local v4, "wm":Landroid/view/WindowManager;
    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 62
    .local v0, "display":Landroid/view/Display;
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 63
    .local v2, "point":Landroid/graphics/Point;
    invoke-virtual {v0, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 64
    iget v5, v2, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    iget v6, v2, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    div-float v3, v5, v6

    .line 65
    .local v3, "scale":F
    const v5, 0x3fe66666    # 1.8f

    cmpl-float v5, v3, v5

    if-ltz v5, :cond_0

    const/4 v5, 0x1

    :goto_0
    iput-boolean v5, p0, Lcom/android/server/am/PKTopWindowViewFactory;->largeAspectRatio:Z

    .line 66
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 67
    .local v1, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 68
    iget v5, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v5, p0, Lcom/android/server/am/PKTopWindowViewFactory;->screenWidthPx:I

    .line 70
    iget v5, v2, Landroid/graphics/Point;->y:I

    iput v5, p0, Lcom/android/server/am/PKTopWindowViewFactory;->screenHeightPx:I

    .line 58
    return-void

    .line 65
    .end local v1    # "dm":Landroid/util/DisplayMetrics;
    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private createText(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v8, 0x0

    const/4 v10, 0x2

    const/4 v9, 0x1

    .line 364
    const/16 v7, 0xe

    invoke-static {p1, v7}, Lcom/android/server/am/PKTopWindowUtils;->dp2px(Landroid/content/Context;I)I

    move-result v7

    int-to-float v5, v7

    .line 365
    .local v5, "outerRadiiPx":F
    const/16 v7, 0xe

    invoke-static {p1, v7}, Lcom/android/server/am/PKTopWindowUtils;->dp2px(Landroid/content/Context;I)I

    move-result v7

    int-to-float v2, v7

    .line 367
    .local v2, "innerRadiiPx":F
    const/16 v7, 0x8

    new-array v4, v7, [F

    aput v5, v4, v8

    aput v5, v4, v9

    aput v5, v4, v10

    aput v5, v4, v11

    aput v5, v4, v12

    const/4 v7, 0x5

    aput v5, v4, v7

    const/4 v7, 0x6

    aput v5, v4, v7

    const/4 v7, 0x7

    aput v5, v4, v7

    .line 369
    .local v4, "outerRadii":[F
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, v2, v2, v2, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 371
    .local v3, "inset":Landroid/graphics/RectF;
    const/16 v7, 0x8

    new-array v1, v7, [F

    aput v2, v1, v8

    aput v2, v1, v9

    aput v2, v1, v10

    aput v2, v1, v11

    aput v2, v1, v12

    const/4 v7, 0x5

    aput v2, v1, v7

    const/4 v7, 0x6

    aput v2, v1, v7

    const/4 v7, 0x7

    aput v2, v1, v7

    .line 372
    .local v1, "innerRadii":[F
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v7, Landroid/graphics/drawable/shapes/RoundRectShape;

    const/4 v8, 0x0

    invoke-direct {v7, v4, v8, v1}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    invoke-direct {v0, v7}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 373
    .local v0, "drawable":Landroid/graphics/drawable/ShapeDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v7

    const-string/jumbo v8, "#ff000000"

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 374
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 375
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v7

    const/16 v8, 0x50

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 376
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v7

    sget-object v8, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 378
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 379
    .local v6, "tv":Landroid/widget/TextView;
    invoke-virtual {v6, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 380
    const/16 v7, 0x11

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 381
    const-string/jumbo v7, "#ffffff"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 382
    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 383
    const/high16 v7, 0x41200000    # 10.0f

    invoke-virtual {v6, v10, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 384
    return-object v6
.end method


# virtual methods
.method public createADText()Ljava/util/List;
    .locals 7

    .prologue
    .line 187
    iget-object v4, p0, Lcom/android/server/am/PKTopWindowViewFactory;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/server/am/PKTopWindowUtils;->getStatusHeight(Landroid/content/Context;)I

    move-result v3

    .line 188
    .local v3, "statusBarHeight":I
    iget-object v4, p0, Lcom/android/server/am/PKTopWindowViewFactory;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "\u5e7f\u544a"

    invoke-direct {p0, v4, v5}, Lcom/android/server/am/PKTopWindowViewFactory;->createText(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    .line 189
    .local v1, "adText":Landroid/widget/TextView;
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v4, p0, Lcom/android/server/am/PKTopWindowViewFactory;->mContext:Landroid/content/Context;

    const/16 v5, 0x2c

    invoke-static {v4, v5}, Lcom/android/server/am/PKTopWindowUtils;->dp2px(Landroid/content/Context;I)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/am/PKTopWindowViewFactory;->mContext:Landroid/content/Context;

    const/16 v6, 0x1c

    invoke-static {v5, v6}, Lcom/android/server/am/PKTopWindowUtils;->dp2px(Landroid/content/Context;I)I

    move-result v5

    invoke-direct {v0, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 190
    .local v0, "adLp":Landroid/widget/FrameLayout$LayoutParams;
    const v4, 0x800035

    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 191
    iget-object v4, p0, Lcom/android/server/am/PKTopWindowViewFactory;->mContext:Landroid/content/Context;

    const/16 v5, 0x8

    invoke-static {v4, v5}, Lcom/android/server/am/PKTopWindowUtils;->dp2px(Landroid/content/Context;I)I

    move-result v4

    add-int/2addr v4, v3

    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 192
    iget-object v4, p0, Lcom/android/server/am/PKTopWindowViewFactory;->mContext:Landroid/content/Context;

    const/16 v5, 0x10

    invoke-static {v4, v5}, Lcom/android/server/am/PKTopWindowUtils;->dp2px(Landroid/content/Context;I)I

    move-result v4

    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 193
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 194
    .local v2, "list":Ljava/util/List;
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    return-object v2
.end method

.method public createADView()Ljava/util/List;
    .locals 20

    .prologue
    .line 304
    const-wide v16, 0x4072c00000000000L    # 300.0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->round(D)J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-int v12, v0

    .line 305
    .local v12, "pkLogoOriginHeight":I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/am/PKTopWindowViewFactory;->screenHeightPx:I

    int-to-double v0, v15

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x3fc4000000000000L    # 0.15625

    mul-double v16, v16, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->round(D)J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-int v11, v0

    .line 306
    .local v11, "pkLogoHeight":I
    int-to-float v15, v11

    int-to-float v0, v12

    move/from16 v16, v0

    div-float v13, v15, v16

    .line 307
    .local v13, "pkLogoScale":F
    const/high16 v15, 0x44870000    # 1080.0f

    mul-float/2addr v15, v13

    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v14

    .line 309
    .local v14, "pkLogoWidth":I
    rsub-int v7, v12, 0x780

    .line 310
    .local v7, "pkADViewOriginHeight":I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/am/PKTopWindowViewFactory;->screenHeightPx:I

    sub-int v6, v15, v11

    .line 311
    .local v6, "pkADViewHeight":I
    int-to-float v15, v6

    int-to-float v0, v7

    move/from16 v16, v0

    div-float v8, v15, v16

    .line 312
    .local v8, "pkADViewScale":F
    const/high16 v15, 0x44870000    # 1080.0f

    mul-float/2addr v15, v8

    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v9

    .line 314
    .local v9, "pkADViewWidth":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/PKTopWindowViewFactory;->mContext:Landroid/content/Context;

    const/16 v16, 0x30

    invoke-static/range {v15 .. v16}, Lcom/android/server/am/PKTopWindowUtils;->dp2px(Landroid/content/Context;I)I

    move-result v15

    int-to-float v15, v15

    mul-float/2addr v15, v13

    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v10

    .line 317
    .local v10, "pkAppImageSize":I
    new-instance v2, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/PKTopWindowViewFactory;->mContext:Landroid/content/Context;

    invoke-direct {v2, v15}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 318
    .local v2, "adIv":Landroid/widget/ImageView;
    sget-object v15, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v15}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 319
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/am/PKTopWindowViewFactory;->screenWidthPx:I

    if-ge v9, v15, :cond_0

    .line 320
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/am/PKTopWindowViewFactory;->screenWidthPx:I

    int-to-float v15, v15

    int-to-float v0, v9

    move/from16 v16, v0

    div-float v5, v15, v16

    .line 321
    .local v5, "newScale":F
    int-to-float v15, v6

    mul-float/2addr v15, v5

    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 322
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/am/PKTopWindowViewFactory;->screenWidthPx:I

    .line 324
    .end local v5    # "newScale":F
    :cond_0
    new-instance v15, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v15, v9, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v15}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 325
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v9, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 326
    .local v3, "adIvLp":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v15, 0x51

    iput v15, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 327
    iput v11, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 329
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 330
    .local v4, "list":Ljava/util/List;
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 331
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 332
    return-object v4
.end method

.method public createAppIconView()Ljava/util/List;
    .locals 18

    .prologue
    .line 275
    const-wide v14, 0x4072c00000000000L    # 300.0

    invoke-static {v14, v15}, Ljava/lang/Math;->round(D)J

    move-result-wide v14

    long-to-int v11, v14

    .line 276
    .local v11, "pkLogoOriginHeight":I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/am/PKTopWindowViewFactory;->screenHeightPx:I

    int-to-double v14, v14

    const-wide/high16 v16, 0x3fc4000000000000L    # 0.15625

    mul-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->round(D)J

    move-result-wide v14

    long-to-int v10, v14

    .line 277
    .local v10, "pkLogoHeight":I
    int-to-float v14, v10

    int-to-float v15, v11

    div-float v12, v14, v15

    .line 278
    .local v12, "pkLogoScale":F
    const/high16 v14, 0x44870000    # 1080.0f

    mul-float/2addr v14, v12

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v13

    .line 280
    .local v13, "pkLogoWidth":I
    rsub-int v6, v11, 0x780

    .line 281
    .local v6, "pkADViewOriginHeight":I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/am/PKTopWindowViewFactory;->screenHeightPx:I

    sub-int v5, v14, v10

    .line 282
    .local v5, "pkADViewHeight":I
    int-to-float v14, v5

    int-to-float v15, v6

    div-float v7, v14, v15

    .line 283
    .local v7, "pkADViewScale":F
    const/high16 v14, 0x44870000    # 1080.0f

    mul-float/2addr v14, v7

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 285
    .local v8, "pkADViewWidth":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/PKTopWindowViewFactory;->mContext:Landroid/content/Context;

    const/16 v15, 0x30

    invoke-static {v14, v15}, Lcom/android/server/am/PKTopWindowUtils;->dp2px(Landroid/content/Context;I)I

    move-result v14

    int-to-float v14, v14

    mul-float/2addr v14, v12

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v9

    .line 289
    .local v9, "pkAppImageSize":I
    new-instance v3, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/PKTopWindowViewFactory;->mContext:Landroid/content/Context;

    invoke-direct {v3, v14}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 290
    .local v3, "logoIvApp":Landroid/widget/ImageView;
    sget-object v14, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v14}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 291
    new-instance v14, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v14, v9, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v14}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 292
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 293
    .local v4, "logoIvAppLp":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v14, 0x51

    iput v14, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 294
    sub-int v14, v10, v9

    div-int/lit8 v14, v14, 0x2

    int-to-float v14, v14

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v14

    iput v14, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 296
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 297
    .local v2, "list":Ljava/util/List;
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 298
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 299
    return-object v2
.end method

.method public createFirstWindow()Ljava/util/List;
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 158
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7d3

    invoke-direct {v2, v3}, Landroid/view/WindowManager$LayoutParams;-><init>(I)V

    .line 159
    .local v2, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v4, 0x1030328

    or-int/2addr v3, v4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 167
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 168
    iput v6, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 169
    iput v6, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 170
    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 171
    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 172
    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 173
    const/16 v3, 0x11

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 174
    const/4 v3, -0x3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 176
    new-instance v0, Lcom/android/server/am/PKTopWindowViewFactory$FirstWindow;

    iget-object v3, p0, Lcom/android/server/am/PKTopWindowViewFactory;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v3}, Lcom/android/server/am/PKTopWindowViewFactory$FirstWindow;-><init>(Lcom/android/server/am/PKTopWindowViewFactory;Landroid/content/Context;)V

    .line 177
    .local v0, "firstWindow":Lcom/android/server/am/PKTopWindowViewFactory$FirstWindow;
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3}, Lcom/android/server/am/PKTopWindowViewFactory$FirstWindow;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 178
    const-string/jumbo v3, "#ffffffff"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/server/am/PKTopWindowViewFactory$FirstWindow;->setBackgroundColor(I)V

    .line 180
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 181
    .local v1, "list":Ljava/util/List;
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    return-object v1
.end method

.method public createLogoView()Ljava/util/List;
    .locals 18

    .prologue
    .line 337
    const-wide v14, 0x4072c00000000000L    # 300.0

    invoke-static {v14, v15}, Ljava/lang/Math;->round(D)J

    move-result-wide v14

    long-to-int v11, v14

    .line 338
    .local v11, "pkLogoOriginHeight":I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/am/PKTopWindowViewFactory;->screenHeightPx:I

    int-to-double v14, v14

    const-wide/high16 v16, 0x3fc4000000000000L    # 0.15625

    mul-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->round(D)J

    move-result-wide v14

    long-to-int v10, v14

    .line 339
    .local v10, "pkLogoHeight":I
    int-to-float v14, v10

    int-to-float v15, v11

    div-float v12, v14, v15

    .line 340
    .local v12, "pkLogoScale":F
    const/high16 v14, 0x44870000    # 1080.0f

    mul-float/2addr v14, v12

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v13

    .line 342
    .local v13, "pkLogoWidth":I
    rsub-int v6, v11, 0x780

    .line 343
    .local v6, "pkADViewOriginHeight":I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/am/PKTopWindowViewFactory;->screenHeightPx:I

    sub-int v5, v14, v10

    .line 344
    .local v5, "pkADViewHeight":I
    int-to-float v14, v5

    int-to-float v15, v6

    div-float v7, v14, v15

    .line 345
    .local v7, "pkADViewScale":F
    const/high16 v14, 0x44870000    # 1080.0f

    mul-float/2addr v14, v7

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 347
    .local v8, "pkADViewWidth":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/PKTopWindowViewFactory;->mContext:Landroid/content/Context;

    const/16 v15, 0x30

    invoke-static {v14, v15}, Lcom/android/server/am/PKTopWindowUtils;->dp2px(Landroid/content/Context;I)I

    move-result v14

    int-to-float v14, v14

    mul-float/2addr v14, v12

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v9

    .line 350
    .local v9, "pkAppImageSize":I
    new-instance v3, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/PKTopWindowViewFactory;->mContext:Landroid/content/Context;

    invoke-direct {v3, v14}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 351
    .local v3, "logoIvIcon":Landroid/widget/ImageView;
    sget-object v14, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v14}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 352
    new-instance v14, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v14, v13, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v14}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 354
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v13, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 355
    .local v4, "logoIvIconLp":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v14, 0x51

    iput v14, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 357
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 358
    .local v2, "list":Ljava/util/List;
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 359
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 360
    return-object v2
.end method

.method public createPreview()Ljava/util/List;
    .locals 24

    .prologue
    .line 74
    new-instance v9, Landroid/view/WindowManager$LayoutParams;

    const/16 v20, 0x7d3

    move/from16 v0, v20

    invoke-direct {v9, v0}, Landroid/view/WindowManager$LayoutParams;-><init>(I)V

    .line 75
    .local v9, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v0, v9, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v20, v0

    const v21, 0x1030328

    or-int v20, v20, v21

    move/from16 v0, v20

    iput v0, v9, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 83
    iget v0, v9, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    move/from16 v20, v0

    or-int/lit8 v20, v20, 0x2

    move/from16 v0, v20

    iput v0, v9, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 84
    const/16 v20, 0x0

    move/from16 v0, v20

    iput v0, v9, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 85
    const/16 v20, 0x0

    move/from16 v0, v20

    iput v0, v9, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 86
    const/16 v20, -0x1

    move/from16 v0, v20

    iput v0, v9, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 87
    const/16 v20, -0x1

    move/from16 v0, v20

    iput v0, v9, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 88
    const/high16 v20, 0x3f800000    # 1.0f

    move/from16 v0, v20

    iput v0, v9, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 89
    const/16 v20, 0x11

    move/from16 v0, v20

    iput v0, v9, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 90
    const/16 v20, -0x3

    move/from16 v0, v20

    iput v0, v9, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 92
    new-instance v19, Lcom/android/server/am/PKTopWindowViewFactory$Preview;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/PKTopWindowViewFactory;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/PKTopWindowViewFactory$Preview;-><init>(Lcom/android/server/am/PKTopWindowViewFactory;Landroid/content/Context;)V

    .line 93
    .local v19, "preview":Lcom/android/server/am/PKTopWindowViewFactory$Preview;
    new-instance v20, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v21, -0x1

    const/16 v22, -0x1

    invoke-direct/range {v20 .. v22}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual/range {v19 .. v20}, Lcom/android/server/am/PKTopWindowViewFactory$Preview;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    const-string/jumbo v20, "#ffffffff"

    invoke-static/range {v20 .. v20}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Lcom/android/server/am/PKTopWindowViewFactory$Preview;->setBackgroundColor(I)V

    .line 109
    const-wide v20, 0x4072c00000000000L    # 300.0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->round(D)J

    move-result-wide v20

    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v16, v0

    .line 110
    .local v16, "pkLogoOriginHeight":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/PKTopWindowViewFactory;->screenHeightPx:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    const-wide/high16 v22, 0x3fc4000000000000L    # 0.15625

    mul-double v20, v20, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->round(D)J

    move-result-wide v20

    move-wide/from16 v0, v20

    long-to-int v15, v0

    .line 111
    .local v15, "pkLogoHeight":I
    int-to-float v0, v15

    move/from16 v20, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v17, v20, v21

    .line 112
    .local v17, "pkLogoScale":F
    const/high16 v20, 0x44870000    # 1080.0f

    mul-float v20, v20, v17

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->round(F)I

    move-result v18

    .line 114
    .local v18, "pkLogoWidth":I
    move/from16 v0, v16

    rsub-int v11, v0, 0x780

    .line 115
    .local v11, "pkADViewOriginHeight":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/PKTopWindowViewFactory;->screenHeightPx:I

    move/from16 v20, v0

    sub-int v10, v20, v15

    .line 116
    .local v10, "pkADViewHeight":I
    int-to-float v0, v10

    move/from16 v20, v0

    int-to-float v0, v11

    move/from16 v21, v0

    div-float v12, v20, v21

    .line 117
    .local v12, "pkADViewScale":F
    const/high16 v20, 0x44870000    # 1080.0f

    mul-float v20, v20, v12

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->round(F)I

    move-result v13

    .line 119
    .local v13, "pkADViewWidth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/PKTopWindowViewFactory;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const/16 v21, 0x30

    invoke-static/range {v20 .. v21}, Lcom/android/server/am/PKTopWindowUtils;->dp2px(Landroid/content/Context;I)I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v20, v20, v17

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->round(F)I

    move-result v14

    .line 121
    .local v14, "pkAppImageSize":I
    const-string/jumbo v20, "PKTopWindowViewFactory"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "screenHeightPx: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/PKTopWindowViewFactory;->screenHeightPx:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/server/am/PKTopWindowConfig$Log;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const-string/jumbo v20, "PKTopWindowViewFactory"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "pkLogoOriginHeight: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, ", pkLogoHeight: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, ", pkLogoWidth: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, ", pkLogoScale: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/server/am/PKTopWindowConfig$Log;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const-string/jumbo v20, "PKTopWindowViewFactory"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "pkADViewOriginHeight: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, ", pkADViewHeight: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, ", pkADViewWidth: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, ", pkADViewScale: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/server/am/PKTopWindowConfig$Log;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    new-instance v7, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/PKTopWindowViewFactory;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-direct {v7, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 134
    .local v7, "logoIvIcon":Landroid/widget/ImageView;
    sget-object v20, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 135
    const-string/jumbo v20, "preview:logoicon"

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 136
    new-instance v20, Landroid/view/ViewGroup$LayoutParams;

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-direct {v0, v1, v15}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 137
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    move/from16 v0, v18

    invoke-direct {v8, v0, v15}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 138
    .local v8, "logoIvIconLp":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v20, 0x51

    move/from16 v0, v20

    iput v0, v8, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 139
    move-object/from16 v0, v19

    invoke-virtual {v0, v7, v8}, Lcom/android/server/am/PKTopWindowViewFactory$Preview;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 142
    new-instance v5, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/PKTopWindowViewFactory;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-direct {v5, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 143
    .local v5, "logoIvApp":Landroid/widget/ImageView;
    sget-object v20, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 144
    const-string/jumbo v20, "preview:logoapp"

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 145
    new-instance v20, Landroid/view/ViewGroup$LayoutParams;

    move-object/from16 v0, v20

    invoke-direct {v0, v14, v14}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 146
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v6, v14, v14}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 147
    .local v6, "logoIvAppLp":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v20, 0x51

    move/from16 v0, v20

    iput v0, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 148
    sub-int v20, v15, v14

    div-int/lit8 v20, v20, 0x2

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->round(F)I

    move-result v20

    move/from16 v0, v20

    iput v0, v6, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 149
    move-object/from16 v0, v19

    invoke-virtual {v0, v5, v6}, Lcom/android/server/am/PKTopWindowViewFactory$Preview;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 151
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 152
    .local v4, "list":Ljava/util/List;
    move-object/from16 v0, v19

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    return-object v4
.end method

.method public createSecondWindow()Ljava/util/List;
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, -0x1

    const/4 v7, 0x1

    .line 389
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    const/16 v5, 0x7d3

    invoke-direct {v1, v5}, Landroid/view/WindowManager$LayoutParams;-><init>(I)V

    .line 390
    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    const/high16 v5, 0x1000000

    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 391
    iget v5, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v5, v5, 0x2

    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 392
    iput v9, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 393
    iput v9, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 394
    iput v8, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 395
    iput v8, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 396
    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 397
    const/16 v5, 0x11

    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 398
    const/4 v5, -0x3

    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 402
    new-instance v4, Lcom/android/server/am/PKTopWindowViewFactory$ADWebView;

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x17

    if-lt v5, v6, :cond_0

    iget-object v5, p0, Lcom/android/server/am/PKTopWindowViewFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    :goto_0
    invoke-direct {v4, p0, v5}, Lcom/android/server/am/PKTopWindowViewFactory$ADWebView;-><init>(Lcom/android/server/am/PKTopWindowViewFactory;Landroid/content/Context;)V

    .line 403
    .local v4, "webView":Lcom/android/server/am/PKTopWindowViewFactory$ADWebView;
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Lcom/android/server/am/PKTopWindowViewFactory$ADWebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 405
    invoke-virtual {v4}, Lcom/android/server/am/PKTopWindowViewFactory$ADWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    .line 406
    .local v2, "mWebSettings":Landroid/webkit/WebSettings;
    invoke-virtual {v2, v7}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 407
    invoke-virtual {v2, v7}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 416
    sget-object v5, Landroid/webkit/WebSettings$RenderPriority;->HIGH:Landroid/webkit/WebSettings$RenderPriority;

    invoke-virtual {v2, v5}, Landroid/webkit/WebSettings;->setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V

    .line 419
    invoke-virtual {v2, v7}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 422
    invoke-virtual {v2, v7}, Landroid/webkit/WebSettings;->setPluginsEnabled(Z)V

    .line 425
    invoke-virtual {v2, v7}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 426
    invoke-virtual {v2, v7}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 429
    invoke-virtual {v2, v7}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 430
    invoke-virtual {v2, v7}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 431
    invoke-virtual {v2, v9}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 434
    invoke-virtual {v2, v7}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 435
    invoke-virtual {v2, v7}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 436
    invoke-virtual {v2, v7}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 437
    invoke-virtual {v2, v7}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 438
    const-string/jumbo v5, "utf-8"

    invoke-virtual {v2, v5}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 440
    new-instance v3, Lcom/android/server/am/PKTopWindowViewFactory$SecondWindow;

    iget-object v5, p0, Lcom/android/server/am/PKTopWindowViewFactory;->mContext:Landroid/content/Context;

    invoke-direct {v3, p0, v5}, Lcom/android/server/am/PKTopWindowViewFactory$SecondWindow;-><init>(Lcom/android/server/am/PKTopWindowViewFactory;Landroid/content/Context;)V

    .line 441
    .local v3, "secondWindow":Lcom/android/server/am/PKTopWindowViewFactory$SecondWindow;
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v5, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v5}, Lcom/android/server/am/PKTopWindowViewFactory$SecondWindow;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 442
    const-string/jumbo v5, "#ffffffff"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/server/am/PKTopWindowViewFactory$SecondWindow;->setBackgroundColor(I)V

    .line 443
    invoke-virtual {v4}, Lcom/android/server/am/PKTopWindowViewFactory$ADWebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/server/am/PKTopWindowViewFactory$SecondWindow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 445
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 446
    .local v0, "list":Ljava/util/List;
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 447
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 448
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 449
    return-object v0

    .line 402
    .end local v0    # "list":Ljava/util/List;
    .end local v2    # "mWebSettings":Landroid/webkit/WebSettings;
    .end local v3    # "secondWindow":Lcom/android/server/am/PKTopWindowViewFactory$SecondWindow;
    .end local v4    # "webView":Lcom/android/server/am/PKTopWindowViewFactory$ADWebView;
    :cond_0
    iget-object v5, p0, Lcom/android/server/am/PKTopWindowViewFactory;->mContext:Landroid/content/Context;

    goto :goto_0
.end method

.method public createSkipText()Ljava/util/List;
    .locals 10

    .prologue
    const/16 v9, 0x10

    const/16 v8, 0x8

    .line 245
    iget-object v5, p0, Lcom/android/server/am/PKTopWindowViewFactory;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/server/am/PKTopWindowUtils;->getStatusHeight(Landroid/content/Context;)I

    move-result v4

    .line 246
    .local v4, "statusBarHeight":I
    iget-object v5, p0, Lcom/android/server/am/PKTopWindowViewFactory;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "\u8df3\u8fc7"

    invoke-direct {p0, v5, v6}, Lcom/android/server/am/PKTopWindowViewFactory;->createText(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v3

    .line 247
    .local v3, "skipText":Landroid/widget/TextView;
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v5, p0, Lcom/android/server/am/PKTopWindowViewFactory;->mContext:Landroid/content/Context;

    const/16 v6, 0x2c

    invoke-static {v5, v6}, Lcom/android/server/am/PKTopWindowUtils;->dp2px(Landroid/content/Context;I)I

    move-result v5

    iget-object v6, p0, Lcom/android/server/am/PKTopWindowViewFactory;->mContext:Landroid/content/Context;

    const/16 v7, 0x1c

    invoke-static {v6, v7}, Lcom/android/server/am/PKTopWindowUtils;->dp2px(Landroid/content/Context;I)I

    move-result v6

    invoke-direct {v2, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 248
    .local v2, "skipLp":Landroid/widget/FrameLayout$LayoutParams;
    new-instance v5, Ljava/util/Random;

    invoke-direct {v5}, Ljava/util/Random;-><init>()V

    invoke-virtual {v5}, Ljava/util/Random;->nextBoolean()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 249
    const v5, 0x800035

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 250
    iget-object v5, p0, Lcom/android/server/am/PKTopWindowViewFactory;->mContext:Landroid/content/Context;

    invoke-static {v5, v8}, Lcom/android/server/am/PKTopWindowUtils;->dp2px(Landroid/content/Context;I)I

    move-result v5

    add-int/2addr v5, v4

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 251
    iget-object v5, p0, Lcom/android/server/am/PKTopWindowViewFactory;->mContext:Landroid/content/Context;

    invoke-static {v5, v9}, Lcom/android/server/am/PKTopWindowUtils;->dp2px(Landroid/content/Context;I)I

    move-result v5

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 258
    :goto_0
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/IWindowManager;->hasNavigationBar()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_0

    .line 267
    :cond_0
    :goto_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 268
    .local v1, "list":Ljava/util/List;
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    return-object v1

    .line 253
    .end local v1    # "list":Ljava/util/List;
    :cond_1
    const v5, 0x800033

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 254
    iget-object v5, p0, Lcom/android/server/am/PKTopWindowViewFactory;->mContext:Landroid/content/Context;

    invoke-static {v5, v8}, Lcom/android/server/am/PKTopWindowUtils;->dp2px(Landroid/content/Context;I)I

    move-result v5

    add-int/2addr v5, v4

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 255
    iget-object v5, p0, Lcom/android/server/am/PKTopWindowViewFactory;->mContext:Landroid/content/Context;

    invoke-static {v5, v9}, Lcom/android/server/am/PKTopWindowUtils;->dp2px(Landroid/content/Context;I)I

    move-result v5

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_0

    .line 264
    :catch_0
    move-exception v0

    .line 265
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/android/server/am/PKTopWindowConfig$StackTrace;->print(Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public createStaticADText()Ljava/util/List;
    .locals 26

    .prologue
    .line 201
    const-wide v22, 0x4072c00000000000L    # 300.0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->round(D)J

    move-result-wide v22

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v18, v0

    .line 202
    .local v18, "pkLogoOriginHeight":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/PKTopWindowViewFactory;->screenHeightPx:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    const-wide/high16 v24, 0x3fc4000000000000L    # 0.15625

    mul-double v22, v22, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->round(D)J

    move-result-wide v22

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v17, v0

    .line 203
    .local v17, "pkLogoHeight":I
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v22, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v19, v22, v23

    .line 204
    .local v19, "pkLogoScale":F
    const/high16 v22, 0x44870000    # 1080.0f

    mul-float v22, v22, v19

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->round(F)I

    move-result v20

    .line 206
    .local v20, "pkLogoWidth":I
    move/from16 v0, v18

    rsub-int v13, v0, 0x780

    .line 207
    .local v13, "pkADViewOriginHeight":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/PKTopWindowViewFactory;->screenHeightPx:I

    move/from16 v22, v0

    sub-int v12, v22, v17

    .line 208
    .local v12, "pkADViewHeight":I
    int-to-float v0, v12

    move/from16 v22, v0

    int-to-float v0, v13

    move/from16 v23, v0

    div-float v14, v22, v23

    .line 209
    .local v14, "pkADViewScale":F
    const/high16 v22, 0x44870000    # 1080.0f

    mul-float v22, v22, v14

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->round(F)I

    move-result v15

    .line 211
    .local v15, "pkADViewWidth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/PKTopWindowViewFactory;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const/16 v23, 0x30

    invoke-static/range {v22 .. v23}, Lcom/android/server/am/PKTopWindowUtils;->dp2px(Landroid/content/Context;I)I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    mul-float v22, v22, v19

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->round(F)I

    move-result v16

    .line 214
    .local v16, "pkAppImageSize":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/PKTopWindowViewFactory;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-static/range {v22 .. v23}, Lcom/android/server/am/PKTopWindowUtils;->dp2px(Landroid/content/Context;I)I

    move-result v22

    move/from16 v0, v22

    int-to-float v11, v0

    .line 215
    .local v11, "outerRadiiPx":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/PKTopWindowViewFactory;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-static/range {v22 .. v23}, Lcom/android/server/am/PKTopWindowUtils;->dp2px(Landroid/content/Context;I)I

    move-result v22

    move/from16 v0, v22

    int-to-float v7, v0

    .line 217
    .local v7, "innerRadiiPx":F
    const/16 v22, 0x8

    move/from16 v0, v22

    new-array v10, v0, [F

    const/16 v22, 0x0

    aput v11, v10, v22

    const/16 v22, 0x1

    aput v11, v10, v22

    const/16 v22, 0x2

    aput v11, v10, v22

    const/16 v22, 0x3

    aput v11, v10, v22

    const/16 v22, 0x4

    aput v11, v10, v22

    const/16 v22, 0x5

    aput v11, v10, v22

    const/16 v22, 0x6

    aput v11, v10, v22

    const/16 v22, 0x7

    aput v11, v10, v22

    .line 219
    .local v10, "outerRadii":[F
    new-instance v8, Landroid/graphics/RectF;

    invoke-direct {v8, v7, v7, v7, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 221
    .local v8, "inset":Landroid/graphics/RectF;
    const/16 v22, 0x8

    move/from16 v0, v22

    new-array v6, v0, [F

    const/16 v22, 0x0

    aput v7, v6, v22

    const/16 v22, 0x1

    aput v7, v6, v22

    const/16 v22, 0x2

    aput v7, v6, v22

    const/16 v22, 0x3

    aput v7, v6, v22

    const/16 v22, 0x4

    aput v7, v6, v22

    const/16 v22, 0x5

    aput v7, v6, v22

    const/16 v22, 0x6

    aput v7, v6, v22

    const/16 v22, 0x7

    aput v7, v6, v22

    .line 222
    .local v6, "innerRadii":[F
    new-instance v5, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v22, Landroid/graphics/drawable/shapes/RoundRectShape;

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-direct {v0, v10, v1, v6}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    move-object/from16 v0, v22

    invoke-direct {v5, v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 223
    .local v5, "drawable":Landroid/graphics/drawable/ShapeDrawable;
    invoke-virtual {v5}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v22

    const-string/jumbo v23, "#ff000000"

    invoke-static/range {v23 .. v23}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Landroid/graphics/Paint;->setColor(I)V

    .line 224
    invoke-virtual {v5}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v22

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 225
    invoke-virtual {v5}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v22

    const/16 v23, 0x50

    invoke-virtual/range {v22 .. v23}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 226
    invoke-virtual {v5}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v22

    sget-object v23, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v22 .. v23}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 228
    new-instance v21, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/PKTopWindowViewFactory;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-direct/range {v21 .. v22}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 229
    .local v21, "tv":Landroid/widget/TextView;
    const-string/jumbo v22, "\u5e7f\u544a"

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    const/16 v22, 0x11

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setGravity(I)V

    .line 231
    const-string/jumbo v22, "#ffffff"

    invoke-static/range {v22 .. v22}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setTextColor(I)V

    .line 232
    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 233
    const/high16 v22, 0x40c00000    # 6.0f

    const/16 v23, 0x2

    move-object/from16 v0, v21

    move/from16 v1, v23

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 235
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/PKTopWindowViewFactory;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const/16 v23, 0x12

    invoke-static/range {v22 .. v23}, Lcom/android/server/am/PKTopWindowUtils;->dp2px(Landroid/content/Context;I)I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/PKTopWindowViewFactory;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    const/16 v24, 0xa

    invoke-static/range {v23 .. v24}, Lcom/android/server/am/PKTopWindowUtils;->dp2px(Landroid/content/Context;I)I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-direct {v4, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 236
    .local v4, "adLp":Landroid/widget/FrameLayout$LayoutParams;
    const v22, 0x800053

    move/from16 v0, v22

    iput v0, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 237
    move/from16 v0, v17

    iput v0, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 238
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 239
    .local v9, "list":Ljava/util/List;
    move-object/from16 v0, v21

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    invoke-interface {v9, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    return-object v9
.end method
