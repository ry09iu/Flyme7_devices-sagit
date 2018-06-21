.class Lcom/android/server/input/InputManagerService$MiuiInputFilter;
.super Landroid/view/InputFilter;
.source "InputManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/input/InputManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MiuiInputFilter"
.end annotation


# instance fields
.field private final MAX_COS:D

.field private mContext:Landroid/content/Context;

.field private mPoints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private mSampleDura:I

.field final synthetic this$0:Lcom/android/server/input/InputManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/input/InputManagerService;Landroid/content/Context;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/input/InputManagerService;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 336
    iput-object p1, p0, Lcom/android/server/input/InputManagerService$MiuiInputFilter;->this$0:Lcom/android/server/input/InputManagerService;

    .line 337
    invoke-virtual {p2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/InputFilter;-><init>(Landroid/os/Looper;)V

    .line 331
    const-wide v0, 0x3fd657184ae74487L    # 0.3490658503988659

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/input/InputManagerService$MiuiInputFilter;->MAX_COS:D

    .line 332
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/InputManagerService$MiuiInputFilter;->mPoints:Ljava/util/ArrayList;

    .line 338
    iput-object p2, p0, Lcom/android/server/input/InputManagerService$MiuiInputFilter;->mContext:Landroid/content/Context;

    .line 336
    return-void
.end method

.method private changeVolumeForBackTouch(I)V
    .locals 20
    .param p1, "policyFlags"    # I

    .prologue
    .line 378
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/input/InputManagerService$MiuiInputFilter;->mPoints:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    .line 379
    .local v2, "firstP":Landroid/graphics/PointF;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/input/InputManagerService$MiuiInputFilter;->mPoints:Ljava/util/ArrayList;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/graphics/PointF;

    .line 380
    .local v11, "secondP":Landroid/graphics/PointF;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/input/InputManagerService$MiuiInputFilter;->mPoints:Ljava/util/ArrayList;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/graphics/PointF;

    .line 381
    .local v14, "thirdP":Landroid/graphics/PointF;
    const/4 v15, 0x0

    .line 382
    .local v15, "volumeChange":F
    iget v6, v11, Landroid/graphics/PointF;->x:F

    iget v7, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v6, v7

    iget v7, v14, Landroid/graphics/PointF;->x:F

    iget v8, v11, Landroid/graphics/PointF;->x:F

    sub-float/2addr v7, v8

    mul-float/2addr v6, v7

    iget v7, v11, Landroid/graphics/PointF;->y:F

    iget v8, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v7, v8

    iget v8, v14, Landroid/graphics/PointF;->y:F

    iget v9, v11, Landroid/graphics/PointF;->y:F

    sub-float/2addr v8, v9

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    float-to-double v6, v6

    .line 383
    iget v8, v11, Landroid/graphics/PointF;->x:F

    iget v9, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v8, v9

    float-to-double v8, v8

    iget v10, v11, Landroid/graphics/PointF;->y:F

    iget v0, v2, Landroid/graphics/PointF;->y:F

    move/from16 v16, v0

    sub-float v10, v10, v16

    float-to-double v0, v10

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v8

    iget v10, v14, Landroid/graphics/PointF;->x:F

    iget v0, v11, Landroid/graphics/PointF;->x:F

    move/from16 v16, v0

    sub-float v10, v10, v16

    float-to-double v0, v10

    move-wide/from16 v16, v0

    iget v10, v14, Landroid/graphics/PointF;->y:F

    iget v0, v11, Landroid/graphics/PointF;->y:F

    move/from16 v18, v0

    sub-float v10, v10, v18

    float-to-double v0, v10

    move-wide/from16 v18, v0

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v16

    mul-double v8, v8, v16

    .line 382
    div-double v12, v6, v8

    .line 384
    .local v12, "cosTheta":D
    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/server/input/InputManagerService$MiuiInputFilter;->MAX_COS:D

    cmpg-double v6, v6, v8

    if-gez v6, :cond_0

    .line 385
    iget v6, v11, Landroid/graphics/PointF;->x:F

    iget v7, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v6, v7

    iget v7, v14, Landroid/graphics/PointF;->y:F

    iget v8, v11, Landroid/graphics/PointF;->y:F

    sub-float/2addr v7, v8

    mul-float/2addr v6, v7

    iget v7, v14, Landroid/graphics/PointF;->x:F

    iget v8, v11, Landroid/graphics/PointF;->x:F

    sub-float/2addr v7, v8

    iget v8, v11, Landroid/graphics/PointF;->y:F

    iget v9, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v8, v9

    mul-float/2addr v7, v8

    sub-float v15, v6, v7

    .line 387
    :cond_0
    const/4 v6, 0x0

    cmpl-float v6, v15, v6

    if-eqz v6, :cond_1

    .line 388
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 389
    .local v4, "time":J
    new-instance v3, Landroid/view/KeyEvent;

    const/4 v6, 0x0

    cmpl-float v6, v15, v6

    if-lez v6, :cond_2

    const/16 v9, 0x18

    :goto_0
    const/4 v8, 0x0

    const/4 v10, 0x0

    move-wide v6, v4

    invoke-direct/range {v3 .. v10}, Landroid/view/KeyEvent;-><init>(JJIII)V

    .line 390
    .local v3, "evt":Landroid/view/KeyEvent;
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v3, v1}, Lcom/android/server/input/InputManagerService$MiuiInputFilter;->sendInputEvent(Landroid/view/InputEvent;I)V

    .line 391
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 392
    new-instance v3, Landroid/view/KeyEvent;

    .end local v3    # "evt":Landroid/view/KeyEvent;
    const/4 v6, 0x0

    cmpl-float v6, v15, v6

    if-lez v6, :cond_3

    const/16 v9, 0x18

    :goto_1
    const/4 v8, 0x1

    const/4 v10, 0x0

    move-wide v6, v4

    invoke-direct/range {v3 .. v10}, Landroid/view/KeyEvent;-><init>(JJIII)V

    .line 393
    .restart local v3    # "evt":Landroid/view/KeyEvent;
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v3, v1}, Lcom/android/server/input/InputManagerService$MiuiInputFilter;->sendInputEvent(Landroid/view/InputEvent;I)V

    .line 377
    .end local v3    # "evt":Landroid/view/KeyEvent;
    .end local v4    # "time":J
    :cond_1
    return-void

    .line 389
    .restart local v4    # "time":J
    :cond_2
    const/16 v9, 0x19

    goto :goto_0

    .line 392
    :cond_3
    const/16 v9, 0x19

    goto :goto_1
