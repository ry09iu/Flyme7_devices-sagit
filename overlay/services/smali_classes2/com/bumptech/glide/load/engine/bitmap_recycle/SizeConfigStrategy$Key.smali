.class final Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;
.super Ljava/lang/Object;
.source "SizeConfigStrategy.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/bitmap_recycle/Poolable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Key"
.end annotation


# instance fields
.field private config:Landroid/graphics/Bitmap$Config;

.field private final pool:Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$KeyPool;

.field private size:I


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$KeyPool;)V
    .locals 0

    .prologue
    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;->pool:Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$KeyPool;

    .line 180
    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$KeyPool;ILandroid/graphics/Bitmap$Config;)V
    .locals 0

    .prologue
    .line 184
    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$KeyPool;)V

    .line 185
    invoke-virtual {p0, p2, p3}, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;->init(ILandroid/graphics/Bitmap$Config;)V

    .line 186
    return-void
.end method

.method static synthetic access$000(Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;)I
    .locals 1

    .prologue
    .line 172
    iget v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;->size:I

    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 205
    instance-of v1, p1, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;

    if-nez v1, :cond_0

    .line 209
    return v0

    .line 206
    :cond_0
    check-cast p1, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;

    .line 207
    iget v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;->size:I

    iget v2, p1, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;->size:I

    if-eq v1, v2, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;->config:Landroid/graphics/Bitmap$Config;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;->config:Landroid/graphics/Bitmap$Config;

    iget-object v2, p1, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;->config:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1, v2}, Landroid/graphics/Bitmap$Config;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    iget-object v1, p1, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;->config:Landroid/graphics/Bitmap$Config;

    if-eqz v1, :cond_3

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 214
    iget v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;->size:I

    .line 215
    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;->config:Landroid/graphics/Bitmap$Config;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, v1

    .line 216
    return v0

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;->config:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0}, Landroid/graphics/Bitmap$Config;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public init(ILandroid/graphics/Bitmap$Config;)V
    .locals 0

    .prologue
    .line 189
    iput p1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;->size:I

    .line 190
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;->config:Landroid/graphics/Bitmap$Config;

    .line 191
    return-void
.end method

.method public offer()V
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;->pool:Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$KeyPool;

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$KeyPool;->offer(Lcom/bumptech/glide/load/engine/bitmap_recycle/Poolable;)V

    .line 196
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 200
    iget v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;->size:I

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;->config:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;->access$100(ILandroid/graphics/Bitmap$Config;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
