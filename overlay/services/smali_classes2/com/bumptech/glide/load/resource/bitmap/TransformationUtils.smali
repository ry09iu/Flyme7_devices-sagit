.class public final Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;
.super Ljava/lang/Object;
.source "TransformationUtils.java"


# static fields
.field public static final PAINT_FLAGS:I = 0x6

.field private static final TAG:Ljava/lang/String; = "TransformationUtils"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method public static centerCrop(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    const/high16 v5, 0x3f000000    # 0.5f

    .line 39
    if-eqz p1, :cond_2

    .line 41
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-eq v0, p2, :cond_3

    .line 47
    :cond_0
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 48
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    mul-int/2addr v0, p3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v1, p2

    if-gt v0, v1, :cond_4

    .line 52
    int-to-float v0, p2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 53
    int-to-float v1, p3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v0

    sub-float/2addr v1, v4

    mul-float/2addr v1, v5

    .line 56
    :goto_0
    invoke-virtual {v3, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 57
    add-float v0, v2, v5

    float-to-int v0, v0

    int-to-float v0, v0

    add-float/2addr v1, v5

    float-to-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 59
    if-nez p0, :cond_1

    .line 62
    invoke-static {p1}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->getSafeConfig(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;

    move-result-object v0

    invoke-static {p2, p3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 66
    :cond_1
    invoke-static {p1, p0}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->setAlpha(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 68
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 69
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    .line 70
    invoke-virtual {v0, p1, v3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 71
    return-object p0

    .line 40
    :cond_2
    return-object v0

    .line 41
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-ne v0, p3, :cond_0

    .line 42
    return-object p1

    .line 49
    :cond_4
    int-to-float v0, p3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 50
    int-to-float v1, p2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v0

    sub-float/2addr v1, v4

    mul-float/2addr v1, v5

    move v6, v2

    move v2, v1

    move v1, v6

    goto :goto_0
.end method

.method public static fitCenter(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;II)Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 86
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-eq v0, p2, :cond_2

    .line 92
    :cond_0
    int-to-float v0, p2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 93
    int-to-float v1, p3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 94
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 99
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v2, v0

    .line 100
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v3, v0

    .line 102
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-eq v0, v2, :cond_4

    .line 109
    :cond_1
    invoke-static {p0}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->getSafeConfig(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;

    move-result-object v4

    .line 110
    invoke-interface {p1, v2, v3, v4}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->get(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 111
    if-eqz v0, :cond_6

    .line 115
    :goto_0
    invoke-static {p0, v0}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->setAlpha(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    const-string/jumbo v2, "TransformationUtils"

    .line 117
    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_7

    .line 124
    :goto_1
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 125
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 126
    invoke-virtual {v3, v1, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 127
    new-instance v1, Landroid/graphics/Paint;

    const/4 v4, 0x6

    invoke-direct {v1, v4}, Landroid/graphics/Paint;-><init>(I)V

    .line 128
    invoke-virtual {v2, p0, v3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 130
    return-object v0

    .line 86
    :cond_2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-ne v0, p3, :cond_0

    const-string/jumbo v0, "TransformationUtils"

    .line 87
    invoke-static {v0, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 90
    :goto_2
    return-object p0

    :cond_3
    const-string/jumbo v0, "TransformationUtils"

    const-string/jumbo v1, "requested target size matches input, returning input"

    .line 88
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 102
    :cond_4
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-ne v0, v3, :cond_1

    const-string/jumbo v0, "TransformationUtils"

    .line 103
    invoke-static {v0, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 106
    :goto_3
    return-object p0

    :cond_5
    const-string/jumbo v0, "TransformationUtils"

    const-string/jumbo v1, "adjusted target size matches input, returning input"

    .line 104
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 112
    :cond_6
    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_7
    const-string/jumbo v2, "TransformationUtils"

    .line 118
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "request: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "TransformationUtils"

    .line 119
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "toFit:   "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "TransformationUtils"

    .line 120
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "toReuse: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "TransformationUtils"

    .line 121
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "minPct:   "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public static getExifOrientationDegrees(I)I
    .locals 1

    .prologue
    .line 227
    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    .line 244
    :goto_0
    return v0

    :pswitch_0
    const/16 v0, 0x5a

    .line 230
    goto :goto_0

    :pswitch_1
    const/16 v0, 0xb4

    .line 234
    goto :goto_0

    :pswitch_2
    const/16 v0, 0x10e

    .line 238
    goto :goto_0

    .line 227
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public static getOrientation(Ljava/lang/String;)I
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x5
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 161
    :try_start_0
    new-instance v0, Landroid/media/ExifInterface;

    invoke-direct {v0, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "Orientation"

    const/4 v2, 0x0

    .line 162
    invoke-virtual {v0, v1, v2}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v0

    .line 163
    invoke-static {v0}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->getExifOrientationDegrees(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "TransformationUtils"

    const/4 v2, 0x6

    .line 165
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 169
    :goto_0
    return v4

    :cond_0
    const-string/jumbo v1, "TransformationUtils"

    .line 166
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to get orientation for image with path="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static getSafeConfig(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;
    .locals 1

    .prologue
    .line 285
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    goto :goto_0
.end method

.method static initializeMatrixForRotation(ILandroid/graphics/Matrix;)V
    .locals 5

    .prologue
    const/high16 v4, 0x43340000    # 180.0f

    const/high16 v3, 0x42b40000    # 90.0f

    const/high16 v2, -0x3d4c0000    # -90.0f

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v0, -0x40800000    # -1.0f

    .line 290
    packed-switch p0, :pswitch_data_0

    .line 318
    :goto_0
    return-void

    .line 292
    :pswitch_0
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    goto :goto_0

    .line 295
    :pswitch_1
    invoke-virtual {p1, v4}, Landroid/graphics/Matrix;->setRotate(F)V

    goto :goto_0

    .line 298
    :pswitch_2
    invoke-virtual {p1, v4}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 299
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_0

    .line 302
    :pswitch_3
    invoke-virtual {p1, v3}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 303
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_0

    .line 306
    :pswitch_4
    invoke-virtual {p1, v3}, Landroid/graphics/Matrix;->setRotate(F)V

    goto :goto_0

    .line 309
    :pswitch_5
    invoke-virtual {p1, v2}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 310
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_0

    .line 313
    :pswitch_6
    invoke-virtual {p1, v2}, Landroid/graphics/Matrix;->setRotate(F)V

    goto :goto_0

    .line 290
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static orientImage(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 183
    invoke-static {p0}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->getOrientation(Ljava/lang/String;)I

    move-result v0

    .line 184
    invoke-static {p1, v0}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->rotateImage(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static rotateImage(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    .line 199
    if-nez p1, :cond_1

    .line 216
    :cond_0
    :goto_0
    return-object p0

    .line 200
    :cond_1
    :try_start_0
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 201
    int-to-float v0, p1

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->setRotate(F)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 202
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto :goto_0

    .line 215
    :catch_0
    move-exception v0

    const-string/jumbo v1, "TransformationUtils"

    const/4 v2, 0x6

    .line 212
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "TransformationUtils"

    const-string/jumbo v2, "Exception when trying to orient image"

    .line 213
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static rotateImageExif(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;I)Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 256
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 257
    invoke-static {p2, v1}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->initializeMatrixForRotation(ILandroid/graphics/Matrix;)V

    .line 258
    invoke-virtual {v1}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v0

    if-nez v0, :cond_0

    .line 263
    new-instance v2, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-direct {v2, v4, v4, v0, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 264
    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 266
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 267
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 269
    invoke-static {p0}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->getSafeConfig(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;

    move-result-object v5

    .line 270
    invoke-interface {p1, v3, v4, v5}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->get(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 271
    if-eqz v0, :cond_1

    .line 275
    :goto_0
    iget v3, v2, Landroid/graphics/RectF;->left:F

    neg-float v3, v3

    iget v2, v2, Landroid/graphics/RectF;->top:F

    neg-float v2, v2

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 277
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 278
    new-instance v3, Landroid/graphics/Paint;

    const/4 v4, 0x6

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(I)V

    .line 279
    invoke-virtual {v2, p0, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 281
    return-object v0

    .line 259
    :cond_0
    return-object p0

    .line 272
    :cond_1
    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public static setAlpha(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xc
    .end annotation

    .prologue
    .line 143
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-ge v0, v1, :cond_1

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 143
    :cond_1
    if-eqz p1, :cond_0

    .line 144
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    goto :goto_0
.end method
