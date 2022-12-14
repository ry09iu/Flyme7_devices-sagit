.class public Landroid/app/ResourcesManager;
.super Ljava/lang/Object;
.source "ResourcesManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ResourcesManager$1;,
        Landroid/app/ResourcesManager$ActivityResources;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "ResourcesManager"

.field private static final sEmptyReferencePredicate:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/res/Resources;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sResourcesManager:Landroid/app/ResourcesManager;


# instance fields
.field private final mActivityResourceReferences:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/os/IBinder;",
            "Landroid/app/ResourcesManager$ActivityResources;",
            ">;"
        }
    .end annotation
.end field

.field private final mDisplays:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/view/DisplayAdjustments;",
            ">;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/Display;",
            ">;>;"
        }
    .end annotation
.end field

.field private mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

.field private final mResConfiguration:Landroid/content/res/Configuration;

.field private final mResourceImpls:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/content/res/ResourcesKey;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/res/ResourcesImpl;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mResourceReferences:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/res/Resources;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    new-instance v0, Landroid/app/ResourcesManager$1;

    invoke-direct {v0}, Landroid/app/ResourcesManager$1;-><init>()V

    .line 60
    sput-object v0, Landroid/app/ResourcesManager;->sEmptyReferencePredicate:Ljava/util/function/Predicate;

    .line 51
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/app/ResourcesManager;->mResConfiguration:Landroid/content/res/Configuration;

    .line 84
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 83
    iput-object v0, p0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/ResourcesManager;->mResourceReferences:Ljava/util/ArrayList;

    .line 104
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 103
    iput-object v0, p0, Landroid/app/ResourcesManager;->mActivityResourceReferences:Ljava/util/WeakHashMap;

    .line 110
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 109
    iput-object v0, p0, Landroid/app/ResourcesManager;->mDisplays:Landroid/util/ArrayMap;

    .line 51
    return-void
.end method

.method private static applyNonDefaultDisplayMetricsToConfiguration(Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V
    .locals 4
    .param p0, "dm"    # Landroid/util/DisplayMetrics;
    .param p1, "config"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v3, 0x1

    .line 173
    iput v3, p1, Landroid/content/res/Configuration;->touchscreen:I

    .line 174
    iget v1, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v1, p1, Landroid/content/res/Configuration;->densityDpi:I

    .line 175
    iget v1, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    iget v2, p0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 176
    iget v1, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    iget v2, p0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 177
    iget v1, p1, Landroid/content/res/Configuration;->screenLayout:I

    invoke-static {v1}, Landroid/content/res/Configuration;->resetScreenLayout(I)I

    move-result v0

    .line 178
    .local v0, "sl":I
    iget v1, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v1, v2, :cond_0

    .line 179
    const/4 v1, 0x2

    iput v1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 181
    iget v1, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v2, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 180
    invoke-static {v0, v1, v2}, Landroid/content/res/Configuration;->reduceScreenLayout(III)I

    move-result v1

    iput v1, p1, Landroid/content/res/Configuration;->screenLayout:I

    .line 187
    :goto_0
    iget v1, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    iput v1, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 188
    iget v1, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    iput v1, p1, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    .line 189
    iget v1, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    iput v1, p1, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    .line 190
    iget v1, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iput v1, p1, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    .line 172
    return-void

    .line 183
    :cond_0
    iput v3, p1, Landroid/content/res/Configuration;->orientation:I

    .line 185
    iget v1, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v2, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 184
    invoke-static {v0, v1, v2}, Landroid/content/res/Configuration;->reduceScreenLayout(III)I

    move-result v1

    iput v1, p1, Landroid/content/res/Configuration;->screenLayout:I

    goto :goto_0
.end method

.method private createResourcesImpl(Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesImpl;
    .locals 7
    .param p1, "key"    # Landroid/content/res/ResourcesKey;

    .prologue
    const/4 v6, 0x0

    .line 308
    new-instance v2, Landroid/view/DisplayAdjustments;

    iget-object v5, p1, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-direct {v2, v5}, Landroid/view/DisplayAdjustments;-><init>(Landroid/content/res/Configuration;)V

    .line 309
    .local v2, "daj":Landroid/view/DisplayAdjustments;
    iget-object v5, p1, Landroid/content/res/ResourcesKey;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v2, v5}, Landroid/view/DisplayAdjustments;->setCompatibilityInfo(Landroid/content/res/CompatibilityInfo;)V

    .line 311
    invoke-virtual {p0, p1}, Landroid/app/ResourcesManager;->createAssetManager(Landroid/content/res/ResourcesKey;)Landroid/content/res/AssetManager;

    move-result-object v0

    .line 312
    .local v0, "assets":Landroid/content/res/AssetManager;
    if-nez v0, :cond_0

    .line 313
    return-object v6

    .line 316
    :cond_0
    iget v5, p1, Landroid/content/res/ResourcesKey;->mDisplayId:I

    invoke-virtual {p0, v5, v2}, Landroid/app/ResourcesManager;->getDisplayMetrics(ILandroid/view/DisplayAdjustments;)Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 317
    .local v3, "dm":Landroid/util/DisplayMetrics;
    invoke-direct {p0, p1, v3}, Landroid/app/ResourcesManager;->generateConfig(Landroid/content/res/ResourcesKey;Landroid/util/DisplayMetrics;)Landroid/content/res/Configuration;

    move-result-object v1

    .line 320
    .local v1, "config":Landroid/content/res/Configuration;
    new-instance v4, Landroid/content/res/MiuiResourcesImpl;

    invoke-direct {v4, v0, v3, v1, v2}, Landroid/content/res/MiuiResourcesImpl;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/view/DisplayAdjustments;)V

    .line 325
    .local v4, "impl":Landroid/content/res/ResourcesImpl;
    return-object v4
.end method

.method private findKeyForResourceImplLocked(Landroid/content/res/ResourcesImpl;)Landroid/content/res/ResourcesKey;
    .locals 6
    .param p1, "resourceImpl"    # Landroid/content/res/ResourcesImpl;

    .prologue
    const/4 v5, 0x0

    .line 367
    iget-object v4, p0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 368
    .local v2, "refCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 369
    iget-object v4, p0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 370
    .local v3, "weakImplRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/ResourcesImpl;>;"
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/res/ResourcesImpl;

    move-object v1, v4

    .line 371
    .local v1, "impl":Landroid/content/res/ResourcesImpl;
    :goto_1
    if-eqz v1, :cond_1

    if-ne p1, v1, :cond_1

    .line 372
    iget-object v4, p0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/res/ResourcesKey;

    return-object v4

    .end local v1    # "impl":Landroid/content/res/ResourcesImpl;
    :cond_0
    move-object v1, v5

    .line 370
    goto :goto_1

    .line 368
    .restart local v1    # "impl":Landroid/content/res/ResourcesImpl;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 375
    .end local v1    # "impl":Landroid/content/res/ResourcesImpl;
    .end local v3    # "weakImplRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/ResourcesImpl;>;"
    :cond_2
    return-object v5
.end method

