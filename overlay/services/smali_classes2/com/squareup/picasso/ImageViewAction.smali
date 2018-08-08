.class Lcom/squareup/picasso/ImageViewAction;
.super Lcom/squareup/picasso/Action;
.source "ImageViewAction.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/picasso/Action",
        "<",
        "Landroid/widget/ImageView;",
        ">;"
    }
.end annotation


# instance fields
.field callback:Lcom/squareup/picasso/Callback;


# direct methods
.method constructor <init>(Lcom/squareup/picasso/Picasso;Landroid/widget/ImageView;Lcom/squareup/picasso/Request;IIILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;Lcom/squareup/picasso/Callback;Z)V
    .locals 12

    .prologue
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p11

    .line 30
    invoke-direct/range {v1 .. v11}, Lcom/squareup/picasso/Action;-><init>(Lcom/squareup/picasso/Picasso;Ljava/lang/Object;Lcom/squareup/picasso/Request;IIILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 32
    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/squareup/picasso/ImageViewAction;->callback:Lcom/squareup/picasso/Callback;

    .line 33
    return-void
.end method


# virtual methods
.method cancel()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 72
    invoke-super {p0}, Lcom/squareup/picasso/Action;->cancel()V

    .line 73
    iget-object v0, p0, Lcom/squareup/picasso/ImageViewAction;->callback:Lcom/squareup/picasso/Callback;

    if-nez v0, :cond_0

    .line 76
    :goto_0
    return-void

    .line 74
    :cond_0
    iput-object v1, p0, Lcom/squareup/picasso/ImageViewAction;->callback:Lcom/squareup/picasso/Callback;

    goto :goto_0
.end method

.method public complete(Landroid/graphics/Bitmap;Lcom/squareup/picasso/Picasso$LoadedFrom;)V
    .locals 6

    .prologue
    .line 36
    if-eqz p1, :cond_0

    .line 41
    iget-object v0, p0, Lcom/squareup/picasso/ImageViewAction;->target:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 42
    if-eqz v0, :cond_1

    .line 46
    iget-object v1, p0, Lcom/squareup/picasso/ImageViewAction;->picasso:Lcom/squareup/picasso/Picasso;

    iget-object v1, v1, Lcom/squareup/picasso/Picasso;->context:Landroid/content/Context;

    .line 47
    iget-object v2, p0, Lcom/squareup/picasso/ImageViewAction;->picasso:Lcom/squareup/picasso/Picasso;

    iget-boolean v5, v2, Lcom/squareup/picasso/Picasso;->indicatorsEnabled:Z

    .line 48
    iget-boolean v4, p0, Lcom/squareup/picasso/ImageViewAction;->noFade:Z

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lcom/squareup/picasso/PicassoDrawable;->setBitmap(Landroid/widget/ImageView;Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/squareup/picasso/Picasso$LoadedFrom;ZZ)V

    .line 50
    iget-object v0, p0, Lcom/squareup/picasso/ImageViewAction;->callback:Lcom/squareup/picasso/Callback;

    if-nez v0, :cond_2

    .line 53
    :goto_0
    return-void

    .line 37
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Attempted to complete action with no result!\n%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    .line 38
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 43
    :cond_1
    return-void

    .line 51
    :cond_2
    iget-object v0, p0, Lcom/squareup/picasso/ImageViewAction;->callback:Lcom/squareup/picasso/Callback;

    invoke-interface {v0}, Lcom/squareup/picasso/Callback;->onSuccess()V

    goto :goto_0
.end method

.method public error()V
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/squareup/picasso/ImageViewAction;->target:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 57
    if-eqz v0, :cond_0

    .line 60
    iget v1, p0, Lcom/squareup/picasso/ImageViewAction;->errorResId:I

    if-nez v1, :cond_1

    .line 62
    iget-object v1, p0, Lcom/squareup/picasso/ImageViewAction;->errorDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_2

    .line 66
    :goto_0
    iget-object v0, p0, Lcom/squareup/picasso/ImageViewAction;->callback:Lcom/squareup/picasso/Callback;

    if-nez v0, :cond_3

    .line 69
    :goto_1
    return-void

    .line 58
    :cond_0
    return-void

    .line 61
    :cond_1
    iget v1, p0, Lcom/squareup/picasso/ImageViewAction;->errorResId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 63
    :cond_2
    iget-object v1, p0, Lcom/squareup/picasso/ImageViewAction;->errorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 67
    :cond_3
    iget-object v0, p0, Lcom/squareup/picasso/ImageViewAction;->callback:Lcom/squareup/picasso/Callback;

    invoke-interface {v0}, Lcom/squareup/picasso/Callback;->onError()V

    goto :goto_1
.end method
