.class public Lcom/bumptech/glide/DrawableRequestBuilder;
.super Lcom/bumptech/glide/GenericRequestBuilder;
.source "DrawableRequestBuilder.java"

# interfaces
.implements Lcom/bumptech/glide/BitmapOptions;
.implements Lcom/bumptech/glide/DrawableOptions;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ModelType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/bumptech/glide/GenericRequestBuilder",
        "<TModelType;",
        "Lcom/bumptech/glide/load/model/ImageVideoWrapper;",
        "Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;",
        "Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;",
        ">;",
        "Lcom/bumptech/glide/BitmapOptions;",
        "Lcom/bumptech/glide/DrawableOptions;"
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/Class;Lcom/bumptech/glide/provider/LoadProvider;Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/manager/RequestTracker;Lcom/bumptech/glide/manager/Lifecycle;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<TModelType;>;",
            "Lcom/bumptech/glide/provider/LoadProvider",
            "<TModelType;",
            "Lcom/bumptech/glide/load/model/ImageVideoWrapper;",
            "Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;",
            "Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;",
            ">;",
            "Lcom/bumptech/glide/Glide;",
            "Lcom/bumptech/glide/manager/RequestTracker;",
            "Lcom/bumptech/glide/manager/Lifecycle;",
            ")V"
        }
    .end annotation

    .prologue
    const-class v4, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 49
    invoke-direct/range {v0 .. v7}, Lcom/bumptech/glide/GenericRequestBuilder;-><init>(Landroid/content/Context;Ljava/lang/Class;Lcom/bumptech/glide/provider/LoadProvider;Ljava/lang/Class;Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/manager/RequestTracker;Lcom/bumptech/glide/manager/Lifecycle;)V

    .line 51
    invoke-virtual {p0}, Lcom/bumptech/glide/DrawableRequestBuilder;->crossFade()Lcom/bumptech/glide/DrawableRequestBuilder;

    .line 52
    return-void
.end method


# virtual methods
.method public animate(I)Lcom/bumptech/glide/DrawableRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/bumptech/glide/DrawableRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 308
    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->animate(I)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 309
    return-object p0
.end method

.method public animate(Landroid/view/animation/Animation;)Lcom/bumptech/glide/DrawableRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/animation/Animation;",
            ")",
            "Lcom/bumptech/glide/DrawableRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 319
    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->animate(Landroid/view/animation/Animation;)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 320
    return-object p0
.end method

.method public animate(Lcom/bumptech/glide/request/animation/GlideAnimationFactory;)Lcom/bumptech/glide/DrawableRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/animation/GlideAnimationFactory",
            "<",
            "Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;",
            ">;)",
            "Lcom/bumptech/glide/DrawableRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 299
    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->animate(Lcom/bumptech/glide/request/animation/GlideAnimationFactory;)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 300
    return-object p0
.end method

.method public animate(Lcom/bumptech/glide/request/animation/ViewPropertyAnimation$Animator;)Lcom/bumptech/glide/DrawableRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/animation/ViewPropertyAnimation$Animator;",
            ")",
            "Lcom/bumptech/glide/DrawableRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 290
    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->animate(Lcom/bumptech/glide/request/animation/ViewPropertyAnimation$Animator;)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 291
    return-object p0
.end method

