.class public final Lokhttp3/internal/http2/Settings;
.super Ljava/lang/Object;
.source "Settings.java"


# static fields
.field static final COUNT:I = 0xa

.field static final DEFAULT_INITIAL_WINDOW_SIZE:I = 0xffff

.field static final ENABLE_PUSH:I = 0x2

.field static final HEADER_TABLE_SIZE:I = 0x1

.field static final INITIAL_WINDOW_SIZE:I = 0x7

.field static final MAX_CONCURRENT_STREAMS:I = 0x4

.field static final MAX_FRAME_SIZE:I = 0x5

.field static final MAX_HEADER_LIST_SIZE:I = 0x6


# instance fields
.field private set:I

.field private final values:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    .line 51
    new-array v0, v0, [I

    iput-object v0, p0, Lokhttp3/internal/http2/Settings;->values:[I

    return-void
.end method


# virtual methods
.method clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 54
    iput v1, p0, Lokhttp3/internal/http2/Settings;->set:I

    .line 55
    iget-object v0, p0, Lokhttp3/internal/http2/Settings;->values:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 56
    return-void
.end method

.method get(I)I
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lokhttp3/internal/http2/Settings;->values:[I

    aget v0, v0, p1

    return v0
.end method

.method getEnablePush(Z)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 94
    iget v2, p0, Lokhttp3/internal/http2/Settings;->set:I

    and-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_0

    if-nez p1, :cond_1

    move v2, v0

    :goto_0
    if-eq v2, v1, :cond_2

    :goto_1
    return v0

    :cond_0
    iget-object v2, p0, Lokhttp3/internal/http2/Settings;->values:[I

    const/4 v3, 0x2

    aget v2, v2, v3

    goto :goto_0

    :cond_1
    move v2, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method getHeaderTableSize()I
    .locals 2

    .prologue
    .line 88
    iget v0, p0, Lokhttp3/internal/http2/Settings;->set:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lokhttp3/internal/http2/Settings;->values:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    goto :goto_0
.end method

.method getInitialWindowSize()I
    .locals 2

    .prologue
    .line 114
    iget v0, p0, Lokhttp3/internal/http2/Settings;->set:I

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_0

    const v0, 0xffff

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lokhttp3/internal/http2/Settings;->values:[I

    const/4 v1, 0x7

    aget v0, v0, v1

    goto :goto_0
.end method

.method getMaxConcurrentStreams(I)I
    .locals 2

    .prologue
    .line 99
    iget v0, p0, Lokhttp3/internal/http2/Settings;->set:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_0

    :goto_0
    return p1

    :cond_0
    iget-object v0, p0, Lokhttp3/internal/http2/Settings;->values:[I

    const/4 v1, 0x4

    aget p1, v0, v1

    goto :goto_0
.end method

.method getMaxFrameSize(I)I
    .locals 2

    .prologue
    .line 104
    iget v0, p0, Lokhttp3/internal/http2/Settings;->set:I

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_0

    :goto_0
    return p1

    :cond_0
    iget-object v0, p0, Lokhttp3/internal/http2/Settings;->values:[I

    const/4 v1, 0x5

    aget p1, v0, v1

    goto :goto_0
.end method

.method getMaxHeaderListSize(I)I
    .locals 2

    .prologue
    .line 109
    iget v0, p0, Lokhttp3/internal/http2/Settings;->set:I

    and-int/lit8 v0, v0, 0x40

    if-nez v0, :cond_0

    :goto_0
    return p1

    :cond_0
    iget-object v0, p0, Lokhttp3/internal/http2/Settings;->values:[I

    const/4 v1, 0x6

    aget p1, v0, v1

    goto :goto_0
.end method

.method isSet(I)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 71
    shl-int v2, v1, p1

    .line 72
    iget v3, p0, Lokhttp3/internal/http2/Settings;->set:I

    and-int/2addr v2, v3

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method merge(Lokhttp3/internal/http2/Settings;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xa

    .line 122
    if-lt v0, v1, :cond_0

    .line 126
    return-void

    .line 123
    :cond_0
    invoke-virtual {p1, v0}, Lokhttp3/internal/http2/Settings;->isSet(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 124
    invoke-virtual {p1, v0}, Lokhttp3/internal/http2/Settings;->get(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lokhttp3/internal/http2/Settings;->set(II)Lokhttp3/internal/http2/Settings;

    .line 122
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method set(II)Lokhttp3/internal/http2/Settings;
    .locals 2

    .prologue
    .line 59
    if-gez p1, :cond_1

    .line 60
    :cond_0
    return-object p0

    .line 59
    :cond_1
    iget-object v0, p0, Lokhttp3/internal/http2/Settings;->values:[I

    array-length v0, v0

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    .line 63
    shl-int/2addr v0, p1

    .line 64
    iget v1, p0, Lokhttp3/internal/http2/Settings;->set:I

    or-int/2addr v0, v1

    iput v0, p0, Lokhttp3/internal/http2/Settings;->set:I

    .line 65
    iget-object v0, p0, Lokhttp3/internal/http2/Settings;->values:[I

    aput p2, v0, p1

    .line 66
    return-object p0
.end method

.method size()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lokhttp3/internal/http2/Settings;->set:I

    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    return v0
.end method
