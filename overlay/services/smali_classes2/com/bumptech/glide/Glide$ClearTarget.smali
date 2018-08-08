.class Lcom/bumptech/glide/Glide$ClearTarget;
.super Lcom/bumptech/glide/request/target/ViewTarget;
.source "Glide.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/Glide;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ClearTarget"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/request/target/ViewTarget",
        "<",
        "Landroid/view/View;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 711
    invoke-direct {p0, p1}, Lcom/bumptech/glide/request/target/ViewTarget;-><init>(Landroid/view/View;)V

    .line 712
    return-void
.end method


# virtual methods
.method public onLoadCleared(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 732
    return-void
.end method

.method public onLoadFailed(Ljava/lang/Exception;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 722
    return-void
.end method

.method public onLoadStarted(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 717
    return-void
.end method

.method public onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/animation/GlideAnimation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/bumptech/glide/request/animation/GlideAnimation",
            "<-",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 727
    return-void
.end method
