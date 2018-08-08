.class public Lcom/bumptech/glide/load/resource/gif/GifDrawable;
.super Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;
.source "GifDrawable.java"

# interfaces
.implements Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;
    }
.end annotation


# instance fields
.field private applyGravity:Z

.field private final decoder:Lcom/bumptech/glide/gifdecoder/GifDecoder;

.field private final destRect:Landroid/graphics/Rect;

.field private final frameLoader:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;

.field private isRecycled:Z

.field private isRunning:Z

.field private isStarted:Z

.field private isVisible:Z

.field private loopCount:I

.field private maxLoopCount:I

.field private final paint:Landroid/graphics/Paint;

.field private final state:Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/Transformation;IILcom/bumptech/glide/gifdecoder/GifHeader;[BLandroid/graphics/Bitmap;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;",
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;",
            "Lcom/bumptech/glide/load/Transformation",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;II",
            "Lcom/bumptech/glide/gifdecoder/GifHeader;",
            "[B",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    .prologue
    .line 75
    new-instance v0, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;

    move-object/from16 v1, p7

    move-object/from16 v2, p8

    move-object v3, p1

    move-object v4, p4

    move v5, p5

    move/from16 v6, p6

    move-object v7, p2

    move-object v8, p3

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;-><init>(Lcom/bumptech/glide/gifdecoder/GifHeader;[BLandroid/content/Context;Lcom/bumptech/glide/load/Transformation;IILcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Landroid/graphics/Bitmap;)V

    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;-><init>(Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;)V

    .line 77
    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/gifdecoder/GifDecoder;Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Landroid/graphics/Paint;)V
    .locals 2

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;-><init>()V

    .line 29
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->destRect:Landroid/graphics/Rect;

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->isVisible:Z

    const/4 v0, -0x1

    .line 49
    iput v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->maxLoopCount:I

    .line 101
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->decoder:Lcom/bumptech/glide/gifdecoder/GifDecoder;

    .line 102
    iput-object p2, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->frameLoader:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;

    .line 103
    new-instance v0, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;-><init>(Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;)V

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->state:Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;

    .line 104
    iput-object p5, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->paint:Landroid/graphics/Paint;

    .line 105
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->state:Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;

    iput-object p4, v0, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 106
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->state:Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;

    iput-object p3, v0, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->firstFrame:Landroid/graphics/Bitmap;

    .line 107
    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;)V
    .locals 6

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;-><init>()V

    .line 29
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->destRect:Landroid/graphics/Rect;

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->isVisible:Z

    const/4 v0, -0x1

    .line 49
    iput v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->maxLoopCount:I

    .line 87
    if-eqz p1, :cond_0

    .line 91
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->state:Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;

    .line 92
    new-instance v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;

    iget-object v1, p1, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->bitmapProvider:Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;

    invoke-direct {v0, v1}, Lcom/bumptech/glide/gifdecoder/GifDecoder;-><init>(Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;)V

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->decoder:Lcom/bumptech/glide/gifdecoder/GifDecoder;

    .line 93
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->paint:Landroid/graphics/Paint;

    .line 94
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->decoder:Lcom/bumptech/glide/gifdecoder/GifDecoder;

    iget-object v1, p1, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->gifHeader:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget-object v2, p1, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->data:[B

    invoke-virtual {v0, v1, v2}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->setData(Lcom/bumptech/glide/gifdecoder/GifHeader;[B)V

    .line 95
    new-instance v0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;

    iget-object v1, p1, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->decoder:Lcom/bumptech/glide/gifdecoder/GifDecoder;

    iget v4, p1, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->targetWidth:I

    iget v5, p1, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->targetHeight:I

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;-><init>(Landroid/content/Context;Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$FrameCallback;Lcom/bumptech/glide/gifdecoder/GifDecoder;II)V

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->frameLoader:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;

    .line 96
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->frameLoader:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;

    iget-object v1, p1, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->frameTransformation:Lcom/bumptech/glide/load/Transformation;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->setFrameTransformation(Lcom/bumptech/glide/load/Transformation;)V

    .line 97
    return-void

    .line 88
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "GifState must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lcom/bumptech/glide/load/resource/gif/GifDrawable;Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/Transformation;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
            "Landroid/graphics/Bitmap;",
            "Lcom/bumptech/glide/load/Transformation",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 81
    new-instance v0, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;

    iget-object v1, p1, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->state:Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;

    iget-object v1, v1, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->gifHeader:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget-object v2, p1, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->state:Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;

    iget-object v2, v2, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->data:[B

    iget-object v3, p1, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->state:Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;

    iget-object v3, v3, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->context:Landroid/content/Context;

    iget-object v4, p1, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->state:Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;

    iget v5, v4, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->targetWidth:I

    iget-object v4, p1, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->state:Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;

    iget v6, v4, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->targetHeight:I

    iget-object v4, p1, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->state:Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;

    iget-object v7, v4, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->bitmapProvider:Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;

    iget-object v4, p1, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->state:Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;

    iget-object v8, v4, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    move-object v4, p3

    move-object v9, p2

    invoke-direct/range {v0 .. v9}, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;-><init>(Lcom/bumptech/glide/gifdecoder/GifHeader;[BLandroid/content/Context;Lcom/bumptech/glide/load/Transformation;IILcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Landroid/graphics/Bitmap;)V

    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;-><init>(Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;)V

    .line 84
    return-void
.end method

.method private reset()V
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->frameLoader:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->clear()V

    .line 173
    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->invalidateSelf()V

    .line 174
    return-void
.end method

.method private resetLoopCount()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 142
    iput v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->loopCount:I

    .line 143
    return-void
.end method

.method private startRunning()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 178
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->decoder:Lcom/bumptech/glide/gifdecoder/GifDecoder;

    invoke-virtual {v0}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->getFrameCount()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 180
    iget-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->isRunning:Z

    if-eqz v0, :cond_1

    .line 185
    :goto_0
    return-void

    .line 179
    :cond_0
    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->invalidateSelf()V

    goto :goto_0

    .line 181
    :cond_1
    iput-boolean v1, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->isRunning:Z

    .line 182
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->frameLoader:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->start()V

    .line 183
    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->invalidateSelf()V

    goto :goto_0
.end method

.method private stopRunning()V
    .locals 1

    .prologue
    .line 188
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->isRunning:Z

    .line 189
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->frameLoader:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->stop()V

    .line 190
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 231
    iget-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->isRecycled:Z

    if-nez v0, :cond_1

    .line 235
    iget-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->applyGravity:Z

    if-nez v0, :cond_2

    .line 240
    :goto_0
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->frameLoader:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->getCurrentFrame()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 241
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->state:Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;

    iget-object v0, v0, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->firstFrame:Landroid/graphics/Bitmap;

    .line 242
    :cond_0
    iget-object v1, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->destRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v6, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 243
    return-void

    .line 232
    :cond_1
    return-void

    :cond_2
    const/16 v0, 0x77

    .line 236
    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget-object v4, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->destRect:Landroid/graphics/Rect;

    invoke-static {v0, v1, v2, v3, v4}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 237
    iput-boolean v5, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->applyGravity:Z

    goto :goto_0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->state:Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;

    return-object v0
.end method

.method public getData()[B
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->state:Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;

    iget-object v0, v0, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->data:[B

    return-object v0
.end method

.method public getDecoder()Lcom/bumptech/glide/gifdecoder/GifDecoder;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->decoder:Lcom/bumptech/glide/gifdecoder/GifDecoder;

    return-object v0
.end method

.method public getFirstFrame()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->state:Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;

    iget-object v0, v0, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->firstFrame:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getFrameCount()I
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->decoder:Lcom/bumptech/glide/gifdecoder/GifDecoder;

    invoke-virtual {v0}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->getFrameCount()I

    move-result v0

    return v0
.end method

.method public getFrameTransformation()Lcom/bumptech/glide/load/Transformation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/Transformation",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 130
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->state:Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;

    iget-object v0, v0, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->frameTransformation:Lcom/bumptech/glide/load/Transformation;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->state:Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;

    iget-object v0, v0, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->firstFrame:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->state:Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;

    iget-object v0, v0, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->firstFrame:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    const/4 v0, -0x2

    .line 258
    return v0
.end method

.method public isAnimated()Z
    .locals 1

    .prologue
    .line 303
    const/4 v0, 0x1

    return v0
.end method

.method isRecycled()Z
    .locals 1

    .prologue
    .line 298
    iget-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->isRecycled:Z

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 215
    iget-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->isRunning:Z

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    .prologue
    .line 225
    invoke-super {p0, p1}, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 226
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->applyGravity:Z

    .line 227
    return-void
.end method

.method public onFrameReady(I)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 264
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_2

    .line 270
    :cond_0
    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->invalidateSelf()V

    .line 272
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->decoder:Lcom/bumptech/glide/gifdecoder/GifDecoder;

    invoke-virtual {v0}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->getFrameCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-eq p1, v0, :cond_3

    .line 276
    :goto_0
    iget v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->maxLoopCount:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_4

    .line 279
    :cond_1
    :goto_1
    return-void

    .line 264
    :cond_2
    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-nez v0, :cond_0

    .line 265
    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->stop()V

    .line 266
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->reset()V

    .line 267
    return-void

    .line 273
    :cond_3
    iget v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->loopCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->loopCount:I

    goto :goto_0

    .line 276
    :cond_4
    iget v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->loopCount:I

    iget v1, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->maxLoopCount:I

    if-lt v0, v1, :cond_1

    .line 277
    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->stop()V

    goto :goto_1
.end method

.method public recycle()V
    .locals 2

    .prologue
    .line 290
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->isRecycled:Z

    .line 291
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->state:Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;

    iget-object v0, v0, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    iget-object v1, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->state:Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;

    iget-object v1, v1, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->firstFrame:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->put(Landroid/graphics/Bitmap;)Z

    .line 292
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->frameLoader:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->clear()V

    .line 293
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->frameLoader:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->stop()V

    .line 294
    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 248
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 253
    return-void
.end method

.method public setFrameTransformation(Lcom/bumptech/glide/load/Transformation;Landroid/graphics/Bitmap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Transformation",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    .prologue
    .line 114
    if-eqz p2, :cond_0

    .line 117
    if-eqz p1, :cond_1

    .line 120
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->state:Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;

    iput-object p1, v0, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->frameTransformation:Lcom/bumptech/glide/load/Transformation;

    .line 121
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->state:Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;

    iput-object p2, v0, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->firstFrame:Landroid/graphics/Bitmap;

    .line 122
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->frameLoader:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->setFrameTransformation(Lcom/bumptech/glide/load/Transformation;)V

    .line 123
    return-void

    .line 115
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "The first frame of the GIF must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "The frame transformation must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setIsRunning(Z)V
    .locals 0

    .prologue
    .line 220
    iput-boolean p1, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->isRunning:Z

    .line 221
    return-void
.end method

.method public setLoopCount(I)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 308
    if-lez p1, :cond_1

    .line 313
    :cond_0
    if-eqz p1, :cond_2

    .line 317
    iput p1, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->maxLoopCount:I

    .line 319
    :goto_0
    return-void

    .line 308
    :cond_1
    if-eq p1, v1, :cond_0

    if-eqz p1, :cond_0

    .line 309
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Loop count must be greater than 0, or equal to GlideDrawable.LOOP_FOREVER, or equal to GlideDrawable.LOOP_INTRINSIC"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 314
    :cond_2
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->decoder:Lcom/bumptech/glide/gifdecoder/GifDecoder;

    invoke-virtual {v0}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->getTotalIterationCount()I

    move-result v0

    .line 315
    if-eqz v0, :cond_3

    :goto_1
    iput v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->maxLoopCount:I

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public setVisible(ZZ)Z
    .locals 1

    .prologue
    .line 194
    iput-boolean p1, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->isVisible:Z

    .line 195
    if-eqz p1, :cond_0

    .line 197
    iget-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->isStarted:Z

    if-nez v0, :cond_1

    .line 200
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;->setVisible(ZZ)Z

    move-result v0

    return v0

    .line 196
    :cond_0
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->stopRunning()V

    goto :goto_0

    .line 198
    :cond_1
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->startRunning()V

    goto :goto_0
.end method

.method public start()V
    .locals 1

    .prologue
    .line 147
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->isStarted:Z

    .line 148
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->resetLoopCount()V

    .line 149
    iget-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->isVisible:Z

    if-nez v0, :cond_0

    .line 152
    :goto_0
    return-void

    .line 150
    :cond_0
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->startRunning()V

    goto :goto_0
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 156
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->isStarted:Z

    .line 157
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->stopRunning()V

    .line 163
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 166
    :goto_0
    return-void

    .line 164
    :cond_0
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->reset()V

    goto :goto_0
.end method
