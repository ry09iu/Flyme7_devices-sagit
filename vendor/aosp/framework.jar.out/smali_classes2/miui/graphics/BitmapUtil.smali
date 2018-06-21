.class public Lmiui/graphics/BitmapUtil;
.super Ljava/lang/Object;
.source "BitmapUtil.java"


# static fields
.field private static final COLOR_BYTE_SIZE:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBuffer(Landroid/graphics/Bitmap;)[B
    .locals 11
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v2, 0x0

    .line 14
    const/4 v10, 0x0

    .line 15
    .local v10, "ret":[B
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-lt v0, v4, :cond_0

    .line 16
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 17
    .local v6, "baseWidth":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 18
    .local v7, "baseHeight":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    div-int/lit8 v9, v0, 0x4

    .line 19
    .local v9, "pixelSize":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v0

    div-int/lit8 v3, v0, 0x4

    .line 21
    .local v3, "strideSize":I
    new-array v1, v9, [I

    .local v1, "basePixels":[I
    move-object v0, p0

    move v4, v2

    move v5, v2

    .line 22
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 23
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    new-array v10, v0, [B

    .line 24
    .local v10, "ret":[B
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    array-length v0, v1

    if-ge v8, v0, :cond_1

    .line 26
    mul-int/lit8 v0, v8, 0x4

    add-int/lit8 v0, v0, 0x3

    aget v2, v1, v8

    shr-int/lit8 v2, v2, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v10, v0

    .line 27
    mul-int/lit8 v0, v8, 0x4

    aget v2, v1, v8

    shr-int/lit8 v2, v2, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v10, v0

    .line 28
    mul-int/lit8 v0, v8, 0x4

    add-int/lit8 v0, v0, 0x1

    aget v2, v1, v8

    shr-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v10, v0

    .line 29
    mul-int/lit8 v0, v8, 0x4

    add-int/lit8 v0, v0, 0x2

    aget v2, v1, v8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v10, v0

    .line 24
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 32
    .end local v1    # "basePixels":[I
    .end local v3    # "strideSize":I
    .end local v6    # "baseWidth":I
    .end local v7    # "baseHeight":I
    .end local v8    # "i":I
    .end local v9    # "pixelSize":I
    .local v10, "ret":[B
    :cond_0
    iget-object v10, p0, Landroid/graphics/Bitmap;->mBuffer:[B

    .line 34
    .local v10, "ret":[B
    :cond_1
    return-object v10
.end method
