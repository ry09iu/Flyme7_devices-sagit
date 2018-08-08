.class public abstract Lcom/bumptech/glide/request/animation/BitmapContainerCrossFadeFactory;
.super Ljava/lang/Object;
.source "BitmapContainerCrossFadeFactory.java"

# interfaces
.implements Lcom/bumptech/glide/request/animation/GlideAnimationFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/request/animation/BitmapContainerCrossFadeFactory$BitmapGlideAnimation;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/request/animation/GlideAnimationFactory",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final realFactory:Lcom/bumptech/glide/request/animation/GlideAnimationFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/request/animation/GlideAnimationFactory",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;

    invoke-direct {v0}, Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;-><init>()V

    invoke-direct {p0, v0}, Lcom/bumptech/glide/request/animation/BitmapContainerCrossFadeFactory;-><init>(Lcom/bumptech/glide/request/animation/GlideAnimationFactory;)V

    .line 24
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/bumptech/glide/request/animation/BitmapContainerCrossFadeFactory;-><init>(Lcom/bumptech/glide/request/animation/GlideAnimationFactory;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;

    invoke-direct {v0, p1, p2, p3}, Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;-><init>(Landroid/content/Context;II)V

    invoke-direct {p0, v0}, Lcom/bumptech/glide/request/animation/BitmapContainerCrossFadeFactory;-><init>(Lcom/bumptech/glide/request/animation/GlideAnimationFactory;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/view/animation/Animation;I)V
    .locals 1

    .prologue
    .line 35
    new-instance v0, Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;

    invoke-direct {v0, p1, p2}, Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;-><init>(Landroid/view/animation/Animation;I)V

    invoke-direct {p0, v0}, Lcom/bumptech/glide/request/animation/BitmapContainerCrossFadeFactory;-><init>(Lcom/bumptech/glide/request/animation/GlideAnimationFactory;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/request/animation/GlideAnimationFactory;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/animation/GlideAnimationFactory",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/bumptech/glide/request/animation/BitmapContainerCrossFadeFactory;->realFactory:Lcom/bumptech/glide/request/animation/GlideAnimationFactory;

    .line 40
    return-void
.end method


# virtual methods
.method public build(ZZ)Lcom/bumptech/glide/request/animation/GlideAnimation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Lcom/bumptech/glide/request/animation/GlideAnimation",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 44
    iget-object v0, p0, Lcom/bumptech/glide/request/animation/BitmapContainerCrossFadeFactory;->realFactory:Lcom/bumptech/glide/request/animation/GlideAnimationFactory;

    invoke-interface {v0, p1, p2}, Lcom/bumptech/glide/request/animation/GlideAnimationFactory;->build(ZZ)Lcom/bumptech/glide/request/animation/GlideAnimation;

    move-result-object v0

    .line 45
    new-instance v1, Lcom/bumptech/glide/request/animation/BitmapContainerCrossFadeFactory$BitmapGlideAnimation;

    invoke-direct {v1, p0, v0}, Lcom/bumptech/glide/request/animation/BitmapContainerCrossFadeFactory$BitmapGlideAnimation;-><init>(Lcom/bumptech/glide/request/animation/BitmapContainerCrossFadeFactory;Lcom/bumptech/glide/request/animation/GlideAnimation;)V

    return-object v1
.end method

.method protected abstract getBitmap(Ljava/lang/Object;)Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation
.end method
