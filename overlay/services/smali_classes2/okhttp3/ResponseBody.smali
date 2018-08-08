.class public abstract Lokhttp3/ResponseBody;
.super Ljava/lang/Object;
.source "ResponseBody.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/ResponseBody$BomAwareReader;
    }
.end annotation


# instance fields
.field private reader:Ljava/io/Reader;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private charset()Ljava/nio/charset/Charset;
    .locals 2

    .prologue
    .line 182
    invoke-virtual {p0}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object v0

    .line 183
    if-nez v0, :cond_0

    sget-object v0, Lokhttp3/internal/Util;->UTF_8:Ljava/nio/charset/Charset;

    :goto_0
    return-object v0

    :cond_0
    sget-object v1, Lokhttp3/internal/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Lokhttp3/MediaType;->charset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v0

    goto :goto_0
.end method

.method public static create(Lokhttp3/MediaType;JLokio/BufferedSource;)Lokhttp3/ResponseBody;
    .locals 3
    .param p0    # Lokhttp3/MediaType;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 216
    if-eqz p3, :cond_0

    .line 217
    new-instance v0, Lokhttp3/ResponseBody$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lokhttp3/ResponseBody$1;-><init>(Lokhttp3/MediaType;JLokio/BufferedSource;)V

    return-object v0

    .line 216
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/ResponseBody;
    .locals 4
    .param p0    # Lokhttp3/MediaType;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 195
    sget-object v0, Lokhttp3/internal/Util;->UTF_8:Ljava/nio/charset/Charset;

    .line 196
    if-nez p0, :cond_1

    .line 203
    :cond_0
    :goto_0
    new-instance v1, Lokio/Buffer;

    invoke-direct {v1}, Lokio/Buffer;-><init>()V

    invoke-virtual {v1, p1, v0}, Lokio/Buffer;->writeString(Ljava/lang/String;Ljava/nio/charset/Charset;)Lokio/Buffer;

    move-result-object v0

    .line 204
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v2

    invoke-static {p0, v2, v3, v0}, Lokhttp3/ResponseBody;->create(Lokhttp3/MediaType;JLokio/BufferedSource;)Lokhttp3/ResponseBody;

    move-result-object v0

    return-object v0

    .line 197
    :cond_1
    invoke-virtual {p0}, Lokhttp3/MediaType;->charset()Ljava/nio/charset/Charset;

    move-result-object v0

    .line 198
    if-nez v0, :cond_0

    .line 199
    sget-object v0, Lokhttp3/internal/Util;->UTF_8:Ljava/nio/charset/Charset;

    .line 200
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "; charset=utf-8"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p0

    goto :goto_0
.end method

.method public static create(Lokhttp3/MediaType;[B)Lokhttp3/ResponseBody;
    .locals 4
    .param p0    # Lokhttp3/MediaType;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 209
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    invoke-virtual {v0, p1}, Lokio/Buffer;->write([B)Lokio/Buffer;

    move-result-object v0

    .line 210
    array-length v1, p1

    int-to-long v2, v1

    invoke-static {p0, v2, v3, v0}, Lokhttp3/ResponseBody;->create(Lokhttp3/MediaType;JLokio/BufferedSource;)Lokhttp3/ResponseBody;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final byteStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 115
    invoke-virtual {p0}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object v0

    invoke-interface {v0}, Lokio/BufferedSource;->inputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public final bytes()[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 128
    invoke-virtual {p0}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v2

    const-wide/32 v0, 0x7fffffff

    .line 129
    cmp-long v0, v2, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_1

    .line 130
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Cannot buffer entire body for content length: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 133
    :cond_1
    invoke-virtual {p0}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object v0

    .line 136
    :try_start_0
    invoke-interface {v0}, Lokio/BufferedSource;->readByteArray()[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 138
    invoke-static {v0}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    const-wide/16 v4, -0x1

    .line 140
    cmp-long v0, v2, v4

    if-eqz v0, :cond_2

    array-length v0, v1

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2

    .line 141
    new-instance v0, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Content-Length ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") and stream length ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v1, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") disagree"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 139
    :catchall_0
    move-exception v1

    .line 138
    invoke-static {v0}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    throw v1

    .line 147
    :cond_2
    return-object v1
.end method

.method public final charStream()Ljava/io/Reader;
    .locals 3

    .prologue
    .line 157
    iget-object v0, p0, Lokhttp3/ResponseBody;->reader:Ljava/io/Reader;

    .line 158
    if-nez v0, :cond_0

    new-instance v0, Lokhttp3/ResponseBody$BomAwareReader;

    invoke-virtual {p0}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object v1

    invoke-direct {p0}, Lokhttp3/ResponseBody;->charset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lokhttp3/ResponseBody$BomAwareReader;-><init>(Lokio/BufferedSource;Ljava/nio/charset/Charset;)V

    iput-object v0, p0, Lokhttp3/ResponseBody;->reader:Ljava/io/Reader;

    :cond_0
    return-object v0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 187
    invoke-virtual {p0}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 188
    return-void
.end method

.method public abstract contentLength()J
.end method

.method public abstract contentType()Lokhttp3/MediaType;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public abstract source()Lokio/BufferedSource;
.end method

.method public final string()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 172
    invoke-virtual {p0}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object v1

    .line 174
    :try_start_0
    invoke-direct {p0}, Lokhttp3/ResponseBody;->charset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-static {v1, v0}, Lokhttp3/internal/Util;->bomAwareCharset(Lokio/BufferedSource;Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v0

    .line 175
    invoke-interface {v1, v0}, Lokio/BufferedSource;->readString(Ljava/nio/charset/Charset;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 177
    invoke-static {v1}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 175
    return-object v0

    :catchall_0
    move-exception v0

    .line 177
    invoke-static {v1}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    throw v0
.end method
