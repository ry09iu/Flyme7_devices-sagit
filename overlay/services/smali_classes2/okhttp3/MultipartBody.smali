.class public final Lokhttp3/MultipartBody;
.super Lokhttp3/RequestBody;
.source "MultipartBody.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/MultipartBody$Builder;,
        Lokhttp3/MultipartBody$Part;
    }
.end annotation


# static fields
.field public static final ALTERNATIVE:Lokhttp3/MediaType;

.field private static final COLONSPACE:[B

.field private static final CRLF:[B

.field private static final DASHDASH:[B

.field public static final DIGEST:Lokhttp3/MediaType;

.field public static final FORM:Lokhttp3/MediaType;

.field public static final MIXED:Lokhttp3/MediaType;

.field public static final PARALLEL:Lokhttp3/MediaType;


# instance fields
.field private final boundary:Lokio/ByteString;

.field private contentLength:J

.field private final contentType:Lokhttp3/MediaType;

.field private final originalType:Lokhttp3/MediaType;

.field private final parts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokhttp3/MultipartBody$Part;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v5, 0x2d

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string/jumbo v0, "multipart/mixed"

    .line 35
    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    sput-object v0, Lokhttp3/MultipartBody;->MIXED:Lokhttp3/MediaType;

    const-string/jumbo v0, "multipart/alternative"

    .line 42
    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    sput-object v0, Lokhttp3/MultipartBody;->ALTERNATIVE:Lokhttp3/MediaType;

    const-string/jumbo v0, "multipart/digest"

    .line 49
    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    sput-object v0, Lokhttp3/MultipartBody;->DIGEST:Lokhttp3/MediaType;

    const-string/jumbo v0, "multipart/parallel"

    .line 55
    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    sput-object v0, Lokhttp3/MultipartBody;->PARALLEL:Lokhttp3/MediaType;

    const-string/jumbo v0, "multipart/form-data"

    .line 62
    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    sput-object v0, Lokhttp3/MultipartBody;->FORM:Lokhttp3/MediaType;

    .line 64
    new-array v0, v4, [B

    const/16 v1, 0x3a

    aput-byte v1, v0, v2

    const/16 v1, 0x20

    aput-byte v1, v0, v3

    sput-object v0, Lokhttp3/MultipartBody;->COLONSPACE:[B

    .line 65
    new-array v0, v4, [B

    const/16 v1, 0xd

    aput-byte v1, v0, v2

    const/16 v1, 0xa

    aput-byte v1, v0, v3

    sput-object v0, Lokhttp3/MultipartBody;->CRLF:[B

    .line 66
    new-array v0, v4, [B

    aput-byte v5, v0, v2

    aput-byte v5, v0, v3

    sput-object v0, Lokhttp3/MultipartBody;->DASHDASH:[B

    return-void
.end method

.method constructor <init>(Lokio/ByteString;Lokhttp3/MediaType;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokio/ByteString;",
            "Lokhttp3/MediaType;",
            "Ljava/util/List",
            "<",
            "Lokhttp3/MultipartBody$Part;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 74
    invoke-direct {p0}, Lokhttp3/RequestBody;-><init>()V

    const-wide/16 v0, -0x1

    .line 72
    iput-wide v0, p0, Lokhttp3/MultipartBody;->contentLength:J

    .line 75
    iput-object p1, p0, Lokhttp3/MultipartBody;->boundary:Lokio/ByteString;

    .line 76
    iput-object p2, p0, Lokhttp3/MultipartBody;->originalType:Lokhttp3/MediaType;

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "; boundary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/MultipartBody;->contentType:Lokhttp3/MediaType;

    .line 78
    invoke-static {p3}, Lokhttp3/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/MultipartBody;->parts:Ljava/util/List;

    .line 79
    return-void
.end method

.method static appendQuotedString(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 4

    .prologue
    const/16 v3, 0x22

    .line 203
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    .line 204
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    :goto_0
    if-lt v0, v1, :cond_0

    .line 221
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 222
    return-object p0

    .line 205
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 206
    sparse-switch v2, :sswitch_data_0

    .line 217
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 204
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :sswitch_0
    const-string/jumbo v2, "%0A"

    .line 208
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :sswitch_1
    const-string/jumbo v2, "%0D"

    .line 211
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :sswitch_2
    const-string/jumbo v2, "%22"

    .line 214
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 206
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0xd -> :sswitch_1
        0x22 -> :sswitch_2
    .end sparse-switch
.end method

.method private writeOrCountBytes(Lokio/BufferedSink;Z)J
    .locals 12
    .param p1    # Lokio/BufferedSink;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 128
    if-nez p2, :cond_0

    move-object v1, v0

    :goto_0
    const/4 v0, 0x0

    .line 132
    iget-object v4, p0, Lokhttp3/MultipartBody;->parts:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    move v4, v0

    :goto_1
    if-lt v4, v5, :cond_1

    .line 179
    sget-object v0, Lokhttp3/MultipartBody;->DASHDASH:[B

    invoke-interface {p1, v0}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    .line 180
    iget-object v0, p0, Lokhttp3/MultipartBody;->boundary:Lokio/ByteString;

    invoke-interface {p1, v0}, Lokio/BufferedSink;->write(Lokio/ByteString;)Lokio/BufferedSink;

    .line 181
    sget-object v0, Lokhttp3/MultipartBody;->DASHDASH:[B

    invoke-interface {p1, v0}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    .line 182
    sget-object v0, Lokhttp3/MultipartBody;->CRLF:[B

    invoke-interface {p1, v0}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    .line 184
    if-nez p2, :cond_8

    .line 189
    :goto_2
    return-wide v2

    .line 129
    :cond_0
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    move-object v1, v0

    move-object p1, v0

    goto :goto_0

    .line 133
    :cond_1
    iget-object v0, p0, Lokhttp3/MultipartBody;->parts:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/MultipartBody$Part;

    .line 134
    iget-object v6, v0, Lokhttp3/MultipartBody$Part;->headers:Lokhttp3/Headers;

    .line 135
    iget-object v7, v0, Lokhttp3/MultipartBody$Part;->body:Lokhttp3/RequestBody;

    .line 137
    sget-object v0, Lokhttp3/MultipartBody;->DASHDASH:[B

    invoke-interface {p1, v0}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    .line 138
    iget-object v0, p0, Lokhttp3/MultipartBody;->boundary:Lokio/ByteString;

    invoke-interface {p1, v0}, Lokio/BufferedSink;->write(Lokio/ByteString;)Lokio/BufferedSink;

    .line 139
    sget-object v0, Lokhttp3/MultipartBody;->CRLF:[B

    invoke-interface {p1, v0}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    .line 141
    if-nez v6, :cond_4

    .line 150
    :cond_2
    invoke-virtual {v7}, Lokhttp3/RequestBody;->contentType()Lokhttp3/MediaType;

    move-result-object v0

    .line 151
    if-nez v0, :cond_5

    .line 157
    :goto_3
    invoke-virtual {v7}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v8

    const-wide/16 v10, -0x1

    .line 158
    cmp-long v0, v8, v10

    if-eqz v0, :cond_6

    const-string/jumbo v0, "Content-Length: "

    .line 159
    invoke-interface {p1, v0}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v0

    .line 160
    invoke-interface {v0, v8, v9}, Lokio/BufferedSink;->writeDecimalLong(J)Lokio/BufferedSink;

    move-result-object v0

    sget-object v6, Lokhttp3/MultipartBody;->CRLF:[B

    .line 161
    invoke-interface {v0, v6}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    .line 168
    :cond_3
    sget-object v0, Lokhttp3/MultipartBody;->CRLF:[B

    invoke-interface {p1, v0}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    .line 170
    if-nez p2, :cond_7

    .line 173
    invoke-virtual {v7, p1}, Lokhttp3/RequestBody;->writeTo(Lokio/BufferedSink;)V

    .line 176
    :goto_4
    sget-object v0, Lokhttp3/MultipartBody;->CRLF:[B

    invoke-interface {p1, v0}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    .line 132
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    .line 142
    invoke-virtual {v6}, Lokhttp3/Headers;->size()I

    move-result v8

    :goto_5
    if-ge v0, v8, :cond_2

    .line 143
    invoke-virtual {v6, v0}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {p1, v9}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v9

    sget-object v10, Lokhttp3/MultipartBody;->COLONSPACE:[B

    .line 144
    invoke-interface {v9, v10}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    move-result-object v9

    .line 145
    invoke-virtual {v6, v0}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v9

    sget-object v10, Lokhttp3/MultipartBody;->CRLF:[B

    .line 146
    invoke-interface {v9, v10}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    .line 142
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_5
    const-string/jumbo v6, "Content-Type: "

    .line 152
    invoke-interface {p1, v6}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v6

    .line 153
    invoke-virtual {v0}, Lokhttp3/MediaType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v0

    sget-object v6, Lokhttp3/MultipartBody;->CRLF:[B

    .line 154
    invoke-interface {v0, v6}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    goto :goto_3

    .line 162
    :cond_6
    if-eqz p2, :cond_3

    .line 164
    invoke-virtual {v1}, Lokio/Buffer;->clear()V

    const-wide/16 v0, -0x1

    .line 165
    return-wide v0

    .line 171
    :cond_7
    add-long/2addr v2, v8

    goto :goto_4

    .line 185
    :cond_8
    invoke-virtual {v1}, Lokio/Buffer;->size()J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 186
    invoke-virtual {v1}, Lokio/Buffer;->clear()V

    goto/16 :goto_2
.end method


# virtual methods
.method public boundary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lokhttp3/MultipartBody;->boundary:Lokio/ByteString;

    invoke-virtual {v0}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public contentLength()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 108
    iget-wide v0, p0, Lokhttp3/MultipartBody;->contentLength:J

    const-wide/16 v2, -0x1

    .line 109
    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    return-wide v0

    :cond_0
    const/4 v0, 0x0

    .line 110
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lokhttp3/MultipartBody;->writeOrCountBytes(Lokio/BufferedSink;Z)J

    move-result-wide v0

    iput-wide v0, p0, Lokhttp3/MultipartBody;->contentLength:J

    return-wide v0
.end method

.method public contentType()Lokhttp3/MediaType;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lokhttp3/MultipartBody;->contentType:Lokhttp3/MediaType;

    return-object v0
.end method

.method public part(I)Lokhttp3/MultipartBody$Part;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lokhttp3/MultipartBody;->parts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/MultipartBody$Part;

    return-object v0
.end method

.method public parts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lokhttp3/MultipartBody$Part;",
            ">;"
        }
    .end annotation

    .prologue
    .line 95
    iget-object v0, p0, Lokhttp3/MultipartBody;->parts:Ljava/util/List;

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lokhttp3/MultipartBody;->parts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public type()Lokhttp3/MediaType;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lokhttp3/MultipartBody;->originalType:Lokhttp3/MediaType;

    return-object v0
.end method

.method public writeTo(Lokio/BufferedSink;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 114
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lokhttp3/MultipartBody;->writeOrCountBytes(Lokio/BufferedSink;Z)J

    .line 115
    return-void
.end method
