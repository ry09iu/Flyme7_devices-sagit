.class final Lokio/Segment;
.super Ljava/lang/Object;
.source "Segment.java"


# static fields
.field static final SHARE_MINIMUM:I = 0x400

.field static final SIZE:I = 0x2000


# instance fields
.field final data:[B

.field limit:I

.field next:Lokio/Segment;

.field owner:Z

.field pos:I

.field prev:Lokio/Segment;

.field shared:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2000

    .line 63
    new-array v0, v0, [B

    iput-object v0, p0, Lokio/Segment;->data:[B

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lokio/Segment;->owner:Z

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lokio/Segment;->shared:Z

    .line 66
    return-void
.end method

.method constructor <init>([BIIZZ)V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lokio/Segment;->data:[B

    .line 70
    iput p2, p0, Lokio/Segment;->pos:I

    .line 71
    iput p3, p0, Lokio/Segment;->limit:I

    .line 72
    iput-boolean p4, p0, Lokio/Segment;->shared:Z

    .line 73
    iput-boolean p5, p0, Lokio/Segment;->owner:Z

    .line 74
    return-void
.end method


# virtual methods
.method public final compact()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 151
    iget-object v1, p0, Lokio/Segment;->prev:Lokio/Segment;

    if-eq v1, p0, :cond_1

    .line 152
    iget-object v1, p0, Lokio/Segment;->prev:Lokio/Segment;

    iget-boolean v1, v1, Lokio/Segment;->owner:Z

    if-eqz v1, :cond_2

    .line 153
    iget v1, p0, Lokio/Segment;->limit:I

    iget v2, p0, Lokio/Segment;->pos:I

    sub-int/2addr v1, v2

    .line 154
    iget-object v2, p0, Lokio/Segment;->prev:Lokio/Segment;

    iget v2, v2, Lokio/Segment;->limit:I

    rsub-int v2, v2, 0x2000

    iget-object v3, p0, Lokio/Segment;->prev:Lokio/Segment;

    iget-boolean v3, v3, Lokio/Segment;->shared:Z

    if-nez v3, :cond_0

    iget-object v0, p0, Lokio/Segment;->prev:Lokio/Segment;

    iget v0, v0, Lokio/Segment;->pos:I

    :cond_0
    add-int/2addr v0, v2

    .line 155
    if-gt v1, v0, :cond_3

    .line 156
    iget-object v0, p0, Lokio/Segment;->prev:Lokio/Segment;

    invoke-virtual {p0, v0, v1}, Lokio/Segment;->writeTo(Lokio/Segment;I)V

    .line 157
    invoke-virtual {p0}, Lokio/Segment;->pop()Lokio/Segment;

    .line 158
    invoke-static {p0}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    .line 159
    return-void

    .line 151
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 152
    :cond_2
    return-void

    .line 155
    :cond_3
    return-void
.end method

.method public final pop()Lokio/Segment;
    .locals 4
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 96
    iget-object v0, p0, Lokio/Segment;->next:Lokio/Segment;

    if-ne v0, p0, :cond_0

    move-object v0, v1

    .line 97
    :goto_0
    iget-object v2, p0, Lokio/Segment;->prev:Lokio/Segment;

    iget-object v3, p0, Lokio/Segment;->next:Lokio/Segment;

    iput-object v3, v2, Lokio/Segment;->next:Lokio/Segment;

    .line 98
    iget-object v2, p0, Lokio/Segment;->next:Lokio/Segment;

    iget-object v3, p0, Lokio/Segment;->prev:Lokio/Segment;

    iput-object v3, v2, Lokio/Segment;->prev:Lokio/Segment;

    .line 99
    iput-object v1, p0, Lokio/Segment;->next:Lokio/Segment;

    .line 100
    iput-object v1, p0, Lokio/Segment;->prev:Lokio/Segment;

    .line 101
    return-object v0

    .line 96
    :cond_0
    iget-object v0, p0, Lokio/Segment;->next:Lokio/Segment;

    goto :goto_0
.end method

.method public final push(Lokio/Segment;)Lokio/Segment;
    .locals 1

    .prologue
    .line 109
    iput-object p0, p1, Lokio/Segment;->prev:Lokio/Segment;

    .line 110
    iget-object v0, p0, Lokio/Segment;->next:Lokio/Segment;

    iput-object v0, p1, Lokio/Segment;->next:Lokio/Segment;

    .line 111
    iget-object v0, p0, Lokio/Segment;->next:Lokio/Segment;

    iput-object p1, v0, Lokio/Segment;->prev:Lokio/Segment;

    .line 112
    iput-object p1, p0, Lokio/Segment;->next:Lokio/Segment;

    .line 113
    return-object p1
.end method

.method final sharedCopy()Lokio/Segment;
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 82
    iput-boolean v4, p0, Lokio/Segment;->shared:Z

    .line 83
    new-instance v0, Lokio/Segment;

    iget-object v1, p0, Lokio/Segment;->data:[B

    iget v2, p0, Lokio/Segment;->pos:I

    iget v3, p0, Lokio/Segment;->limit:I

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lokio/Segment;-><init>([BIIZZ)V

    return-object v0
.end method

.method public final split(I)Lokio/Segment;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 125
    if-gtz p1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    iget v0, p0, Lokio/Segment;->limit:I

    iget v1, p0, Lokio/Segment;->pos:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_0

    const/16 v0, 0x400

    .line 133
    if-ge p1, v0, :cond_2

    .line 136
    invoke-static {}, Lokio/SegmentPool;->take()Lokio/Segment;

    move-result-object v0

    .line 137
    iget-object v1, p0, Lokio/Segment;->data:[B

    iget v2, p0, Lokio/Segment;->pos:I

    iget-object v3, v0, Lokio/Segment;->data:[B

    invoke-static {v1, v2, v3, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 140
    :goto_0
    iget v1, v0, Lokio/Segment;->pos:I

    add-int/2addr v1, p1

    iput v1, v0, Lokio/Segment;->limit:I

    .line 141
    iget v1, p0, Lokio/Segment;->pos:I

    add-int/2addr v1, p1

    iput v1, p0, Lokio/Segment;->pos:I

    .line 142
    iget-object v1, p0, Lokio/Segment;->prev:Lokio/Segment;

    invoke-virtual {v1, v0}, Lokio/Segment;->push(Lokio/Segment;)Lokio/Segment;

    .line 143
    return-object v0

    .line 134
    :cond_2
    invoke-virtual {p0}, Lokio/Segment;->sharedCopy()Lokio/Segment;

    move-result-object v0

    goto :goto_0
.end method

.method final unsharedCopy()Lokio/Segment;
    .locals 6

    .prologue
    .line 88
    new-instance v0, Lokio/Segment;

    iget-object v1, p0, Lokio/Segment;->data:[B

    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iget v2, p0, Lokio/Segment;->pos:I

    iget v3, p0, Lokio/Segment;->limit:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lokio/Segment;-><init>([BIIZZ)V

    return-object v0
.end method

.method public final writeTo(Lokio/Segment;I)V
    .locals 6

    .prologue
    const/16 v2, 0x2000

    const/4 v5, 0x0

    .line 163
    iget-boolean v0, p1, Lokio/Segment;->owner:Z

    if-eqz v0, :cond_0

    .line 164
    iget v0, p1, Lokio/Segment;->limit:I

    add-int/2addr v0, p2

    if-gt v0, v2, :cond_1

    .line 173
    :goto_0
    iget-object v0, p0, Lokio/Segment;->data:[B

    iget v1, p0, Lokio/Segment;->pos:I

    iget-object v2, p1, Lokio/Segment;->data:[B

    iget v3, p1, Lokio/Segment;->limit:I

    invoke-static {v0, v1, v2, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 174
    iget v0, p1, Lokio/Segment;->limit:I

    add-int/2addr v0, p2

    iput v0, p1, Lokio/Segment;->limit:I

    .line 175
    iget v0, p0, Lokio/Segment;->pos:I

    add-int/2addr v0, p2

    iput v0, p0, Lokio/Segment;->pos:I

    .line 176
    return-void

    .line 163
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 166
    :cond_1
    iget-boolean v0, p1, Lokio/Segment;->shared:Z

    if-nez v0, :cond_2

    .line 167
    iget v0, p1, Lokio/Segment;->limit:I

    add-int/2addr v0, p2

    iget v1, p1, Lokio/Segment;->pos:I

    sub-int/2addr v0, v1

    if-gt v0, v2, :cond_3

    .line 168
    iget-object v0, p1, Lokio/Segment;->data:[B

    iget v1, p1, Lokio/Segment;->pos:I

    iget-object v2, p1, Lokio/Segment;->data:[B

    iget v3, p1, Lokio/Segment;->limit:I

    iget v4, p1, Lokio/Segment;->pos:I

    sub-int/2addr v3, v4

    invoke-static {v0, v1, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 169
    iget v0, p1, Lokio/Segment;->limit:I

    iget v1, p1, Lokio/Segment;->pos:I

    sub-int/2addr v0, v1

    iput v0, p1, Lokio/Segment;->limit:I

    .line 170
    iput v5, p1, Lokio/Segment;->pos:I

    goto :goto_0

    .line 166
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 167
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method
