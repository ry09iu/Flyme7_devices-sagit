.class final Lokio/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field public static final UTF_8:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string/jumbo v0, "UTF-8"

    .line 22
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lokio/Util;->UTF_8:Ljava/nio/charset/Charset;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method public static arrayRangeEquals([BI[BII)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    move v0, v1

    .line 75
    :goto_0
    if-lt v0, p4, :cond_0

    .line 78
    const/4 v0, 0x1

    return v0

    .line 76
    :cond_0
    add-int v2, v0, p1

    aget-byte v2, p0, v2

    add-int v3, v0, p3

    aget-byte v3, p2, v3

    if-ne v2, v3, :cond_1

    .line 75
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 76
    :cond_1
    return v1
.end method

.method public static checkOffsetAndCount(JJJ)V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 28
    or-long v4, p2, p4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-gez v0, :cond_1

    move v0, v1

    :goto_0
    if-nez v0, :cond_0

    cmp-long v0, p2, p0

    if-lez v0, :cond_2

    move v0, v1

    :goto_1
    if-nez v0, :cond_0

    sub-long v4, p0, p2

    cmp-long v0, v4, p4

    if-ltz v0, :cond_3

    move v0, v1

    :goto_2
    if-nez v0, :cond_4

    .line 29
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string/jumbo v3, "size=%s offset=%s byteCount=%s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    .line 30
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v4, v1

    const/4 v1, 0x2

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move v0, v2

    .line 28
    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_2

    .line 32
    :cond_4
    return-void
.end method

.method public static reverseBytesInt(I)I
    .locals 2

    .prologue
    const/high16 v0, -0x1000000

    .line 42
    and-int/2addr v0, p0

    ushr-int/lit8 v0, v0, 0x18

    const/high16 v1, 0xff0000

    and-int/2addr v1, p0

    ushr-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    const v1, 0xff00

    and-int/2addr v1, p0

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    and-int/lit16 v1, p0, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method public static reverseBytesLong(J)J
    .locals 8

    .prologue
    const/16 v7, 0x38

    const/16 v6, 0x28

    const/16 v5, 0x18

    const/16 v4, 0x8

    const-wide/high16 v0, -0x100000000000000L

    .line 49
    and-long/2addr v0, p0

    ushr-long/2addr v0, v7

    const-wide/high16 v2, 0xff000000000000L

    and-long/2addr v2, p0

    ushr-long/2addr v2, v6

    or-long/2addr v0, v2

    const-wide v2, 0xff0000000000L

    and-long/2addr v2, p0

    ushr-long/2addr v2, v5

    or-long/2addr v0, v2

    const-wide v2, 0xff00000000L

    and-long/2addr v2, p0

    ushr-long/2addr v2, v4

    or-long/2addr v0, v2

    const-wide v2, 0xff000000L

    and-long/2addr v2, p0

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    const-wide/32 v2, 0xff0000

    and-long/2addr v2, p0

    shl-long/2addr v2, v5

    or-long/2addr v0, v2

    const-wide/32 v2, 0xff00

    and-long/2addr v2, p0

    shl-long/2addr v2, v6

    or-long/2addr v0, v2

    const-wide/16 v2, 0xff

    and-long/2addr v2, p0

    shl-long/2addr v2, v7

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static reverseBytesShort(S)S
    .locals 2

    .prologue
    const v0, 0xffff

    .line 35
    and-int/2addr v0, p0

    const v1, 0xff00

    .line 36
    and-int/2addr v1, v0

    ushr-int/lit8 v1, v1, 0x8

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v1

    .line 38
    int-to-short v0, v0

    return v0
.end method

.method public static sneakyRethrow(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 65
    invoke-static {p0}, Lokio/Util;->sneakyThrow2(Ljava/lang/Throwable;)V

    .line 66
    return-void
.end method

.method private static sneakyThrow2(Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Throwable;",
            ")V^TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 70
    throw p0
.end method
