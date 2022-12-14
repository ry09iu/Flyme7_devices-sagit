.class Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key;
.super Ljava/lang/Object;
.source "AttributeStrategy.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/bitmap_recycle/Poolable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Key"
.end annotation


# instance fields
.field private config:Landroid/graphics/Bitmap$Config;

.field private height:I

.field private final pool:Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$KeyPool;

.field private width:I


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$KeyPool;)V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key;->pool:Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$KeyPool;

    .line 84
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 94
    instance-of v1, p1, Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key;

    if-nez v1, :cond_0

    .line 100
    return v0

    .line 95
    :cond_0
    check-cast p1, Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key;

    .line 96
    iget v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key;->width:I

    iget v2, p1, Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key;->width:I

    if-eq v1, v2, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key;->height:I

    iget v2, p1, Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key;->height:I

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key;->config:Landroid/graphics/Bitmap$Config;

    iget-object v2, p1, Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key;->config:Landroid/graphics/Bitmap$Config;

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 105
    iget v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key;->width:I

    .line 106
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key;->height:I

    add-int/2addr v0, v1

    .line 107
    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key;->config:Landroid/graphics/Bitmap$Config;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, v1

    .line 108
    return v0

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key;->config:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0}, Landroid/graphics/Bitmap$Config;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public init(IILandroid/graphics/Bitmap$Config;)V
    .locals 0

    .prologue
    .line 87
    iput p1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key;->width:I

    .line 88
    iput p2, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key;->height:I

    .line 89
    iput-object p3, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key;->config:Landroid/graphics/Bitmap$Config;

    .line 90
    return-void
.end method

.method public offer()V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key;->pool:Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$KeyPool;

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$KeyPool;->offer(Lcom/bumptech/glide/load/engine/bitmap_recycle/Poolable;)V

    .line 119
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 113
    iget v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key;->width:I

    iget v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key;->height:I

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key;->config:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy;->access$000(IILandroid/graphics/Bitmap$Config;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
