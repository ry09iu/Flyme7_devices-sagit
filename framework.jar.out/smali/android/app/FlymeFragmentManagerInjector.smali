.class final Landroid/app/FlymeFragmentManagerInjector;
.super Ljava/lang/Object;
.source "FragmentManager.java"


# static fields
.field private static mAnimArray:Landroid/util/SparseIntArray;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2369
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I

    .prologue
    .line 2374
    invoke-static {p1}, Landroid/app/FlymeFragmentManagerInjector;->overlayFlymeAnim(I)I

    move-result v0

    invoke-static {p0, v0}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method private static overlayFlymeAnim(I)I
    .locals 6
    .param p0, "id"    # I

    .prologue
    .line 2378
    sget-object v2, Landroid/app/FlymeFragmentManagerInjector;->mAnimArray:Landroid/util/SparseIntArray;

    if-nez v2, :cond_1

    .line 2379
    new-instance v2, Landroid/util/SparseIntArray;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Landroid/util/SparseIntArray;-><init>(I)V

    sput-object v2, Landroid/app/FlymeFragmentManagerInjector;->mAnimArray:Landroid/util/SparseIntArray;

    .line 2380
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 2381
    .local v1, "res":Landroid/content/res/Resources;
    if-nez v1, :cond_0

    .line 2382
    return p0

    .line 2384
    :cond_0
    sget-object v2, Landroid/app/FlymeFragmentManagerInjector;->mAnimArray:Landroid/util/SparseIntArray;

    const-string/jumbo v3, "fragment_open_enter"

    const-string/jumbo v4, "animator"

    const-string/jumbo v5, "android"

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    sget v4, Lcom/flyme/internal/R$animator;->mz_fragment_open_enter:I

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 2385
    sget-object v2, Landroid/app/FlymeFragmentManagerInjector;->mAnimArray:Landroid/util/SparseIntArray;

    const-string/jumbo v3, "fragment_open_exit"

    const-string/jumbo v4, "animator"

    const-string/jumbo v5, "android"

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    sget v4, Lcom/flyme/internal/R$animator;->mz_fragment_open_exit:I

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 2386
    sget-object v2, Landroid/app/FlymeFragmentManagerInjector;->mAnimArray:Landroid/util/SparseIntArray;

    const-string/jumbo v3, "fragment_close_enter"

    const-string/jumbo v4, "animator"

    const-string/jumbo v5, "android"

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    sget v4, Lcom/flyme/internal/R$animator;->mz_fragment_close_enter:I

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 2387
    sget-object v2, Landroid/app/FlymeFragmentManagerInjector;->mAnimArray:Landroid/util/SparseIntArray;

    const-string/jumbo v3, "fragment_close_exit"

    const-string/jumbo v4, "animator"

    const-string/jumbo v5, "android"

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    sget v4, Lcom/flyme/internal/R$animator;->mz_fragment_close_exit:I

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 2389
    .end local v1    # "res":Landroid/content/res/Resources;
    :cond_1
    sget-object v2, Landroid/app/FlymeFragmentManagerInjector;->mAnimArray:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 2390
    .local v0, "overlayId":I
    if-lez v0, :cond_2

    .line 2391
    return v0

    .line 2393
    :cond_2
    return p0
.end method
