.class public Lcom/bumptech/glide/GenericRequestBuilder;
.super Ljava/lang/Object;
.source "GenericRequestBuilder.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/GenericRequestBuilder$2;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ModelType:",
        "Ljava/lang/Object;",
        "DataType:",
        "Ljava/lang/Object;",
        "ResourceType:",
        "Ljava/lang/Object;",
        "TranscodeType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field private animationFactory:Lcom/bumptech/glide/request/animation/GlideAnimationFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/request/animation/GlideAnimationFactory",
            "<TTranscodeType;>;"
        }
    .end annotation
.end field

.field protected final context:Landroid/content/Context;

.field private diskCacheStrategy:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

.field private errorId:I

.field private errorPlaceholder:Landroid/graphics/drawable/Drawable;

.field private fallbackDrawable:Landroid/graphics/drawable/Drawable;

.field private fallbackResource:I

.field protected final glide:Lcom/bumptech/glide/Glide;

.field private isCacheable:Z

.field private isModelSet:Z

.field private isThumbnailBuilt:Z

.field private isTransformationSet:Z

.field protected final lifecycle:Lcom/bumptech/glide/manager/Lifecycle;

.field private loadProvider:Lcom/bumptech/glide/provider/ChildLoadProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/provider/ChildLoadProvider",
            "<TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation
.end field

.field private model:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TModelType;"
        }
    .end annotation
.end field

.field protected final modelClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TModelType;>;"
        }
    .end annotation
.end field

.field private overrideHeight:I

.field private overrideWidth:I

.field private placeholderDrawable:Landroid/graphics/drawable/Drawable;

.field private placeholderId:I

.field private priority:Lcom/bumptech/glide/Priority;

.field private requestListener:Lcom/bumptech/glide/request/RequestListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/request/RequestListener",
            "<-TModelType;TTranscodeType;>;"
        }
    .end annotation
.end field

.field protected final requestTracker:Lcom/bumptech/glide/manager/RequestTracker;

.field private signature:Lcom/bumptech/glide/load/Key;

.field private sizeMultiplier:Ljava/lang/Float;

.field private thumbSizeMultiplier:Ljava/lang/Float;

.field private thumbnailRequestBuilder:Lcom/bumptech/glide/GenericRequestBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/GenericRequestBuilder",
            "<***TTranscodeType;>;"
        }
    .end annotation
.end field

.field protected final transcodeClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TTranscodeType;>;"
        }
    .end annotation
.end field