.method public bridge synthetic animate(I)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/DrawableRequestBuilder;->animate(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic animate(Landroid/view/animation/Animation;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/DrawableRequestBuilder;->animate(Landroid/view/animation/Animation;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic animate(Lcom/bumptech/glide/request/animation/GlideAnimationFactory;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/DrawableRequestBuilder;->animate(Lcom/bumptech/glide/request/animation/GlideAnimationFactory;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic animate(Lcom/bumptech/glide/request/animation/ViewPropertyAnimation$Animator;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/DrawableRequestBuilder;->animate(Lcom/bumptech/glide/request/animation/ViewPropertyAnimation$Animator;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method applyCenterCrop()V
    .locals 0

    .prologue
    .line 467
    invoke-virtual {p0}, Lcom/bumptech/glide/DrawableRequestBuilder;->centerCrop()Lcom/bumptech/glide/DrawableRequestBuilder;

    .line 468
    return-void
.end method

.method applyFitCenter()V
    .locals 0

    .prologue
    .line 462
    invoke-virtual {p0}, Lcom/bumptech/glide/DrawableRequestBuilder;->fitCenter()Lcom/bumptech/glide/DrawableRequestBuilder;

    .line 463
    return-void
.end method

.method public varargs bitmapTransform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/DrawableRequestBuilder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/bumptech/glide/load/Transformation",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/bumptech/glide/DrawableRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 210
    array-length v0, p1

    new-array v1, v0, [Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperTransformation;

    const/4 v0, 0x0

    .line 212
    :goto_0
    array-length v2, p1

    if-lt v0, v2, :cond_0

    .line 215
    invoke-virtual {p0, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->transform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    return-object v0

    .line 213
    :cond_0
    new-instance v2, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperTransformation;

    iget-object v3, p0, Lcom/bumptech/glide/DrawableRequestBuilder;->glide:Lcom/bumptech/glide/Glide;

    invoke-virtual {v3}, Lcom/bumptech/glide/Glide;->getBitmapPool()Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    move-result-object v3

    aget-object v4, p1, v0

    invoke-direct {v2, v3, v4}, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperTransformation;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/Transformation;)V

    aput-object v2, v1, v0

    .line 212
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public cacheDecoder(Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/DrawableRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/ResourceDecoder",
            "<",
            "Ljava/io/File;",
            "Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;",
            ">;)",
            "Lcom/bumptech/glide/DrawableRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 125
    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->cacheDecoder(Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 126
    return-object p0
.end method

.method public bridge synthetic cacheDecoder(Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/DrawableRequestBuilder;->cacheDecoder(Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public centerCrop()Lcom/bumptech/glide/DrawableRequestBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/DrawableRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 180
    new-array v0, v0, [Lcom/bumptech/glide/load/Transformation;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/bumptech/glide/DrawableRequestBuilder;->glide:Lcom/bumptech/glide/Glide;

    invoke-virtual {v2}, Lcom/bumptech/glide/Glide;->getDrawableCenterCrop()Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperTransformation;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/DrawableRequestBuilder;->transform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic centerCrop()Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/bumptech/glide/DrawableRequestBuilder;->centerCrop()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/bumptech/glide/DrawableRequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/DrawableRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 440
    invoke-super {p0}, Lcom/bumptech/glide/GenericRequestBuilder;->clone()Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/DrawableRequestBuilder;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/bumptech/glide/DrawableRequestBuilder;->clone()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/bumptech/glide/DrawableRequestBuilder;->clone()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public final crossFade()Lcom/bumptech/glide/DrawableRequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/DrawableRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 247
    new-instance v0, Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;

    invoke-direct {v0}, Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;-><init>()V

    invoke-super {p0, v0}, Lcom/bumptech/glide/GenericRequestBuilder;->animate(Lcom/bumptech/glide/request/animation/GlideAnimationFactory;)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 248
    return-object p0
.end method

.method public crossFade(I)Lcom/bumptech/glide/DrawableRequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/bumptech/glide/DrawableRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 255
    new-instance v0, Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;-><init>(I)V

    invoke-super {p0, v0}, Lcom/bumptech/glide/GenericRequestBuilder;->animate(Lcom/bumptech/glide/request/animation/GlideAnimationFactory;)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 256
    return-object p0
.end method

.method public crossFade(II)Lcom/bumptech/glide/DrawableRequestBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/bumptech/glide/DrawableRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 272
    new-instance v0, Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;

    iget-object v1, p0, Lcom/bumptech/glide/DrawableRequestBuilder;->context:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p2}, Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;-><init>(Landroid/content/Context;II)V

    invoke-super {p0, v0}, Lcom/bumptech/glide/GenericRequestBuilder;->animate(Lcom/bumptech/glide/request/animation/GlideAnimationFactory;)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 273
    return-object p0
.end method

.method public crossFade(Landroid/view/animation/Animation;I)Lcom/bumptech/glide/DrawableRequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/animation/Animation;",
            "I)",
            "Lcom/bumptech/glide/DrawableRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 264
    new-instance v0, Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;

    invoke-direct {v0, p1, p2}, Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;-><init>(Landroid/view/animation/Animation;I)V

    invoke-super {p0, v0}, Lcom/bumptech/glide/GenericRequestBuilder;->animate(Lcom/bumptech/glide/request/animation/GlideAnimationFactory;)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 265
    return-object p0
.end method

.method public bridge synthetic crossFade()Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/bumptech/glide/DrawableRequestBuilder;->crossFade()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic crossFade(I)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/DrawableRequestBuilder;->crossFade(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic crossFade(II)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/DrawableRequestBuilder;->crossFade(II)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic crossFade(Landroid/view/animation/Animation;I)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/DrawableRequestBuilder;->crossFade(Landroid/view/animation/Animation;I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public decoder(Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/DrawableRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/ResourceDecoder",
            "<",
            "Lcom/bumptech/glide/load/model/ImageVideoWrapper;",
            "Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;",
            ">;)",
            "Lcom/bumptech/glide/DrawableRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 116
    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->decoder(Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 117
    return-object p0
.end method

.method public bridge synthetic decoder(Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/DrawableRequestBuilder;->decoder(Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/DiskCacheStrategy;",
            ")",
            "Lcom/bumptech/glide/DrawableRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 386
    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 387
    return-object p0
.end method

.method public bridge synthetic diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/DrawableRequestBuilder;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public dontAnimate()Lcom/bumptech/glide/DrawableRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/DrawableRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 281
    invoke-super {p0}, Lcom/bumptech/glide/GenericRequestBuilder;->dontAnimate()Lcom/bumptech/glide/GenericRequestBuilder;

    .line 282
    return-object p0
.end method

.method public bridge synthetic dontAnimate()Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/bumptech/glide/DrawableRequestBuilder;->dontAnimate()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public dontTransform()Lcom/bumptech/glide/DrawableRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/DrawableRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 422
    invoke-super {p0}, Lcom/bumptech/glide/GenericRequestBuilder;->dontTransform()Lcom/bumptech/glide/GenericRequestBuilder;

    .line 423
    return-object p0
.end method

.method public bridge synthetic dontTransform()Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/bumptech/glide/DrawableRequestBuilder;->dontTransform()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public encoder(Lcom/bumptech/glide/load/ResourceEncoder;)Lcom/bumptech/glide/DrawableRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/ResourceEncoder",
            "<",
            "Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;",
            ">;)",
            "Lcom/bumptech/glide/DrawableRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 134
    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->encoder(Lcom/bumptech/glide/load/ResourceEncoder;)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 135
    return-object p0
.end method

.method public bridge synthetic encoder(Lcom/bumptech/glide/load/ResourceEncoder;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/DrawableRequestBuilder;->encoder(Lcom/bumptech/glide/load/ResourceEncoder;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public error(I)Lcom/bumptech/glide/DrawableRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/bumptech/glide/DrawableRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 358
    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->error(I)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 359
    return-object p0
.end method

.method public error(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/DrawableRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")",
            "Lcom/bumptech/glide/DrawableRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 367
    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->error(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 368
    return-object p0
.end method

.method public bridge synthetic error(I)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/DrawableRequestBuilder;->error(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic error(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/DrawableRequestBuilder;->error(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public fallback(I)Lcom/bumptech/glide/DrawableRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/bumptech/glide/DrawableRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 349
    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->fallback(I)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 350
    return-object p0
.end method

.method public fallback(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/DrawableRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")",
            "Lcom/bumptech/glide/DrawableRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 343
    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->fallback(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 344
    return-object p0
.end method

.method public bridge synthetic fallback(I)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/DrawableRequestBuilder;->fallback(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic fallback(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/DrawableRequestBuilder;->fallback(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public fitCenter()Lcom/bumptech/glide/DrawableRequestBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/DrawableRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 195
    new-array v0, v0, [Lcom/bumptech/glide/load/Transformation;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/bumptech/glide/DrawableRequestBuilder;->glide:Lcom/bumptech/glide/Glide;

    invoke-virtual {v2}, Lcom/bumptech/glide/Glide;->getDrawableFitCenter()Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperTransformation;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/DrawableRequestBuilder;->transform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic fitCenter()Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/bumptech/glide/DrawableRequestBuilder;->fitCenter()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ImageView;",
            ")",
            "Lcom/bumptech/glide/request/target/Target",
            "<",
            "Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 457
    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    move-result-object v0

    return-object v0
.end method

.method public listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/DrawableRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/RequestListener",
            "<-TModelType;",
            "Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;",
            ">;)",
            "Lcom/bumptech/glide/DrawableRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 377
    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 378
    return-object p0
.end method

.method public bridge synthetic listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/DrawableRequestBuilder;->listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public load(Ljava/lang/Object;)Lcom/bumptech/glide/DrawableRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModelType;)",
            "Lcom/bumptech/glide/DrawableRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 434
    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->load(Ljava/lang/Object;)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 435
    return-object p0
.end method

.method public bridge synthetic load(Ljava/lang/Object;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/DrawableRequestBuilder;->load(Ljava/lang/Object;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public override(II)Lcom/bumptech/glide/DrawableRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/bumptech/glide/DrawableRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 404
    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/GenericRequestBuilder;->override(II)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 405
    return-object p0
.end method

.method public bridge synthetic override(II)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/DrawableRequestBuilder;->override(II)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public placeholder(I)Lcom/bumptech/glide/DrawableRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/bumptech/glide/DrawableRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 328
    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->placeholder(I)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 329
    return-object p0
.end method

.method public placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/DrawableRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")",
            "Lcom/bumptech/glide/DrawableRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 337
    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 338
    return-object p0
.end method

.method public bridge synthetic placeholder(I)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/DrawableRequestBuilder;->placeholder(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/DrawableRequestBuilder;->placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public priority(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/DrawableRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/Priority;",
            ")",
            "Lcom/bumptech/glide/DrawableRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 143
    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->priority(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 144
    return-object p0
.end method

.method public bridge synthetic priority(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/DrawableRequestBuilder;->priority(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/DrawableRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Key;",
            ")",
            "Lcom/bumptech/glide/DrawableRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 428
    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 429
    return-object p0
.end method

.method public bridge synthetic signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/DrawableRequestBuilder;->signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public sizeMultiplier(F)Lcom/bumptech/glide/DrawableRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/bumptech/glide/DrawableRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 107
    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->sizeMultiplier(F)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 108
    return-object p0
.end method

.method public bridge synthetic sizeMultiplier(F)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/DrawableRequestBuilder;->sizeMultiplier(F)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public skipMemoryCache(Z)Lcom/bumptech/glide/DrawableRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/bumptech/glide/DrawableRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 395
    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->skipMemoryCache(Z)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 396
    return-object p0
.end method

.method public bridge synthetic skipMemoryCache(Z)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/DrawableRequestBuilder;->skipMemoryCache(Z)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public sourceEncoder(Lcom/bumptech/glide/load/Encoder;)Lcom/bumptech/glide/DrawableRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Encoder",
            "<",
            "Lcom/bumptech/glide/load/model/ImageVideoWrapper;",
            ">;)",
            "Lcom/bumptech/glide/DrawableRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 413
    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->sourceEncoder(Lcom/bumptech/glide/load/Encoder;)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 414
    return-object p0
.end method

.method public bridge synthetic sourceEncoder(Lcom/bumptech/glide/load/Encoder;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/DrawableRequestBuilder;->sourceEncoder(Lcom/bumptech/glide/load/Encoder;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public thumbnail(F)Lcom/bumptech/glide/DrawableRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/bumptech/glide/DrawableRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 98
    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->thumbnail(F)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 99
    return-object p0
.end method

.method public thumbnail(Lcom/bumptech/glide/DrawableRequestBuilder;)Lcom/bumptech/glide/DrawableRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/DrawableRequestBuilder",
            "<*>;)",
            "Lcom/bumptech/glide/DrawableRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 79
    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->thumbnail(Lcom/bumptech/glide/GenericRequestBuilder;)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 80
    return-object p0
.end method

.method public thumbnail(Lcom/bumptech/glide/GenericRequestBuilder;)Lcom/bumptech/glide/DrawableRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/GenericRequestBuilder",
            "<***",
            "Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;",
            ">;)",
            "Lcom/bumptech/glide/DrawableRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 89
    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->thumbnail(Lcom/bumptech/glide/GenericRequestBuilder;)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 90
    return-object p0
.end method

.method public bridge synthetic thumbnail(F)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/DrawableRequestBuilder;->thumbnail(F)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thumbnail(Lcom/bumptech/glide/GenericRequestBuilder;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/DrawableRequestBuilder;->thumbnail(Lcom/bumptech/glide/GenericRequestBuilder;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public transcoder(Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)Lcom/bumptech/glide/DrawableRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder",
            "<",
            "Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;",
            "Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;",
            ">;)",
            "Lcom/bumptech/glide/DrawableRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 239
    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->transcoder(Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 240
    return-object p0
.end method

.method public bridge synthetic transcoder(Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/DrawableRequestBuilder;->transcoder(Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public varargs transform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/DrawableRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/bumptech/glide/load/Transformation",
            "<",
            "Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;",
            ">;)",
            "Lcom/bumptech/glide/DrawableRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 229
    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->transform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 230
    return-object p0
.end method

.method public varargs transform([Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;)Lcom/bumptech/glide/DrawableRequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;",
            ")",
            "Lcom/bumptech/glide/DrawableRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 165
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/DrawableRequestBuilder;->bitmapTransform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic transform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/DrawableRequestBuilder;->transform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    return-object v0
.end method
