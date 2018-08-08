.class public abstract Lcom/baidu/mobstat/fo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mobstat/fo$a;,
        Lcom/baidu/mobstat/fo$b;
    }
.end annotation


# static fields
.field public static a:I

.field public static b:I

.field public static final c:[B


# instance fields
.field protected d:Lcom/baidu/mobstat/fi$b;

.field protected e:Lcom/baidu/mobstat/gb$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/16 v0, 0x3e8

    .line 50
    sput v0, Lcom/baidu/mobstat/fo;->a:I

    const/16 v0, 0x40

    .line 51
    sput v0, Lcom/baidu/mobstat/fo;->b:I

    const-string/jumbo v0, "<policy-file-request/>\u0000"

    .line 53
    invoke-static {v0}, Lcom/baidu/mobstat/gn;->a(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/baidu/mobstat/fo;->c:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object v0, p0, Lcom/baidu/mobstat/fo;->d:Lcom/baidu/mobstat/fi$b;

    .line 58
    iput-object v0, p0, Lcom/baidu/mobstat/fo;->e:Lcom/baidu/mobstat/gb$a;

    return-void
.end method

.method public static a(Ljava/nio/ByteBuffer;Lcom/baidu/mobstat/fi$b;)Lcom/baidu/mobstat/gf;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/mobstat/fu;,
            Lcom/baidu/mobstat/fr;
        }
    .end annotation

    .prologue
    const/4 v3, 0x3

    const/4 v7, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 88
    invoke-static {p0}, Lcom/baidu/mobstat/fo;->b(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    .line 89
    if-eqz v0, :cond_1

    const-string/jumbo v1, " "

    .line 92
    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 93
    array-length v0, v2

    if-ne v0, v3, :cond_2

    .line 97
    sget-object v0, Lcom/baidu/mobstat/fi$b;->a:Lcom/baidu/mobstat/fi$b;

    if-eq p1, v0, :cond_3

    .line 105
    new-instance v1, Lcom/baidu/mobstat/gg;

    invoke-direct {v1}, Lcom/baidu/mobstat/gg;-><init>()V

    .line 106
    aget-object v0, v2, v5

    invoke-interface {v1, v0}, Lcom/baidu/mobstat/ge;->a(Ljava/lang/String;)V

    .line 110
    :goto_0
    invoke-static {p0}, Lcom/baidu/mobstat/fo;->b(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    .line 111
    :goto_1
    if-nez v0, :cond_4

    .line 118
    :cond_0
    if-eqz v0, :cond_6

    .line 120
    return-object v1

    .line 90
    :cond_1
    new-instance v0, Lcom/baidu/mobstat/fr;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    add-int/lit16 v1, v1, 0x80

    invoke-direct {v0, v1}, Lcom/baidu/mobstat/fr;-><init>(I)V

    throw v0

    .line 94
    :cond_2
    new-instance v0, Lcom/baidu/mobstat/fu;

    invoke-direct {v0}, Lcom/baidu/mobstat/fu;-><init>()V

    throw v0

    .line 99
    :cond_3
    new-instance v1, Lcom/baidu/mobstat/gh;

    invoke-direct {v1}, Lcom/baidu/mobstat/gh;-><init>()V

    move-object v0, v1

    .line 100
    check-cast v0, Lcom/baidu/mobstat/gl;

    .line 101
    aget-object v3, v2, v5

    invoke-static {v3}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v3

    invoke-interface {v0, v3}, Lcom/baidu/mobstat/gl;->a(S)V

    .line 102
    aget-object v2, v2, v6

    invoke-interface {v0, v2}, Lcom/baidu/mobstat/gl;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 111
    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    const-string/jumbo v2, ":"

    .line 112
    invoke-virtual {v0, v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 113
    array-length v2, v0

    if-ne v2, v6, :cond_5

    .line 115
    aget-object v2, v0, v7

    aget-object v0, v0, v5

    const-string/jumbo v3, "^ +"

    const-string/jumbo v4, ""

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/baidu/mobstat/gf;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-static {p0}, Lcom/baidu/mobstat/fo;->b(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 114
    :cond_5
    new-instance v0, Lcom/baidu/mobstat/fu;

    const-string/jumbo v1, "not an http header"

    invoke-direct {v0, v1}, Lcom/baidu/mobstat/fu;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_6
    new-instance v0, Lcom/baidu/mobstat/fr;

    invoke-direct {v0}, Lcom/baidu/mobstat/fr;-><init>()V

    throw v0
.end method

.method public static a(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 61
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    const/16 v0, 0x30

    .line 64
    :goto_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-nez v1, :cond_0

    .line 76
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v0, 0x0

    .line 77
    return-object v0

    .line 66
    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    .line 67
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/16 v3, 0xd

    .line 68
    if-eq v0, v3, :cond_2

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    const/16 v0, 0xa

    if-ne v1, v0, :cond_1

    .line 69
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 70
    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 71
    return-object v2
.end method

.method public static b(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 81
    invoke-static {p0}, Lcom/baidu/mobstat/fo;->a(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 82
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    invoke-static {v0, v2, v1}, Lcom/baidu/mobstat/gn;->a([BII)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public a(I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/mobstat/fv;,
            Lcom/baidu/mobstat/fs;
        }
    .end annotation

    .prologue
    .line 222
    if-ltz p1, :cond_0

    .line 224
    return p1

    .line 223
    :cond_0
    new-instance v0, Lcom/baidu/mobstat/fs;

    const/16 v1, 0x3ea

    const-string/jumbo v2, "Negative count"

    invoke-direct {v0, v1, v2}, Lcom/baidu/mobstat/fs;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public abstract a(Lcom/baidu/mobstat/gd;Lcom/baidu/mobstat/gk;)Lcom/baidu/mobstat/fo$b;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/mobstat/fu;
        }
    .end annotation
.end method

.method public abstract a(Lcom/baidu/mobstat/ge;)Lcom/baidu/mobstat/ge;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/mobstat/fu;
        }
    .end annotation
.end method

.method public abstract a(Lcom/baidu/mobstat/gb;)Ljava/nio/ByteBuffer;
.end method

.method public a(Lcom/baidu/mobstat/gi;Lcom/baidu/mobstat/fi$b;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/mobstat/gi;",
            "Lcom/baidu/mobstat/fi$b;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 166
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/baidu/mobstat/fo;->a(Lcom/baidu/mobstat/gi;Lcom/baidu/mobstat/fi$b;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/baidu/mobstat/gi;Lcom/baidu/mobstat/fi$b;Z)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/mobstat/gi;",
            "Lcom/baidu/mobstat/fi$b;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 170
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v0, 0x64

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 171
    instance-of v0, p1, Lcom/baidu/mobstat/gd;

    if-nez v0, :cond_0

    .line 175
    instance-of v0, p1, Lcom/baidu/mobstat/gk;

    if-nez v0, :cond_1

    .line 178
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "unknown role"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string/jumbo v0, "GET "

    .line 172
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v0, p1

    .line 173
    check-cast v0, Lcom/baidu/mobstat/gd;

    invoke-interface {v0}, Lcom/baidu/mobstat/gd;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, " HTTP/1.1"

    .line 174
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string/jumbo v0, "\r\n"

    .line 180
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    invoke-interface {p1}, Lcom/baidu/mobstat/gi;->b()Ljava/util/Iterator;

    move-result-object v4

    .line 182
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "\r\n"

    .line 190
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mobstat/gn;->b(Ljava/lang/String;)[B

    move-result-object v3

    .line 193
    if-nez p3, :cond_3

    move-object v0, v1

    .line 194
    :goto_2
    if-eqz v0, :cond_4

    array-length v1, v0

    :goto_3
    array-length v2, v3

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 195
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 196
    if-nez v0, :cond_5

    .line 198
    :goto_4
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 199
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_1
    const-string/jumbo v0, "HTTP/1.1 101 "

    .line 176
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, p1

    check-cast v0, Lcom/baidu/mobstat/gk;

    invoke-interface {v0}, Lcom/baidu/mobstat/gk;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 183
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 184
    invoke-interface {p1, v0}, Lcom/baidu/mobstat/gi;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 185
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, ": "

    .line 186
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "\r\n"

    .line 188
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 193
    :cond_3
    invoke-interface {p1}, Lcom/baidu/mobstat/gi;->c()[B

    move-result-object v0

    goto :goto_2

    :cond_4
    move v1, v2

    .line 194
    goto :goto_3

    .line 197
    :cond_5
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_4
.end method

.method public abstract a(Ljava/nio/ByteBuffer;Z)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/mobstat/gb;",
            ">;"
        }
    .end annotation
.end method

.method public abstract a()V
.end method

.method public a(Lcom/baidu/mobstat/fi$b;)V
    .locals 0

    .prologue
    .line 228
    iput-object p1, p0, Lcom/baidu/mobstat/fo;->d:Lcom/baidu/mobstat/fi$b;

    .line 229
    return-void
.end method

.method public abstract b()Lcom/baidu/mobstat/fo$a;
.end method

.method public abstract c()Lcom/baidu/mobstat/fo;
.end method

.method public abstract c(Ljava/nio/ByteBuffer;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/mobstat/gb;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/mobstat/fs;
        }
    .end annotation
.end method

.method public d(Ljava/nio/ByteBuffer;)Lcom/baidu/mobstat/gi;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/mobstat/fu;
        }
    .end annotation

    .prologue
    .line 218
    iget-object v0, p0, Lcom/baidu/mobstat/fo;->d:Lcom/baidu/mobstat/fi$b;

    invoke-static {p1, v0}, Lcom/baidu/mobstat/fo;->a(Ljava/nio/ByteBuffer;Lcom/baidu/mobstat/fi$b;)Lcom/baidu/mobstat/gf;

    move-result-object v0

    return-object v0
.end method