.field private transformation:Lcom/bumptech/glide/load/Transformation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/Transformation",
            "<TResourceType;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/Class;Lcom/bumptech/glide/provider/LoadProvider;Ljava/lang/Class;Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/manager/RequestTracker;Lcom/bumptech/glide/manager/Lifecycle;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<TModelType;>;",
            "Lcom/bumptech/glide/provider/LoadProvider",
            "<TModelType;TDataType;TResourceType;TTranscodeType;>;",
            "Ljava/lang/Class",
            "<TTranscodeType;>;",
            "Lcom/bumptech/glide/Glide;",
            "Lcom/bumptech/glide/manager/RequestTracker;",
            "Lcom/bumptech/glide/manager/Lifecycle;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    const/4 v0, 0x0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-static {}, Lcom/bumptech/glide/signature/EmptySignature;->obtain()Lcom/bumptech/glide/signature/EmptySignature;

    move-result-object v1

    iput-object v1, p0, Lcom/bumptech/glide/GenericRequestBuilder;->signature:Lcom/bumptech/glide/load/Key;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 68
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, p0, Lcom/bumptech/glide/GenericRequestBuilder;->sizeMultiplier:Ljava/lang/Float;

    .line 71
    iput-object v0, p0, Lcom/bumptech/glide/GenericRequestBuilder;->priority:Lcom/bumptech/glide/Priority;

    .line 72
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/bumptech/glide/GenericRequestBuilder;->isCacheable:Z

    .line 73
    invoke-static {}, Lcom/bumptech/glide/request/animation/NoAnimation;->getFactory()Lcom/bumptech/glide/request/animation/GlideAnimationFactory;

    move-result-object v1

    iput-object v1, p0, Lcom/bumptech/glide/GenericRequestBuilder;->animationFactory:Lcom/bumptech/glide/request/animation/GlideAnimationFactory;

    .line 74
    iput v2, p0, Lcom/bumptech/glide/GenericRequestBuilder;->overrideHeight:I

    .line 75
    iput v2, p0, Lcom/bumptech/glide/GenericRequestBuilder;->overrideWidth:I

    .line 76
    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->RESULT:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    iput-object v1, p0, Lcom/bumptech/glide/GenericRequestBuilder;->diskCacheStrategy:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 77
    invoke-static {}, Lcom/bumptech/glide/load/resource/UnitTransformation;->get()Lcom/bumptech/glide/load/resource/UnitTransformation;

    move-result-object v1

    iput-object v1, p0, Lcom/bumptech/glide/GenericRequestBuilder;->transformation:Lcom/bumptech/glide/load/Transformation;

    .line 97
    iput-object p1, p0, Lcom/bumptech/glide/GenericRequestBuilder;->context:Landroid/content/Context;

    .line 98
    iput-object p2, p0, Lcom/bumptech/glide/GenericRequestBuilder;->modelClass:Ljava/lang/Class;

    .line 99
    iput-object p4, p0, Lcom/bumptech/glide/GenericRequestBuilder;->transcodeClass:Ljava/lang/Class;

    .line 100
    iput-object p5, p0, Lcom/bumptech/glide/GenericRequestBuilder;->glide:Lcom/bumptech/glide/Glide;

    .line 101
    iput-object p6, p0, Lcom/bumptech/glide/GenericRequestBuilder;->requestTracker:Lcom/bumptech/glide/manager/RequestTracker;

    .line 102
    iput-object p7, p0, Lcom/bumptech/glide/GenericRequestBuilder;->lifecycle:Lcom/bumptech/glide/manager/Lifecycle;

    .line 103
    if-nez p3, :cond_1

    :goto_0
    iput-object v0, p0, Lcom/bumptech/glide/GenericRequestBuilder;->loadProvider:Lcom/bumptech/glide/provider/ChildLoadProvider;

    .line 106
    if-eqz p1, :cond_2

    .line 109
    if-nez p2, :cond_3

    .line 112
    :cond_0
    return-void

    .line 103
    :cond_1
    new-instance v0, Lcom/bumptech/glide/provider/ChildLoadProvider;

    invoke-direct {v0, p3}, Lcom/bumptech/glide/provider/ChildLoadProvider;-><init>(Lcom/bumptech/glide/provider/LoadProvider;)V

    goto :goto_0

    .line 107
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Context can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_3
    if-nez p3, :cond_0

    .line 110
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "LoadProvider must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method constructor <init>(Lcom/bumptech/glide/provider/LoadProvider;Ljava/lang/Class;Lcom/bumptech/glide/GenericRequestBuilder;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/provider/LoadProvider",
            "<TModelType;TDataType;TResourceType;TTranscodeType;>;",
            "Ljava/lang/Class",
            "<TTranscodeType;>;",
            "Lcom/bumptech/glide/GenericRequestBuilder",
            "<TModelType;***>;)V"
        }
    .end annotation

    .prologue
    .line 85
    iget-object v1, p3, Lcom/bumptech/glide/GenericRequestBuilder;->context:Landroid/content/Context;

    iget-object v2, p3, Lcom/bumptech/glide/GenericRequestBuilder;->modelClass:Ljava/lang/Class;

    iget-object v5, p3, Lcom/bumptech/glide/GenericRequestBuilder;->glide:Lcom/bumptech/glide/Glide;

    iget-object v6, p3, Lcom/bumptech/glide/GenericRequestBuilder;->requestTracker:Lcom/bumptech/glide/manager/RequestTracker;

    iget-object v7, p3, Lcom/bumptech/glide/GenericRequestBuilder;->lifecycle:Lcom/bumptech/glide/manager/Lifecycle;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v7}, Lcom/bumptech/glide/GenericRequestBuilder;-><init>(Landroid/content/Context;Ljava/lang/Class;Lcom/bumptech/glide/provider/LoadProvider;Ljava/lang/Class;Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/manager/RequestTracker;Lcom/bumptech/glide/manager/Lifecycle;)V

    .line 87
    iget-object v0, p3, Lcom/bumptech/glide/GenericRequestBuilder;->model:Ljava/lang/Object;

    iput-object v0, p0, Lcom/bumptech/glide/GenericRequestBuilder;->model:Ljava/lang/Object;

    .line 88
    iget-boolean v0, p3, Lcom/bumptech/glide/GenericRequestBuilder;->isModelSet:Z

    iput-boolean v0, p0, Lcom/bumptech/glide/GenericRequestBuilder;->isModelSet:Z

    .line 89
    iget-object v0, p3, Lcom/bumptech/glide/GenericRequestBuilder;->signature:Lcom/bumptech/glide/load/Key;

    iput-object v0, p0, Lcom/bumptech/glide/GenericRequestBuilder;->signature:Lcom/bumptech/glide/load/Key;

    .line 90
    iget-object v0, p3, Lcom/bumptech/glide/GenericRequestBuilder;->diskCacheStrategy:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    iput-object v0, p0, Lcom/bumptech/glide/GenericRequestBuilder;->diskCacheStrategy:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 91
    iget-boolean v0, p3, Lcom/bumptech/glide/GenericRequestBuilder;->isCacheable:Z

    iput-boolean v0, p0, Lcom/bumptech/glide/GenericRequestBuilder;->isCacheable:Z

    .line 92
    return-void
.end method

