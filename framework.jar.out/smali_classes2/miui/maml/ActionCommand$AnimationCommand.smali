.class Lmiui/maml/ActionCommand$AnimationCommand;
.super Lmiui/maml/ActionCommand$TargetCommand;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnimationCommand"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/ActionCommand$AnimationCommand$CommandType;
    }
.end annotation


# static fields
.field private static final synthetic -miui-maml-ActionCommand$AnimationCommand$CommandTypeSwitchesValues:[I = null

.field public static final TAG_NAME:Ljava/lang/String; = "AnimationCommand"


# instance fields
.field private mAllAni:Z

.field private mAniTags:[Ljava/lang/String;

.field private mCommand:Lmiui/maml/ActionCommand$AnimationCommand$CommandType;

.field private mPlayParams:[Lmiui/maml/data/Expression;


# direct methods
.method private static synthetic -getmiui-maml-ActionCommand$AnimationCommand$CommandTypeSwitchesValues()[I
    .locals 3

    sget-object v0, Lmiui/maml/ActionCommand$AnimationCommand;->-miui-maml-ActionCommand$AnimationCommand$CommandTypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lmiui/maml/ActionCommand$AnimationCommand;->-miui-maml-ActionCommand$AnimationCommand$CommandTypeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lmiui/maml/ActionCommand$AnimationCommand$CommandType;->values()[Lmiui/maml/ActionCommand$AnimationCommand$CommandType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lmiui/maml/ActionCommand$AnimationCommand$CommandType;->INVALID:Lmiui/maml/ActionCommand$AnimationCommand$CommandType;

    invoke-virtual {v1}, Lmiui/maml/ActionCommand$AnimationCommand$CommandType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    :try_start_1
    sget-object v1, Lmiui/maml/ActionCommand$AnimationCommand$CommandType;->PAUSE:Lmiui/maml/ActionCommand$AnimationCommand$CommandType;

    invoke-virtual {v1}, Lmiui/maml/ActionCommand$AnimationCommand$CommandType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    :try_start_2
    sget-object v1, Lmiui/maml/ActionCommand$AnimationCommand$CommandType;->PLAY:Lmiui/maml/ActionCommand$AnimationCommand$CommandType;

    invoke-virtual {v1}, Lmiui/maml/ActionCommand$AnimationCommand$CommandType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    sget-object v1, Lmiui/maml/ActionCommand$AnimationCommand$CommandType;->PLAY_WITH_PARAMS:Lmiui/maml/ActionCommand$AnimationCommand$CommandType;

    invoke-virtual {v1}, Lmiui/maml/ActionCommand$AnimationCommand$CommandType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_3
    :try_start_4
    sget-object v1, Lmiui/maml/ActionCommand$AnimationCommand$CommandType;->RESUME:Lmiui/maml/ActionCommand$AnimationCommand$CommandType;

    invoke-virtual {v1}, Lmiui/maml/ActionCommand$AnimationCommand$CommandType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_4
    sput-object v0, Lmiui/maml/ActionCommand$AnimationCommand;->-miui-maml-ActionCommand$AnimationCommand$CommandTypeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1

    :catch_4
    move-exception v1

    goto :goto_0
.end method

.method public constructor <init>(Lmiui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V
    .locals 5
    .param p1, "screenElement"    # Lmiui/maml/elements/ScreenElement;
    .param p2, "ele"    # Lorg/w3c/dom/Element;

    .prologue
    .line 1430
    invoke-direct {p0, p1, p2}, Lmiui/maml/ActionCommand$TargetCommand;-><init>(Lmiui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    .line 1431
    const-string/jumbo v2, "command"

    invoke-interface {p2, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1432
    .local v0, "command":Ljava/lang/String;
    const-string/jumbo v2, "play"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1433
    sget-object v2, Lmiui/maml/ActionCommand$AnimationCommand$CommandType;->PLAY:Lmiui/maml/ActionCommand$AnimationCommand$CommandType;

    iput-object v2, p0, Lmiui/maml/ActionCommand$AnimationCommand;->mCommand:Lmiui/maml/ActionCommand$AnimationCommand$CommandType;

    .line 1447
    :cond_0
    :goto_0
    const-string/jumbo v2, "tags"

    invoke-interface {p2, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1448
    .local v1, "strTags":Ljava/lang/String;
    const-string/jumbo v2, "."

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1449
    const/4 v2, 0x1

    iput-boolean v2, p0, Lmiui/maml/ActionCommand$AnimationCommand;->mAllAni:Z

    .line 1429
    :cond_1
    :goto_1
    return-void

    .line 1434
    .end local v1    # "strTags":Ljava/lang/String;
    :cond_2
    const-string/jumbo v2, "pause"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1435
    sget-object v2, Lmiui/maml/ActionCommand$AnimationCommand$CommandType;->PAUSE:Lmiui/maml/ActionCommand$AnimationCommand$CommandType;

    iput-object v2, p0, Lmiui/maml/ActionCommand$AnimationCommand;->mCommand:Lmiui/maml/ActionCommand$AnimationCommand$CommandType;

    goto :goto_0

    .line 1436
    :cond_3
    const-string/jumbo v2, "resume"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1437
    sget-object v2, Lmiui/maml/ActionCommand$AnimationCommand$CommandType;->RESUME:Lmiui/maml/ActionCommand$AnimationCommand$CommandType;

    iput-object v2, p0, Lmiui/maml/ActionCommand$AnimationCommand;->mCommand:Lmiui/maml/ActionCommand$AnimationCommand$CommandType;

    goto :goto_0

    .line 1438
    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "play("

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string/jumbo v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1439
    sget-object v2, Lmiui/maml/ActionCommand$AnimationCommand$CommandType;->PLAY_WITH_PARAMS:Lmiui/maml/ActionCommand$AnimationCommand$CommandType;

    iput-object v2, p0, Lmiui/maml/ActionCommand$AnimationCommand;->mCommand:Lmiui/maml/ActionCommand$AnimationCommand$CommandType;

    .line 1440
    invoke-virtual {p0}, Lmiui/maml/ActionCommand$AnimationCommand;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    const/4 v4, 0x5

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lmiui/maml/data/Expression;->buildMultiple(Lmiui/maml/data/Variables;Ljava/lang/String;)[Lmiui/maml/data/Expression;

    move-result-object v2

    iput-object v2, p0, Lmiui/maml/ActionCommand$AnimationCommand;->mPlayParams:[Lmiui/maml/data/Expression;

    .line 1441
    iget-object v2, p0, Lmiui/maml/ActionCommand$AnimationCommand;->mPlayParams:[Lmiui/maml/data/Expression;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lmiui/maml/ActionCommand$AnimationCommand;->mPlayParams:[Lmiui/maml/data/Expression;

    array-length v2, v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lmiui/maml/ActionCommand$AnimationCommand;->mPlayParams:[Lmiui/maml/data/Expression;

    array-length v2, v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    .line 1442
    const-string/jumbo v2, "ActionCommand"

    const-string/jumbo v3, "bad expression format"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1445
    :cond_5
    sget-object v2, Lmiui/maml/ActionCommand$AnimationCommand$CommandType;->INVALID:Lmiui/maml/ActionCommand$AnimationCommand$CommandType;

    iput-object v2, p0, Lmiui/maml/ActionCommand$AnimationCommand;->mCommand:Lmiui/maml/ActionCommand$AnimationCommand$CommandType;

    goto :goto_0

    .line 1450
    .restart local v1    # "strTags":Ljava/lang/String;
    :cond_6
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1451
    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lmiui/maml/ActionCommand$AnimationCommand;->mAniTags:[Ljava/lang/String;

    goto :goto_1
.end method


# virtual methods
.method public doPerform()V
    .locals 14

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    .line 1457
    invoke-virtual {p0}, Lmiui/maml/ActionCommand$AnimationCommand;->getTarget()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/elements/ScreenElement;

    .line 1458
    .local v1, "target":Lmiui/maml/elements/ScreenElement;
    if-nez v1, :cond_0

    .line 1459
    return-void

    .line 1463
    :cond_0
    iget-object v0, p0, Lmiui/maml/ActionCommand$AnimationCommand;->mCommand:Lmiui/maml/ActionCommand$AnimationCommand$CommandType;

    sget-object v8, Lmiui/maml/ActionCommand$AnimationCommand$CommandType;->PLAY:Lmiui/maml/ActionCommand$AnimationCommand$CommandType;

    if-eq v0, v8, :cond_1

    iget-object v0, p0, Lmiui/maml/ActionCommand$AnimationCommand;->mCommand:Lmiui/maml/ActionCommand$AnimationCommand$CommandType;

    sget-object v8, Lmiui/maml/ActionCommand$AnimationCommand$CommandType;->PLAY_WITH_PARAMS:Lmiui/maml/ActionCommand$AnimationCommand$CommandType;

    if-ne v0, v8, :cond_3

    .line 1464
    :cond_1
    iget-boolean v0, p0, Lmiui/maml/ActionCommand$AnimationCommand;->mAllAni:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lmiui/maml/ActionCommand$AnimationCommand;->mAniTags:[Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 1465
    :cond_2
    iget-object v0, p0, Lmiui/maml/ActionCommand$AnimationCommand;->mAniTags:[Ljava/lang/String;

    invoke-virtual {v1, v0}, Lmiui/maml/elements/ScreenElement;->setAnim([Ljava/lang/String;)V

    .line 1469
    :cond_3
    invoke-static {}, Lmiui/maml/ActionCommand$AnimationCommand;->-getmiui-maml-ActionCommand$AnimationCommand$CommandTypeSwitchesValues()[I

    move-result-object v0

    iget-object v8, p0, Lmiui/maml/ActionCommand$AnimationCommand;->mCommand:Lmiui/maml/ActionCommand$AnimationCommand$CommandType;

    invoke-virtual {v8}, Lmiui/maml/ActionCommand$AnimationCommand$CommandType;->ordinal()I

    move-result v8

    aget v0, v0, v8

    packed-switch v0, :pswitch_data_0

    .line 1456
    :goto_0
    return-void

    .line 1471
    :pswitch_0
    invoke-virtual {v1}, Lmiui/maml/elements/ScreenElement;->playAnim()V

    goto :goto_0

    .line 1474
    :pswitch_1
    invoke-virtual {v1}, Lmiui/maml/elements/ScreenElement;->pauseAnim()V

    goto :goto_0

    .line 1477
    :pswitch_2
    invoke-virtual {v1}, Lmiui/maml/elements/ScreenElement;->resumeAnim()V

    goto :goto_0

    .line 1480
    :pswitch_3
    const-wide/16 v2, 0x0

    .line 1481
    .local v2, "startTime":J
    const-wide/16 v4, -0x1

    .line 1482
    .local v4, "endTime":J
    const/4 v6, 0x0

    .line 1483
    .local v6, "isLoop":Z
    const/4 v7, 0x0

    .line 1484
    .local v7, "isDelay":Z
    iget-object v0, p0, Lmiui/maml/ActionCommand$AnimationCommand;->mPlayParams:[Lmiui/maml/data/Expression;

    array-length v0, v0

    if-lez v0, :cond_4

    .line 1485
    iget-object v0, p0, Lmiui/maml/ActionCommand$AnimationCommand;->mPlayParams:[Lmiui/maml/data/Expression;

    aget-object v0, v0, v9

    if-nez v0, :cond_a

    move-wide v8, v10

    :goto_1
    double-to-long v2, v8

    .line 1487
    :cond_4
    iget-object v0, p0, Lmiui/maml/ActionCommand$AnimationCommand;->mPlayParams:[Lmiui/maml/data/Expression;

    array-length v0, v0

    if-le v0, v12, :cond_5

    .line 1488
    iget-object v0, p0, Lmiui/maml/ActionCommand$AnimationCommand;->mPlayParams:[Lmiui/maml/data/Expression;

    aget-object v0, v0, v12

    if-nez v0, :cond_b

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    :goto_2
    double-to-long v4, v8

    .line 1491
    :cond_5
    iget-object v0, p0, Lmiui/maml/ActionCommand$AnimationCommand;->mPlayParams:[Lmiui/maml/data/Expression;

    array-length v0, v0

    if-le v0, v13, :cond_7

    .line 1492
    iget-object v0, p0, Lmiui/maml/ActionCommand$AnimationCommand;->mPlayParams:[Lmiui/maml/data/Expression;

    aget-object v0, v0, v13

    if-nez v0, :cond_c

    :cond_6
    const/4 v6, 0x0

    .line 1494
    :cond_7
    :goto_3
    iget-object v0, p0, Lmiui/maml/ActionCommand$AnimationCommand;->mPlayParams:[Lmiui/maml/data/Expression;

    array-length v0, v0

    const/4 v8, 0x3

    if-le v0, v8, :cond_9

    .line 1495
    iget-object v0, p0, Lmiui/maml/ActionCommand$AnimationCommand;->mPlayParams:[Lmiui/maml/data/Expression;

    const/4 v8, 0x3

    aget-object v0, v0, v8

    if-nez v0, :cond_d

    :cond_8
    const/4 v7, 0x0

    .line 1497
    :cond_9
    :goto_4
    invoke-virtual/range {v1 .. v7}, Lmiui/maml/elements/ScreenElement;->playAnim(JJZZ)V

    goto :goto_0

    .line 1485
    :cond_a
    iget-object v0, p0, Lmiui/maml/ActionCommand$AnimationCommand;->mPlayParams:[Lmiui/maml/data/Expression;

    aget-object v0, v0, v9

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v8

    goto :goto_1

    .line 1488
    :cond_b
    iget-object v0, p0, Lmiui/maml/ActionCommand$AnimationCommand;->mPlayParams:[Lmiui/maml/data/Expression;

    aget-object v0, v0, v12

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v8

    goto :goto_2

    .line 1492
    :cond_c
    iget-object v0, p0, Lmiui/maml/ActionCommand$AnimationCommand;->mPlayParams:[Lmiui/maml/data/Expression;

    aget-object v0, v0, v13

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v8

    cmpl-double v0, v8, v10

    if-lez v0, :cond_6

    const/4 v6, 0x1

    goto :goto_3

    .line 1495
    :cond_d
    iget-object v0, p0, Lmiui/maml/ActionCommand$AnimationCommand;->mPlayParams:[Lmiui/maml/data/Expression;

    const/4 v8, 0x3

    aget-object v0, v0, v8

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v8

    cmpl-double v0, v8, v10

    if-lez v0, :cond_8

    const/4 v7, 0x1

    goto :goto_4

    .line 1469
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
