.class Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "AnimatedVectorDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/AnimatedVectorDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnimatedVectorDrawableState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState$PendingAnimator;
    }
.end annotation


# instance fields
.field mAnimators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field mChangingConfigurations:I

.field mPendingAnims:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState$PendingAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private final mShouldIgnoreInvalidAnim:Z

.field mTargetNameMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/animation/Animator;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;


# direct methods
.method static synthetic -get0(Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mShouldIgnoreInvalidAnim:Z

    return v0
.end method

.method public constructor <init>(Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;Landroid/graphics/drawable/Drawable$Callback;Landroid/content/res/Resources;)V
    .locals 3
    .param p1, "copy"    # Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;
    .param p2, "owner"    # Landroid/graphics/drawable/Drawable$Callback;
    .param p3, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 638
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 640
    invoke-static {}, Landroid/graphics/drawable/AnimatedVectorDrawable;->-wrap0()Z

    move-result v1

    iput-boolean v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mShouldIgnoreInvalidAnim:Z

    .line 641
    if-eqz p1, :cond_5

    .line 642
    iget v1, p1, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mChangingConfigurations:I

    iput v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mChangingConfigurations:I

    .line 644
    iget-object v1, p1, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    if-eqz v1, :cond_0

    .line 645
    iget-object v1, p1, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/VectorDrawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    .line 646
    .local v0, "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    if-eqz p3, :cond_4

    .line 647
    invoke-virtual {v0, p3}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/VectorDrawable;

    iput-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    .line 651
    :goto_0
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/VectorDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/VectorDrawable;

    iput-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    .line 652
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    invoke-virtual {v1, p2}, Landroid/graphics/drawable/VectorDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 653
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    iget-object v2, p1, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/VectorDrawable;->getLayoutDirection()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/VectorDrawable;->setLayoutDirection(I)Z

    .line 654
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    iget-object v2, p1, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/VectorDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/VectorDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 655
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/VectorDrawable;->setAllowCaching(Z)V

    .line 658
    .end local v0    # "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    :cond_0
    iget-object v1, p1, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mAnimators:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 659
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p1, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mAnimators:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mAnimators:Ljava/util/ArrayList;

    .line 662
    :cond_1
    iget-object v1, p1, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mTargetNameMap:Landroid/util/ArrayMap;

    if-eqz v1, :cond_2

    .line 663
    new-instance v1, Landroid/util/ArrayMap;

    iget-object v2, p1, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mTargetNameMap:Landroid/util/ArrayMap;

    invoke-direct {v1, v2}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    iput-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mTargetNameMap:Landroid/util/ArrayMap;

    .line 666
    :cond_2
    iget-object v1, p1, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mPendingAnims:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    .line 667
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p1, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mPendingAnims:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mPendingAnims:Ljava/util/ArrayList;

    .line 639
    :cond_3
    :goto_1
    return-void

    .line 649
    .restart local v0    # "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    :cond_4
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/VectorDrawable;

    iput-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    goto :goto_0

    .line 670
    .end local v0    # "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    :cond_5
    new-instance v1, Landroid/graphics/drawable/VectorDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/VectorDrawable;-><init>()V

    iput-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    goto :goto_1
.end method

.method private prepareLocalAnimator(I)Landroid/animation/Animator;
    .locals 5
    .param p1, "index"    # I

    .prologue
    .line 763
    iget-object v4, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 764
    .local v0, "animator":Landroid/animation/Animator;
    invoke-virtual {v0}, Landroid/animation/Animator;->clone()Landroid/animation/Animator;

    move-result-object v1

    .line 765
    .local v1, "localAnimator":Landroid/animation/Animator;
    iget-object v4, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mTargetNameMap:Landroid/util/ArrayMap;

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 766
    .local v3, "targetName":Ljava/lang/String;
    iget-object v4, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    invoke-virtual {v4, v3}, Landroid/graphics/drawable/VectorDrawable;->getTargetByName(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 767
    .local v2, "target":Ljava/lang/Object;
    invoke-virtual {v1, v2}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 768
    return-object v1
.end method


# virtual methods
.method public addPendingAnimator(IFLjava/lang/String;)V
    .locals 2
    .param p1, "resId"    # I
    .param p2, "pathErrorScale"    # F
    .param p3, "target"    # Ljava/lang/String;

    .prologue
    .line 696
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mPendingAnims:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 697
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mPendingAnims:Ljava/util/ArrayList;

    .line 699
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mPendingAnims:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState$PendingAnimator;

    invoke-direct {v1, p1, p2, p3}, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState$PendingAnimator;-><init>(IFLjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 695
    return-void
.end method

.method public addTargetAnimator(Ljava/lang/String;Landroid/animation/Animator;)V
    .locals 2
    .param p1, "targetName"    # Ljava/lang/String;
    .param p2, "animator"    # Landroid/animation/Animator;

    .prologue
    const/4 v1, 0x1

    .line 703
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mAnimators:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 704
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mAnimators:Ljava/util/ArrayList;

    .line 705
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mTargetNameMap:Landroid/util/ArrayMap;

    .line 707
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 708
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mTargetNameMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 702
    return-void
.end method

.method public canApplyTheme()Z
    .locals 1

    .prologue
    .line 676
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/VectorDrawable;->canApplyTheme()Z

    move-result v0

    if-nez v0, :cond_1

    .line 677
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mPendingAnims:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 676
    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 677
    :cond_2
    invoke-super {p0}, Landroid/graphics/drawable/Drawable$ConstantState;->canApplyTheme()Z

    move-result v0

    goto :goto_0
.end method

.method public getChangingConfigurations()I
    .locals 1

    .prologue
    .line 692
    iget v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mChangingConfigurations:I

    return v0
.end method

.method public inflatePendingAnimators(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)V
    .locals 8
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "t"    # Landroid/content/res/Resources$Theme;

    .prologue
    const/4 v5, 0x0

    .line 778
    iget-object v4, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mPendingAnims:Ljava/util/ArrayList;

    .line 779
    .local v4, "pendingAnims":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState$PendingAnimator;>;"
    if-eqz v4, :cond_0

    .line 780
    iput-object v5, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mPendingAnims:Ljava/util/ArrayList;

    .line 782
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "count":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 783
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState$PendingAnimator;

    .line 784
    .local v3, "pendingAnimator":Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState$PendingAnimator;
    invoke-virtual {v3, p1, p2}, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState$PendingAnimator;->newInstance(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Landroid/animation/Animator;

    move-result-object v0

    .line 785
    .local v0, "animator":Landroid/animation/Animator;
    iget-object v5, v3, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState$PendingAnimator;->target:Ljava/lang/String;

    iget-object v6, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    .line 786
    iget-boolean v7, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mShouldIgnoreInvalidAnim:Z

    .line 785
    invoke-static {v0, v5, v6, v7}, Landroid/graphics/drawable/AnimatedVectorDrawable;->-wrap15(Landroid/animation/Animator;Ljava/lang/String;Landroid/graphics/drawable/VectorDrawable;Z)V

    .line 787
    iget-object v5, v3, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState$PendingAnimator;->target:Ljava/lang/String;

    invoke-virtual {p0, v5, v0}, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->addTargetAnimator(Ljava/lang/String;Landroid/animation/Animator;)V

    .line 782
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 777
    .end local v0    # "animator":Landroid/animation/Animator;
    .end local v1    # "count":I
    .end local v2    # "i":I
    .end local v3    # "pendingAnimator":Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState$PendingAnimator;
    :cond_0
    return-void
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 682
    new-instance v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-direct {v0, p0, v1, v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;-><init>(Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;Landroid/content/res/Resources;Landroid/graphics/drawable/AnimatedVectorDrawable;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 687
    new-instance v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;-><init>(Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;Landroid/content/res/Resources;Landroid/graphics/drawable/AnimatedVectorDrawable;)V

    return-object v0
.end method

.method public prepareLocalAnimators(Landroid/animation/AnimatorSet;Landroid/content/res/Resources;)V
    .locals 9
    .param p1, "animatorSet"    # Landroid/animation/AnimatorSet;
    .param p2, "res"    # Landroid/content/res/Resources;

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x0

    .line 731
    iget-object v6, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mPendingAnims:Ljava/util/ArrayList;

    if-eqz v6, :cond_0

    .line 733
    if-eqz p2, :cond_1

    .line 734
    invoke-virtual {p0, p2, v8}, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->inflatePendingAnimators(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)V

    .line 741
    :goto_0
    iput-object v8, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mPendingAnims:Ljava/util/ArrayList;

    .line 745
    :cond_0
    iget-object v6, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mAnimators:Ljava/util/ArrayList;

    if-nez v6, :cond_2

    move v1, v5

    .line 746
    .local v1, "count":I
    :goto_1
    if-lez v1, :cond_3

    .line 747
    invoke-direct {p0, v5}, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->prepareLocalAnimator(I)Landroid/animation/Animator;

    move-result-object v2

    .line 748
    .local v2, "firstAnim":Landroid/animation/Animator;
    invoke-virtual {p1, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    .line 749
    .local v0, "builder":Landroid/animation/AnimatorSet$Builder;
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_2
    if-ge v3, v1, :cond_3

    .line 750
    invoke-direct {p0, v3}, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->prepareLocalAnimator(I)Landroid/animation/Animator;

    move-result-object v4

    .line 751
    .local v4, "nextAnim":Landroid/animation/Animator;
    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 749
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 736
    .end local v0    # "builder":Landroid/animation/AnimatorSet$Builder;
    .end local v1    # "count":I
    .end local v2    # "firstAnim":Landroid/animation/Animator;
    .end local v3    # "i":I
    .end local v4    # "nextAnim":Landroid/animation/Animator;
    :cond_1
    const-string/jumbo v6, "AnimatedVectorDrawable"

    const-string/jumbo v7, "Failed to load animators. Either the AnimatedVectorDrawable must be created using a Resources object or applyTheme() must be called with a non-null Theme object."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 745
    :cond_2
    iget-object v6, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    goto :goto_1

    .line 728
    .restart local v1    # "count":I
    :cond_3
    return-void
.end method
