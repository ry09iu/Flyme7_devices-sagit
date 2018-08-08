.class final Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key;
.super Ljava/lang/Object;
.source "SizeStrategy.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/bitmap_recycle/Poolable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Key"
.end annotation


# instance fields
.field private final pool:Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$KeyPool;

.field private size:I


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$KeyPool;)V
    .locals 0

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key;->pool:Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$KeyPool;

    .line 127
    return-void
.end method

.method static synthetic access$000(Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key;)I
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key;->size:I

    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 135
    instance-of v1, p1, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key;

    if-nez v1, :cond_0

    .line 139
    return v0

    .line 136
    :cond_0
    check-cast p1, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key;

    .line 137
    iget v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key;->size:I

    iget v2, p1, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key;->size:I

    if-eq v1, v2, :cond_1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 144
    iget v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key;->size:I

    return v0
.end method

.method public init(I)V
    .locals 0

    .prologue
    .line 130
    iput p1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key;->size:I

    .line 131
    return-void
.end method

.method public offer()V
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key;->pool:Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$KeyPool;

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$KeyPool;->offer(Lcom/bumptech/glide/load/engine/bitmap_recycle/Poolable;)V

    .line 155
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key;->size:I

    invoke-static {v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy;->access$100(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
