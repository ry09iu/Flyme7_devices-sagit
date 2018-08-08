.class public Lcom/bumptech/glide/GifRequestBuilder;
.super Lcom/bumptech/glide/GenericRequestBuilder;
.source "GifRequestBuilder.java"

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
        "Ljava/io/InputStream;",
        "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
        "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
        ">;",
        "Lcom/bumptech/glide/BitmapOptions;",
        "Lcom/bumptech/glide/DrawableOptions;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/bumptech/glide/provider/LoadProvider;Ljava/lang/Class;Lcom/bumptech/glide/GenericRequestBuilder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/provider/LoadProvider",
            "<TModelType;",
            "Ljava/io/InputStream;",
            "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
            "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
            ">;",
            "Ljava/lang/Class",
            "<",
            "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
            ">;",
            "Lcom/bumptech/glide/GenericRequestBuilder",
            "<TModelType;***>;)V"
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/bumptech/glide/GenericRequestBuilder;-><init>(Lcom/bumptech/glide/provider/LoadProvider;Ljava/lang/Class;Lcom/bumptech/glide/GenericRequestBuilder;)V

    .line 43
    return-void
.end method

.method private toGifTransformations([Lcom/bumptech/glide/load/Transformation;)[Lcom/bumptech/glide/load/resource/gif/GifDrawableTransformation;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/bumptech/glide/load/Transformation",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)[",
            "Lcom/bumptech/glide/load/resource/gif/GifDrawableTransformation;"
        }
    .end annotation

    .prologue
    .line 198
    array-length v0, p1

    new-array v1, v0, [Lcom/bumptech/glide/load/resource/gif/GifDrawableTransformation;

    const/4 v0, 0x0

    .line 199
    :goto_0
    array-length v2, p1

    if-lt v0, v2, :cond_0

    .line 202
    return-object v1

    .line 200
    :cond_0
    new-instance v2, Lcom/bumptech/glide/load/resource/gif/GifDrawableTransformation;

    aget-object v3, p1, v0

    iget-object v4, p0, Lcom/bumptech/glide/GifRequestBuilder;->glide:Lcom/bumptech/glide/Glide;

    invoke-virtual {v4}, Lcom/bumptech/glide/Glide;->getBitmapPool()Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/bumptech/glide/load/resource/gif/GifDrawableTransformation;-><init>(Lcom/bumptech/glide/load/Transformation;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V

    aput-object v2, v1, v0

    .line 199
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic animate(I)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/GifRequestBuilder;->animate(I)Lcom/bumptech/glide/GifRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic animate(Landroid/view/animation/Animation;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/GifRequestBuilder;->animate(Landroid/view/animation/Animation;)Lcom/bumptech/glide/GifRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic animate(Lcom/bumptech/glide/request/animation/GlideAnimationFactory;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/GifRequestBuilder;->animate(Lcom/bumptech/glide/request/animation/GlideAnimationFactory;)Lcom/bumptech/glide/GifRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic animate(Lcom/bumptech/glide/request/animation/ViewPropertyAnimation$Animator;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/GifRequestBuilder;->animate(Lcom/bumptech/glide/request/animation/ViewPropertyAnimation$Animator;)Lcom/bumptech/glide/GifRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public animate(I)Lcom/bumptech/glide/GifRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/bumptech/glide/GifRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 280
    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->animate(I)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 281
    return-object p0
.end method

.method public animate(Landroid/view/animation/Animation;)Lcom/bumptech/glide/GifRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/animation/Animation;",
            ")",
            "Lcom/bumptech/glide/GifRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 291
    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->animate(Landroid/view/animation/Animation;)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 292
    return-object p0
.end method

.method public animate(Lcom/bumptech/glide/request/animation/GlideAnimationFactory;)Lcom/bumptech/glide/GifRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/animation/GlideAnimationFactory",
            "<",
            "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
            ">;)",
            "Lcom/bumptech/glide/GifRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 309
    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->animate(Lcom/bumptech/glide/request/animation/GlideAnimationFactory;)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 310
    return-object p0
.end method

.method public animate(Lcom/bumptech/glide/request/animation/ViewPropertyAnimation$Animator;)Lcom/bumptech/glide/GifRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/animation/ViewPropertyAnimation$Animator;",
            ")",
            "Lcom/bumptech/glide/GifRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 300
    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->animate(Lcom/bumptech/glide/request/animation/ViewPropertyAnimation$Animator;)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 301
    return-object p0
.end method

.method applyCenterCrop()V
    .locals 0

    .prologue
    .line 440
    invoke-virtual {p0}, Lcom/bumptech/glide/GifRequestBuilder;->centerCrop()Lcom/bumptech/glide/GifRequestBuilder;

    .line 441
    return-void
.end method

.method applyFitCenter()V
    .locals 0

    .prologue
    .line 435
    invoke-virtual {p0}, Lcom/bumptech/glide/GifRequestBuilder;->fitCenter()Lcom/bumptech/glide/GifRequestBuilder;

    .line 436
    return-void
.end method

.method public bridge synthetic cacheDecoder(Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/GifRequestBuilder;->cacheDecoder(Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/GifRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public cacheDecoder(Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/GifRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/ResourceDecoder",
            "<",
            "Ljava/io/File;",
            "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
            ">;)",
            "Lcom/bumptech/glide/GifRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 116
    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->cacheDecoder(Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 117
    return-object p0
.end method

.method public bridge synthetic centerCrop()Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/bumptech/glide/GifRequestBuilder;->centerCrop()Lcom/bumptech/glide/GifRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public centerCrop()Lcom/bumptech/glide/GifRequestBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/GifRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 150
    new-array v0, v0, [Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/bumptech/glide/GifRequestBuilder;->glide:Lcom/bumptech/glide/Glide;

    invoke-virtual {v2}, Lcom/bumptech/glide/Glide;->getBitmapCenterCrop()Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/GifRequestBuilder;->transformFrame([Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;)Lcom/bumptech/glide/GifRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/bumptech/glide/GifRequestBuilder;->clone()Lcom/bumptech/glide/GifRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/bumptech/glide/GifRequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/GifRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 430
    invoke-super {p0}, Lcom/bumptech/glide/GenericRequestBuilder;->clone()Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/GifRequestBuilder;

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
    .line 36
    invoke-virtual {p0}, Lcom/bumptech/glide/GifRequestBuilder;->clone()Lcom/bumptech/glide/GifRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic crossFade()Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/bumptech/glide/GifRequestBuilder;->crossFade()Lcom/bumptech/glide/GifRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic crossFade(I)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/GifRequestBuilder;->crossFade(I)Lcom/bumptech/glide/GifRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic crossFade(II)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/GifRequestBuilder;->crossFade(II)Lcom/bumptech/glide/GifRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic crossFade(Landroid/view/animation/Animation;I)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/GifRequestBuilder;->crossFade(Landroid/view/animation/Animation;I)Lcom/bumptech/glide/GifRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public crossFade()Lcom/bumptech/glide/GifRequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/GifRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 234
    new-instance v0, Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;

    invoke-direct {v0}, Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;-><init>()V

    invoke-super {p0, v0}, Lcom/bumptech/glide/GenericRequestBuilder;->animate(Lcom/bumptech/glide/request/animation/GlideAnimationFactory;)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 235
    return-object p0
.end method

.method public crossFade(I)Lcom/bumptech/glide/GifRequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/bumptech/glide/GifRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 243
    new-instance v0, Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;-><init>(I)V

    invoke-super {p0, v0}, Lcom/bumptech/glide/GenericRequestBuilder;->animate(Lcom/bumptech/glide/request/animation/GlideAnimationFactory;)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 244
    return-object p0
.end method

.method public crossFade(II)Lcom/bumptech/glide/GifRequestBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/bumptech/glide/GifRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 262
    new-instance v0, Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;

    iget-object v1, p0, Lcom/bumptech/glide/GifRequestBuilder;->context:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p2}, Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;-><init>(Landroid/content/Context;II)V

    invoke-super {p0, v0}, Lcom/bumptech/glide/GenericRequestBuilder;->animate(Lcom/bumptech/glide/request/animation/GlideAnimationFactory;)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 263
    return-object p0
.end method

.method public crossFade(Landroid/view/animation/Animation;I)Lcom/bumptech/glide/GifRequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/animation/Animation;",
            "I)",
            "Lcom/bumptech/glide/GifRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 253
    new-instance v0, Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;

    invoke-direct {v0, p1, p2}, Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;-><init>(Landroid/view/animation/Animation;I)V

    invoke-super {p0, v0}, Lcom/bumptech/glide/GenericRequestBuilder;->animate(Lcom/bumptech/glide/request/animation/GlideAnimationFactory;)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 254
    return-object p0
.end method

.method public bridge synthetic decoder(Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/GifRequestBuilder;->decoder(Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/GifRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public decoder(Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/GifRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/ResourceDecoder",
            "<",
            "Ljava/io/InputStream;",
            "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
            ">;)",
            "Lcom/bumptech/glide/GifRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 106
    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->decoder(Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 107
    return-object p0
.end method

.method public bridge synthetic diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/GifRequestBuilder;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/GifRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/GifRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/DiskCacheStrategy;",
            ")",
            "Lcom/bumptech/glide/GifRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 385
    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 386
    return-object p0
.end method

.method public bridge synthetic dontAnimate()Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/bumptech/glide/GifRequestBuilder;->dontAnimate()Lcom/bumptech/glide/GifRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public dontAnimate()Lcom/bumptech/glide/GifRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/GifRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 271
    invoke-super {p0}, Lcom/bumptech/glide/GenericRequestBuilder;->dontAnimate()Lcom/bumptech/glide/GenericRequestBuilder;

    .line 272
    return-object p0
.end method

.method public bridge synthetic dontTransform()Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/bumptech/glide/GifRequestBuilder;->dontTransform()Lcom/bumptech/glide/GifRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public dontTransform()Lcom/bumptech/glide/GifRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/GifRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 412
    invoke-super {p0}, Lcom/bumptech/glide/GenericRequestBuilder;->dontTransform()Lcom/bumptech/glide/GenericRequestBuilder;

    .line 413
    return-object p0
.end method

.method public bridge synthetic encoder(Lcom/bumptech/glide/load/ResourceEncoder;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/GifRequestBuilder;->encoder(Lcom/bumptech/glide/load/ResourceEncoder;)Lcom/bumptech/glide/GifRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public encoder(Lcom/bumptech/glide/load/ResourceEncoder;)Lcom/bumptech/glide/GifRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/ResourceEncoder",
            "<",
            "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
            ">;)",
            "Lcom/bumptech/glide/GifRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 126
    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->encoder(Lcom/bumptech/glide/load/ResourceEncoder;)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 127
    return-object p0
.end method

.method public bridge synthetic error(I)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/GifRequestBuilder;->error(I)Lcom/bumptech/glide/GifRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic error(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/GifRequestBuilder;->error(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/GifRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public error(I)Lcom/bumptech/glide/GifRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/bumptech/glide/GifRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 348
    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->error(I)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 349
    return-object p0
.end method

.method public error(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/GifRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")",
            "Lcom/bumptech/glide/GifRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 357
    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->error(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 358
    return-object p0
.end method

.method public bridge synthetic fallback(I)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/GifRequestBuilder;->fallback(I)Lcom/bumptech/glide/GifRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic fallback(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/GifRequestBuilder;->fallback(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/GifRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public fallback(I)Lcom/bumptech/glide/GifRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/bumptech/glide/GifRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 339
    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->fallback(I)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 340
    return-object p0
.end method

.method public fallback(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/GifRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")",
            "Lcom/bumptech/glide/GifRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 333
    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->fallback(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 334
    return-object p0
.end method

.method public bridge synthetic fitCenter()Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/bumptech/glide/GifRequestBuilder;->fitCenter()Lcom/bumptech/glide/GifRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public fitCenter()Lcom/bumptech/glide/GifRequestBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/GifRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 164
    new-array v0, v0, [Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/bumptech/glide/GifRequestBuilder;->glide:Lcom/bumptech/glide/Glide;

    invoke-virtual {v2}, Lcom/bumptech/glide/Glide;->getBitmapFitCenter()Lcom/bumptech/glide/load/resource/bitmap/FitCenter;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/GifRequestBuilder;->transformFrame([Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;)Lcom/bumptech/glide/GifRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/GifRequestBuilder;->listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/GifRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/GifRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/RequestListener",
            "<-TModelType;",
            "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
            ">;)",
            "Lcom/bumptech/glide/GifRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 367
    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 368
    return-object p0
.end method

.method public bridge synthetic load(Ljava/lang/Object;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/GifRequestBuilder;->load(Ljava/lang/Object;)Lcom/bumptech/glide/GifRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public load(Ljava/lang/Object;)Lcom/bumptech/glide/GifRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModelType;)",
            "Lcom/bumptech/glide/GifRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 424
    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->load(Ljava/lang/Object;)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 425
    return-object p0
.end method

.method public bridge synthetic override(II)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/GifRequestBuilder;->override(II)Lcom/bumptech/glide/GifRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public override(II)Lcom/bumptech/glide/GifRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/bumptech/glide/GifRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 394
    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/GenericRequestBuilder;->override(II)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 395
    return-object p0
.end method

.method public bridge synthetic placeholder(I)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/GifRequestBuilder;->placeholder(I)Lcom/bumptech/glide/GifRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/GifRequestBuilder;->placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/GifRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public placeholder(I)Lcom/bumptech/glide/GifRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/bumptech/glide/GifRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 318
    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->placeholder(I)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 319
    return-object p0
.end method

.method public placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/GifRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")",
            "Lcom/bumptech/glide/GifRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 327
    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 328
    return-object p0
.end method

.method public bridge synthetic priority(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/GifRequestBuilder;->priority(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/GifRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public priority(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/GifRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/Priority;",
            ")",
            "Lcom/bumptech/glide/GifRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 135
    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->priority(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 136
    return-object p0
.end method

.method public bridge synthetic signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/GifRequestBuilder;->signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/GifRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/GifRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Key;",
            ")",
            "Lcom/bumptech/glide/GifRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 418
    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 419
    return-object p0
.end method

.method public bridge synthetic sizeMultiplier(F)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/GifRequestBuilder;->sizeMultiplier(F)Lcom/bumptech/glide/GifRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public sizeMultiplier(F)Lcom/bumptech/glide/GifRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/bumptech/glide/GifRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 96
    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->sizeMultiplier(F)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 97
    return-object p0
.end method

.method public bridge synthetic skipMemoryCache(Z)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/GifRequestBuilder;->skipMemoryCache(Z)Lcom/bumptech/glide/GifRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public skipMemoryCache(Z)Lcom/bumptech/glide/GifRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/bumptech/glide/GifRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 376
    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->skipMemoryCache(Z)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 377
    return-object p0
.end method

.method public bridge synthetic sourceEncoder(Lcom/bumptech/glide/load/Encoder;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/GifRequestBuilder;->sourceEncoder(Lcom/bumptech/glide/load/Encoder;)Lcom/bumptech/glide/GifRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public sourceEncoder(Lcom/bumptech/glide/load/Encoder;)Lcom/bumptech/glide/GifRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Encoder",
            "<",
            "Ljava/io/InputStream;",
            ">;)",
            "Lcom/bumptech/glide/GifRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 403
    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->sourceEncoder(Lcom/bumptech/glide/load/Encoder;)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 404
    return-object p0
.end method

.method public bridge synthetic thumbnail(F)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/GifRequestBuilder;->thumbnail(F)Lcom/bumptech/glide/GifRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thumbnail(Lcom/bumptech/glide/GenericRequestBuilder;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/GifRequestBuilder;->thumbnail(Lcom/bumptech/glide/GenericRequestBuilder;)Lcom/bumptech/glide/GifRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public thumbnail(F)Lcom/bumptech/glide/GifRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/bumptech/glide/GifRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 87
    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->thumbnail(F)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 88
    return-object p0
.end method

.method public thumbnail(Lcom/bumptech/glide/GenericRequestBuilder;)Lcom/bumptech/glide/GifRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/GenericRequestBuilder",
            "<***",
            "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
            ">;)",
            "Lcom/bumptech/glide/GifRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->thumbnail(Lcom/bumptech/glide/GenericRequestBuilder;)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 51
    return-object p0
.end method

.method public thumbnail(Lcom/bumptech/glide/GifRequestBuilder;)Lcom/bumptech/glide/GifRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/GifRequestBuilder",
            "<*>;)",
            "Lcom/bumptech/glide/GifRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 78
    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->thumbnail(Lcom/bumptech/glide/GenericRequestBuilder;)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 79
    return-object p0
.end method

.method public bridge synthetic transcoder(Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/GifRequestBuilder;->transcoder(Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)Lcom/bumptech/glide/GifRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public transcoder(Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)Lcom/bumptech/glide/GifRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder",
            "<",
            "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
            "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
            ">;)",
            "Lcom/bumptech/glide/GifRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 225
    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->transcoder(Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 226
    return-object p0
.end method

.method public bridge synthetic transform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/GifRequestBuilder;->transform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/GifRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public varargs transform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/GifRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/bumptech/glide/load/Transformation",
            "<",
            "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
            ">;)",
            "Lcom/bumptech/glide/GifRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 216
    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->transform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 217
    return-object p0
.end method

.method public varargs transformFrame([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/GifRequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/bumptech/glide/load/Transformation",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/bumptech/glide/GifRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 194
    invoke-direct {p0, p1}, Lcom/bumptech/glide/GifRequestBuilder;->toGifTransformations([Lcom/bumptech/glide/load/Transformation;)[Lcom/bumptech/glide/load/resource/gif/GifDrawableTransformation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/GifRequestBuilder;->transform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/GifRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public varargs transformFrame([Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;)Lcom/bumptech/glide/GifRequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;",
            ")",
            "Lcom/bumptech/glide/GifRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 179
    invoke-direct {p0, p1}, Lcom/bumptech/glide/GifRequestBuilder;->toGifTransformations([Lcom/bumptech/glide/load/Transformation;)[Lcom/bumptech/glide/load/resource/gif/GifDrawableTransformation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/GifRequestBuilder;->transform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/GifRequestBuilder;

    move-result-object v0

    return-object v0
.end method
