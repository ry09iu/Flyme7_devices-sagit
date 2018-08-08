.class public Lcom/bumptech/glide/request/animation/BitmapCrossFadeFactory;
.super Lcom/bumptech/glide/request/animation/BitmapContainerCrossFadeFactory;
.source "BitmapCrossFadeFactory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/request/animation/BitmapContainerCrossFadeFactory",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/bumptech/glide/request/animation/BitmapContainerCrossFadeFactory;-><init>()V

    .line 18
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/bumptech/glide/request/animation/BitmapContainerCrossFadeFactory;-><init>(I)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/bumptech/glide/request/animation/BitmapContainerCrossFadeFactory;-><init>(Landroid/content/Context;II)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/view/animation/Animation;I)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/bumptech/glide/request/animation/BitmapContainerCrossFadeFactory;-><init>(Landroid/view/animation/Animation;I)V

    .line 30
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
    .line 33
    invoke-direct {p0, p1}, Lcom/bumptech/glide/request/animation/BitmapContainerCrossFadeFactory;-><init>(Lcom/bumptech/glide/request/animation/GlideAnimationFactory;)V

    .line 34
    return-void
.end method


# virtual methods
.method protected getBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .prologue
    .line 38
    return-object p1
.end method

.method protected bridge synthetic getBitmap(Ljava/lang/Object;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 15
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/request/animation/BitmapCrossFadeFactory;->getBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
