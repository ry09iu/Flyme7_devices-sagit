.class public final Lokio/Buffer$UnsafeCursor;
.super Ljava/lang/Object;
.source "Buffer.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokio/Buffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UnsafeCursor"
.end annotation


# instance fields
.field public buffer:Lokio/Buffer;

.field public data:[B

.field public end:I

.field public offset:J

.field public readWrite:Z

.field private segment:Lokio/Segment;

.field public start:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 1980
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 1985
    iput-wide v0, p0, Lokio/Buffer$UnsafeCursor;->offset:J

    .line 1987
    iput v2, p0, Lokio/Buffer$UnsafeCursor;->start:I

    .line 1988
    iput v2, p0, Lokio/Buffer$UnsafeCursor;->end:I

    return-void
.end method


# virtual methods
.method public close()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 2208
    iget-object v0, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    if-eqz v0, :cond_0

    .line 2212
    iput-object v2, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    .line 2213
    iput-object v2, p0, Lokio/Buffer$UnsafeCursor;->segment:Lokio/Segment;

    const-wide/16 v0, -0x1

    .line 2214
    iput-wide v0, p0, Lokio/Buffer$UnsafeCursor;->offset:J

    .line 2215
    iput-object v2, p0, Lokio/Buffer$UnsafeCursor;->data:[B

    .line 2216
    iput v3, p0, Lokio/Buffer$UnsafeCursor;->start:I

    .line 2217
    iput v3, p0, Lokio/Buffer$UnsafeCursor;->end:I

    .line 2218
    return-void

    .line 2209
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "not attached to a buffer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final expandBuffer(I)J
    .locals 8

    .prologue
    const/16 v5, 0x2000

    .line 2177
    if-lez p1, :cond_0

    .line 2180
    if-gt p1, v5, :cond_1

    .line 2183
    iget-object v0, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    if-eqz v0, :cond_2

    .line 2186
    iget-boolean v0, p0, Lokio/Buffer$UnsafeCursor;->readWrite:Z

    if-eqz v0, :cond_3

    .line 2190
    iget-object v0, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    iget-wide v0, v0, Lokio/Buffer;->size:J

    .line 2191
    iget-object v2, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    invoke-virtual {v2, p1}, Lokio/Buffer;->writableSegment(I)Lokio/Segment;

    move-result-object v2

    .line 2192
    iget v3, v2, Lokio/Segment;->limit:I

    rsub-int v3, v3, 0x2000

    .line 2193
    iput v5, v2, Lokio/Segment;->limit:I

    .line 2194
    iget-object v4, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    int-to-long v6, v3

    add-long/2addr v6, v0

    iput-wide v6, v4, Lokio/Buffer;->size:J

    .line 2197
    iput-object v2, p0, Lokio/Buffer$UnsafeCursor;->segment:Lokio/Segment;

    .line 2198
    iput-wide v0, p0, Lokio/Buffer$UnsafeCursor;->offset:J

    .line 2199
    iget-object v0, v2, Lokio/Segment;->data:[B

    iput-object v0, p0, Lokio/Buffer$UnsafeCursor;->data:[B

    .line 2200
    rsub-int v0, v3, 0x2000

    iput v0, p0, Lokio/Buffer$UnsafeCursor;->start:I

    .line 2201
    iput v5, p0, Lokio/Buffer$UnsafeCursor;->end:I

    .line 2203
    int-to-long v0, v3

    return-wide v0

    .line 2178
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "minByteCount <= 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2181
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "minByteCount > Segment.SIZE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2184
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "not attached to a buffer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2187
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "expandBuffer() only permitted for read/write buffers"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final next()I
    .locals 4

    .prologue
    .line 1996
    iget-wide v0, p0, Lokio/Buffer$UnsafeCursor;->offset:J

    iget-object v2, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    iget-wide v2, v2, Lokio/Buffer;->size:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1997
    :cond_0
    iget-wide v0, p0, Lokio/Buffer$UnsafeCursor;->offset:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lokio/Buffer$UnsafeCursor;->seek(J)I

    move-result v0

    return v0

    .line 1998
    :cond_1
    iget-wide v0, p0, Lokio/Buffer$UnsafeCursor;->offset:J

    iget v2, p0, Lokio/Buffer$UnsafeCursor;->end:I

    iget v3, p0, Lokio/Buffer$UnsafeCursor;->start:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lokio/Buffer$UnsafeCursor;->seek(J)I

    move-result v0

    return v0
.end method

.method public final resizeBuffer(J)J
    .locals 13

    .prologue
    .line 2096
    iget-object v0, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    if-eqz v0, :cond_0

    .line 2099
    iget-boolean v0, p0, Lokio/Buffer$UnsafeCursor;->readWrite:Z

    if-eqz v0, :cond_1

    .line 2103
    iget-object v0, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    iget-wide v4, v0, Lokio/Buffer;->size:J

    .line 2104
    cmp-long v0, p1, v4

    if-lez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_a

    const-wide/16 v0, 0x0

    .line 2105
    cmp-long v0, p1, v0

    if-ltz v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_4

    .line 2106
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "newSize < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2097
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "not attached to a buffer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2100
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "resizeBuffer() only permitted for read/write buffers"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2104
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 2105
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 2109
    :cond_4
    sub-long v0, v4, p1

    move-wide v2, v0

    :goto_2
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-gtz v0, :cond_5

    const/4 v0, 0x1

    :goto_3
    if-nez v0, :cond_8

    .line 2110
    iget-object v0, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    iget-object v0, v0, Lokio/Buffer;->head:Lokio/Segment;

    iget-object v1, v0, Lokio/Segment;->prev:Lokio/Segment;

    .line 2111
    iget v0, v1, Lokio/Segment;->limit:I

    iget v6, v1, Lokio/Segment;->pos:I

    sub-int v6, v0, v6

    .line 2112
    int-to-long v8, v6

    cmp-long v0, v8, v2

    if-lez v0, :cond_6

    const/4 v0, 0x1

    :goto_4
    if-nez v0, :cond_7

    .line 2113
    iget-object v0, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    invoke-virtual {v1}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v7

    iput-object v7, v0, Lokio/Buffer;->head:Lokio/Segment;

    .line 2114
    invoke-static {v1}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    .line 2115
    int-to-long v0, v6

    sub-long v0, v2, v0

    move-wide v2, v0

    .line 2120
    goto :goto_2

    .line 2109
    :cond_5
    const/4 v0, 0x0

    goto :goto_3

    .line 2112
    :cond_6
    const/4 v0, 0x0

    goto :goto_4

    .line 2117
    :cond_7
    iget v0, v1, Lokio/Segment;->limit:I

    int-to-long v6, v0

    sub-long v2, v6, v2

    long-to-int v0, v2

    iput v0, v1, Lokio/Segment;->limit:I

    :cond_8
    const/4 v0, 0x0

    .line 2122
    iput-object v0, p0, Lokio/Buffer$UnsafeCursor;->segment:Lokio/Segment;

    .line 2123
    iput-wide p1, p0, Lokio/Buffer$UnsafeCursor;->offset:J

    const/4 v0, 0x0

    .line 2124
    iput-object v0, p0, Lokio/Buffer$UnsafeCursor;->data:[B

    const/4 v0, -0x1

    .line 2125
    iput v0, p0, Lokio/Buffer$UnsafeCursor;->start:I

    const/4 v0, -0x1

    .line 2126
    iput v0, p0, Lokio/Buffer$UnsafeCursor;->end:I

    .line 2148
    :cond_9
    iget-object v0, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    iput-wide p1, v0, Lokio/Buffer;->size:J

    .line 2150
    return-wide v4

    .line 2127
    :cond_a
    cmp-long v0, p1, v4

    if-gtz v0, :cond_c

    const/4 v0, 0x1

    :goto_5
    if-nez v0, :cond_9

    .line 2129
    const/4 v2, 0x1

    .line 2130
    sub-long v0, p1, v4

    move-wide v10, v0

    move v0, v2

    move-wide v2, v10

    :cond_b
    :goto_6
    const-wide/16 v6, 0x0

    cmp-long v1, v2, v6

    if-gtz v1, :cond_d

    const/4 v1, 0x1

    :goto_7
    if-nez v1, :cond_9

    .line 2131
    iget-object v1, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Lokio/Buffer;->writableSegment(I)Lokio/Segment;

    move-result-object v1

    .line 2132
    iget v6, v1, Lokio/Segment;->limit:I

    rsub-int v6, v6, 0x2000

    int-to-long v6, v6

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    long-to-int v6, v6

    .line 2133
    iget v7, v1, Lokio/Segment;->limit:I

    add-int/2addr v7, v6

    iput v7, v1, Lokio/Segment;->limit:I

    .line 2134
    int-to-long v8, v6

    sub-long/2addr v2, v8

    .line 2137
    if-eqz v0, :cond_b

    .line 2138
    iput-object v1, p0, Lokio/Buffer$UnsafeCursor;->segment:Lokio/Segment;

    .line 2139
    iput-wide v4, p0, Lokio/Buffer$UnsafeCursor;->offset:J

    .line 2140
    iget-object v0, v1, Lokio/Segment;->data:[B

    iput-object v0, p0, Lokio/Buffer$UnsafeCursor;->data:[B

    .line 2141
    iget v0, v1, Lokio/Segment;->limit:I

    sub-int/2addr v0, v6

    iput v0, p0, Lokio/Buffer$UnsafeCursor;->start:I

    .line 2142
    iget v0, v1, Lokio/Segment;->limit:I

    iput v0, p0, Lokio/Buffer$UnsafeCursor;->end:I

    .line 2143
    const/4 v0, 0x0

    goto :goto_6

    .line 2127
    :cond_c
    const/4 v0, 0x0

    goto :goto_5

    .line 2130
    :cond_d
    const/4 v1, 0x0

    goto :goto_7
.end method

.method public final seek(J)I
    .locals 13

    .prologue
    const-wide/16 v6, -0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2007
    cmp-long v0, p1, v6

    if-gez v0, :cond_1

    move v0, v4

    :goto_0
    if-nez v0, :cond_0

    iget-object v0, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    iget-wide v0, v0, Lokio/Buffer;->size:J

    cmp-long v0, p1, v0

    if-gtz v0, :cond_2

    move v0, v4

    :goto_1
    if-nez v0, :cond_3

    .line 2008
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string/jumbo v1, "offset=%s > size=%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 2009
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v5

    iget-object v3, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    iget-wide v6, v3, Lokio/Buffer;->size:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move v0, v5

    .line 2007
    goto :goto_0

    :cond_2
    move v0, v5

    goto :goto_1

    .line 2012
    :cond_3
    cmp-long v0, p1, v6

    if-eqz v0, :cond_4

    iget-object v0, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    iget-wide v0, v0, Lokio/Buffer;->size:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_5

    .line 2013
    :cond_4
    iput-object v3, p0, Lokio/Buffer$UnsafeCursor;->segment:Lokio/Segment;

    .line 2014
    iput-wide p1, p0, Lokio/Buffer$UnsafeCursor;->offset:J

    .line 2015
    iput-object v3, p0, Lokio/Buffer$UnsafeCursor;->data:[B

    .line 2016
    iput v2, p0, Lokio/Buffer$UnsafeCursor;->start:I

    .line 2017
    iput v2, p0, Lokio/Buffer$UnsafeCursor;->end:I

    .line 2018
    return v2

    :cond_5
    const-wide/16 v8, 0x0

    .line 2023
    iget-object v0, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    iget-wide v6, v0, Lokio/Buffer;->size:J

    .line 2024
    iget-object v0, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    iget-object v2, v0, Lokio/Buffer;->head:Lokio/Segment;

    .line 2025
    iget-object v0, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    iget-object v3, v0, Lokio/Buffer;->head:Lokio/Segment;

    .line 2026
    iget-object v0, p0, Lokio/Buffer$UnsafeCursor;->segment:Lokio/Segment;

    if-nez v0, :cond_6

    move-wide v0, v8

    .line 2041
    :goto_2
    sub-long v8, v6, p1

    sub-long v10, p1, v0

    cmp-long v8, v8, v10

    if-gtz v8, :cond_9

    move v8, v4

    :goto_3
    if-nez v8, :cond_b

    .line 2045
    :goto_4
    iget v3, v2, Lokio/Segment;->limit:I

    iget v6, v2, Lokio/Segment;->pos:I

    sub-int/2addr v3, v6

    int-to-long v6, v3

    add-long/2addr v6, v0

    cmp-long v3, p1, v6

    if-gez v3, :cond_a

    move v3, v4

    :goto_5
    if-nez v3, :cond_d

    .line 2046
    iget v3, v2, Lokio/Segment;->limit:I

    iget v6, v2, Lokio/Segment;->pos:I

    sub-int/2addr v3, v6

    int-to-long v6, v3

    add-long/2addr v0, v6

    .line 2047
    iget-object v2, v2, Lokio/Segment;->next:Lokio/Segment;

    goto :goto_4

    .line 2027
    :cond_6
    iget-wide v0, p0, Lokio/Buffer$UnsafeCursor;->offset:J

    iget v10, p0, Lokio/Buffer$UnsafeCursor;->start:I

    iget-object v11, p0, Lokio/Buffer$UnsafeCursor;->segment:Lokio/Segment;

    iget v11, v11, Lokio/Segment;->pos:I

    sub-int/2addr v10, v11

    int-to-long v10, v10

    sub-long/2addr v0, v10

    .line 2028
    cmp-long v10, v0, p1

    if-gtz v10, :cond_7

    move v10, v4

    :goto_6
    if-nez v10, :cond_8

    .line 2031
    iget-object v3, p0, Lokio/Buffer$UnsafeCursor;->segment:Lokio/Segment;

    move-wide v6, v0

    move-wide v0, v8

    goto :goto_2

    :cond_7
    move v10, v5

    .line 2028
    goto :goto_6

    .line 2035
    :cond_8
    iget-object v2, p0, Lokio/Buffer$UnsafeCursor;->segment:Lokio/Segment;

    goto :goto_2

    :cond_9
    move v8, v5

    .line 2041
    goto :goto_3

    :cond_a
    move v3, v5

    .line 2045
    goto :goto_5

    :cond_b
    move-wide v0, v6

    move-object v2, v3

    .line 2053
    :goto_7
    cmp-long v3, v0, p1

    if-gtz v3, :cond_c

    move v3, v4

    :goto_8
    if-nez v3, :cond_d

    .line 2054
    iget-object v2, v2, Lokio/Segment;->prev:Lokio/Segment;

    .line 2055
    iget v3, v2, Lokio/Segment;->limit:I

    iget v6, v2, Lokio/Segment;->pos:I

    sub-int/2addr v3, v6

    int-to-long v6, v3

    sub-long/2addr v0, v6

    goto :goto_7

    :cond_c
    move v3, v5

    .line 2053
    goto :goto_8

    .line 2060
    :cond_d
    iget-boolean v3, p0, Lokio/Buffer$UnsafeCursor;->readWrite:Z

    if-nez v3, :cond_f

    .line 2070
    :cond_e
    :goto_9
    iput-object v2, p0, Lokio/Buffer$UnsafeCursor;->segment:Lokio/Segment;

    .line 2071
    iput-wide p1, p0, Lokio/Buffer$UnsafeCursor;->offset:J

    .line 2072
    iget-object v3, v2, Lokio/Segment;->data:[B

    iput-object v3, p0, Lokio/Buffer$UnsafeCursor;->data:[B

    .line 2073
    iget v3, v2, Lokio/Segment;->pos:I

    sub-long v0, p1, v0

    long-to-int v0, v0

    add-int/2addr v0, v3

    iput v0, p0, Lokio/Buffer$UnsafeCursor;->start:I

    .line 2074
    iget v0, v2, Lokio/Segment;->limit:I

    iput v0, p0, Lokio/Buffer$UnsafeCursor;->end:I

    .line 2075
    iget v0, p0, Lokio/Buffer$UnsafeCursor;->end:I

    iget v1, p0, Lokio/Buffer$UnsafeCursor;->start:I

    sub-int/2addr v0, v1

    return v0

    .line 2060
    :cond_f
    iget-boolean v3, v2, Lokio/Segment;->shared:Z

    if-eqz v3, :cond_e

    .line 2061
    invoke-virtual {v2}, Lokio/Segment;->unsharedCopy()Lokio/Segment;

    move-result-object v3

    .line 2062
    iget-object v4, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    iget-object v4, v4, Lokio/Buffer;->head:Lokio/Segment;

    if-eq v4, v2, :cond_10

    .line 2065
    :goto_a
    invoke-virtual {v2, v3}, Lokio/Segment;->push(Lokio/Segment;)Lokio/Segment;

    move-result-object v2

    .line 2066
    iget-object v3, v2, Lokio/Segment;->prev:Lokio/Segment;

    invoke-virtual {v3}, Lokio/Segment;->pop()Lokio/Segment;

    goto :goto_9

    .line 2063
    :cond_10
    iget-object v4, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    iput-object v3, v4, Lokio/Buffer;->head:Lokio/Segment;

    goto :goto_a
.end method
