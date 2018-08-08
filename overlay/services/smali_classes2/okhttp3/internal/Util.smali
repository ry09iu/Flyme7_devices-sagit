.class public final Lokhttp3/internal/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field public static final EMPTY_BYTE_ARRAY:[B

.field public static final EMPTY_REQUEST:Lokhttp3/RequestBody;

.field public static final EMPTY_RESPONSE:Lokhttp3/ResponseBody;

.field public static final EMPTY_STRING_ARRAY:[Ljava/lang/String;

.field public static final ISO_8859_1:Ljava/nio/charset/Charset;

.field public static final NATURAL_ORDER:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final UTC:Ljava/util/TimeZone;

.field private static final UTF_16_BE:Ljava/nio/charset/Charset;

.field private static final UTF_16_BE_BOM:Lokio/ByteString;

.field private static final UTF_16_LE:Ljava/nio/charset/Charset;

.field private static final UTF_16_LE_BOM:Lokio/ByteString;

.field private static final UTF_32_BE:Ljava/nio/charset/Charset;

.field private static final UTF_32_BE_BOM:Lokio/ByteString;

.field private static final UTF_32_LE:Ljava/nio/charset/Charset;

.field private static final UTF_32_LE_BOM:Lokio/ByteString;

.field public static final UTF_8:Ljava/nio/charset/Charset;

.field private static final UTF_8_BOM:Lokio/ByteString;

.field private static final VERIFY_AS_IP_ADDRESS:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 48
    new-array v0, v1, [B

    sput-object v0, Lokhttp3/internal/Util;->EMPTY_BYTE_ARRAY:[B

    .line 49
    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, Lokhttp3/internal/Util;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 51
    sget-object v0, Lokhttp3/internal/Util;->EMPTY_BYTE_ARRAY:[B

    invoke-static {v2, v0}, Lokhttp3/ResponseBody;->create(Lokhttp3/MediaType;[B)Lokhttp3/ResponseBody;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/Util;->EMPTY_RESPONSE:Lokhttp3/ResponseBody;

    .line 52
    sget-object v0, Lokhttp3/internal/Util;->EMPTY_BYTE_ARRAY:[B

    invoke-static {v2, v0}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;[B)Lokhttp3/RequestBody;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/Util;->EMPTY_REQUEST:Lokhttp3/RequestBody;

    const-string/jumbo v0, "efbbbf"

    .line 54
    invoke-static {v0}, Lokio/ByteString;->decodeHex(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/Util;->UTF_8_BOM:Lokio/ByteString;

    const-string/jumbo v0, "feff"

    .line 55
    invoke-static {v0}, Lokio/ByteString;->decodeHex(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/Util;->UTF_16_BE_BOM:Lokio/ByteString;

    const-string/jumbo v0, "fffe"

    .line 56
    invoke-static {v0}, Lokio/ByteString;->decodeHex(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/Util;->UTF_16_LE_BOM:Lokio/ByteString;

    const-string/jumbo v0, "0000ffff"

    .line 57
    invoke-static {v0}, Lokio/ByteString;->decodeHex(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/Util;->UTF_32_BE_BOM:Lokio/ByteString;

    const-string/jumbo v0, "ffff0000"

    .line 58
    invoke-static {v0}, Lokio/ByteString;->decodeHex(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/Util;->UTF_32_LE_BOM:Lokio/ByteString;

    const-string/jumbo v0, "UTF-8"

    .line 60
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/Util;->UTF_8:Ljava/nio/charset/Charset;

    const-string/jumbo v0, "ISO-8859-1"

    .line 61
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/Util;->ISO_8859_1:Ljava/nio/charset/Charset;

    const-string/jumbo v0, "UTF-16BE"

    .line 62
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/Util;->UTF_16_BE:Ljava/nio/charset/Charset;

    const-string/jumbo v0, "UTF-16LE"

    .line 63
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/Util;->UTF_16_LE:Ljava/nio/charset/Charset;

    const-string/jumbo v0, "UTF-32BE"

    .line 64
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/Util;->UTF_32_BE:Ljava/nio/charset/Charset;

    const-string/jumbo v0, "UTF-32LE"

    .line 65
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/Util;->UTF_32_LE:Ljava/nio/charset/Charset;

    const-string/jumbo v0, "GMT"

    .line 68
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/Util;->UTC:Ljava/util/TimeZone;

    .line 70
    new-instance v0, Lokhttp3/internal/Util$1;

    invoke-direct {v0}, Lokhttp3/internal/Util$1;-><init>()V

    sput-object v0, Lokhttp3/internal/Util;->NATURAL_ORDER:Ljava/util/Comparator;

    const-string/jumbo v0, "([0-9a-fA-F]*:[0-9a-fA-F:.]*)|([\\d.]+)"

    .line 86
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/Util;->VERIFY_AS_IP_ADDRESS:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    return-void
.end method

.method public static assertionError(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/AssertionError;
    .locals 2

    .prologue
    .line 465
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 467
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/lang/AssertionError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 471
    :goto_0
    return-object v0

    .line 470
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static bomAwareCharset(Lokio/BufferedSource;Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 432
    sget-object v0, Lokhttp3/internal/Util;->UTF_8_BOM:Lokio/ByteString;

    invoke-interface {p0, v2, v3, v0}, Lokio/BufferedSource;->rangeEquals(JLokio/ByteString;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 436
    sget-object v0, Lokhttp3/internal/Util;->UTF_16_BE_BOM:Lokio/ByteString;

    invoke-interface {p0, v2, v3, v0}, Lokio/BufferedSource;->rangeEquals(JLokio/ByteString;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 440
    sget-object v0, Lokhttp3/internal/Util;->UTF_16_LE_BOM:Lokio/ByteString;

    invoke-interface {p0, v2, v3, v0}, Lokio/BufferedSource;->rangeEquals(JLokio/ByteString;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 444
    sget-object v0, Lokhttp3/internal/Util;->UTF_32_BE_BOM:Lokio/ByteString;

    invoke-interface {p0, v2, v3, v0}, Lokio/BufferedSource;->rangeEquals(JLokio/ByteString;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 448
    sget-object v0, Lokhttp3/internal/Util;->UTF_32_LE_BOM:Lokio/ByteString;

    invoke-interface {p0, v2, v3, v0}, Lokio/BufferedSource;->rangeEquals(JLokio/ByteString;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 452
    return-object p1

    .line 433
    :cond_0
    sget-object v0, Lokhttp3/internal/Util;->UTF_8_BOM:Lokio/ByteString;

    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v0

    int-to-long v0, v0

    invoke-interface {p0, v0, v1}, Lokio/BufferedSource;->skip(J)V

    .line 434
    sget-object v0, Lokhttp3/internal/Util;->UTF_8:Ljava/nio/charset/Charset;

    return-object v0

    .line 437
    :cond_1
    sget-object v0, Lokhttp3/internal/Util;->UTF_16_BE_BOM:Lokio/ByteString;

    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v0

    int-to-long v0, v0

    invoke-interface {p0, v0, v1}, Lokio/BufferedSource;->skip(J)V

    .line 438
    sget-object v0, Lokhttp3/internal/Util;->UTF_16_BE:Ljava/nio/charset/Charset;

    return-object v0

    .line 441
    :cond_2
    sget-object v0, Lokhttp3/internal/Util;->UTF_16_LE_BOM:Lokio/ByteString;

    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v0

    int-to-long v0, v0

    invoke-interface {p0, v0, v1}, Lokio/BufferedSource;->skip(J)V

    .line 442
    sget-object v0, Lokhttp3/internal/Util;->UTF_16_LE:Ljava/nio/charset/Charset;

    return-object v0

    .line 445
    :cond_3
    sget-object v0, Lokhttp3/internal/Util;->UTF_32_BE_BOM:Lokio/ByteString;

    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v0

    int-to-long v0, v0

    invoke-interface {p0, v0, v1}, Lokio/BufferedSource;->skip(J)V

    .line 446
    sget-object v0, Lokhttp3/internal/Util;->UTF_32_BE:Ljava/nio/charset/Charset;

    return-object v0

    .line 449
    :cond_4
    sget-object v0, Lokhttp3/internal/Util;->UTF_32_LE_BOM:Lokio/ByteString;

    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v0

    int-to-long v0, v0

    invoke-interface {p0, v0, v1}, Lokio/BufferedSource;->skip(J)V

    .line 450
    sget-object v0, Lokhttp3/internal/Util;->UTF_32_LE:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method public static canonicalizeHost(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    const-string/jumbo v0, ":"

    .line 361
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 373
    :try_start_0
    invoke-static {p0}, Ljava/net/IDN;->toASCII(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 374
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 377
    invoke-static {v0}, Lokhttp3/internal/Util;->containsInvalidHostnameAsciiCodes(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_6

    .line 381
    return-object v0

    :cond_0
    const-string/jumbo v0, "["

    .line 363
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 365
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {p0, v1, v0}, Lokhttp3/internal/Util;->decodeIpv6(Ljava/lang/String;II)Ljava/net/InetAddress;

    move-result-object v0

    .line 366
    :goto_0
    if-eqz v0, :cond_3

    .line 367
    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 368
    array-length v1, v0

    const/16 v2, 0x10

    if-eq v1, v2, :cond_4

    .line 369
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid IPv6 address: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_2
    const-string/jumbo v0, "]"

    .line 363
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 364
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {p0, v0, v1}, Lokhttp3/internal/Util;->decodeIpv6(Ljava/lang/String;II)Ljava/net/InetAddress;

    move-result-object v0

    goto :goto_0

    .line 366
    :cond_3
    return-object v2

    .line 368
    :cond_4
    invoke-static {v0}, Lokhttp3/internal/Util;->inet6AddressToAscii([B)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 374
    :cond_5
    return-object v2

    .line 378
    :cond_6
    return-object v2

    .line 381
    :catch_0
    move-exception v0

    .line 383
    return-object v2
.end method

.method public static checkDuration(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I
    .locals 9

    .prologue
    const-wide/16 v6, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 456
    cmp-long v2, p1, v6

    if-ltz v2, :cond_0

    move v2, v0

    :goto_0
    if-nez v2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " < 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v2, v1

    goto :goto_0

    .line 457
    :cond_1
    if-eqz p3, :cond_2

    .line 458
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    const-wide/32 v2, 0x7fffffff

    .line 459
    cmp-long v2, v4, v2

    if-gtz v2, :cond_3

    move v2, v0

    :goto_1
    if-nez v2, :cond_4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " too large."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 457
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "unit == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    move v2, v1

    .line 459
    goto :goto_1

    .line 460
    :cond_4
    cmp-long v2, v4, v6

    if-nez v2, :cond_6

    cmp-long v2, p1, v6

    if-gtz v2, :cond_5

    :goto_2
    if-nez v0, :cond_6

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " too small."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    move v0, v1

    goto :goto_2

    .line 461
    :cond_6
    long-to-int v0, v4

    return v0
.end method

.method public static checkOffsetAndCount(JJJ)V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 93
    or-long v2, p2, p4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    move v2, v0

    :goto_0
    if-nez v2, :cond_0

    cmp-long v2, p2, p0

    if-lez v2, :cond_2

    move v2, v0

    :goto_1
    if-nez v2, :cond_0

    sub-long v2, p0, p2

    cmp-long v2, v2, p4

    if-ltz v2, :cond_3

    :goto_2
    if-nez v0, :cond_4

    .line 94
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_1
    move v2, v1

    .line 93
    goto :goto_0

    :cond_2
    move v2, v1

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2

    .line 96
    :cond_4
    return-void
.end method

.method public static closeQuietly(Ljava/io/Closeable;)V
    .locals 1

    .prologue
    .line 108
    if-nez p0, :cond_0

    .line 116
    :goto_0
    return-void

    .line 110
    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 114
    :catch_0
    move-exception v0

    .line 112
    throw v0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public static closeQuietly(Ljava/net/ServerSocket;)V
    .locals 1

    .prologue
    .line 140
    if-nez p0, :cond_0

    .line 148
    :goto_0
    return-void

    .line 142
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/net/ServerSocket;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 146
    :catch_0
    move-exception v0

    .line 144
    throw v0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public static closeQuietly(Ljava/net/Socket;)V
    .locals 2

    .prologue
    .line 123
    if-nez p0, :cond_1

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 125
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 131
    :catch_0
    move-exception v0

    .line 127
    invoke-static {v0}, Lokhttp3/internal/Util;->isAndroidGetsocknameError(Ljava/lang/AssertionError;)Z

    move-result v1

    if-nez v1, :cond_0

    throw v0

    .line 131
    :catch_1
    move-exception v0

    .line 129
    throw v0

    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method public static concat([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 276
    array-length v0, p0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 277
    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 278
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput-object p1, v0, v1

    .line 279
    return-object v0
.end method

.method private static containsInvalidHostnameAsciiCodes(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    move v0, v1

    .line 388
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 403
    return v1

    .line 389
    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x1f

    .line 393
    if-gt v2, v3, :cond_2

    .line 394
    :cond_1
    return v4

    :cond_2
    const/16 v3, 0x7f

    .line 393
    if-ge v2, v3, :cond_1

    const-string/jumbo v3, " #%/:?@[\\]"

    .line 399
    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    .line 388
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 400
    :cond_3
    return v4
.end method

.method public static decodeHexDigit(C)I
    .locals 1

    .prologue
    const/16 v0, 0x30

    .line 475
    if-ge p0, v0, :cond_3

    :cond_0
    const/16 v0, 0x61

    .line 476
    if-ge p0, v0, :cond_4

    :cond_1
    const/16 v0, 0x41

    .line 477
    if-ge p0, v0, :cond_5

    :cond_2
    const/4 v0, -0x1

    .line 478
    return v0

    :cond_3
    const/16 v0, 0x39

    .line 475
    if-gt p0, v0, :cond_0

    add-int/lit8 v0, p0, -0x30

    return v0

    :cond_4
    const/16 v0, 0x66

    .line 476
    if-gt p0, v0, :cond_1

    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    return v0

    :cond_5
    const/16 v0, 0x46

    .line 477
    if-gt p0, v0, :cond_2

    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    return v0
.end method

.method private static decodeIpv4Suffix(Ljava/lang/String;II[BI)Z
    .locals 7

    .prologue
    const/4 v2, 0x0

    move v0, p1

    move v4, p4

    .line 557
    :goto_0
    if-lt v0, p2, :cond_0

    .line 583
    add-int/lit8 v0, p4, 0x4

    if-ne v4, v0, :cond_a

    .line 584
    const/4 v0, 0x1

    return v0

    .line 558
    :cond_0
    array-length v1, p3

    if-eq v4, v1, :cond_2

    .line 561
    if-ne v4, p4, :cond_3

    :goto_1
    move v1, v2

    move v3, v0

    .line 569
    :goto_2
    if-lt v3, p2, :cond_5

    .line 576
    :cond_1
    sub-int v0, v3, v0

    .line 577
    if-eqz v0, :cond_9

    .line 580
    add-int/lit8 v0, v4, 0x1

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, p3, v4

    move v4, v0

    move v0, v3

    .line 581
    goto :goto_0

    .line 558
    :cond_2
    return v2

    .line 562
    :cond_3
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x2e

    if-ne v1, v3, :cond_4

    .line 563
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 562
    :cond_4
    return v2

    .line 570
    :cond_5
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x30

    .line 571
    if-lt v5, v6, :cond_1

    const/16 v6, 0x39

    if-gt v5, v6, :cond_1

    .line 572
    if-eqz v1, :cond_7

    .line 573
    :cond_6
    mul-int/lit8 v1, v1, 0xa

    add-int/2addr v1, v5

    add-int/lit8 v1, v1, -0x30

    const/16 v5, 0xff

    .line 574
    if-gt v1, v5, :cond_8

    .line 569
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 572
    :cond_7
    if-eq v0, v3, :cond_6

    return v2

    .line 574
    :cond_8
    return v2

    .line 577
    :cond_9
    return v2

    .line 583
    :cond_a
    return v2
.end method

.method private static decodeIpv6(Ljava/lang/String;II)Ljava/net/InetAddress;
    .locals 12
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v6, -0x1

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/16 v0, 0x10

    .line 483
    new-array v7, v0, [B

    move v0, p1

    move v3, v6

    move v1, v6

    move v2, v4

    .line 488
    :goto_0
    if-lt v0, p2, :cond_0

    .line 539
    :goto_1
    array-length v0, v7

    if-ne v2, v0, :cond_e

    .line 546
    :goto_2
    :try_start_0
    invoke-static {v7}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 489
    :cond_0
    array-length v5, v7

    if-eq v2, v5, :cond_4

    .line 492
    add-int/lit8 v5, v0, 0x2

    if-le v5, p2, :cond_5

    .line 499
    :cond_1
    if-nez v2, :cond_8

    :goto_3
    move v3, v4

    move v5, v0

    .line 516
    :goto_4
    if-lt v5, p2, :cond_c

    .line 522
    :cond_2
    sub-int v8, v5, v0

    .line 523
    if-nez v8, :cond_d

    :cond_3
    return-object v10

    .line 489
    :cond_4
    return-object v10

    :cond_5
    const-string/jumbo v5, "::"

    const/4 v8, 0x2

    .line 492
    invoke-virtual {p0, v0, v5, v4, v8}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 494
    if-ne v1, v6, :cond_6

    .line 495
    add-int/lit8 v0, v0, 0x2

    .line 496
    add-int/lit8 v1, v2, 0x2

    .line 498
    if-eq v0, p2, :cond_7

    move v2, v1

    goto :goto_3

    .line 494
    :cond_6
    return-object v10

    :cond_7
    move v2, v1

    .line 498
    goto :goto_1

    :cond_8
    const-string/jumbo v5, ":"

    .line 501
    invoke-virtual {p0, v0, v5, v4, v11}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v5

    if-nez v5, :cond_9

    const-string/jumbo v5, "."

    .line 503
    invoke-virtual {p0, v0, v5, v4, v11}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_a

    .line 509
    return-object v10

    .line 502
    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 505
    :cond_a
    add-int/lit8 v0, v2, -0x2

    invoke-static {p0, v3, p2, v7, v0}, Lokhttp3/internal/Util;->decodeIpv4Suffix(Ljava/lang/String;II[BI)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 506
    add-int/lit8 v2, v2, 0x2

    goto :goto_1

    .line 505
    :cond_b
    return-object v10

    .line 517
    :cond_c
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 518
    invoke-static {v8}, Lokhttp3/internal/Util;->decodeHexDigit(C)I

    move-result v8

    .line 519
    if-eq v8, v6, :cond_2

    .line 520
    shl-int/lit8 v3, v3, 0x4

    add-int/2addr v3, v8

    .line 516
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_d
    const/4 v9, 0x4

    .line 523
    if-gt v8, v9, :cond_3

    .line 526
    add-int/lit8 v8, v2, 0x1

    ushr-int/lit8 v9, v3, 0x8

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    int-to-byte v9, v9

    aput-byte v9, v7, v2

    .line 527
    add-int/lit8 v2, v8, 0x1

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    int-to-byte v3, v3

    aput-byte v3, v7, v8

    move v3, v0

    move v0, v5

    .line 528
    goto :goto_0

    .line 540
    :cond_e
    if-eq v1, v6, :cond_f

    .line 541
    array-length v0, v7

    sub-int v3, v2, v1

    sub-int/2addr v0, v3

    sub-int v3, v2, v1

    invoke-static {v7, v1, v7, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 542
    array-length v0, v7

    sub-int/2addr v0, v2

    add-int/2addr v0, v1

    invoke-static {v7, v1, v0, v4}, Ljava/util/Arrays;->fill([BIIB)V

    goto/16 :goto_2

    .line 540
    :cond_f
    return-object v10

    .line 546
    :catch_0
    move-exception v0

    .line 548
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static delimiterOffset(Ljava/lang/String;IIC)I
    .locals 1

    .prologue
    .line 345
    :goto_0
    if-lt p1, p2, :cond_0

    .line 348
    return p2

    .line 346
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, p3, :cond_1

    .line 345
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 346
    :cond_1
    return p1
.end method

.method public static delimiterOffset(Ljava/lang/String;IILjava/lang/String;)I
    .locals 2

    .prologue
    .line 334
    :goto_0
    if-lt p1, p2, :cond_0

    .line 337
    return p2

    .line 335
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 334
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 335
    :cond_1
    return p1
.end method

.method public static discard(Lokio/Source;ILjava/util/concurrent/TimeUnit;)Z
    .locals 1

    .prologue
    .line 157
    :try_start_0
    invoke-static {p0, p1, p2}, Lokhttp3/internal/Util;->skipAll(Lokio/Source;ILjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    .line 159
    const/4 v0, 0x0

    return v0
.end method

.method public static equal(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 100
    if-ne p0, p1, :cond_2

    :cond_0
    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0

    :cond_2
    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0
.end method

.method public static varargs format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 428
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hostHeader(Lokhttp3/HttpUrl;Z)Ljava/lang/String;
    .locals 3

    .prologue
    .line 251
    invoke-virtual {p0}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 253
    invoke-virtual {p0}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v0

    .line 254
    :goto_0
    if-eqz p1, :cond_2

    .line 255
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lokhttp3/HttpUrl;->port()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 254
    :goto_1
    return-object v0

    .line 252
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 254
    :cond_2
    invoke-virtual {p0}, Lokhttp3/HttpUrl;->port()I

    move-result v1

    invoke-virtual {p0}, Lokhttp3/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lokhttp3/HttpUrl;->defaultPort(Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_0

    goto :goto_1
.end method

.method public static immutableList(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 192
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static varargs immutableList([Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 197
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static indexOf(Ljava/util/Comparator;[Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 269
    array-length v1, p1

    :goto_0
    if-lt v0, v1, :cond_0

    const/4 v0, -0x1

    .line 272
    return v0

    .line 270
    :cond_0
    aget-object v2, p1, v0

    invoke-interface {p0, v2, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-eqz v2, :cond_1

    .line 269
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 270
    :cond_1
    return v0
.end method

.method public static indexOfControlOrNonAscii(Ljava/lang/String;)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 412
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    :goto_0
    if-lt v0, v1, :cond_0

    const/4 v0, -0x1

    .line 418
    return v0

    .line 413
    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x1f

    .line 414
    if-gt v2, v3, :cond_2

    .line 415
    :cond_1
    return v0

    :cond_2
    const/16 v3, 0x7f

    .line 414
    if-ge v2, v3, :cond_1

    .line 412
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static inet6AddressToAscii([B)Ljava/lang/String;
    .locals 9

    .prologue
    const/16 v8, 0x10

    const/16 v7, 0x3a

    const/4 v1, 0x0

    const/4 v0, -0x1

    move v2, v1

    move v3, v0

    move v0, v1

    .line 594
    :goto_0
    array-length v4, p0

    if-lt v0, v4, :cond_1

    .line 607
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    .line 608
    :cond_0
    :goto_1
    array-length v4, p0

    if-lt v1, v4, :cond_6

    .line 620
    invoke-virtual {v0}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    move v5, v0

    .line 596
    :goto_2
    if-lt v5, v8, :cond_4

    .line 599
    :cond_2
    sub-int v4, v5, v0

    .line 600
    if-gt v4, v2, :cond_5

    .line 594
    :cond_3
    :goto_3
    add-int/lit8 v0, v5, 0x2

    goto :goto_0

    .line 596
    :cond_4
    aget-byte v4, p0, v5

    if-nez v4, :cond_2

    add-int/lit8 v4, v5, 0x1

    aget-byte v4, p0, v4

    if-nez v4, :cond_2

    .line 597
    add-int/lit8 v4, v5, 0x2

    move v5, v4

    goto :goto_2

    :cond_5
    const/4 v6, 0x4

    .line 600
    if-lt v4, v6, :cond_3

    move v2, v4

    move v3, v0

    .line 602
    goto :goto_3

    .line 609
    :cond_6
    if-eq v1, v3, :cond_7

    .line 614
    if-gtz v1, :cond_8

    .line 615
    :goto_4
    aget-byte v4, p0, v1

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    add-int/lit8 v5, v1, 0x1

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v4, v5

    .line 616
    int-to-long v4, v4

    invoke-virtual {v0, v4, v5}, Lokio/Buffer;->writeHexadecimalUnsignedLong(J)Lokio/Buffer;

    .line 617
    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    .line 610
    :cond_7
    invoke-virtual {v0, v7}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 611
    add-int/2addr v1, v2

    .line 612
    if-ne v1, v8, :cond_0

    invoke-virtual {v0, v7}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    goto :goto_1

    .line 614
    :cond_8
    invoke-virtual {v0, v7}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    goto :goto_4
.end method

.method public static intersect(Ljava/util/Comparator;[Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 217
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 218
    array-length v4, p1

    move v2, v1

    :goto_0
    if-lt v2, v4, :cond_0

    .line 226
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0

    .line 218
    :cond_0
    aget-object v5, p1, v2

    .line 219
    array-length v6, p2

    move v0, v1

    :goto_1
    if-lt v0, v6, :cond_1

    .line 218
    :goto_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 219
    :cond_1
    aget-object v7, p2, v0

    .line 220
    invoke-interface {p0, v5, v7}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v7

    if-eqz v7, :cond_2

    .line 219
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 221
    :cond_2
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public static isAndroidGetsocknameError(Ljava/lang/AssertionError;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 264
    invoke-virtual {p0}, Ljava/lang/AssertionError;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 265
    invoke-virtual {p0}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "getsockname failed"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static nonEmptyIntersection(Ljava/util/Comparator;[Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 237
    if-nez p1, :cond_1

    .line 238
    :cond_0
    return v1

    .line 237
    :cond_1
    if-eqz p2, :cond_0

    array-length v0, p1

    if-eqz v0, :cond_0

    array-length v0, p2

    if-eqz v0, :cond_0

    .line 240
    array-length v3, p1

    move v2, v1

    :goto_0
    if-lt v2, v3, :cond_2

    .line 247
    return v1

    .line 240
    :cond_2
    aget-object v4, p1, v2

    .line 241
    array-length v5, p2

    move v0, v1

    :goto_1
    if-lt v0, v5, :cond_3

    .line 240
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 241
    :cond_3
    aget-object v6, p2, v0

    .line 242
    invoke-interface {p0, v4, v6}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v6

    if-eqz v6, :cond_4

    .line 241
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 243
    :cond_4
    const/4 v0, 0x1

    return v0
.end method

.method public static skipAll(Lokio/Source;ILjava/util/concurrent/TimeUnit;)Z
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    const-wide v2, 0x7fffffffffffffffL

    .line 168
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    .line 169
    invoke-interface {p0}, Lokio/Source;->timeout()Lokio/Timeout;

    move-result-object v0

    invoke-virtual {v0}, Lokio/Timeout;->hasDeadline()Z

    move-result v0

    if-nez v0, :cond_0

    move-wide v0, v2

    .line 172
    :goto_0
    invoke-interface {p0}, Lokio/Source;->timeout()Lokio/Timeout;

    move-result-object v4

    int-to-long v8, p1

    invoke-virtual {p2, v8, v9}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v8

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    add-long/2addr v8, v6

    invoke-virtual {v4, v8, v9}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    .line 174
    :try_start_0
    new-instance v4, Lokio/Buffer;

    invoke-direct {v4}, Lokio/Buffer;-><init>()V

    :goto_1
    const-wide/16 v8, 0x2000

    .line 175
    invoke-interface {p0, v4, v8, v9}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v8

    const-wide/16 v10, -0x1

    cmp-long v5, v8, v10

    if-eqz v5, :cond_1

    .line 176
    invoke-virtual {v4}, Lokio/Buffer;->clear()V
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 178
    :catch_0
    move-exception v4

    .line 182
    cmp-long v2, v0, v2

    if-nez v2, :cond_3

    .line 183
    invoke-interface {p0}, Lokio/Source;->timeout()Lokio/Timeout;

    move-result-object v0

    invoke-virtual {v0}, Lokio/Timeout;->clearDeadline()Lokio/Timeout;

    .line 180
    :goto_2
    return v12

    .line 170
    :cond_0
    invoke-interface {p0}, Lokio/Source;->timeout()Lokio/Timeout;

    move-result-object v0

    invoke-virtual {v0}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v0

    sub-long/2addr v0, v6

    goto :goto_0

    .line 182
    :cond_1
    cmp-long v2, v0, v2

    if-nez v2, :cond_2

    .line 183
    invoke-interface {p0}, Lokio/Source;->timeout()Lokio/Timeout;

    move-result-object v0

    invoke-virtual {v0}, Lokio/Timeout;->clearDeadline()Lokio/Timeout;

    .line 178
    :goto_3
    const/4 v0, 0x1

    return v0

    .line 185
    :cond_2
    invoke-interface {p0}, Lokio/Source;->timeout()Lokio/Timeout;

    move-result-object v2

    add-long/2addr v0, v6

    invoke-virtual {v2, v0, v1}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    goto :goto_3

    :cond_3
    invoke-interface {p0}, Lokio/Source;->timeout()Lokio/Timeout;

    move-result-object v2

    add-long/2addr v0, v6

    invoke-virtual {v2, v0, v1}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    goto :goto_2

    .line 180
    :catchall_0
    move-exception v4

    .line 182
    cmp-long v2, v0, v2

    if-nez v2, :cond_4

    .line 183
    invoke-interface {p0}, Lokio/Source;->timeout()Lokio/Timeout;

    move-result-object v0

    invoke-virtual {v0}, Lokio/Timeout;->clearDeadline()Lokio/Timeout;

    .line 185
    :goto_4
    throw v4

    :cond_4
    invoke-interface {p0}, Lokio/Source;->timeout()Lokio/Timeout;

    move-result-object v2

    add-long/2addr v0, v6

    invoke-virtual {v2, v0, v1}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    goto :goto_4
.end method

.method public static skipLeadingAsciiWhitespace(Ljava/lang/String;II)I
    .locals 1

    .prologue
    .line 287
    :goto_0
    if-lt p1, p2, :cond_0

    .line 299
    return p2

    .line 288
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 296
    return p1

    .line 287
    :sswitch_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 288
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xc -> :sswitch_0
        0xd -> :sswitch_0
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method public static skipTrailingAsciiWhitespace(Ljava/lang/String;II)I
    .locals 2

    .prologue
    .line 307
    add-int/lit8 v0, p2, -0x1

    :goto_0
    if-ge v0, p1, :cond_0

    .line 319
    return p1

    .line 308
    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 316
    add-int/lit8 v0, v0, 0x1

    return v0

    .line 307
    :sswitch_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 308
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xc -> :sswitch_0
        0xd -> :sswitch_0
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method public static threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;
    .locals 1

    .prologue
    .line 201
    new-instance v0, Lokhttp3/internal/Util$2;

    invoke-direct {v0, p0, p1}, Lokhttp3/internal/Util$2;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public static trimSubstring(Ljava/lang/String;II)Ljava/lang/String;
    .locals 2

    .prologue
    .line 324
    invoke-static {p0, p1, p2}, Lokhttp3/internal/Util;->skipLeadingAsciiWhitespace(Ljava/lang/String;II)I

    move-result v0

    .line 325
    invoke-static {p0, v0, p2}, Lokhttp3/internal/Util;->skipTrailingAsciiWhitespace(Ljava/lang/String;II)I

    move-result v1

    .line 326
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static verifyAsIpAddress(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 423
    sget-object v0, Lokhttp3/internal/Util;->VERIFY_AS_IP_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method