.method private findOrCreateResourcesImplForKeyLocked(Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesImpl;
    .locals 3
    .param p1, "key"    # Landroid/content/res/ResourcesKey;

    .prologue
    .line 351
    invoke-direct {p0, p1}, Landroid/app/ResourcesManager;->findResourcesImplForKeyLocked(Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesImpl;

    move-result-object v0

    .line 352
    .local v0, "impl":Landroid/content/res/ResourcesImpl;
    if-nez v0, :cond_0

    .line 353
    invoke-direct {p0, p1}, Landroid/app/ResourcesManager;->createResourcesImpl(Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesImpl;

    move-result-object v0

    .line 354
    if-eqz v0, :cond_0

    .line 355
    iget-object v1, p0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    :cond_0
    return-object v0
.end method

.method private findResourcesImplForKeyLocked(Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesImpl;
    .locals 4
    .param p1, "key"    # Landroid/content/res/ResourcesKey;

    .prologue
    const/4 v3, 0x0

    .line 335
    iget-object v2, p0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 336
    .local v1, "weakImplRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/ResourcesImpl;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/res/ResourcesImpl;

    move-object v0, v2

    .line 337
    .local v0, "impl":Landroid/content/res/ResourcesImpl;
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/res/ResourcesImpl;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/AssetManager;->isUpToDate()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 338
    return-object v0

    .end local v0    # "impl":Landroid/content/res/ResourcesImpl;
    :cond_0
    move-object v0, v3

    .line 336
    goto :goto_0

    .line 340
    .restart local v0    # "impl":Landroid/content/res/ResourcesImpl;
    :cond_1
    return-object v3
.end method

.method private generateConfig(Landroid/content/res/ResourcesKey;Landroid/util/DisplayMetrics;)Landroid/content/res/Configuration;
    .locals 4
    .param p1, "key"    # Landroid/content/res/ResourcesKey;
    .param p2, "dm"    # Landroid/util/DisplayMetrics;

    .prologue
    .line 290
    iget v3, p1, Landroid/content/res/ResourcesKey;->mDisplayId:I

    if-nez v3, :cond_3

    const/4 v2, 0x1

    .line 291
    .local v2, "isDefaultDisplay":Z
    :goto_0
    invoke-virtual {p1}, Landroid/content/res/ResourcesKey;->hasOverrideConfiguration()Z

    move-result v1

    .line 292
    .local v1, "hasOverrideConfig":Z
    if-eqz v2, :cond_0

    if-eqz v1, :cond_4

    .line 293
    :cond_0
    new-instance v0, Landroid/content/res/Configuration;

    invoke-virtual {p0}, Landroid/app/ResourcesManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 294
    .local v0, "config":Landroid/content/res/Configuration;
    if-nez v2, :cond_1

    .line 295
    invoke-static {p2, v0}, Landroid/app/ResourcesManager;->applyNonDefaultDisplayMetricsToConfiguration(Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 297
    :cond_1
    if-eqz v1, :cond_2

    .line 298
    iget-object v3, p1, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, v3}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 304
    :cond_2
    :goto_1
    return-object v0

    .line 290
    .end local v0    # "config":Landroid/content/res/Configuration;
    .end local v1    # "hasOverrideConfig":Z
    .end local v2    # "isDefaultDisplay":Z
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "isDefaultDisplay":Z
    goto :goto_0

    .line 302
    .restart local v1    # "hasOverrideConfig":Z
    :cond_4
    invoke-virtual {p0}, Landroid/app/ResourcesManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .restart local v0    # "config":Landroid/content/res/Configuration;
    goto :goto_1
.end method

.method public static getInstance()Landroid/app/ResourcesManager;
    .locals 2

    .prologue
    .line 113
    const-class v1, Landroid/app/ResourcesManager;

    monitor-enter v1

    .line 114
    :try_start_0
    sget-object v0, Landroid/app/ResourcesManager;->sResourcesManager:Landroid/app/ResourcesManager;

    if-nez v0, :cond_0

    .line 115
    new-instance v0, Landroid/app/ResourcesManager;

    invoke-direct {v0}, Landroid/app/ResourcesManager;-><init>()V

    sput-object v0, Landroid/app/ResourcesManager;->sResourcesManager:Landroid/app/ResourcesManager;

    .line 117
    :cond_0
    sget-object v0, Landroid/app/ResourcesManager;->sResourcesManager:Landroid/app/ResourcesManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 113
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getOrCreateActivityResourcesStructLocked(Landroid/os/IBinder;)Landroid/app/ResourcesManager$ActivityResources;
    .locals 3
    .param p1, "activityToken"    # Landroid/os/IBinder;

    .prologue
    const/4 v2, 0x0

    .line 400
    iget-object v1, p0, Landroid/app/ResourcesManager;->mActivityResourceReferences:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ResourcesManager$ActivityResources;

    .line 401
    .local v0, "activityResources":Landroid/app/ResourcesManager$ActivityResources;
    if-nez v0, :cond_0

    .line 402
    new-instance v0, Landroid/app/ResourcesManager$ActivityResources;

    .end local v0    # "activityResources":Landroid/app/ResourcesManager$ActivityResources;
    invoke-direct {v0, v2}, Landroid/app/ResourcesManager$ActivityResources;-><init>(Landroid/app/ResourcesManager$ActivityResources;)V

    .line 403
    .restart local v0    # "activityResources":Landroid/app/ResourcesManager$ActivityResources;
    iget-object v1, p0, Landroid/app/ResourcesManager;->mActivityResourceReferences:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    :cond_0
    return-object v0
.end method

.method private getOrCreateResources(Landroid/os/IBinder;Landroid/content/res/ResourcesKey;Ljava/lang/ClassLoader;)Landroid/content/res/Resources;
    .locals 8
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "key"    # Landroid/content/res/ResourcesKey;
    .param p3, "classLoader"    # Ljava/lang/ClassLoader;

    .prologue
    const/4 v7, 0x0

    .line 555
    monitor-enter p0

    .line 562
    if-eqz p1, :cond_2

    .line 564
    :try_start_0
    invoke-direct {p0, p1}, Landroid/app/ResourcesManager;->getOrCreateActivityResourcesStructLocked(Landroid/os/IBinder;)Landroid/app/ResourcesManager$ActivityResources;

    move-result-object v0

    .line 567
    .local v0, "activityResources":Landroid/app/ResourcesManager$ActivityResources;
    iget-object v5, v0, Landroid/app/ResourcesManager$ActivityResources;->activityResources:Ljava/util/ArrayList;

    .line 568
    sget-object v6, Landroid/app/ResourcesManager;->sEmptyReferencePredicate:Ljava/util/function/Predicate;

    .line 567
    invoke-static {v5, v6}, Lcom/android/internal/util/ArrayUtils;->unstableRemoveIf(Ljava/util/ArrayList;Ljava/util/function/Predicate;)I

    .line 571
    invoke-virtual {p2}, Landroid/content/res/ResourcesKey;->hasOverrideConfiguration()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 572
    iget-object v5, v0, Landroid/app/ResourcesManager$ActivityResources;->overrideConfig:Landroid/content/res/Configuration;

    sget-object v6, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    invoke-virtual {v5, v6}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 578
    :cond_0
    :goto_0
    invoke-direct {p0, p2}, Landroid/app/ResourcesManager;->findResourcesImplForKeyLocked(Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesImpl;

    move-result-object v3

    .line 579
    .local v3, "resourcesImpl":Landroid/content/res/ResourcesImpl;
    if-eqz v3, :cond_3

    .line 583
    invoke-direct {p0, p1, p3, v3}, Landroid/app/ResourcesManager;->getOrCreateResourcesForActivityLocked(Landroid/os/IBinder;Ljava/lang/ClassLoader;Landroid/content/res/ResourcesImpl;)Landroid/content/res/Resources;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    monitor-exit p0

    return-object v5

    .line 573
    .end local v3    # "resourcesImpl":Landroid/content/res/ResourcesImpl;
    :cond_1
    :try_start_1
    new-instance v4, Landroid/content/res/Configuration;

    iget-object v5, v0, Landroid/app/ResourcesManager$ActivityResources;->overrideConfig:Landroid/content/res/Configuration;

    invoke-direct {v4, v5}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 574
    .local v4, "temp":Landroid/content/res/Configuration;
    iget-object v5, p2, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v4, v5}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 575
    iget-object v5, p2, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v5, v4}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 555
    .end local v0    # "activityResources":Landroid/app/ResourcesManager$ActivityResources;
    .end local v4    # "temp":Landroid/content/res/Configuration;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 591
    :cond_2
    :try_start_2
    iget-object v5, p0, Landroid/app/ResourcesManager;->mResourceReferences:Ljava/util/ArrayList;

    sget-object v6, Landroid/app/ResourcesManager;->sEmptyReferencePredicate:Ljava/util/function/Predicate;

    invoke-static {v5, v6}, Lcom/android/internal/util/ArrayUtils;->unstableRemoveIf(Ljava/util/ArrayList;Ljava/util/function/Predicate;)I

    .line 594
    invoke-direct {p0, p2}, Landroid/app/ResourcesManager;->findResourcesImplForKeyLocked(Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesImpl;

    move-result-object v3

    .line 595
    .restart local v3    # "resourcesImpl":Landroid/content/res/ResourcesImpl;
    if-eqz v3, :cond_3

    .line 599
    invoke-direct {p0, p3, v3}, Landroid/app/ResourcesManager;->getOrCreateResourcesLocked(Ljava/lang/ClassLoader;Landroid/content/res/ResourcesImpl;)Landroid/content/res/Resources;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v5

    monitor-exit p0

    return-object v5

    :cond_3
    monitor-exit p0

    .line 607
    invoke-direct {p0, p2}, Landroid/app/ResourcesManager;->createResourcesImpl(Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesImpl;

    move-result-object v3

    .line 608
    if-nez v3, :cond_4

    .line 609
    return-object v7

    .line 612
    :cond_4
    monitor-enter p0

    .line 613
    :try_start_3
    invoke-direct {p0, p2}, Landroid/app/ResourcesManager;->findResourcesImplForKeyLocked(Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesImpl;

    move-result-object v1

    .line 614
    .local v1, "existingResourcesImpl":Landroid/content/res/ResourcesImpl;
    if-eqz v1, :cond_5

    .line 619
    invoke-virtual {v3}, Landroid/content/res/ResourcesImpl;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/AssetManager;->close()V

    .line 620
    move-object v3, v1

    .line 627
    :goto_1
    if-eqz p1, :cond_6

    .line 628
    invoke-direct {p0, p1, p3, v3}, Landroid/app/ResourcesManager;->getOrCreateResourcesForActivityLocked(Landroid/os/IBinder;Ljava/lang/ClassLoader;Landroid/content/res/ResourcesImpl;)Landroid/content/res/Resources;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v2

    .local v2, "resources":Landroid/content/res/Resources;
    :goto_2
    monitor-exit p0

    .line 633
    return-object v2

    .line 623
    .end local v2    # "resources":Landroid/content/res/Resources;
    :cond_5
    :try_start_4
    iget-object v5, p0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    new-instance v6, Ljava/lang/ref/WeakReference;

    invoke-direct {v6, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v5, p2, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    .line 612
    .end local v1    # "existingResourcesImpl":Landroid/content/res/ResourcesImpl;
    :catchall_1
    move-exception v5

    monitor-exit p0

    throw v5

    .line 631
    .restart local v1    # "existingResourcesImpl":Landroid/content/res/ResourcesImpl;
    :cond_6
    :try_start_5
    invoke-direct {p0, p3, v3}, Landroid/app/ResourcesManager;->getOrCreateResourcesLocked(Ljava/lang/ClassLoader;Landroid/content/res/ResourcesImpl;)Landroid/content/res/Resources;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v2

    .restart local v2    # "resources":Landroid/content/res/Resources;
    goto :goto_2
.end method

.method private getOrCreateResourcesForActivityLocked(Landroid/os/IBinder;Ljava/lang/ClassLoader;Landroid/content/res/ResourcesImpl;)Landroid/content/res/Resources;
    .locals 7
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;
    .param p3, "impl"    # Landroid/content/res/ResourcesImpl;

    .prologue
    .line 414
    invoke-direct {p0, p1}, Landroid/app/ResourcesManager;->getOrCreateActivityResourcesStructLocked(Landroid/os/IBinder;)Landroid/app/ResourcesManager$ActivityResources;

    move-result-object v0

    .line 417
    .local v0, "activityResources":Landroid/app/ResourcesManager$ActivityResources;
    iget-object v5, v0, Landroid/app/ResourcesManager$ActivityResources;->activityResources:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 418
    .local v2, "refCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 419
    iget-object v5, v0, Landroid/app/ResourcesManager$ActivityResources;->activityResources:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    .line 420
    .local v4, "weakResourceRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/res/Resources;

    .line 422
    .local v3, "resources":Landroid/content/res/Resources;
    if-eqz v3, :cond_0

    .line 423
    invoke-virtual {v3}, Landroid/content/res/Resources;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-static {v5, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    .line 422
    if-eqz v5, :cond_0

    .line 424
    invoke-virtual {v3}, Landroid/content/res/Resources;->getImpl()Landroid/content/res/ResourcesImpl;

    move-result-object v5

    if-ne v5, p3, :cond_0

    .line 428
    return-object v3

    .line 418
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 435
    .end local v3    # "resources":Landroid/content/res/Resources;
    .end local v4    # "weakResourceRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    :cond_1
    new-instance v3, Landroid/content/res/MiuiResources;

    invoke-direct {v3, p2}, Landroid/content/res/MiuiResources;-><init>(Ljava/lang/ClassLoader;)V

    .line 436
    .restart local v3    # "resources":Landroid/content/res/Resources;
    invoke-virtual {v3, p3}, Landroid/content/res/Resources;->setImpl(Landroid/content/res/ResourcesImpl;)V

    .line 437
    iget-object v5, v0, Landroid/app/ResourcesManager$ActivityResources;->activityResources:Ljava/util/ArrayList;

    new-instance v6, Ljava/lang/ref/WeakReference;

    invoke-direct {v6, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 442
    return-object v3
.end method

.method private getOrCreateResourcesLocked(Ljava/lang/ClassLoader;Landroid/content/res/ResourcesImpl;)Landroid/content/res/Resources;
    .locals 6
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;
    .param p2, "impl"    # Landroid/content/res/ResourcesImpl;

    .prologue
    .line 452
    iget-object v4, p0, Landroid/app/ResourcesManager;->mResourceReferences:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 453
    .local v1, "refCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 454
    iget-object v4, p0, Landroid/app/ResourcesManager;->mResourceReferences:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 455
    .local v3, "weakResourceRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/res/Resources;

    .line 456
    .local v2, "resources":Landroid/content/res/Resources;
    if-eqz v2, :cond_0

    .line 457
    invoke-virtual {v2}, Landroid/content/res/Resources;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-static {v4, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    .line 456
    if-eqz v4, :cond_0

    .line 458
    invoke-virtual {v2}, Landroid/content/res/Resources;->getImpl()Landroid/content/res/ResourcesImpl;

    move-result-object v4

    if-ne v4, p2, :cond_0

    .line 462
    return-object v2

    .line 453
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 469
    .end local v2    # "resources":Landroid/content/res/Resources;
    .end local v3    # "weakResourceRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    :cond_1
    new-instance v2, Landroid/content/res/MiuiResources;

    invoke-direct {v2, p1}, Landroid/content/res/MiuiResources;-><init>(Ljava/lang/ClassLoader;)V

    .line 470
    .restart local v2    # "resources":Landroid/content/res/Resources;
    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->setImpl(Landroid/content/res/ResourcesImpl;)V

    .line 471
    iget-object v4, p0, Landroid/app/ResourcesManager;->mResourceReferences:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 476
    return-object v2
.end method


# virtual methods
.method public appendLibAssetForMainAssetPath(Ljava/lang/String;Ljava/lang/String;)V
    .locals 20
    .param p1, "assetPath"    # Ljava/lang/String;
    .param p2, "libAsset"    # Ljava/lang/String;

    .prologue
    .line 896
    monitor-enter p0

    .line 899
    :try_start_0
    new-instance v19, Landroid/util/ArrayMap;

    invoke-direct/range {v19 .. v19}, Landroid/util/ArrayMap;-><init>()V

    .line 901
    .local v19, "updatedResourceKeys":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/res/ResourcesImpl;Landroid/content/res/ResourcesKey;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v13

    .line 902
    .local v13, "implCount":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    if-ge v11, v13, :cond_3

    .line 903
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v1, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/res/ResourcesImpl;

    .line 904
    .local v12, "impl":Landroid/content/res/ResourcesImpl;
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v1, v11}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/res/ResourcesKey;

    .line 905
    .local v14, "key":Landroid/content/res/ResourcesKey;
    if-eqz v12, :cond_1

    iget-object v1, v14, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 906
    iget-object v1, v14, Landroid/content/res/ResourcesKey;->mLibDirs:[Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-static {v1, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 908
    iget-object v1, v14, Landroid/content/res/ResourcesKey;->mLibDirs:[Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, v14, Landroid/content/res/ResourcesKey;->mLibDirs:[Ljava/lang/String;

    array-length v1, v1

    .line 907
    :goto_1
    add-int/lit8 v15, v1, 0x1

    .line 909
    .local v15, "newLibAssetCount":I
    new-array v5, v15, [Ljava/lang/String;

    .line 910
    .local v5, "newLibAssets":[Ljava/lang/String;
    iget-object v1, v14, Landroid/content/res/ResourcesKey;->mLibDirs:[Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 911
    iget-object v1, v14, Landroid/content/res/ResourcesKey;->mLibDirs:[Ljava/lang/String;

    iget-object v2, v14, Landroid/content/res/ResourcesKey;->mLibDirs:[Ljava/lang/String;

    array-length v2, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v3, v5, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 913
    :cond_0
    add-int/lit8 v1, v15, -0x1

    aput-object p2, v5, v1

    .line 915
    new-instance v1, Landroid/content/res/ResourcesKey;

    .line 916
    iget-object v2, v14, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    .line 917
    iget-object v3, v14, Landroid/content/res/ResourcesKey;->mSplitResDirs:[Ljava/lang/String;

    .line 918
    iget-object v4, v14, Landroid/content/res/ResourcesKey;->mOverlayDirs:[Ljava/lang/String;

    .line 920
    iget v6, v14, Landroid/content/res/ResourcesKey;->mDisplayId:I

    .line 921
    iget-object v7, v14, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    .line 922
    iget-object v8, v14, Landroid/content/res/ResourcesKey;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    .line 915
    invoke-direct/range {v1 .. v8}, Landroid/content/res/ResourcesKey;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v12, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 902
    .end local v5    # "newLibAssets":[Ljava/lang/String;
    .end local v15    # "newLibAssetCount":I
    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 908
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 928
    .end local v12    # "impl":Landroid/content/res/ResourcesImpl;
    .end local v14    # "key":Landroid/content/res/ResourcesKey;
    :cond_3
    invoke-virtual/range {v19 .. v19}, Landroid/util/ArrayMap;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_4

    monitor-exit p0

    .line 929
    return-void

    .line 933
    :cond_4
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/app/ResourcesManager;->mResourceReferences:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v18

    .line 934
    .local v18, "resourcesCount":I
    const/4 v11, 0x0

    :goto_2
    move/from16 v0, v18

    if-ge v11, v0, :cond_7

    .line 935
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/app/ResourcesManager;->mResourceReferences:Ljava/util/ArrayList;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/content/res/Resources;

    .line 936
    .local v16, "r":Landroid/content/res/Resources;
    if-eqz v16, :cond_6

    .line 937
    invoke-virtual/range {v16 .. v16}, Landroid/content/res/Resources;->getImpl()Landroid/content/res/ResourcesImpl;

    move-result-object v1

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/res/ResourcesKey;

    .line 938
    .restart local v14    # "key":Landroid/content/res/ResourcesKey;
    if-eqz v14, :cond_6

    .line 939
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Landroid/app/ResourcesManager;->findOrCreateResourcesImplForKeyLocked(Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesImpl;

    move-result-object v12

    .line 940
    .restart local v12    # "impl":Landroid/content/res/ResourcesImpl;
    if-nez v12, :cond_5

    .line 941
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "failed to load "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 896
    .end local v11    # "i":I
    .end local v12    # "impl":Landroid/content/res/ResourcesImpl;
    .end local v13    # "implCount":I
    .end local v14    # "key":Landroid/content/res/ResourcesKey;
    .end local v16    # "r":Landroid/content/res/Resources;
    .end local v18    # "resourcesCount":I
    .end local v19    # "updatedResourceKeys":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/res/ResourcesImpl;Landroid/content/res/ResourcesKey;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 943
    .restart local v11    # "i":I
    .restart local v12    # "impl":Landroid/content/res/ResourcesImpl;
    .restart local v13    # "implCount":I
    .restart local v14    # "key":Landroid/content/res/ResourcesKey;
    .restart local v16    # "r":Landroid/content/res/Resources;
    .restart local v18    # "resourcesCount":I
    .restart local v19    # "updatedResourceKeys":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/res/ResourcesImpl;Landroid/content/res/ResourcesKey;>;"
    :cond_5
    :try_start_2
    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Landroid/content/res/Resources;->setImpl(Landroid/content/res/ResourcesImpl;)V

    .line 934
    .end local v12    # "impl":Landroid/content/res/ResourcesImpl;
    .end local v14    # "key":Landroid/content/res/ResourcesKey;
    :cond_6
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 949
    .end local v16    # "r":Landroid/content/res/Resources;
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/app/ResourcesManager;->mActivityResourceReferences:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "activityResources$iterator":Ljava/util/Iterator;
    :cond_8
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/ResourcesManager$ActivityResources;

    .line 950
    .local v9, "activityResources":Landroid/app/ResourcesManager$ActivityResources;
    iget-object v1, v9, Landroid/app/ResourcesManager$ActivityResources;->activityResources:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v17

    .line 951
    .local v17, "resCount":I
    const/4 v11, 0x0

    :goto_3
    move/from16 v0, v17

    if-ge v11, v0, :cond_8

    .line 952
    iget-object v1, v9, Landroid/app/ResourcesManager$ActivityResources;->activityResources:Ljava/util/ArrayList;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/content/res/Resources;

    .line 953
    .restart local v16    # "r":Landroid/content/res/Resources;
    if-eqz v16, :cond_a

    .line 954
    invoke-virtual/range {v16 .. v16}, Landroid/content/res/Resources;->getImpl()Landroid/content/res/ResourcesImpl;

    move-result-object v1

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/res/ResourcesKey;

    .line 955
    .restart local v14    # "key":Landroid/content/res/ResourcesKey;
    if-eqz v14, :cond_a

    .line 956
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Landroid/app/ResourcesManager;->findOrCreateResourcesImplForKeyLocked(Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesImpl;

    move-result-object v12

    .line 957
    .restart local v12    # "impl":Landroid/content/res/ResourcesImpl;
    if-nez v12, :cond_9

    .line 958
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "failed to load "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 960
    :cond_9
    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Landroid/content/res/Resources;->setImpl(Landroid/content/res/ResourcesImpl;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 951
    .end local v12    # "impl":Landroid/content/res/ResourcesImpl;
    .end local v14    # "key":Landroid/content/res/ResourcesKey;
    :cond_a
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .end local v9    # "activityResources":Landroid/app/ResourcesManager$ActivityResources;
    .end local v16    # "r":Landroid/content/res/Resources;
    .end local v17    # "resCount":I
    :cond_b
    monitor-exit p0

    .line 895
    return-void
.end method

.method public applyCompatConfigurationLocked(ILandroid/content/res/Configuration;)Z
    .locals 1
    .param p1, "displayDensity"    # I
    .param p2, "compatConfiguration"    # Landroid/content/res/Configuration;

    .prologue
    .line 195
    iget-object v0, p0, Landroid/app/ResourcesManager;->mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/ResourcesManager;->mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v0}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 199
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 196
    :cond_1
    iget-object v0, p0, Landroid/app/ResourcesManager;->mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/CompatibilityInfo;->applyToConfiguration(ILandroid/content/res/Configuration;)V

    .line 197
    const/4 v0, 0x1

    return v0
.end method

.method public final applyConfigurationToResourcesLocked(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)Z
    .locals 18
    .param p1, "config"    # Landroid/content/res/Configuration;
    .param p2, "compat"    # Landroid/content/res/CompatibilityInfo;

    .prologue
    .line 808
    :try_start_0
    const-string/jumbo v14, "ResourcesManager#applyConfigurationToResourcesLocked"

    .line 807
    const-wide/16 v16, 0x2000

    move-wide/from16 v0, v16

    invoke-static {v0, v1, v14}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 810
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/app/ResourcesManager;->mResConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Landroid/content/res/Configuration;->isOtherSeqNewer(Landroid/content/res/Configuration;)Z

    move-result v14

    if-nez v14, :cond_1

    if-nez p2, :cond_1

    .line 811
    sget-boolean v14, Landroid/app/ActivityThread;->DEBUG_CONFIGURATION:Z

    if-eqz v14, :cond_0

    const-string/jumbo v14, "ResourcesManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Skipping new config: curSeq="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 812
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ResourcesManager;->mResConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/content/res/Configuration;->seq:I

    move/from16 v16, v0

    .line 811
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 812
    const-string/jumbo v16, ", newSeq="

    .line 811
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 812
    move-object/from16 v0, p1

    iget v0, v0, Landroid/content/res/Configuration;->seq:I

    move/from16 v16, v0

    .line 811
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 813
    :cond_0
    const/4 v14, 0x0

    .line 885
    const-wide/16 v16, 0x2000

    invoke-static/range {v16 .. v17}, Landroid/os/Trace;->traceEnd(J)V

    .line 813
    return v14

    .line 815
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/app/ResourcesManager;->mResConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result v2

    .line 817
    .local v2, "changes":I
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/app/ResourcesManager;->mDisplays:Landroid/util/ArrayMap;

    invoke-virtual {v14}, Landroid/util/ArrayMap;->clear()V

    .line 818
    invoke-virtual/range {p0 .. p0}, Landroid/app/ResourcesManager;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    .line 820
    .local v5, "defaultDisplayMetrics":Landroid/util/DisplayMetrics;
    if-eqz p2, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/app/ResourcesManager;->mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    if-eqz v14, :cond_9

    .line 821
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/app/ResourcesManager;->mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Landroid/content/res/CompatibilityInfo;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    :cond_2
    :goto_0
    move-object/from16 v0, p1

    invoke-static {v2, v0}, Landroid/app/MiuiThemeHelper;->handleExtraConfigurationChanges(ILandroid/content/res/Configuration;)V

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v5, v1}, Landroid/content/res/Resources;->updateSystemConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V


    invoke-static/range {v2 .. v2}, Landroid/app/FlymeResourcesManagerInjector;->freeCaches(I)V

    invoke-static {}, Landroid/app/ApplicationPackageManager;->configurationChanged()V

    const/4 v13, 0x0

    .local v13, "tmpConfig":Landroid/content/res/Configuration;
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v14}, Landroid/util/ArrayMap;->size()I

    move-result v14

    add-int/lit8 v9, v14, -0x1

    .end local v13    # "tmpConfig":Landroid/content/res/Configuration;
    .local v9, "i":I
    :goto_1
    if-ltz v9, :cond_d

    .line 838
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v14, v9}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/res/ResourcesKey;

    .line 839
    .local v11, "key":Landroid/content/res/ResourcesKey;
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v14, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/ref/WeakReference;

    invoke-virtual {v14}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/res/ResourcesImpl;

    .line 840
    .local v12, "r":Landroid/content/res/ResourcesImpl;
    if-eqz v12, :cond_c

    .line 841
    sget-boolean v14, Landroid/app/ActivityThread;->DEBUG_CONFIGURATION:Z

    if-eqz v14, :cond_3

    const-string/jumbo v14, "ResourcesManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Changing resources "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 842
    const-string/jumbo v16, " config to: "

    .line 841
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    :cond_3
    iget v6, v11, Landroid/content/res/ResourcesKey;->mDisplayId:I

    .line 844
    .local v6, "displayId":I
    if-nez v6, :cond_a

    const/4 v10, 0x1

    .line 845
    .local v10, "isDefaultDisplay":Z
    :goto_2
    move-object v7, v5

    .line 846
    .local v7, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {v11}, Landroid/content/res/ResourcesKey;->hasOverrideConfiguration()Z

    move-result v8

    .line 847
    .local v8, "hasOverrideConfiguration":Z
    if-eqz v10, :cond_4

    if-eqz v8, :cond_b

    .line 848
    :cond_4
    if-nez v13, :cond_5

    .line 849
    new-instance v13, Landroid/content/res/Configuration;

    invoke-direct {v13}, Landroid/content/res/Configuration;-><init>()V

    .line 851
    :cond_5
    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 857
    invoke-virtual {v12}, Landroid/content/res/ResourcesImpl;->getDisplayAdjustments()Landroid/view/DisplayAdjustments;

    move-result-object v3

    .line 858
    .local v3, "daj":Landroid/view/DisplayAdjustments;
    if-eqz p2, :cond_6

    .line 859
    new-instance v4, Landroid/view/DisplayAdjustments;

    invoke-direct {v4, v3}, Landroid/view/DisplayAdjustments;-><init>(Landroid/view/DisplayAdjustments;)V

    .line 860
    .end local v3    # "daj":Landroid/view/DisplayAdjustments;
    .local v4, "daj":Landroid/view/DisplayAdjustments;
    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Landroid/view/DisplayAdjustments;->setCompatibilityInfo(Landroid/content/res/CompatibilityInfo;)V

    move-object v3, v4

    .line 862
    .end local v4    # "daj":Landroid/view/DisplayAdjustments;
    .restart local v3    # "daj":Landroid/view/DisplayAdjustments;
    :cond_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v3}, Landroid/app/ResourcesManager;->getDisplayMetrics(ILandroid/view/DisplayAdjustments;)Landroid/util/DisplayMetrics;

    move-result-object v7

    .line 864
    if-nez v10, :cond_7

    .line 865
    invoke-static {v7, v13}, Landroid/app/ResourcesManager;->applyNonDefaultDisplayMetricsToConfiguration(Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 868
    :cond_7
    if-eqz v8, :cond_8

    .line 869
    iget-object v14, v11, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v13, v14}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 871
    :cond_8
    move-object/from16 v0, p2

    invoke-virtual {v12, v13, v7, v0}, Landroid/content/res/ResourcesImpl;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V

    .line 837
    .end local v3    # "daj":Landroid/view/DisplayAdjustments;
    .end local v6    # "displayId":I
    .end local v7    # "dm":Landroid/util/DisplayMetrics;
    .end local v8    # "hasOverrideConfiguration":Z
    .end local v10    # "isDefaultDisplay":Z
    :goto_3
    add-int/lit8 v9, v9, -0x1

    goto/16 :goto_1

    .line 822
    .end local v9    # "i":I
    .end local v11    # "key":Landroid/content/res/ResourcesKey;
    .end local v12    # "r":Landroid/content/res/ResourcesImpl;
    :cond_9
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/app/ResourcesManager;->mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    .line 823
    or-int/lit16 v2, v2, 0xd00

    goto/16 :goto_0

    .line 844
    .restart local v6    # "displayId":I
    .restart local v9    # "i":I
    .restart local v11    # "key":Landroid/content/res/ResourcesKey;
    .restart local v12    # "r":Landroid/content/res/ResourcesImpl;
    :cond_a
    const/4 v10, 0x0

    .restart local v10    # "isDefaultDisplay":Z
    goto :goto_2

    .line 873
    .restart local v7    # "dm":Landroid/util/DisplayMetrics;
    .restart local v8    # "hasOverrideConfiguration":Z
    :cond_b
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v12, v0, v5, v1}, Landroid/content/res/ResourcesImpl;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 884
    .end local v2    # "changes":I
    .end local v5    # "defaultDisplayMetrics":Landroid/util/DisplayMetrics;
    .end local v6    # "displayId":I
    .end local v7    # "dm":Landroid/util/DisplayMetrics;
    .end local v8    # "hasOverrideConfiguration":Z
    .end local v9    # "i":I
    .end local v10    # "isDefaultDisplay":Z
    .end local v11    # "key":Landroid/content/res/ResourcesKey;
    .end local v12    # "r":Landroid/content/res/ResourcesImpl;
    :catchall_0
    move-exception v14

    .line 885
    const-wide/16 v16, 0x2000

    invoke-static/range {v16 .. v17}, Landroid/os/Trace;->traceEnd(J)V

    .line 884
    throw v14

    .line 879
    .restart local v2    # "changes":I
    .restart local v5    # "defaultDisplayMetrics":Landroid/util/DisplayMetrics;
    .restart local v9    # "i":I
    .restart local v11    # "key":Landroid/content/res/ResourcesKey;
    .restart local v12    # "r":Landroid/content/res/ResourcesImpl;
    :cond_c
    :try_start_2
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v14, v9}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 883
    .end local v11    # "key":Landroid/content/res/ResourcesKey;
    .end local v12    # "r":Landroid/content/res/ResourcesImpl;
    :cond_d
    if-eqz v2, :cond_e

    const/4 v14, 0x1

    .line 885
    :goto_4
    const-wide/16 v16, 0x2000

    invoke-static/range {v16 .. v17}, Landroid/os/Trace;->traceEnd(J)V

    .line 883
    return v14

    :cond_e
    const/4 v14, 0x0

    goto :goto_4
.end method

.method protected createAssetManager(Landroid/content/res/ResourcesKey;)Landroid/content/res/AssetManager;
    .locals 10
    .param p1, "key"    # Landroid/content/res/ResourcesKey;

    .prologue
    const/4 v9, 0x0

    const/4 v4, 0x0

    .line 246
    new-instance v0, Landroid/content/res/AssetManager;

    invoke-direct {v0}, Landroid/content/res/AssetManager;-><init>()V

    .line 251
    .local v0, "assets":Landroid/content/res/AssetManager;
    iget-object v5, p1, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 252
    iget-object v5, p1, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_0

    .line 253
    const-string/jumbo v4, "ResourcesManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "failed to add asset path "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    return-object v9

    .line 258
    :cond_0
    iget-object v5, p1, Landroid/content/res/ResourcesKey;->mSplitResDirs:[Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 259
    iget-object v6, p1, Landroid/content/res/ResourcesKey;->mSplitResDirs:[Ljava/lang/String;

    array-length v7, v6

    move v5, v4

    :goto_0
    if-ge v5, v7, :cond_2

    aget-object v3, v6, v5

    .line 260
    .local v3, "splitResDir":Ljava/lang/String;
    invoke-virtual {v0, v3}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_1

    .line 261
    const-string/jumbo v4, "ResourcesManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "failed to add split asset path "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    return-object v9

    .line 259
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 267
    .end local v3    # "splitResDir":Ljava/lang/String;
    :cond_2
    iget-object v5, p1, Landroid/content/res/ResourcesKey;->mOverlayDirs:[Ljava/lang/String;

    if-eqz v5, :cond_3

    .line 268
    iget-object v6, p1, Landroid/content/res/ResourcesKey;->mOverlayDirs:[Ljava/lang/String;

    array-length v7, v6

    move v5, v4

    :goto_1
    if-ge v5, v7, :cond_3

    aget-object v1, v6, v5

    .line 269
    .local v1, "idmapPath":Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->addOverlayPath(Ljava/lang/String;)I

    .line 268
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 273
    .end local v1    # "idmapPath":Ljava/lang/String;
    :cond_3
    iget-object v5, p1, Landroid/content/res/ResourcesKey;->mLibDirs:[Ljava/lang/String;

    if-eqz v5, :cond_5

    .line 274
    iget-object v5, p1, Landroid/content/res/ResourcesKey;->mLibDirs:[Ljava/lang/String;

    array-length v6, v5

    :goto_2
    if-ge v4, v6, :cond_5

    aget-object v2, v5, v4

    .line 275
    .local v2, "libDir":Ljava/lang/String;
    const-string/jumbo v7, ".apk"

    invoke-virtual {v2, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 278
    invoke-virtual {v0, v2}, Landroid/content/res/AssetManager;->addAssetPathAsSharedLibrary(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_4

    .line 279
    const-string/jumbo v7, "ResourcesManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Asset path \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 280
    const-string/jumbo v9, "\' does not exist or contains no resources."

    .line 279
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 285
    .end local v2    # "libDir":Ljava/lang/String;
    :cond_5
    return-object v0
.end method

.method public createBaseActivityResources(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;)Landroid/content/res/Resources;
    .locals 10
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "resDir"    # Ljava/lang/String;
    .param p3, "splitResDirs"    # [Ljava/lang/String;
    .param p4, "overlayDirs"    # [Ljava/lang/String;
    .param p5, "libDirs"    # [Ljava/lang/String;
    .param p6, "displayId"    # I
    .param p7, "overrideConfig"    # Landroid/content/res/Configuration;
    .param p8, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p9, "classLoader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 510
    :try_start_0
    const-string/jumbo v3, "ResourcesManager#createBaseActivityResources"

    .line 509
    const-wide/16 v4, 0x2000

    invoke-static {v4, v5, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 511
    new-instance v2, Landroid/content/res/ResourcesKey;

    .line 517
    if-eqz p7, :cond_0

    new-instance v8, Landroid/content/res/Configuration;

    move-object/from16 v0, p7

    invoke-direct {v8, v0}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    :goto_0
    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move/from16 v7, p6

    move-object/from16 v9, p8

    .line 511
    invoke-direct/range {v2 .. v9}, Landroid/content/res/ResourcesKey;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V

    .line 519
    .local v2, "key":Landroid/content/res/ResourcesKey;
    if-eqz p9, :cond_1

    .line 526
    :goto_1
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 528
    :try_start_1
    invoke-direct {p0, p1}, Landroid/app/ResourcesManager;->getOrCreateActivityResourcesStructLocked(Landroid/os/IBinder;)Landroid/app/ResourcesManager$ActivityResources;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit p0

    .line 532
    move-object/from16 v0, p7

    invoke-virtual {p0, p1, v0}, Landroid/app/ResourcesManager;->updateResourcesForActivity(Landroid/os/IBinder;Landroid/content/res/Configuration;)V

    .line 535
    move-object/from16 v0, p9

    invoke-direct {p0, p1, v2, v0}, Landroid/app/ResourcesManager;->getOrCreateResources(Landroid/os/IBinder;Landroid/content/res/ResourcesKey;Ljava/lang/ClassLoader;)Landroid/content/res/Resources;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v3

    .line 537
    const-wide/16 v4, 0x2000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 535
    return-object v3

    .line 517
    .end local v2    # "key":Landroid/content/res/ResourcesKey;
    :cond_0
    const/4 v8, 0x0

    goto :goto_0

    .line 519
    .restart local v2    # "key":Landroid/content/res/ResourcesKey;
    :cond_1
    :try_start_3
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object p9

    goto :goto_1

    .line 526
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 536
    .end local v2    # "key":Landroid/content/res/ResourcesKey;
    :catchall_1
    move-exception v3

    .line 537
    const-wide/16 v4, 0x2000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 536
    throw v3
.end method

.method public getAdjustedDisplay(ILandroid/view/DisplayAdjustments;)Landroid/view/Display;
    .locals 7
    .param p1, "displayId"    # I
    .param p2, "displayAdjustments"    # Landroid/view/DisplayAdjustments;

    .prologue
    const/4 v6, 0x0

    .line 211
    if-eqz p2, :cond_0

    .line 212
    new-instance v1, Landroid/view/DisplayAdjustments;

    invoke-direct {v1, p2}, Landroid/view/DisplayAdjustments;-><init>(Landroid/view/DisplayAdjustments;)V

    .line 214
    .local v1, "displayAdjustmentsCopy":Landroid/view/DisplayAdjustments;
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v5, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    .line 215
    .local v3, "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/view/DisplayAdjustments;>;"
    monitor-enter p0

    .line 216
    :try_start_0
    iget-object v5, p0, Landroid/app/ResourcesManager;->mDisplays:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    .line 217
    .local v4, "wd":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/Display;>;"
    if-eqz v4, :cond_1

    .line 218
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Display;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 219
    .local v0, "display":Landroid/view/Display;
    if-eqz v0, :cond_1

    monitor-exit p0

    .line 220
    return-object v0

    .line 212
    .end local v0    # "display":Landroid/view/Display;
    .end local v1    # "displayAdjustmentsCopy":Landroid/view/DisplayAdjustments;
    .end local v3    # "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/view/DisplayAdjustments;>;"
    .end local v4    # "wd":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/Display;>;"
    :cond_0
    new-instance v1, Landroid/view/DisplayAdjustments;

    invoke-direct {v1}, Landroid/view/DisplayAdjustments;-><init>()V

    goto :goto_0

    .line 223
    .restart local v1    # "displayAdjustmentsCopy":Landroid/view/DisplayAdjustments;
    .restart local v3    # "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/view/DisplayAdjustments;>;"
    .restart local v4    # "wd":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/Display;>;"
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 224
    .local v2, "dm":Landroid/hardware/display/DisplayManagerGlobal;
    if-nez v2, :cond_2

    monitor-exit p0

    .line 226
    return-object v6

    .line 228
    :cond_2
    :try_start_2
    iget-object v5, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Landroid/view/DisplayAdjustments;

    invoke-virtual {v2, p1, v5}, Landroid/hardware/display/DisplayManagerGlobal;->getCompatibleDisplay(ILandroid/view/DisplayAdjustments;)Landroid/view/Display;

    move-result-object v0

    .line 229
    .restart local v0    # "display":Landroid/view/Display;
    if-eqz v0, :cond_3

    .line 230
    iget-object v5, p0, Landroid/app/ResourcesManager;->mDisplays:Landroid/util/ArrayMap;

    new-instance v6, Ljava/lang/ref/WeakReference;

    invoke-direct {v6, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v5, v3, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    monitor-exit p0

    .line 232
    return-object v0

    .line 215
    .end local v0    # "display":Landroid/view/Display;
    .end local v2    # "dm":Landroid/hardware/display/DisplayManagerGlobal;
    .end local v4    # "wd":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/Display;>;"
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public getConfiguration()Landroid/content/res/Configuration;
    .locals 1

    .prologue
    .line 146
    monitor-enter p0

    .line 147
    :try_start_0
    iget-object v0, p0, Landroid/app/ResourcesManager;->mResConfiguration:Landroid/content/res/Configuration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 146
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getDisplayMetrics()Landroid/util/DisplayMetrics;
    .locals 2

    .prologue
    .line 153
    sget-object v0, Landroid/view/DisplayAdjustments;->DEFAULT_DISPLAY_ADJUSTMENTS:Landroid/view/DisplayAdjustments;

    .line 152
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/app/ResourcesManager;->getDisplayMetrics(ILandroid/view/DisplayAdjustments;)Landroid/util/DisplayMetrics;

    move-result-object v0

    return-object v0
.end method

.method protected getDisplayMetrics(ILandroid/view/DisplayAdjustments;)Landroid/util/DisplayMetrics;
    .locals 2
    .param p1, "displayId"    # I
    .param p2, "da"    # Landroid/view/DisplayAdjustments;

    .prologue
    .line 161
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 162
    .local v1, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {p0, p1, p2}, Landroid/app/ResourcesManager;->getAdjustedDisplay(ILandroid/view/DisplayAdjustments;)Landroid/view/Display;

    move-result-object v0

    .line 163
    .local v0, "display":Landroid/view/Display;
    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 168
    :goto_0
    return-object v1

    .line 166
    :cond_0
    invoke-virtual {v1}, Landroid/util/DisplayMetrics;->setToDefaults()V

    goto :goto_0
.end method

.method public getResources(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;)Landroid/content/res/Resources;
    .locals 10
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "resDir"    # Ljava/lang/String;
    .param p3, "splitResDirs"    # [Ljava/lang/String;
    .param p4, "overlayDirs"    # [Ljava/lang/String;
    .param p5, "libDirs"    # [Ljava/lang/String;
    .param p6, "displayId"    # I
    .param p7, "overrideConfig"    # Landroid/content/res/Configuration;
    .param p8, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p9, "classLoader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 674
    :try_start_0
    const-string/jumbo v3, "ResourcesManager#getResources"

    const-wide/16 v4, 0x2000

    invoke-static {v4, v5, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 675
    new-instance v2, Landroid/content/res/ResourcesKey;

    .line 681
    if-eqz p7, :cond_0

    new-instance v8, Landroid/content/res/Configuration;

    move-object/from16 v0, p7

    invoke-direct {v8, v0}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    :goto_0
    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move/from16 v7, p6

    move-object/from16 v9, p8

    .line 675
    invoke-direct/range {v2 .. v9}, Landroid/content/res/ResourcesKey;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V

    .line 683
    .local v2, "key":Landroid/content/res/ResourcesKey;
    if-eqz p9, :cond_1

    .line 684
    :goto_1
    move-object/from16 v0, p9

    invoke-direct {p0, p1, v2, v0}, Landroid/app/ResourcesManager;->getOrCreateResources(Landroid/os/IBinder;Landroid/content/res/ResourcesKey;Ljava/lang/ClassLoader;)Landroid/content/res/Resources;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 686
    const-wide/16 v4, 0x2000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 684
    return-object v3

    .line 681
    .end local v2    # "key":Landroid/content/res/ResourcesKey;
    :cond_0
    const/4 v8, 0x0

    goto :goto_0

    .line 683
    .restart local v2    # "key":Landroid/content/res/ResourcesKey;
    :cond_1
    :try_start_1
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object p9

    goto :goto_1

    .line 685
    .end local v2    # "key":Landroid/content/res/ResourcesKey;
    :catchall_0
    move-exception v3

    .line 686
    const-wide/16 v4, 0x2000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 685
    throw v3
.end method

.method public invalidatePath(Ljava/lang/String;)V
    .locals 7
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 127
    monitor-enter p0

    .line 128
    const/4 v0, 0x0

    .line 129
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v4, p0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 130
    iget-object v4, p0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/res/ResourcesKey;

    .line 131
    .local v2, "key":Landroid/content/res/ResourcesKey;
    invoke-virtual {v2, p1}, Landroid/content/res/ResourcesKey;->isPathReferenced(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 132
    iget-object v4, p0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/res/ResourcesImpl;

    .line 133
    .local v3, "res":Landroid/content/res/ResourcesImpl;
    if-eqz v3, :cond_0

    .line 134
    invoke-virtual {v3}, Landroid/content/res/ResourcesImpl;->flushLayoutCache()V

    .line 136
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 138
    .end local v3    # "res":Landroid/content/res/ResourcesImpl;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 141
    .end local v2    # "key":Landroid/content/res/ResourcesKey;
    :cond_2
    const-string/jumbo v4, "ResourcesManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Invalidated "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " asset managers that referenced "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 126
    return-void

    .line 127
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method isSameResourcesOverrideConfig(Landroid/os/IBinder;Landroid/content/res/Configuration;)Z
    .locals 2
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "overrideConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 387
    monitor-enter p0

    .line 389
    if-eqz p1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/ResourcesManager;->mActivityResourceReferences:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ResourcesManager$ActivityResources;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 390
    :goto_0
    if-nez v0, :cond_2

    .line 391
    if-nez p2, :cond_1

    const/4 v1, 0x1

    :goto_1
    monitor-exit p0

    return v1

    .line 389
    :cond_0
    const/4 v0, 0x0

    .local v0, "activityResources":Landroid/app/ResourcesManager$ActivityResources;
    goto :goto_0

    .line 391
    .end local v0    # "activityResources":Landroid/app/ResourcesManager$ActivityResources;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 393
    :cond_2
    :try_start_1
    iget-object v1, v0, Landroid/app/ResourcesManager$ActivityResources;->overrideConfig:Landroid/content/res/Configuration;

    invoke-static {v1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    monitor-exit p0

    return v1

    .line 387
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public updateResourcesForActivity(Landroid/os/IBinder;Landroid/content/res/Configuration;)V
    .locals 20
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "overrideConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 703
    :try_start_0
    const-string/jumbo v3, "ResourcesManager#updateResourcesForActivity"

    .line 702
    const-wide/16 v4, 0x2000

    invoke-static {v4, v5, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 704
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 706
    :try_start_1
    invoke-direct/range {p0 .. p1}, Landroid/app/ResourcesManager;->getOrCreateActivityResourcesStructLocked(Landroid/os/IBinder;)Landroid/app/ResourcesManager$ActivityResources;

    move-result-object v11

    .line 708
    .local v11, "activityResources":Landroid/app/ResourcesManager$ActivityResources;
    iget-object v3, v11, Landroid/app/ResourcesManager$ActivityResources;->overrideConfig:Landroid/content/res/Configuration;

    move-object/from16 v0, p2

    invoke-static {v3, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 800
    const-wide/16 v4, 0x2000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 710
    return-void

    .line 715
    :cond_0
    :try_start_3
    new-instance v13, Landroid/content/res/Configuration;

    iget-object v3, v11, Landroid/app/ResourcesManager$ActivityResources;->overrideConfig:Landroid/content/res/Configuration;

    invoke-direct {v13, v3}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 718
    .local v13, "oldConfig":Landroid/content/res/Configuration;
    if-eqz p2, :cond_2

    .line 719
    iget-object v3, v11, Landroid/app/ResourcesManager$ActivityResources;->overrideConfig:Landroid/content/res/Configuration;

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 737
    :goto_0
    iget-object v3, v11, Landroid/app/ResourcesManager$ActivityResources;->overrideConfig:Landroid/content/res/Configuration;

    sget-object v4, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    invoke-virtual {v3, v4}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v10, 0x0

    .line 740
    .local v10, "activityHasOverrideConfig":Z
    :goto_1
    iget-object v3, v11, Landroid/app/ResourcesManager$ActivityResources;->activityResources:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v16

    .line 741
    .local v16, "refCount":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_2
    move/from16 v0, v16

    if-ge v12, v0, :cond_9

    .line 742
    iget-object v3, v11, Landroid/app/ResourcesManager$ActivityResources;->activityResources:Ljava/util/ArrayList;

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/ref/WeakReference;

    .line 744
    .local v19, "weakResRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    invoke-virtual/range {v19 .. v19}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/res/Resources;

    .line 745
    .local v17, "resources":Landroid/content/res/Resources;
    if-nez v17, :cond_4

    .line 741
    :cond_1
    :goto_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 721
    .end local v10    # "activityHasOverrideConfig":Z
    .end local v12    # "i":I
    .end local v16    # "refCount":I
    .end local v17    # "resources":Landroid/content/res/Resources;
    .end local v19    # "weakResRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    :cond_2
    iget-object v3, v11, Landroid/app/ResourcesManager$ActivityResources;->overrideConfig:Landroid/content/res/Configuration;

    invoke-virtual {v3}, Landroid/content/res/Configuration;->setToDefaults()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 704
    .end local v11    # "activityResources":Landroid/app/ResourcesManager$ActivityResources;
    .end local v13    # "oldConfig":Landroid/content/res/Configuration;
    :catchall_0
    move-exception v3

    :try_start_4
    monitor-exit p0

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 799
    :catchall_1
    move-exception v3

    .line 800
    const-wide/16 v4, 0x2000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 799
    throw v3

    .line 737
    .restart local v11    # "activityResources":Landroid/app/ResourcesManager$ActivityResources;
    .restart local v13    # "oldConfig":Landroid/content/res/Configuration;
    :cond_3
    const/4 v10, 0x1

    .restart local v10    # "activityHasOverrideConfig":Z
    goto :goto_1

    .line 751
    .restart local v12    # "i":I
    .restart local v16    # "refCount":I
    .restart local v17    # "resources":Landroid/content/res/Resources;
    .restart local v19    # "weakResRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    :cond_4
    :try_start_5
    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getImpl()Landroid/content/res/ResourcesImpl;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroid/app/ResourcesManager;->findKeyForResourceImplLocked(Landroid/content/res/ResourcesImpl;)Landroid/content/res/ResourcesKey;

    move-result-object v14

    .line 752
    .local v14, "oldKey":Landroid/content/res/ResourcesKey;
    if-nez v14, :cond_5

    .line 753
    const-string/jumbo v3, "ResourcesManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "can\'t find ResourcesKey for resources impl="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 754
    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getImpl()Landroid/content/res/ResourcesImpl;

    move-result-object v5

    .line 753
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 759
    :cond_5
    new-instance v8, Landroid/content/res/Configuration;

    invoke-direct {v8}, Landroid/content/res/Configuration;-><init>()V

    .line 760
    .local v8, "rebasedOverrideConfig":Landroid/content/res/Configuration;
    if-eqz p2, :cond_6

    .line 761
    move-object/from16 v0, p2

    invoke-virtual {v8, v0}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 764
    :cond_6
    if-eqz v10, :cond_7

    invoke-virtual {v14}, Landroid/content/res/ResourcesKey;->hasOverrideConfiguration()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 769
    iget-object v3, v14, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    .line 768
    invoke-static {v13, v3}, Landroid/content/res/Configuration;->generateDelta(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Landroid/content/res/Configuration;

    move-result-object v15

    .line 770
    .local v15, "overrideOverrideConfig":Landroid/content/res/Configuration;
    invoke-virtual {v8, v15}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 774
    .end local v15    # "overrideOverrideConfig":Landroid/content/res/Configuration;
    :cond_7
    new-instance v2, Landroid/content/res/ResourcesKey;

    iget-object v3, v14, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    .line 775
    iget-object v4, v14, Landroid/content/res/ResourcesKey;->mSplitResDirs:[Ljava/lang/String;

    .line 776
    iget-object v5, v14, Landroid/content/res/ResourcesKey;->mOverlayDirs:[Ljava/lang/String;

    iget-object v6, v14, Landroid/content/res/ResourcesKey;->mLibDirs:[Ljava/lang/String;

    iget v7, v14, Landroid/content/res/ResourcesKey;->mDisplayId:I

    .line 777
    iget-object v9, v14, Landroid/content/res/ResourcesKey;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    .line 774
    invoke-direct/range {v2 .. v9}, Landroid/content/res/ResourcesKey;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V

    .line 784
    .local v2, "newKey":Landroid/content/res/ResourcesKey;
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/app/ResourcesManager;->findResourcesImplForKeyLocked(Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesImpl;

    move-result-object v18

    .line 785
    .local v18, "resourcesImpl":Landroid/content/res/ResourcesImpl;
    if-nez v18, :cond_8

    .line 786
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/app/ResourcesManager;->createResourcesImpl(Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesImpl;

    move-result-object v18

    .line 787
    if-eqz v18, :cond_8

    .line 788
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    new-instance v4, Ljava/lang/ref/WeakReference;

    move-object/from16 v0, v18

    invoke-direct {v4, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 792
    :cond_8
    if-eqz v18, :cond_1

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getImpl()Landroid/content/res/ResourcesImpl;

    move-result-object v3

    move-object/from16 v0, v18

    if-eq v0, v3, :cond_1

    .line 795
    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->setImpl(Landroid/content/res/ResourcesImpl;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_3

    .end local v2    # "newKey":Landroid/content/res/ResourcesKey;
    .end local v8    # "rebasedOverrideConfig":Landroid/content/res/Configuration;
    .end local v14    # "oldKey":Landroid/content/res/ResourcesKey;
    .end local v17    # "resources":Landroid/content/res/Resources;
    .end local v18    # "resourcesImpl":Landroid/content/res/ResourcesImpl;
    .end local v19    # "weakResRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    :cond_9
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 800
    const-wide/16 v4, 0x2000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 700
    return-void
.end method