.end method

.method private isBackTouchEnabled()Z
    .locals 2

    .prologue
    .line 354
    const-string/jumbo v0, "1"

    const-string/jumbo v1, "persist.sys.backtouch"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private processMotionEventForBackTouch(Landroid/view/MotionEvent;I)V
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    .prologue
    const/4 v3, 0x0

    .line 358
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 357
    :cond_0
    :goto_0
    return-void

    .line 360
    :pswitch_0
    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 361
    .local v0, "curPointF":Landroid/graphics/PointF;
    iget v1, p0, Lcom/android/server/input/InputManagerService$MiuiInputFilter;->mSampleDura:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/input/InputManagerService$MiuiInputFilter;->mSampleDura:I

    const/4 v2, 0x5

    if-lt v1, v2, :cond_1

    .line 362
    iget-object v1, p0, Lcom/android/server/input/InputManagerService$MiuiInputFilter;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 363
    iput v3, p0, Lcom/android/server/input/InputManagerService$MiuiInputFilter;->mSampleDura:I

    .line 365
    :cond_1
    iget-object v1, p0, Lcom/android/server/input/InputManagerService$MiuiInputFilter;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    .line 366
    invoke-direct {p0, p2}, Lcom/android/server/input/InputManagerService$MiuiInputFilter;->changeVolumeForBackTouch(I)V

    .line 367
    iget-object v1, p0, Lcom/android/server/input/InputManagerService$MiuiInputFilter;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 371
    .end local v0    # "curPointF":Landroid/graphics/PointF;
    :pswitch_1
    iput v3, p0, Lcom/android/server/input/InputManagerService$MiuiInputFilter;->mSampleDura:I

    .line 372
    iget-object v1, p0, Lcom/android/server/input/InputManagerService$MiuiInputFilter;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 358
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public onInputEvent(Landroid/view/InputEvent;I)V
    .locals 2
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "policyFlags"    # I

    .prologue
    .line 343
    instance-of v0, p1, Landroid/view/MotionEvent;

    if-eqz v0, :cond_1

    const/16 v0, 0x1002

    invoke-virtual {p1, v0}, Landroid/view/InputEvent;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 344
    invoke-virtual {p1}, Landroid/view/InputEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "backtouch"

    invoke-virtual {p1}, Landroid/view/InputEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 345
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService$MiuiInputFilter;->isBackTouchEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 346
    check-cast p1, Landroid/view/MotionEvent;

    .end local p1    # "event":Landroid/view/InputEvent;
    invoke-direct {p0, p1, p2}, Lcom/android/server/input/InputManagerService$MiuiInputFilter;->processMotionEventForBackTouch(Landroid/view/MotionEvent;I)V

    .line 347
    :cond_0
    return-void

    .line 350
    .restart local p1    # "event":Landroid/view/InputEvent;
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V

    .line 342
    return-void
.end method
