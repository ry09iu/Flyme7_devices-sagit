.class public Lcom/bumptech/glide/gifdecoder/GifDecoder;
.super Ljava/lang/Object;
.source "GifDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;
    }
.end annotation


# static fields
.field private static final BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

.field private static final DISPOSAL_BACKGROUND:I = 0x2

.field private static final DISPOSAL_NONE:I = 0x1

.field private static final DISPOSAL_PREVIOUS:I = 0x3

.field private static final DISPOSAL_UNSPECIFIED:I = 0x0

.field private static final INITIAL_FRAME_POINTER:I = -0x1

.field private static final MAX_STACK_SIZE:I = 0x1000

.field private static final NULL_CODE:I = -0x1

.field public static final STATUS_FORMAT_ERROR:I = 0x1

.field public static final STATUS_OK:I = 0x0

.field public static final STATUS_OPEN_ERROR:I = 0x2

.field public static final STATUS_PARTIAL_DECODE:I = 0x3

.field private static final TAG:Ljava/lang/String;

.field public static final TOTAL_ITERATION_COUNT_FOREVER:I


# instance fields
.field private act:[I

.field private bitmapProvider:Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;

.field private final block:[B

.field private data:[B

.field private framePointer:I

.field private header:Lcom/bumptech/glide/gifdecoder/GifHeader;

.field private mainPixels:[B

.field private mainScratch:[I

.field private parser:Lcom/bumptech/glide/gifdecoder/GifHeaderParser;

.field private final pct:[I

.field private pixelStack:[B

.field private prefix:[S

.field private previousImage:Landroid/graphics/Bitmap;

.field private rawData:Ljava/nio/ByteBuffer;

.field private savePrevious:Z

.field private status:I

.field private suffix:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;

    .line 57
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->TAG:Ljava/lang/String;

    .line 110
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    sput-object v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;)V
    .locals 2

    .prologue
    const/16 v1, 0x100

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->pct:[I

    .line 123
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->block:[B

    .line 164
    iput-object p1, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->bitmapProvider:Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;

    .line 165
    new-instance v0, Lcom/bumptech/glide/gifdecoder/GifHeader;

    invoke-direct {v0}, Lcom/bumptech/glide/gifdecoder/GifHeader;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    .line 166
    return-void
.end method

.method private decodeBitmapData(Lcom/bumptech/glide/gifdecoder/GifFrame;)V
    .locals 22

    .prologue
    .line 591
    if-nez p1, :cond_1

    .line 596
    :goto_0
    if-eqz p1, :cond_2

    move-object/from16 v0, p1

    iget v1, v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->iw:I

    move-object/from16 v0, p1

    iget v2, v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->ih:I

    :goto_1
    mul-int/2addr v1, v2

    .line 600
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->mainPixels:[B

    if-nez v2, :cond_3

    .line 602
    :cond_0
    new-array v2, v1, [B

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->mainPixels:[B

    .line 604
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->prefix:[S

    if-eqz v2, :cond_4

    .line 607
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->suffix:[B

    if-eqz v2, :cond_5

    .line 610
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->pixelStack:[B

    if-eqz v2, :cond_6

    .line 615
    :goto_5
    invoke-direct/range {p0 .. p0}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->read()I

    move-result v17

    const/4 v2, 0x1

    .line 616
    shl-int v18, v2, v17

    .line 617
    add-int/lit8 v19, v18, 0x1

    .line 618
    add-int/lit8 v8, v18, 0x2

    const/4 v4, -0x1

    .line 620
    add-int/lit8 v11, v17, 0x1

    const/4 v2, 0x1

    .line 621
    shl-int/2addr v2, v11

    add-int/lit8 v9, v2, -0x1

    const/4 v2, 0x0

    .line 622
    :goto_6
    move/from16 v0, v18

    if-lt v2, v0, :cond_7

    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v14, 0x0

    const/4 v2, 0x0

    const/4 v13, 0x0

    const/4 v12, 0x0

    const/4 v5, 0x0

    move v10, v14

    move/from16 v21, v13

    move v13, v8

    move v8, v6

    move v6, v12

    move v12, v4

    move v4, v7

    move/from16 v7, v21

    .line 630
    :goto_7
    if-lt v5, v1, :cond_8

    :goto_8
    move v2, v4

    .line 712
    :goto_9
    if-lt v2, v1, :cond_15

    .line 715
    return-void

    .line 593
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->rawData:Ljava/nio/ByteBuffer;

    move-object/from16 v0, p1

    iget v2, v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->bufferFrameStart:I

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0

    .line 596
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v1, v1, Lcom/bumptech/glide/gifdecoder/GifHeader;->width:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v2, v2, Lcom/bumptech/glide/gifdecoder/GifHeader;->height:I

    goto :goto_1

    .line 600
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->mainPixels:[B

    array-length v2, v2

    if-lt v2, v1, :cond_0

    goto :goto_2

    :cond_4
    const/16 v2, 0x1000

    .line 605
    new-array v2, v2, [S

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->prefix:[S

    goto :goto_3

    :cond_5
    const/16 v2, 0x1000

    .line 608
    new-array v2, v2, [B

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->suffix:[B

    goto :goto_4

    :cond_6
    const/16 v2, 0x1001

    .line 611
    new-array v2, v2, [B

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->pixelStack:[B

    goto :goto_5

    .line 624
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->prefix:[S

    const/4 v5, 0x0

    aput-short v5, v3, v2

    .line 625
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->suffix:[B

    int-to-byte v5, v2

    int-to-byte v5, v5

    aput-byte v5, v3, v2

    .line 622
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 632
    :cond_8
    if-eqz v2, :cond_9

    .line 642
    :goto_a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->block:[B

    aget-byte v14, v14, v3

    and-int/lit16 v14, v14, 0xff

    shl-int/2addr v14, v7

    add-int/2addr v6, v14

    .line 643
    add-int/lit8 v7, v7, 0x8

    .line 644
    add-int/lit8 v16, v3, 0x1

    .line 645
    add-int/lit8 v15, v2, -0x1

    move v14, v10

    move v2, v9

    move v3, v11

    move v9, v7

    move v11, v12

    move v7, v4

    move v4, v13

    move/from16 v21, v8

    move v8, v6

    move/from16 v6, v21

    .line 647
    :goto_b
    if-ge v9, v3, :cond_b

    move v10, v14

    move v12, v11

    move v13, v4

    move v4, v7

    move v11, v3

    move/from16 v3, v16

    move v7, v9

    move v9, v2

    move v2, v15

    move/from16 v21, v8

    move v8, v6

    move/from16 v6, v21

    goto/16 :goto_7

    .line 634
    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->readBlock()I

    move-result v2

    .line 635
    if-lez v2, :cond_a

    const/4 v3, 0x0

    .line 639
    goto :goto_a

    :cond_a
    const/4 v2, 0x3

    .line 636
    move-object/from16 v0, p0

    iput v2, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->status:I

    goto/16 :goto_8

    .line 649
    :cond_b
    and-int v10, v8, v2

    .line 650
    shr-int v12, v8, v3

    .line 651
    sub-int v13, v9, v3

    .line 654
    move/from16 v0, v18

    if-eq v10, v0, :cond_d

    .line 663
    if-gt v10, v4, :cond_e

    .line 668
    move/from16 v0, v19

    if-eq v10, v0, :cond_f

    const/4 v8, -0x1

    .line 672
    if-eq v11, v8, :cond_10

    .line 679
    if-ge v10, v4, :cond_11

    move v8, v6

    move v9, v10

    .line 683
    :goto_c
    move/from16 v0, v18

    if-ge v9, v0, :cond_12

    .line 687
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->suffix:[B

    aget-byte v6, v6, v9

    and-int/lit16 v9, v6, 0xff

    .line 688
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->pixelStack:[B

    add-int/lit8 v6, v8, 0x1

    int-to-byte v0, v9

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-byte v0, v0

    move/from16 v20, v0

    aput-byte v20, v14, v8

    const/16 v8, 0x1000

    .line 691
    if-lt v4, v8, :cond_13

    .line 702
    :cond_c
    :goto_d
    if-gtz v6, :cond_14

    move v8, v12

    move v14, v9

    move v11, v10

    move v9, v13

    goto :goto_b

    .line 656
    :cond_d
    add-int/lit8 v3, v17, 0x1

    const/4 v2, 0x1

    .line 657
    shl-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    .line 658
    add-int/lit8 v4, v18, 0x2

    const/4 v10, -0x1

    move v8, v12

    move v9, v13

    move v11, v10

    .line 660
    goto :goto_b

    :cond_e
    const/4 v8, 0x3

    .line 664
    move-object/from16 v0, p0

    iput v8, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->status:I

    move v10, v14

    move v8, v6

    move v9, v2

    move v6, v12

    move v2, v15

    move v12, v11

    move v11, v3

    move/from16 v3, v16

    move/from16 v21, v13

    move v13, v4

    move v4, v7

    move/from16 v7, v21

    .line 665
    goto/16 :goto_7

    :cond_f
    move v10, v14

    move v8, v6

    move v9, v2

    move v6, v12

    move v2, v15

    move v12, v11

    move v11, v3

    move/from16 v3, v16

    move/from16 v21, v13

    move v13, v4

    move v4, v7

    move/from16 v7, v21

    .line 669
    goto/16 :goto_7

    .line 673
    :cond_10
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->pixelStack:[B

    add-int/lit8 v8, v6, 0x1

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->suffix:[B

    aget-byte v11, v11, v10

    int-to-byte v11, v11

    aput-byte v11, v9, v6

    move v9, v13

    move v14, v10

    move v6, v8

    move v11, v10

    move v8, v12

    .line 676
    goto/16 :goto_b

    .line 680
    :cond_11
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->pixelStack:[B

    add-int/lit8 v8, v6, 0x1

    int-to-byte v14, v14

    int-to-byte v14, v14

    aput-byte v14, v9, v6

    move v9, v11

    .line 681
    goto :goto_c

    .line 684
    :cond_12
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->pixelStack:[B

    add-int/lit8 v6, v8, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->suffix:[B

    move-object/from16 v20, v0

    aget-byte v20, v20, v9

    move/from16 v0, v20

    int-to-byte v0, v0

    move/from16 v20, v0

    aput-byte v20, v14, v8

    .line 685
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->prefix:[S

    aget-short v8, v8, v9

    move v9, v8

    move v8, v6

    goto/16 :goto_c

    .line 692
    :cond_13
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->prefix:[S

    int-to-short v11, v11

    int-to-short v11, v11

    aput-short v11, v8, v4

    .line 693
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->suffix:[B

    int-to-byte v11, v9

    int-to-byte v11, v11

    aput-byte v11, v8, v4

    .line 694
    add-int/lit8 v4, v4, 0x1

    .line 695
    and-int v8, v4, v2

    if-nez v8, :cond_c

    const/16 v8, 0x1000

    if-ge v4, v8, :cond_c

    .line 696
    add-int/lit8 v3, v3, 0x1

    .line 697
    add-int/2addr v2, v4

    goto/16 :goto_d

    .line 704
    :cond_14
    add-int/lit8 v6, v6, -0x1

    .line 705
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->mainPixels:[B

    add-int/lit8 v8, v7, 0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->pixelStack:[B

    aget-byte v14, v14, v6

    int-to-byte v14, v14

    aput-byte v14, v11, v7

    .line 706
    add-int/lit8 v5, v5, 0x1

    move v7, v8

    goto/16 :goto_d

    .line 713
    :cond_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->mainPixels:[B

    const/4 v4, 0x0

    aput-byte v4, v3, v2

    .line 712
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_9
.end method

.method private getHeaderParser()Lcom/bumptech/glide/gifdecoder/GifHeaderParser;
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->parser:Lcom/bumptech/glide/gifdecoder/GifHeaderParser;

    if-eqz v0, :cond_0

    .line 437
    :goto_0
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->parser:Lcom/bumptech/glide/gifdecoder/GifHeaderParser;

    return-object v0

    .line 435
    :cond_0
    new-instance v0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;

    invoke-direct {v0}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->parser:Lcom/bumptech/glide/gifdecoder/GifHeaderParser;

    goto :goto_0
.end method

.method private getNextBitmap()Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    .line 756
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->bitmapProvider:Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;

    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v1, v1, Lcom/bumptech/glide/gifdecoder/GifHeader;->width:I

    iget-object v2, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v2, v2, Lcom/bumptech/glide/gifdecoder/GifHeader;->height:I

    sget-object v3, Lcom/bumptech/glide/gifdecoder/GifDecoder;->BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

    invoke-interface {v0, v1, v2, v3}, Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;->obtain(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 757
    if-eqz v0, :cond_0

    .line 760
    :goto_0
    invoke-static {v0}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->setAlpha(Landroid/graphics/Bitmap;)V

    .line 761
    return-object v0

    .line 758
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v0, v0, Lcom/bumptech/glide/gifdecoder/GifHeader;->width:I

    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v1, v1, Lcom/bumptech/glide/gifdecoder/GifHeader;->height:I

    sget-object v2, Lcom/bumptech/glide/gifdecoder/GifDecoder;->BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method private read()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 723
    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->rawData:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 727
    :goto_0
    return v0

    .line 726
    :catch_0
    move-exception v1

    const/4 v1, 0x1

    .line 725
    iput v1, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->status:I

    goto :goto_0
.end method

.method private readBlock()I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 736
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->read()I

    move-result v1

    .line 738
    if-gtz v1, :cond_1

    .line 752
    :goto_0
    return v0

    .line 742
    :cond_0
    sub-int v2, v1, v0

    .line 743
    :try_start_0
    iget-object v3, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->rawData:Ljava/nio/ByteBuffer;

    iget-object v4, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->block:[B

    invoke-virtual {v3, v4, v0, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 745
    add-int/2addr v0, v2

    .line 741
    :cond_1
    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 750
    :catch_0
    move-exception v1

    .line 748
    sget-object v2, Lcom/bumptech/glide/gifdecoder/GifDecoder;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Error Reading Block"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x1

    .line 749
    iput v1, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->status:I

    goto :goto_0
.end method

.method private static setAlpha(Landroid/graphics/Bitmap;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xc
    .end annotation

    .prologue
    .line 766
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-ge v0, v1, :cond_0

    .line 769
    :goto_0
    return-void

    .line 767
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    goto :goto_0
.end method

.method private setPixels(Lcom/bumptech/glide/gifdecoder/GifFrame;Lcom/bumptech/glide/gifdecoder/GifFrame;)Landroid/graphics/Bitmap;
    .locals 13

    .prologue
    .line 477
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v3, v0, Lcom/bumptech/glide/gifdecoder/GifHeader;->width:I

    .line 478
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v7, v0, Lcom/bumptech/glide/gifdecoder/GifHeader;->height:I

    .line 481
    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->mainScratch:[I

    .line 484
    if-eqz p2, :cond_1

    .line 489
    :goto_0
    if-nez p2, :cond_2

    .line 517
    :cond_0
    :goto_1
    invoke-direct {p0, p1}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->decodeBitmapData(Lcom/bumptech/glide/gifdecoder/GifFrame;)V

    const/4 v5, 0x1

    const/16 v4, 0x8

    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 523
    :goto_2
    iget v6, p1, Lcom/bumptech/glide/gifdecoder/GifFrame;->ih:I

    if-lt v0, v6, :cond_7

    .line 573
    iget-boolean v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->savePrevious:Z

    if-nez v0, :cond_e

    .line 582
    :goto_3
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->getNextBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v6, v3

    .line 583
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 584
    return-object v0

    :cond_1
    const/4 v0, 0x0

    .line 485
    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([II)V

    goto :goto_0

    .line 489
    :cond_2
    iget v0, p2, Lcom/bumptech/glide/gifdecoder/GifFrame;->dispose:I

    if-lez v0, :cond_0

    .line 492
    iget v0, p2, Lcom/bumptech/glide/gifdecoder/GifFrame;->dispose:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    .line 510
    iget v0, p2, Lcom/bumptech/glide/gifdecoder/GifFrame;->dispose:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->previousImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 512
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->previousImage:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    .line 495
    iget-boolean v2, p1, Lcom/bumptech/glide/gifdecoder/GifFrame;->transparency:Z

    if-eqz v2, :cond_5

    .line 502
    :cond_4
    :goto_4
    iget v2, p2, Lcom/bumptech/glide/gifdecoder/GifFrame;->iy:I

    mul-int/2addr v2, v3

    iget v4, p2, Lcom/bumptech/glide/gifdecoder/GifFrame;->ix:I

    add-int/2addr v4, v2

    .line 503
    iget v2, p2, Lcom/bumptech/glide/gifdecoder/GifFrame;->ih:I

    mul-int/2addr v2, v3

    add-int v5, v4, v2

    .line 504
    :goto_5
    if-ge v4, v5, :cond_0

    .line 505
    iget v2, p2, Lcom/bumptech/glide/gifdecoder/GifFrame;->iw:I

    add-int v6, v4, v2

    move v2, v4

    .line 506
    :goto_6
    if-lt v2, v6, :cond_6

    .line 504
    add-int/2addr v4, v3

    goto :goto_5

    .line 496
    :cond_5
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v0, v0, Lcom/bumptech/glide/gifdecoder/GifHeader;->bgColor:I

    .line 497
    iget-object v2, p1, Lcom/bumptech/glide/gifdecoder/GifFrame;->lct:[I

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v2, v2, Lcom/bumptech/glide/gifdecoder/GifHeader;->bgIndex:I

    iget v4, p1, Lcom/bumptech/glide/gifdecoder/GifFrame;->transIndex:I

    if-ne v2, v4, :cond_4

    const/4 v0, 0x0

    .line 498
    goto :goto_4

    .line 507
    :cond_6
    aput v0, v1, v2

    .line 506
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 525
    :cond_7
    iget-boolean v6, p1, Lcom/bumptech/glide/gifdecoder/GifFrame;->interlace:Z

    if-nez v6, :cond_9

    move v6, v0

    .line 547
    :goto_7
    iget v8, p1, Lcom/bumptech/glide/gifdecoder/GifFrame;->iy:I

    add-int/2addr v6, v8

    .line 548
    iget-object v8, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v8, v8, Lcom/bumptech/glide/gifdecoder/GifHeader;->height:I

    if-lt v6, v8, :cond_b

    .line 523
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 526
    :cond_9
    iget v6, p1, Lcom/bumptech/glide/gifdecoder/GifFrame;->ih:I

    if-ge v2, v6, :cond_a

    .line 545
    :goto_8
    add-int v6, v2, v4

    move v12, v2

    move v2, v6

    move v6, v12

    goto :goto_7

    .line 527
    :cond_a
    add-int/lit8 v5, v5, 0x1

    .line 528
    packed-switch v5, :pswitch_data_0

    goto :goto_8

    :pswitch_0
    const/4 v2, 0x4

    .line 530
    goto :goto_8

    :pswitch_1
    const/4 v2, 0x2

    const/4 v4, 0x4

    .line 534
    goto :goto_8

    :pswitch_2
    const/4 v2, 0x1

    const/4 v4, 0x2

    .line 538
    goto :goto_8

    .line 549
    :cond_b
    iget-object v8, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v8, v8, Lcom/bumptech/glide/gifdecoder/GifHeader;->width:I

    mul-int/2addr v8, v6

    .line 551
    iget v6, p1, Lcom/bumptech/glide/gifdecoder/GifFrame;->ix:I

    add-int v9, v8, v6

    .line 553
    iget v6, p1, Lcom/bumptech/glide/gifdecoder/GifFrame;->iw:I

    add-int/2addr v6, v9

    .line 554
    iget-object v10, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v10, v10, Lcom/bumptech/glide/gifdecoder/GifHeader;->width:I

    add-int/2addr v10, v8

    if-lt v10, v6, :cond_c

    .line 559
    :goto_9
    iget v8, p1, Lcom/bumptech/glide/gifdecoder/GifFrame;->iw:I

    mul-int/2addr v8, v0

    move v10, v9

    .line 560
    :goto_a
    if-ge v10, v6, :cond_8

    .line 562
    iget-object v11, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->mainPixels:[B

    add-int/lit8 v9, v8, 0x1

    aget-byte v8, v11, v8

    and-int/lit16 v8, v8, 0xff

    .line 563
    iget-object v11, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->act:[I

    aget v8, v11, v8

    .line 564
    if-nez v8, :cond_d

    .line 567
    :goto_b
    add-int/lit8 v8, v10, 0x1

    move v10, v8

    move v8, v9

    .line 568
    goto :goto_a

    .line 556
    :cond_c
    iget-object v6, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v6, v6, Lcom/bumptech/glide/gifdecoder/GifHeader;->width:I

    add-int/2addr v6, v8

    goto :goto_9

    .line 565
    :cond_d
    aput v8, v1, v10

    goto :goto_b

    .line 573
    :cond_e
    iget v0, p1, Lcom/bumptech/glide/gifdecoder/GifFrame;->dispose:I

    if-nez v0, :cond_10

    .line 575
    :cond_f
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->previousImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_11

    .line 578
    :goto_c
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->previousImage:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    goto/16 :goto_3

    .line 573
    :cond_10
    iget v0, p1, Lcom/bumptech/glide/gifdecoder/GifFrame;->dispose:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_f

    goto/16 :goto_3

    .line 576
    :cond_11
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->getNextBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->previousImage:Landroid/graphics/Bitmap;

    goto :goto_c

    .line 528
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public advance()V
    .locals 2

    .prologue
    .line 196
    iget v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->framePointer:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v1, v1, Lcom/bumptech/glide/gifdecoder/GifHeader;->frameCount:I

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->framePointer:I

    .line 197
    return-void
.end method

.method public clear()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 397
    iput-object v2, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    .line 398
    iput-object v2, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->data:[B

    .line 399
    iput-object v2, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->mainPixels:[B

    .line 400
    iput-object v2, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->mainScratch:[I

    .line 401
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->previousImage:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 404
    :goto_0
    iput-object v2, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->previousImage:Landroid/graphics/Bitmap;

    .line 405
    iput-object v2, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->rawData:Ljava/nio/ByteBuffer;

    .line 406
    return-void

    .line 402
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->bitmapProvider:Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;

    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->previousImage:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;->release(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public getCurrentFrameIndex()I
    .locals 1

    .prologue
    .line 239
    iget v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->framePointer:I

    return v0
.end method

.method public getData()[B
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->data:[B

    return-object v0
.end method

.method public getDelay(I)I
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 207
    if-gez p1, :cond_1

    .line 210
    :cond_0
    :goto_0
    return v0

    .line 207
    :cond_1
    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v1, v1, Lcom/bumptech/glide/gifdecoder/GifHeader;->frameCount:I

    if-ge p1, v1, :cond_0

    .line 208
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget-object v0, v0, Lcom/bumptech/glide/gifdecoder/GifHeader;->frames:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/gifdecoder/GifFrame;

    iget v0, v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->delay:I

    goto :goto_0
.end method

.method public getFrameCount()I
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v0, v0, Lcom/bumptech/glide/gifdecoder/GifHeader;->frameCount:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v0, v0, Lcom/bumptech/glide/gifdecoder/GifHeader;->height:I

    return v0
.end method

.method public getLoopCount()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 255
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v0, v0, Lcom/bumptech/glide/gifdecoder/GifHeader;->loopCount:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 258
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v0, v0, Lcom/bumptech/glide/gifdecoder/GifHeader;->loopCount:I

    return v0

    :cond_0
    const/4 v0, 0x1

    .line 256
    return v0
.end method

.method public getNetscapeLoopCount()I
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v0, v0, Lcom/bumptech/glide/gifdecoder/GifHeader;->loopCount:I

    return v0
.end method

.method public getNextDelay()I
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v0, v0, Lcom/bumptech/glide/gifdecoder/GifHeader;->frameCount:I

    if-gtz v0, :cond_1

    :cond_0
    const/4 v0, -0x1

    .line 218
    return v0

    .line 217
    :cond_1
    iget v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->framePointer:I

    if-ltz v0, :cond_0

    .line 221
    iget v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->framePointer:I

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->getDelay(I)I

    move-result v0

    return v0
.end method

.method public declared-synchronized getNextFrame()Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    monitor-enter p0

    .line 314
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v0, v0, Lcom/bumptech/glide/gifdecoder/GifHeader;->frameCount:I

    if-gtz v0, :cond_2

    .line 315
    :cond_0
    sget-object v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->TAG:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_3

    :goto_0
    const/4 v0, 0x1

    .line 318
    iput v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->status:I

    .line 320
    :goto_1
    iget v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->status:I

    if-ne v0, v4, :cond_4

    .line 321
    :cond_1
    sget-object v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->TAG:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_5

    :goto_2
    monitor-exit p0

    .line 324
    return-object v3

    .line 314
    :cond_2
    :try_start_1
    iget v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->framePointer:I

    if-ltz v0, :cond_0

    goto :goto_1

    .line 316
    :cond_3
    sget-object v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unable to decode frame, frameCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v2, v2, Lcom/bumptech/glide/gifdecoder/GifHeader;->frameCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " framePointer="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->framePointer:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 320
    :cond_4
    :try_start_2
    iget v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->status:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v0, 0x0

    .line 326
    iput v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->status:I

    .line 328
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget-object v0, v0, Lcom/bumptech/glide/gifdecoder/GifHeader;->frames:Ljava/util/List;

    iget v1, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->framePointer:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/gifdecoder/GifFrame;

    .line 330
    iget v1, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->framePointer:I

    add-int/lit8 v1, v1, -0x1

    .line 331
    if-gez v1, :cond_6

    move-object v2, v3

    .line 336
    :goto_3
    iget-object v1, v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->lct:[I

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget-object v1, v1, Lcom/bumptech/glide/gifdecoder/GifHeader;->gct:[I

    :goto_4
    iput-object v1, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->act:[I

    .line 337
    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->act:[I

    if-eqz v1, :cond_8

    .line 346
    iget-boolean v1, v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->transparency:Z

    if-nez v1, :cond_a

    .line 356
    :goto_5
    invoke-direct {p0, v0, v2}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->setPixels(Lcom/bumptech/glide/gifdecoder/GifFrame;Lcom/bumptech/glide/gifdecoder/GifFrame;)Landroid/graphics/Bitmap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 322
    :cond_5
    :try_start_3
    sget-object v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unable to decode frame, status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->status:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 332
    :cond_6
    iget-object v2, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget-object v2, v2, Lcom/bumptech/glide/gifdecoder/GifHeader;->frames:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/gifdecoder/GifFrame;

    move-object v2, v1

    goto :goto_3

    .line 336
    :cond_7
    iget-object v1, v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->lct:[I

    goto :goto_4

    .line 338
    :cond_8
    sget-object v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->TAG:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_9

    :goto_6
    const/4 v0, 0x1

    .line 342
    iput v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->status:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    .line 343
    return-object v3

    .line 339
    :cond_9
    :try_start_4
    sget-object v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "No Valid Color Table"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 348
    :cond_a
    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->act:[I

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->pct:[I

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->act:[I

    array-length v6, v6

    invoke-static {v1, v3, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 350
    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->pct:[I

    iput-object v1, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->act:[I

    .line 352
    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->act:[I

    iget v3, v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->transIndex:I

    const/4 v4, 0x0

    aput v4, v1, v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_5
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 189
    iget v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->status:I

    return v0
.end method

.method public getTotalIterationCount()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 299
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v0, v0, Lcom/bumptech/glide/gifdecoder/GifHeader;->loopCount:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 302
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v0, v0, Lcom/bumptech/glide/gifdecoder/GifHeader;->loopCount:I

    if-eqz v0, :cond_1

    .line 305
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v0, v0, Lcom/bumptech/glide/gifdecoder/GifHeader;->loopCount:I

    add-int/lit8 v0, v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x1

    .line 300
    return v0

    .line 303
    :cond_1
    return v2
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v0, v0, Lcom/bumptech/glide/gifdecoder/GifHeader;->width:I

    return v0
.end method

.method public read(Ljava/io/InputStream;I)I
    .locals 4

    .prologue
    const/16 v0, 0x4000

    .line 366
    if-nez p1, :cond_0

    const/4 v0, 0x2

    .line 382
    iput v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->status:I

    .line 386
    :goto_0
    if-nez p1, :cond_3

    .line 393
    :goto_1
    iget v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->status:I

    return v0

    .line 368
    :cond_0
    if-gtz p2, :cond_1

    .line 369
    :goto_2
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    const/16 v0, 0x4000

    .line 371
    new-array v0, v0, [B

    :goto_3
    const/4 v2, 0x0

    .line 372
    array-length v3, v0

    invoke-virtual {p1, v0, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    .line 375
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 377
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->read([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 380
    :catch_0
    move-exception v0

    .line 379
    sget-object v1, Lcom/bumptech/glide/gifdecoder/GifDecoder;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Error reading data from stream"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 368
    :cond_1
    add-int/lit16 v0, p2, 0x1000

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    .line 373
    :try_start_1
    invoke-virtual {v1, v0, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 387
    :cond_3
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 391
    :catch_1
    move-exception v0

    .line 390
    sget-object v1, Lcom/bumptech/glide/gifdecoder/GifDecoder;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Error closing stream"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public read([B)I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 447
    iput-object p1, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->data:[B

    .line 448
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->getHeaderParser()Lcom/bumptech/glide/gifdecoder/GifHeaderParser;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->setData([B)Lcom/bumptech/glide/gifdecoder/GifHeaderParser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->parseHeader()Lcom/bumptech/glide/gifdecoder/GifHeader;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    .line 449
    if-nez p1, :cond_1

    .line 469
    :cond_0
    :goto_0
    iget v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->status:I

    return v0

    .line 451
    :cond_1
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->rawData:Ljava/nio/ByteBuffer;

    .line 452
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->rawData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 453
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->rawData:Ljava/nio/ByteBuffer;

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 456
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v0, v0, Lcom/bumptech/glide/gifdecoder/GifHeader;->width:I

    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v1, v1, Lcom/bumptech/glide/gifdecoder/GifHeader;->height:I

    mul-int/2addr v0, v1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->mainPixels:[B

    .line 457
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v0, v0, Lcom/bumptech/glide/gifdecoder/GifHeader;->width:I

    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v1, v1, Lcom/bumptech/glide/gifdecoder/GifHeader;->height:I

    mul-int/2addr v0, v1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->mainScratch:[I

    .line 460
    iput-boolean v2, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->savePrevious:Z

    .line 461
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget-object v0, v0, Lcom/bumptech/glide/gifdecoder/GifHeader;->frames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/gifdecoder/GifFrame;

    .line 462
    iget v0, v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->dispose:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    .line 463
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->savePrevious:Z

    goto :goto_0
.end method

.method public resetFrameIndex()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 243
    iput v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->framePointer:I

    .line 244
    return-void
.end method

.method public setData(Lcom/bumptech/glide/gifdecoder/GifHeader;[B)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 409
    iput-object p1, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    .line 410
    iput-object p2, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->data:[B

    .line 411
    iput v2, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->status:I

    const/4 v0, -0x1

    .line 412
    iput v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->framePointer:I

    .line 414
    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->rawData:Ljava/nio/ByteBuffer;

    .line 415
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->rawData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 416
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->rawData:Ljava/nio/ByteBuffer;

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 420
    iput-boolean v2, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->savePrevious:Z

    .line 421
    iget-object v0, p1, Lcom/bumptech/glide/gifdecoder/GifHeader;->frames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 429
    :goto_0
    iget v0, p1, Lcom/bumptech/glide/gifdecoder/GifHeader;->width:I

    iget v1, p1, Lcom/bumptech/glide/gifdecoder/GifHeader;->height:I

    mul-int/2addr v0, v1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->mainPixels:[B

    .line 430
    iget v0, p1, Lcom/bumptech/glide/gifdecoder/GifHeader;->width:I

    iget v1, p1, Lcom/bumptech/glide/gifdecoder/GifHeader;->height:I

    mul-int/2addr v0, v1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->mainScratch:[I

    .line 431
    return-void

    .line 421
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/gifdecoder/GifFrame;

    .line 422
    iget v0, v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->dispose:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 423
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->savePrevious:Z

    goto :goto_0
.end method