.method private buildRequest(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/Request;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/target/Target",
            "<TTranscodeType;>;)",
            "Lcom/bumptech/glide/request/Request;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 794
    iget-object v0, p0, Lcom/bumptech/glide/GenericRequestBuilder;->priority:Lcom/bumptech/glide/Priority;

    if-eqz v0, :cond_0

    .line 797
    :goto_0
    invoke-direct {p0, p1, v1}, Lcom/bumptech/glide/GenericRequestBuilder;->buildRequestRecursive(Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;)Lcom/bumptech/glide/request/Request;

    move-result-object v0

    return-object v0

    .line 795
    :cond_0
    sget-object v0, Lcom/bumptech/glide/Priority;->NORMAL:Lcom/bumptech/glide/Priority;

    iput-object v0, p0, Lcom/bumptech/glide/GenericRequestBuilder;->priority:Lcom/bumptech/glide/Priority;

    goto :goto_0
.end method

.method private buildRequestRecursive(Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;)Lcom/bumptech/glide/request/Request;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/target/Target",
            "<TTranscodeType;>;",
            "Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;",
            ")",
            "Lcom/bumptech/glide/request/Request;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 801
    iget-object v0, p0, Lcom/bumptech/glide/GenericRequestBuilder;->thumbnailRequestBuilder:Lcom/bumptech/glide/GenericRequestBuilder;

    if-nez v0, :cond_0

    .line 830
    iget-object v0, p0, Lcom/bumptech/glide/GenericRequestBuilder;->thumbSizeMultiplier:Ljava/lang/Float;

    if-nez v0, :cond_6

    .line 839
    iget-object v0, p0, Lcom/bumptech/glide/GenericRequestBuilder;->sizeMultiplier:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v1, p0, Lcom/bumptech/glide/GenericRequestBuilder;->priority:Lcom/bumptech/glide/Priority;

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/bumptech/glide/GenericRequestBuilder;->obtainRequest(Lcom/bumptech/glide/request/target/Target;FLcom/bumptech/glide/Priority;Lcom/bumptech/glide/request/RequestCoordinator;)Lcom/bumptech/glide/request/Request;

    move-result-object v0

    return-object v0

    .line 802
    :cond_0
    iget-boolean v0, p0, Lcom/bumptech/glide/GenericRequestBuilder;->isThumbnailBuilt:Z

    if-nez v0, :cond_2

    .line 807
    iget-object v0, p0, Lcom/bumptech/glide/GenericRequestBuilder;->thumbnailRequestBuilder:Lcom/bumptech/glide/GenericRequestBuilder;

    iget-object v0, v0, Lcom/bumptech/glide/GenericRequestBuilder;->animationFactory:Lcom/bumptech/glide/request/animation/GlideAnimationFactory;

    invoke-static {}, Lcom/bumptech/glide/request/animation/NoAnimation;->getFactory()Lcom/bumptech/glide/request/animation/GlideAnimationFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 811
    :goto_0
    iget-object v0, p0, Lcom/bumptech/glide/GenericRequestBuilder;->thumbnailRequestBuilder:Lcom/bumptech/glide/GenericRequestBuilder;

    iget-object v0, v0, Lcom/bumptech/glide/GenericRequestBuilder;->priority:Lcom/bumptech/glide/Priority;

    if-eqz v0, :cond_4

    .line 815
    :goto_1
    iget v0, p0, Lcom/bumptech/glide/GenericRequestBuilder;->overrideWidth:I

    iget v1, p0, Lcom/bumptech/glide/GenericRequestBuilder;->overrideHeight:I

    invoke-static {v0, v1}, Lcom/bumptech/glide/util/Util;->isValidDimensions(II)Z

    move-result v0

    if-nez v0, :cond_5

    .line 821
    :cond_1
    :goto_2
    new-instance v0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;

    invoke-direct {v0, p2}, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;-><init>(Lcom/bumptech/glide/request/RequestCoordinator;)V

    .line 822
    iget-object v1, p0, Lcom/bumptech/glide/GenericRequestBuilder;->sizeMultiplier:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v2, p0, Lcom/bumptech/glide/GenericRequestBuilder;->priority:Lcom/bumptech/glide/Priority;

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/bumptech/glide/GenericRequestBuilder;->obtainRequest(Lcom/bumptech/glide/request/target/Target;FLcom/bumptech/glide/Priority;Lcom/bumptech/glide/request/RequestCoordinator;)Lcom/bumptech/glide/request/Request;

    move-result-object v1

    .line 824
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/bumptech/glide/GenericRequestBuilder;->isThumbnailBuilt:Z

    .line 826
    iget-object v2, p0, Lcom/bumptech/glide/GenericRequestBuilder;->thumbnailRequestBuilder:Lcom/bumptech/glide/GenericRequestBuilder;

    invoke-direct {v2, p1, v0}, Lcom/bumptech/glide/GenericRequestBuilder;->buildRequestRecursive(Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;)Lcom/bumptech/glide/request/Request;

    move-result-object v2

    .line 827
    iput-boolean v3, p0, Lcom/bumptech/glide/GenericRequestBuilder;->isThumbnailBuilt:Z

    .line 828
    invoke-virtual {v0, v1, v2}, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->setRequests(Lcom/bumptech/glide/request/Request;Lcom/bumptech/glide/request/Request;)V

    .line 829
    return-object v0

    .line 803
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "You cannot use a request as both the main request and a thumbnail, consider using clone() on the request(s) passed to thumbnail()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 808
    :cond_3
    iget-object v0, p0, Lcom/bumptech/glide/GenericRequestBuilder;->thumbnailRequestBuilder:Lcom/bumptech/glide/GenericRequestBuilder;

    iget-object v1, p0, Lcom/bumptech/glide/GenericRequestBuilder;->animationFactory:Lcom/bumptech/glide/request/animation/GlideAnimationFactory;

    iput-object v1, v0, Lcom/bumptech/glide/GenericRequestBuilder;->animationFactory:Lcom/bumptech/glide/request/animation/GlideAnimationFactory;

    goto :goto_0

    .line 812
    :cond_4
    iget-object v0, p0, Lcom/bumptech/glide/GenericRequestBuilder;->thumbnailRequestBuilder:Lcom/bumptech/glide/GenericRequestBuilder;

    invoke-direct {p0}, Lcom/bumptech/glide/GenericRequestBuilder;->getThumbnailPriority()Lcom/bumptech/glide/Priority;

    move-result-object v1

    iput-object v1, v0, Lcom/bumptech/glide/GenericRequestBuilder;->priority:Lcom/bumptech/glide/Priority;

    goto :goto_1

    .line 815
    :cond_5
    iget-object v0, p0, Lcom/bumptech/glide/GenericRequestBuilder;->thumbnailRequestBuilder:Lcom/bumptech/glide/GenericRequestBuilder;

    iget v0, v0, Lcom/bumptech/glide/GenericRequestBuilder;->overrideWidth:I

    iget-object v1, p0, Lcom/bumptech/glide/GenericRequestBuilder;->thumbnailRequestBuilder:Lcom/bumptech/glide/GenericRequestBuilder;

    iget v1, v1, Lcom/bumptech/glide/GenericRequestBuilder;->overrideHeight:I

    invoke-static {v0, v1}, Lcom/bumptech/glide/util/Util;->isValidDimensions(II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 818
    iget-object v0, p0, Lcom/bumptech/glide/GenericRequestBuilder;->thumbnailRequestBuilder:Lcom/bumptech/glide/GenericRequestBuilder;

    iget v1, p0, Lcom/bumptech/glide/GenericRequestBuilder;->overrideWidth:I

    iget v2, p0, Lcom/bumptech/glide/GenericRequestBuilder;->overrideHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/bumptech/glide/GenericRequestBuilder;->override(II)Lcom/bumptech/glide/GenericRequestBuilder;

    goto :goto_2

    .line 832
    :cond_6
    new-instance v0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;

    invoke-direct {v0, p2}, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;-><init>(Lcom/bumptech/glide/request/RequestCoordinator;)V

    .line 833
    iget-object v1, p0, Lcom/bumptech/glide/GenericRequestBuilder;->sizeMultiplier:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v2, p0, Lcom/bumptech/glide/GenericRequestBuilder;->priority:Lcom/bumptech/glide/Priority;

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/bumptech/glide/GenericRequestBuilder;->obtainRequest(Lcom/bumptech/glide/request/target/Target;FLcom/bumptech/glide/Priority;Lcom/bumptech/glide/request/RequestCoordinator;)Lcom/bumptech/glide/request/Request;

    move-result-object v1

    .line 834
    iget-object v2, p0, Lcom/bumptech/glide/GenericRequestBuilder;->thumbSizeMultiplier:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-direct {p0}, Lcom/bumptech/glide/GenericRequestBuilder;->getThumbnailPriority()Lcom/bumptech/glide/Priority;

    move-result-object v3

    invoke-direct {p0, p1, v2, v3, v0}, Lcom/bumptech/glide/GenericRequestBuilder;->obtainRequest(Lcom/bumptech/glide/request/target/Target;FLcom/bumptech/glide/Priority;Lcom/bumptech/glide/request/RequestCoordinator;)Lcom/bumptech/glide/request/Request;

    move-result-object v2

    .line 835
    invoke-virtual {v0, v1, v2}, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->setRequests(Lcom/bumptech/glide/request/Request;Lcom/bumptech/glide/request/Request;)V

    .line 836
    return-object v0
.end method

.method private getThumbnailPriority()Lcom/bumptech/glide/Priority;
    .locals 2

    .prologue
    .line 783
    iget-object v0, p0, Lcom/bumptech/glide/GenericRequestBuilder;->priority:Lcom/bumptech/glide/Priority;

    sget-object v1, Lcom/bumptech/glide/Priority;->LOW:Lcom/bumptech/glide/Priority;

    if-eq v0, v1, :cond_0

    .line 785
    iget-object v0, p0, Lcom/bumptech/glide/GenericRequestBuilder;->priority:Lcom/bumptech/glide/Priority;

    sget-object v1, Lcom/bumptech/glide/Priority;->NORMAL:Lcom/bumptech/glide/Priority;

    if-eq v0, v1, :cond_1

    .line 788
    sget-object v0, Lcom/bumptech/glide/Priority;->IMMEDIATE:Lcom/bumptech/glide/Priority;

    .line 790
    :goto_0
    return-object v0

    .line 784
    :cond_0
    sget-object v0, Lcom/bumptech/glide/Priority;->NORMAL:Lcom/bumptech/glide/Priority;

    goto :goto_0

    .line 786
    :cond_1
    sget-object v0, Lcom/bumptech/glide/Priority;->HIGH:Lcom/bumptech/glide/Priority;

    goto :goto_0
.end method

.method private obtainRequest(Lcom/bumptech/glide/request/target/Target;FLcom/bumptech/glide/Priority;Lcom/bumptech/glide/request/RequestCoordinator;)Lcom/bumptech/glide/request/Request;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/target/Target",
            "<TTranscodeType;>;F",
            "Lcom/bumptech/glide/Priority;",
            "Lcom/bumptech/glide/request/RequestCoordinator;",
            ")",
            "Lcom/bumptech/glide/request/Request;"
        }
    .end annotation

    .prologue
    .line 845
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bumptech/glide/GenericRequestBuilder;->loadProvider:Lcom/bumptech/glide/provider/ChildLoadProvider;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bumptech/glide/GenericRequestBuilder;->model:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bumptech/glide/GenericRequestBuilder;->signature:Lcom/bumptech/glide/load/Key;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bumptech/glide/GenericRequestBuilder;->context:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/bumptech/glide/GenericRequestBuilder;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/bumptech/glide/GenericRequestBuilder;->placeholderId:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/bumptech/glide/GenericRequestBuilder;->errorPlaceholder:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget v11, v0, Lcom/bumptech/glide/GenericRequestBuilder;->errorId:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/bumptech/glide/GenericRequestBuilder;->fallbackDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/bumptech/glide/GenericRequestBuilder;->fallbackResource:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/bumptech/glide/GenericRequestBuilder;->requestListener:Lcom/bumptech/glide/request/RequestListener;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bumptech/glide/GenericRequestBuilder;->glide:Lcom/bumptech/glide/Glide;

    invoke-virtual {v5}, Lcom/bumptech/glide/Glide;->getEngine()Lcom/bumptech/glide/load/engine/Engine;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/GenericRequestBuilder;->transformation:Lcom/bumptech/glide/load/Transformation;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/GenericRequestBuilder;->transcodeClass:Ljava/lang/Class;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/bumptech/glide/GenericRequestBuilder;->isCacheable:Z

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/GenericRequestBuilder;->animationFactory:Lcom/bumptech/glide/request/animation/GlideAnimationFactory;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/bumptech/glide/GenericRequestBuilder;->overrideWidth:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/bumptech/glide/GenericRequestBuilder;->overrideHeight:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/GenericRequestBuilder;->diskCacheStrategy:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    move-object/from16 v23, v0

    move-object/from16 v5, p3

    move-object/from16 v6, p1

    move/from16 v7, p2

    move-object/from16 v15, p4

    invoke-static/range {v1 .. v23}, Lcom/bumptech/glide/request/GenericRequest;->obtain(Lcom/bumptech/glide/provider/LoadProvider;Ljava/lang/Object;Lcom/bumptech/glide/load/Key;Landroid/content/Context;Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/request/target/Target;FLandroid/graphics/drawable/Drawable;ILandroid/graphics/drawable/Drawable;ILandroid/graphics/drawable/Drawable;ILcom/bumptech/glide/request/RequestListener;Lcom/bumptech/glide/request/RequestCoordinator;Lcom/bumptech/glide/load/engine/Engine;Lcom/bumptech/glide/load/Transformation;Ljava/lang/Class;ZLcom/bumptech/glide/request/animation/GlideAnimationFactory;IILcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/GenericRequest;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public animate(I)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/bumptech/glide/GenericRequestBuilder",
            "<TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 379
    new-instance v0, Lcom/bumptech/glide/request/animation/ViewAnimationFactory;

    iget-object v1, p0, Lcom/bumptech/glide/GenericRequestBuilder;->context:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/bumptech/glide/request/animation/ViewAnimationFactory;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/GenericRequestBuilder;->animate(Lcom/bumptech/glide/request/animation/GlideAnimationFactory;)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public animate(Landroid/view/animation/Animation;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/animation/Animation;",
            ")",
            "Lcom/bumptech/glide/GenericRequestBuilder",
            "<TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 399
    new-instance v0, Lcom/bumptech/glide/request/animation/ViewAnimationFactory;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/request/animation/ViewAnimationFactory;-><init>(Landroid/view/animation/Animation;)V

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/GenericRequestBuilder;->animate(Lcom/bumptech/glide/request/animation/GlideAnimationFactory;)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public animate(Lcom/bumptech/glide/request/animation/GlideAnimationFactory;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/animation/GlideAnimationFactory",
            "<TTranscodeType;>;)",
            "Lcom/bumptech/glide/GenericRequestBuilder",
            "<TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 424
    if-eqz p1, :cond_0

    .line 427
    iput-object p1, p0, Lcom/bumptech/glide/GenericRequestBuilder;->animationFactory:Lcom/bumptech/glide/request/animation/GlideAnimationFactory;

    .line 429
    return-object p0

    .line 425
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Animation factory must not be null!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public animate(Lcom/bumptech/glide/request/animation/ViewPropertyAnimation$Animator;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/animation/ViewPropertyAnimation$Animator;",
            ")",
            "Lcom/bumptech/glide/GenericRequestBuilder",
            "<TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 412
    new-instance v0, Lcom/bumptech/glide/request/animation/ViewPropertyAnimationFactory;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/request/animation/ViewPropertyAnimationFactory;-><init>(Lcom/bumptech/glide/request/animation/ViewPropertyAnimation$Animator;)V

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/GenericRequestBuilder;->animate(Lcom/bumptech/glide/request/animation/GlideAnimationFactory;)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method applyCenterCrop()V
    .locals 0

    .prologue
    .line 775
    return-void
.end method

.method applyFitCenter()V
    .locals 0

    .prologue
    .line 779
    return-void
.end method

.method public cacheDecoder(Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/ResourceDecoder",
            "<",
            "Ljava/io/File;",
            "TResourceType;>;)",
            "Lcom/bumptech/glide/GenericRequestBuilder",
            "<TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 228
    iget-object v0, p0, Lcom/bumptech/glide/GenericRequestBuilder;->loadProvider:Lcom/bumptech/glide/provider/ChildLoadProvider;

    if-nez v0, :cond_0

    .line 232
    :goto_0
    return-object p0

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/GenericRequestBuilder;->loadProvider:Lcom/bumptech/glide/provider/ChildLoadProvider;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/provider/ChildLoadProvider;->setCacheDecoder(Lcom/bumptech/glide/load/ResourceDecoder;)V

    goto :goto_0
.end method

.method public clone()Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/GenericRequestBuilder",
            "<TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 631
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/GenericRequestBuilder;

    .line 633
    iget-object v2, p0, Lcom/bumptech/glide/GenericRequestBuilder;->loadProvider:Lcom/bumptech/glide/provider/ChildLoadProvider;

    if-nez v2, :cond_0

    :goto_0
    iput-object v1, v0, Lcom/bumptech/glide/GenericRequestBuilder;->loadProvider:Lcom/bumptech/glide/provider/ChildLoadProvider;

    .line 634
    return-object v0

    .line 633
    :cond_0
    iget-object v1, p0, Lcom/bumptech/glide/GenericRequestBuilder;->loadProvider:Lcom/bumptech/glide/provider/ChildLoadProvider;

    invoke-virtual {v1}, Lcom/bumptech/glide/provider/ChildLoadProvider;->clone()Lcom/bumptech/glide/provider/ChildLoadProvider;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 634
    :catch_0
    move-exception v0

    .line 636
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/bumptech/glide/GenericRequestBuilder;->clone()Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public decoder(Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/ResourceDecoder",
            "<TDataType;TResourceType;>;)",
            "Lcom/bumptech/glide/GenericRequestBuilder",
            "<TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 207
    iget-object v0, p0, Lcom/bumptech/glide/GenericRequestBuilder;->loadProvider:Lcom/bumptech/glide/provider/ChildLoadProvider;

    if-nez v0, :cond_0

    .line 211
    :goto_0
    return-object p0

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/GenericRequestBuilder;->loadProvider:Lcom/bumptech/glide/provider/ChildLoadProvider;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/provider/ChildLoadProvider;->setSourceDecoder(Lcom/bumptech/glide/load/ResourceDecoder;)V

    goto :goto_0
.end method

.method public diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/DiskCacheStrategy;",
            ")",
            "Lcom/bumptech/glide/GenericRequestBuilder",
            "<TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 271
    iput-object p1, p0, Lcom/bumptech/glide/GenericRequestBuilder;->diskCacheStrategy:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 273
    return-object p0
.end method

.method public dontAnimate()Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/GenericRequestBuilder",
            "<TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 367
    invoke-static {}, Lcom/bumptech/glide/request/animation/NoAnimation;->getFactory()Lcom/bumptech/glide/request/animation/GlideAnimationFactory;

    move-result-object v0

    .line 368
    invoke-virtual {p0, v0}, Lcom/bumptech/glide/GenericRequestBuilder;->animate(Lcom/bumptech/glide/request/animation/GlideAnimationFactory;)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public dontTransform()Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/GenericRequestBuilder",
            "<TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 339
    invoke-static {}, Lcom/bumptech/glide/load/resource/UnitTransformation;->get()Lcom/bumptech/glide/load/resource/UnitTransformation;

    move-result-object v0

    const/4 v1, 0x1

    .line 340
    new-array v1, v1, [Lcom/bumptech/glide/load/Transformation;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-virtual {p0, v1}, Lcom/bumptech/glide/GenericRequestBuilder;->transform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public encoder(Lcom/bumptech/glide/load/ResourceEncoder;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/ResourceEncoder",
            "<TResourceType;>;)",
            "Lcom/bumptech/glide/GenericRequestBuilder",
            "<TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 293
    iget-object v0, p0, Lcom/bumptech/glide/GenericRequestBuilder;->loadProvider:Lcom/bumptech/glide/provider/ChildLoadProvider;

    if-nez v0, :cond_0

    .line 297
    :goto_0
    return-object p0

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/GenericRequestBuilder;->loadProvider:Lcom/bumptech/glide/provider/ChildLoadProvider;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/provider/ChildLoadProvider;->setEncoder(Lcom/bumptech/glide/load/ResourceEncoder;)V

    goto :goto_0
.end method

.method public error(I)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/bumptech/glide/GenericRequestBuilder",
            "<TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 510
    iput p1, p0, Lcom/bumptech/glide/GenericRequestBuilder;->errorId:I

    .line 512
    return-object p0
.end method

.method public error(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")",
            "Lcom/bumptech/glide/GenericRequestBuilder",
            "<TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 523
    iput-object p1, p0, Lcom/bumptech/glide/GenericRequestBuilder;->errorPlaceholder:Landroid/graphics/drawable/Drawable;

    .line 525
    return-object p0
.end method

.method public fallback(I)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/bumptech/glide/GenericRequestBuilder",
            "<TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 497
    iput p1, p0, Lcom/bumptech/glide/GenericRequestBuilder;->fallbackResource:I

    .line 499
    return-object p0
.end method

.method public fallback(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")",
            "Lcom/bumptech/glide/GenericRequestBuilder",
            "<TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 476
    iput-object p1, p0, Lcom/bumptech/glide/GenericRequestBuilder;->fallbackDrawable:Landroid/graphics/drawable/Drawable;

    .line 478
    return-object p0
.end method

.method public into(II)Lcom/bumptech/glide/request/FutureTarget;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/bumptech/glide/request/FutureTarget",
            "<TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 721
    new-instance v0, Lcom/bumptech/glide/request/RequestFutureTarget;

    iget-object v1, p0, Lcom/bumptech/glide/GenericRequestBuilder;->glide:Lcom/bumptech/glide/Glide;

    invoke-virtual {v1}, Lcom/bumptech/glide/Glide;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lcom/bumptech/glide/request/RequestFutureTarget;-><init>(Landroid/os/Handler;II)V

    .line 725
    iget-object v1, p0, Lcom/bumptech/glide/GenericRequestBuilder;->glide:Lcom/bumptech/glide/Glide;

    invoke-virtual {v1}, Lcom/bumptech/glide/Glide;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/bumptech/glide/GenericRequestBuilder$1;

    invoke-direct {v2, p0, v0}, Lcom/bumptech/glide/GenericRequestBuilder$1;-><init>(Lcom/bumptech/glide/GenericRequestBuilder;Lcom/bumptech/glide/request/RequestFutureTarget;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 734
    return-object v0
.end method

.method public into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ImageView;",
            ")",
            "Lcom/bumptech/glide/request/target/Target",
            "<TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 683
    invoke-static {}, Lcom/bumptech/glide/util/Util;->assertMainThread()V

    .line 684
    if-eqz p1, :cond_1

    .line 688
    iget-boolean v0, p0, Lcom/bumptech/glide/GenericRequestBuilder;->isTransformationSet:Z

    if-eqz v0, :cond_2

    .line 704
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/bumptech/glide/GenericRequestBuilder;->glide:Lcom/bumptech/glide/Glide;

    iget-object v1, p0, Lcom/bumptech/glide/GenericRequestBuilder;->transcodeClass:Ljava/lang/Class;

    invoke-virtual {v0, p1, v1}, Lcom/bumptech/glide/Glide;->buildImageViewTarget(Landroid/widget/ImageView;Ljava/lang/Class;)Lcom/bumptech/glide/request/target/Target;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/GenericRequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    move-result-object v0

    return-object v0

    .line 685
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "You must pass in a non null View"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 688
    :cond_2
    invoke-virtual {p1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 689
    sget-object v0, Lcom/bumptech/glide/GenericRequestBuilder$2;->$SwitchMap$android$widget$ImageView$ScaleType:[I

    invoke-virtual {p1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 691
    :pswitch_0
    invoke-virtual {p0}, Lcom/bumptech/glide/GenericRequestBuilder;->applyCenterCrop()V

    goto :goto_0

    .line 696
    :pswitch_1
    invoke-virtual {p0}, Lcom/bumptech/glide/GenericRequestBuilder;->applyFitCenter()V

    goto :goto_0

    .line 689
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y::",
            "Lcom/bumptech/glide/request/target/Target",
            "<TTranscodeType;>;>(TY;)TY;"
        }
    .end annotation

    .prologue
    .line 649
    invoke-static {}, Lcom/bumptech/glide/util/Util;->assertMainThread()V

    .line 650
    if-eqz p1, :cond_0

    .line 653
    iget-boolean v0, p0, Lcom/bumptech/glide/GenericRequestBuilder;->isModelSet:Z

    if-eqz v0, :cond_1

    .line 657
    invoke-interface {p1}, Lcom/bumptech/glide/request/target/Target;->getRequest()Lcom/bumptech/glide/request/Request;

    move-result-object v0

    .line 659
    if-nez v0, :cond_2

    .line 665
    :goto_0
    invoke-direct {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->buildRequest(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/Request;

    move-result-object v0

    .line 666
    invoke-interface {p1, v0}, Lcom/bumptech/glide/request/target/Target;->setRequest(Lcom/bumptech/glide/request/Request;)V

    .line 667
    iget-object v1, p0, Lcom/bumptech/glide/GenericRequestBuilder;->lifecycle:Lcom/bumptech/glide/manager/Lifecycle;

    invoke-interface {v1, p1}, Lcom/bumptech/glide/manager/Lifecycle;->addListener(Lcom/bumptech/glide/manager/LifecycleListener;)V

    .line 668
    iget-object v1, p0, Lcom/bumptech/glide/GenericRequestBuilder;->requestTracker:Lcom/bumptech/glide/manager/RequestTracker;

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/manager/RequestTracker;->runRequest(Lcom/bumptech/glide/request/Request;)V

    .line 670
    return-object p1

    .line 651
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "You must pass in a non null Target"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 654
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "You must first set a model (try #load())"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 660
    :cond_2
    invoke-interface {v0}, Lcom/bumptech/glide/request/Request;->clear()V

    .line 661
    iget-object v1, p0, Lcom/bumptech/glide/GenericRequestBuilder;->requestTracker:Lcom/bumptech/glide/manager/RequestTracker;

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/manager/RequestTracker;->removeRequest(Lcom/bumptech/glide/request/Request;)V

    .line 662
    invoke-interface {v0}, Lcom/bumptech/glide/request/Request;->recycle()V

    goto :goto_0
.end method

.method public listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/RequestListener",
            "<-TModelType;TTranscodeType;>;)",
            "Lcom/bumptech/glide/GenericRequestBuilder",
            "<TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 538
    iput-object p1, p0, Lcom/bumptech/glide/GenericRequestBuilder;->requestListener:Lcom/bumptech/glide/request/RequestListener;

    .line 540
    return-object p0
.end method

.method public load(Ljava/lang/Object;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModelType;)",
            "Lcom/bumptech/glide/GenericRequestBuilder",
            "<TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 613
    iput-object p1, p0, Lcom/bumptech/glide/GenericRequestBuilder;->model:Ljava/lang/Object;

    .line 614
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/GenericRequestBuilder;->isModelSet:Z

    .line 615
    return-object p0
.end method

.method public override(II)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/bumptech/glide/GenericRequestBuilder",
            "<TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 570
    invoke-static {p1, p2}, Lcom/bumptech/glide/util/Util;->isValidDimensions(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 573
    iput p1, p0, Lcom/bumptech/glide/GenericRequestBuilder;->overrideWidth:I

    .line 574
    iput p2, p0, Lcom/bumptech/glide/GenericRequestBuilder;->overrideHeight:I

    .line 576
    return-object p0

    .line 571
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Width and height must be Target#SIZE_ORIGINAL or > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public placeholder(I)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/bumptech/glide/GenericRequestBuilder",
            "<TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 441
    iput p1, p0, Lcom/bumptech/glide/GenericRequestBuilder;->placeholderId:I

    .line 443
    return-object p0
.end method

.method public placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")",
            "Lcom/bumptech/glide/GenericRequestBuilder",
            "<TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 454
    iput-object p1, p0, Lcom/bumptech/glide/GenericRequestBuilder;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    .line 456
    return-object p0
.end method

.method public preload()Lcom/bumptech/glide/request/target/Target;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/request/target/Target",
            "<TTranscodeType;>;"
        }
    .end annotation

    .prologue
    const/high16 v0, -0x80000000

    .line 770
    invoke-virtual {p0, v0, v0}, Lcom/bumptech/glide/GenericRequestBuilder;->preload(II)Lcom/bumptech/glide/request/target/Target;

    move-result-object v0

    return-object v0
.end method

.method public preload(II)Lcom/bumptech/glide/request/target/Target;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/bumptech/glide/request/target/Target",
            "<TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 756
    invoke-static {p1, p2}, Lcom/bumptech/glide/request/target/PreloadTarget;->obtain(II)Lcom/bumptech/glide/request/target/PreloadTarget;

    move-result-object v0

    .line 757
    invoke-virtual {p0, v0}, Lcom/bumptech/glide/GenericRequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    move-result-object v0

    return-object v0
.end method

.method public priority(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/Priority;",
            ")",
            "Lcom/bumptech/glide/GenericRequestBuilder",
            "<TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 308
    iput-object p1, p0, Lcom/bumptech/glide/GenericRequestBuilder;->priority:Lcom/bumptech/glide/Priority;

    .line 310
    return-object p0
.end method

.method public signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Key;",
            ")",
            "Lcom/bumptech/glide/GenericRequestBuilder",
            "<TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 594
    if-eqz p1, :cond_0

    .line 597
    iput-object p1, p0, Lcom/bumptech/glide/GenericRequestBuilder;->signature:Lcom/bumptech/glide/load/Key;

    .line 598
    return-object p0

    .line 595
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Signature must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public sizeMultiplier(F)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/bumptech/glide/GenericRequestBuilder",
            "<TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 185
    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    .line 186
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sizeMultiplier must be between 0 and 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 185
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 188
    :cond_2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/GenericRequestBuilder;->sizeMultiplier:Ljava/lang/Float;

    .line 190
    return-object p0
.end method

.method public skipMemoryCache(Z)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/bumptech/glide/GenericRequestBuilder",
            "<TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 555
    if-eqz p1, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/bumptech/glide/GenericRequestBuilder;->isCacheable:Z

    .line 557
    return-object p0

    :cond_0
    const/4 v0, 0x1

    .line 555
    goto :goto_0
.end method

.method public sourceEncoder(Lcom/bumptech/glide/load/Encoder;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Encoder",
            "<TDataType;>;)",
            "Lcom/bumptech/glide/GenericRequestBuilder",
            "<TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 246
    iget-object v0, p0, Lcom/bumptech/glide/GenericRequestBuilder;->loadProvider:Lcom/bumptech/glide/provider/ChildLoadProvider;

    if-nez v0, :cond_0

    .line 250
    :goto_0
    return-object p0

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/GenericRequestBuilder;->loadProvider:Lcom/bumptech/glide/provider/ChildLoadProvider;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/provider/ChildLoadProvider;->setSourceEncoder(Lcom/bumptech/glide/load/Encoder;)V

    goto :goto_0
.end method

.method public thumbnail(F)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/bumptech/glide/GenericRequestBuilder",
            "<TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 167
    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    .line 168
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sizeMultiplier must be between 0 and 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 167
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 170
    :cond_2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/GenericRequestBuilder;->thumbSizeMultiplier:Ljava/lang/Float;

    .line 172
    return-object p0
.end method

.method public thumbnail(Lcom/bumptech/glide/GenericRequestBuilder;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/GenericRequestBuilder",
            "<***TTranscodeType;>;)",
            "Lcom/bumptech/glide/GenericRequestBuilder",
            "<TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 131
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 135
    iput-object p1, p0, Lcom/bumptech/glide/GenericRequestBuilder;->thumbnailRequestBuilder:Lcom/bumptech/glide/GenericRequestBuilder;

    .line 137
    return-object p0

    .line 132
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "You cannot set a request as a thumbnail for itself. Consider using clone() on the request you are passing to thumbnail()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public transcoder(Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder",
            "<TResourceType;TTranscodeType;>;)",
            "Lcom/bumptech/glide/GenericRequestBuilder",
            "<TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 355
    iget-object v0, p0, Lcom/bumptech/glide/GenericRequestBuilder;->loadProvider:Lcom/bumptech/glide/provider/ChildLoadProvider;

    if-nez v0, :cond_0

    .line 359
    :goto_0
    return-object p0

    .line 356
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/GenericRequestBuilder;->loadProvider:Lcom/bumptech/glide/provider/ChildLoadProvider;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/provider/ChildLoadProvider;->setTranscoder(Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)V

    goto :goto_0
.end method

.method public varargs transform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/bumptech/glide/load/Transformation",
            "<TResourceType;>;)",
            "Lcom/bumptech/glide/GenericRequestBuilder",
            "<TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 322
    iput-boolean v1, p0, Lcom/bumptech/glide/GenericRequestBuilder;->isTransformationSet:Z

    .line 323
    array-length v0, p1

    if-eq v0, v1, :cond_0

    .line 326
    new-instance v0, Lcom/bumptech/glide/load/MultiTransformation;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/load/MultiTransformation;-><init>([Lcom/bumptech/glide/load/Transformation;)V

    iput-object v0, p0, Lcom/bumptech/glide/GenericRequestBuilder;->transformation:Lcom/bumptech/glide/load/Transformation;

    .line 329
    :goto_0
    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 324
    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/bumptech/glide/GenericRequestBuilder;->transformation:Lcom/bumptech/glide/load/Transformation;

    goto :goto_0
.end method
