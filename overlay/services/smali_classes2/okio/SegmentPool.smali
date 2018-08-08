.class final Lokio/SegmentPool;
.super Ljava/lang/Object;
.source "SegmentPool.java"


# static fields
.field static final MAX_SIZE:J = 0x10000L

.field static byteCount:J

.field static next:Lokio/Segment;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method static recycle(Lokio/Segment;)V
    .locals 8

    .prologue
    const-wide/16 v6, 0x2000

    const/4 v0, 0x0

    .line 52
    iget-object v1, p0, Lokio/Segment;->next:Lokio/Segment;

    if-eqz v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    iget-object v1, p0, Lokio/Segment;->prev:Lokio/Segment;

    if-nez v1, :cond_0

    .line 53
    iget-boolean v1, p0, Lokio/Segment;->shared:Z

    if-nez v1, :cond_3

    const-class v1, Lokio/SegmentPool;

    .line 54
    monitor-enter v1

    .line 55
    :try_start_0
    sget-wide v2, Lokio/SegmentPool;->byteCount:J

    add-long/2addr v2, v6

    const-wide/32 v4, 0x10000

    cmp-long v2, v2, v4

    if-gtz v2, :cond_2

    const/4 v0, 0x1

    :cond_2
    if-nez v0, :cond_4

    monitor-exit v1

    return-void

    .line 53
    :cond_3
    return-void

    .line 56
    :cond_4
    sget-wide v2, Lokio/SegmentPool;->byteCount:J

    add-long/2addr v2, v6

    sput-wide v2, Lokio/SegmentPool;->byteCount:J

    .line 57
    sget-object v0, Lokio/SegmentPool;->next:Lokio/Segment;

    iput-object v0, p0, Lokio/Segment;->next:Lokio/Segment;

    const/4 v0, 0x0

    .line 58
    iput v0, p0, Lokio/Segment;->limit:I

    const/4 v0, 0x0

    iput v0, p0, Lokio/Segment;->pos:I

    .line 59
    sput-object p0, Lokio/SegmentPool;->next:Lokio/Segment;

    .line 60
    monitor-exit v1

    .line 61
    return-void

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static take()Lokio/Segment;
    .locals 6

    .prologue
    const-class v1, Lokio/SegmentPool;

    .line 39
    monitor-enter v1

    .line 40
    :try_start_0
    sget-object v0, Lokio/SegmentPool;->next:Lokio/Segment;

    if-nez v0, :cond_0

    .line 47
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    new-instance v0, Lokio/Segment;

    invoke-direct {v0}, Lokio/Segment;-><init>()V

    return-object v0

    .line 41
    :cond_0
    :try_start_1
    sget-object v0, Lokio/SegmentPool;->next:Lokio/Segment;

    .line 42
    iget-object v2, v0, Lokio/Segment;->next:Lokio/Segment;

    sput-object v2, Lokio/SegmentPool;->next:Lokio/Segment;

    const/4 v2, 0x0

    .line 43
    iput-object v2, v0, Lokio/Segment;->next:Lokio/Segment;

    .line 44
    sget-wide v2, Lokio/SegmentPool;->byteCount:J

    const-wide/16 v4, 0x2000

    sub-long/2addr v2, v4

    sput-wide v2, Lokio/SegmentPool;->byteCount:J

    .line 45
    monitor-exit v1

    return-object v0

    .line 47
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
