.class public final Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;
.super Ljava/lang/Object;
.source "PublicSuffixDatabase.java"


# static fields
.field private static final EMPTY_RULE:[Ljava/lang/String;

.field private static final EXCEPTION_MARKER:B = 0x21t

.field private static final PREVAILING_RULE:[Ljava/lang/String;

.field public static final PUBLIC_SUFFIX_RESOURCE:Ljava/lang/String; = "publicsuffixes.gz"

.field private static final WILDCARD_LABEL:[B

.field private static final instance:Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;


# instance fields
.field private final listRead:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private publicSuffixExceptionListBytes:[B

.field private publicSuffixListBytes:[B

.field private final readCompleteLatch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 39
    new-array v0, v3, [B

    const/16 v1, 0x2a

    aput-byte v1, v0, v2

    sput-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->WILDCARD_LABEL:[B

    .line 40
    new-array v0, v2, [Ljava/lang/String;

    sput-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->EMPTY_RULE:[Ljava/lang/String;

    .line 41
    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "*"

    aput-object v1, v0, v2

    sput-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->PREVAILING_RULE:[Ljava/lang/String;

    .line 45
    new-instance v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;

    invoke-direct {v0}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;-><init>()V

    sput-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->instance:Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->listRead:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 51
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->readCompleteLatch:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method private static binarySearchBytes([B[[BI)Ljava/lang/String;
    .locals 12

    .prologue
    const/4 v5, 0x0

    .line 196
    array-length v4, p0

    const/4 v6, 0x0

    .line 198
    :goto_0
    if-lt v5, v4, :cond_0

    move-object v0, v6

    .line 276
    :goto_1
    return-object v0

    .line 199
    :cond_0
    add-int v0, v5, v4

    div-int/lit8 v0, v0, 0x2

    :goto_2
    const/4 v1, -0x1

    .line 202
    if-gt v0, v1, :cond_2

    .line 205
    :cond_1
    add-int/lit8 v9, v0, 0x1

    const/4 v0, 0x1

    .line 209
    :goto_3
    add-int v1, v9, v0

    aget-byte v1, p0, v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_3

    .line 212
    add-int v1, v9, v0

    sub-int v10, v1, v9

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 221
    const/4 v2, 0x0

    move v3, p2

    .line 224
    :goto_4
    if-nez v2, :cond_4

    .line 228
    aget-object v1, p1, v3

    aget-byte v1, v1, v8

    and-int/lit16 v1, v1, 0xff

    .line 231
    :goto_5
    add-int v11, v9, v7

    aget-byte v11, p0, v11

    and-int/lit16 v11, v11, 0xff

    .line 233
    sub-int v11, v1, v11

    .line 234
    if-nez v11, :cond_5

    .line 236
    add-int/lit8 v7, v7, 0x1

    .line 237
    add-int/lit8 v1, v8, 0x1

    .line 238
    if-eq v7, v10, :cond_6

    .line 240
    aget-object v8, p1, v3

    array-length v8, v8

    if-eq v8, v1, :cond_7

    :goto_6
    move v8, v1

    .line 251
    goto :goto_4

    .line 202
    :cond_2
    aget-byte v1, p0, v0

    const/16 v2, 0xa

    if-eq v1, v2, :cond_1

    .line 203
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 210
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    const/16 v1, 0x2e

    .line 226
    const/4 v2, 0x0

    goto :goto_5

    :cond_5
    move v1, v7

    move v2, v8

    .line 253
    :goto_7
    if-ltz v11, :cond_9

    .line 255
    if-gtz v11, :cond_a

    .line 259
    sub-int v7, v10, v1

    .line 260
    aget-object v1, p1, v3

    array-length v1, v1

    sub-int v2, v1, v2

    .line 261
    add-int/lit8 v1, v3, 0x1

    :goto_8
    array-length v3, p1

    if-lt v1, v3, :cond_b

    .line 265
    if-lt v2, v7, :cond_c

    .line 267
    if-gt v2, v7, :cond_d

    .line 271
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lokhttp3/internal/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v9, v10, v1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    goto :goto_1

    :cond_6
    move v2, v1

    move v1, v7

    .line 238
    goto :goto_7

    .line 243
    :cond_7
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    if-eq v3, v2, :cond_8

    .line 246
    add-int/lit8 v3, v3, 0x1

    const/4 v1, -0x1

    .line 248
    const/4 v2, 0x1

    goto :goto_6

    :cond_8
    move v2, v1

    move v1, v7

    .line 244
    goto :goto_7

    .line 254
    :cond_9
    add-int/lit8 v0, v9, -0x1

    move v1, v5

    :goto_9
    move v4, v0

    move v5, v1

    .line 275
    goto :goto_0

    .line 256
    :cond_a
    add-int/2addr v0, v9

    add-int/lit8 v0, v0, 0x1

    move v1, v0

    move v0, v4

    goto :goto_9

    .line 262
    :cond_b
    aget-object v3, p1, v1

    array-length v3, v3

    add-int/2addr v2, v3

    .line 261
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 266
    :cond_c
    add-int/lit8 v0, v9, -0x1

    move v1, v5

    goto :goto_9

    .line 268
    :cond_d
    add-int/2addr v0, v9

    add-int/lit8 v0, v0, 0x1

    move v1, v0

    move v0, v4

    goto :goto_9
.end method

.method private findMatchingRule([Ljava/lang/String;)[Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 109
    iget-object v0, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->listRead:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 113
    :cond_0
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->readCompleteLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :goto_0
    monitor-enter p0

    .line 119
    :try_start_1
    iget-object v0, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->publicSuffixListBytes:[B

    if-eqz v0, :cond_4

    .line 123
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 126
    array-length v0, p1

    new-array v6, v0, [[B

    move v0, v1

    .line 127
    :goto_1
    array-length v2, p1

    if-lt v0, v2, :cond_5

    move v0, v1

    .line 134
    :goto_2
    array-length v2, v6

    if-lt v0, v2, :cond_6

    move-object v2, v3

    .line 148
    :cond_1
    array-length v0, v6

    if-gt v0, v5, :cond_7

    move-object v0, v3

    .line 162
    :goto_3
    if-nez v0, :cond_b

    .line 173
    :goto_4
    if-nez v3, :cond_d

    .line 177
    if-eqz v2, :cond_e

    .line 181
    :cond_2
    if-nez v2, :cond_f

    .line 183
    sget-object v1, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->EMPTY_RULE:[Ljava/lang/String;

    .line 185
    :goto_5
    if-nez v0, :cond_10

    .line 187
    sget-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->EMPTY_RULE:[Ljava/lang/String;

    .line 189
    :goto_6
    array-length v2, v1

    array-length v3, v0

    if-gt v2, v3, :cond_11

    :goto_7
    return-object v0

    .line 109
    :cond_3
    iget-object v0, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->listRead:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    invoke-direct {p0}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->readTheListUninterruptibly()V

    goto :goto_0

    .line 120
    :cond_4
    :try_start_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Unable to load publicsuffixes.gz resource from the classpath."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 128
    :cond_5
    aget-object v2, p1, v0

    sget-object v4, Lokhttp3/internal/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    aput-object v2, v6, v0

    .line 127
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 135
    :cond_6
    iget-object v2, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->publicSuffixListBytes:[B

    invoke-static {v2, v6, v0}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->binarySearchBytes([B[[BI)Ljava/lang/String;

    move-result-object v2

    .line 136
    if-nez v2, :cond_1

    .line 134
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 149
    :cond_7
    invoke-virtual {v6}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    move v4, v1

    .line 150
    :goto_8
    array-length v5, v0

    add-int/lit8 v5, v5, -0x1

    if-lt v4, v5, :cond_8

    move-object v0, v3

    goto :goto_3

    .line 151
    :cond_8
    sget-object v5, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->WILDCARD_LABEL:[B

    aput-object v5, v0, v4

    .line 152
    iget-object v5, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->publicSuffixListBytes:[B

    invoke-static {v5, v0, v4}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->binarySearchBytes([B[[BI)Ljava/lang/String;

    move-result-object v5

    .line 153
    if-nez v5, :cond_9

    .line 150
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_9
    move-object v0, v5

    .line 155
    goto :goto_3

    .line 164
    :cond_a
    iget-object v4, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->publicSuffixExceptionListBytes:[B

    invoke-static {v4, v6, v1}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->binarySearchBytes([B[[BI)Ljava/lang/String;

    move-result-object v4

    .line 166
    if-nez v4, :cond_c

    .line 163
    add-int/lit8 v1, v1, 0x1

    :cond_b
    array-length v4, v6

    add-int/lit8 v4, v4, -0x1

    if-lt v1, v4, :cond_a

    goto :goto_4

    :cond_c
    move-object v3, v4

    .line 168
    goto :goto_4

    .line 175
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "\\."

    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 177
    :cond_e
    if-nez v0, :cond_2

    .line 178
    sget-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->PREVAILING_RULE:[Ljava/lang/String;

    return-object v0

    :cond_f
    const-string/jumbo v1, "\\."

    .line 182
    invoke-virtual {v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_5

    :cond_10
    const-string/jumbo v2, "\\."

    .line 186
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_6

    :cond_11
    move-object v0, v1

    .line 190
    goto/16 :goto_7

    .line 115
    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method

.method public static get()Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->instance:Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;

    return-object v0
.end method

.method private readTheList()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-class v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;

    const-string/jumbo v1, "publicsuffixes.gz"

    .line 309
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 310
    if-eqz v0, :cond_0

    .line 312
    new-instance v1, Lokio/GzipSource;

    invoke-static {v0}, Lokio/Okio;->source(Ljava/io/InputStream;)Lokio/Source;

    move-result-object v0

    invoke-direct {v1, v0}, Lokio/GzipSource;-><init>(Lokio/Source;)V

    invoke-static {v1}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v1

    .line 314
    :try_start_0
    invoke-interface {v1}, Lokio/BufferedSource;->readInt()I

    move-result v0

    .line 315
    new-array v0, v0, [B

    .line 316
    invoke-interface {v1, v0}, Lokio/BufferedSource;->readFully([B)V

    .line 318
    invoke-interface {v1}, Lokio/BufferedSource;->readInt()I

    move-result v2

    .line 319
    new-array v2, v2, [B

    .line 320
    invoke-interface {v1, v2}, Lokio/BufferedSource;->readFully([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 322
    invoke-static {v1}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 325
    monitor-enter p0

    .line 326
    :try_start_1
    iput-object v0, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->publicSuffixListBytes:[B

    .line 327
    iput-object v2, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->publicSuffixExceptionListBytes:[B

    .line 328
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 330
    iget-object v0, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->readCompleteLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 331
    return-void

    .line 310
    :cond_0
    return-void

    .line 323
    :catchall_0
    move-exception v0

    .line 322
    invoke-static {v1}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    throw v0

    .line 328
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method private readTheListUninterruptibly()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    move v1, v0

    .line 289
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->readTheList()V
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 299
    if-nez v1, :cond_0

    .line 290
    :goto_1
    return-void

    .line 300
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    .line 290
    :catch_0
    move-exception v0

    .line 292
    const/4 v0, 0x1

    move v1, v0

    .line 296
    goto :goto_0

    :catch_1
    move-exception v0

    .line 294
    :try_start_1
    invoke-static {}, Lokhttp3/internal/platform/Platform;->get()Lokhttp3/internal/platform/Platform;

    move-result-object v2

    const/4 v3, 0x5

    const-string/jumbo v4, "Failed to read public suffix list"

    invoke-virtual {v2, v3, v4, v0}, Lokhttp3/internal/platform/Platform;->log(ILjava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 299
    if-nez v1, :cond_1

    .line 295
    :goto_2
    return-void

    .line 300
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_2

    .line 295
    :catchall_0
    move-exception v0

    .line 299
    if-nez v1, :cond_2

    .line 300
    :goto_3
    throw v0

    :cond_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_3
.end method


# virtual methods
.method public getEffectiveTldPlusOne(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x21

    const/4 v4, 0x0

    .line 78
    if-eqz p1, :cond_1

    .line 81
    invoke-static {p1}, Ljava/net/IDN;->toUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "\\."

    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 83
    invoke-direct {p0, v0}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->findMatchingRule([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 84
    array-length v2, v0

    array-length v3, v1

    if-eq v2, v3, :cond_2

    .line 90
    :cond_0
    aget-object v2, v1, v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v5, :cond_3

    .line 95
    array-length v0, v0

    array-length v1, v1

    add-int/lit8 v1, v1, 0x1

    sub-int/2addr v0, v1

    .line 98
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\\."

    .line 99
    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 100
    :goto_1
    array-length v3, v2

    if-lt v0, v3, :cond_4

    .line 103
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 78
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "domain == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_2
    aget-object v2, v1, v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v5, :cond_0

    .line 86
    return-object v6

    .line 92
    :cond_3
    array-length v0, v0

    array-length v1, v1

    sub-int/2addr v0, v1

    goto :goto_0

    .line 101
    :cond_4
    aget-object v3, v2, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x2e

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 100
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method setListBytes([B[B)V
    .locals 2

    .prologue
    .line 335
    iput-object p1, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->publicSuffixListBytes:[B

    .line 336
    iput-object p2, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->publicSuffixExceptionListBytes:[B

    .line 337
    iget-object v0, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->listRead:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 338
    iget-object v0, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->readCompleteLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 339
    return-void
.end method
