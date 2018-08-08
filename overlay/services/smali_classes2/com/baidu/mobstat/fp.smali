.class public Lcom/baidu/mobstat/fp;
.super Lcom/baidu/mobstat/fo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mobstat/fp$a;
    }
.end annotation


# static fields
.field static final synthetic f:Z


# instance fields
.field private g:Ljava/nio/ByteBuffer;

.field private final h:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const-class v1, Lcom/baidu/mobstat/fp;

    .line 21
    invoke-virtual {v1}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    sput-boolean v0, Lcom/baidu/mobstat/fp;->f:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/baidu/mobstat/fo;-><init>()V

    .line 57
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/fp;->h:Ljava/util/Random;

    return-void
.end method

.method private a(Lcom/baidu/mobstat/gb$a;)B
    .locals 3

    .prologue
    .line 151
    sget-object v0, Lcom/baidu/mobstat/gb$a;->a:Lcom/baidu/mobstat/gb$a;

    if-eq p1, v0, :cond_0

    .line 153
    sget-object v0, Lcom/baidu/mobstat/gb$a;->b:Lcom/baidu/mobstat/gb$a;

    if-eq p1, v0, :cond_1

    .line 155
    sget-object v0, Lcom/baidu/mobstat/gb$a;->c:Lcom/baidu/mobstat/gb$a;

    if-eq p1, v0, :cond_2

    .line 157
    sget-object v0, Lcom/baidu/mobstat/gb$a;->f:Lcom/baidu/mobstat/gb$a;

    if-eq p1, v0, :cond_3

    .line 159
    sget-object v0, Lcom/baidu/mobstat/gb$a;->d:Lcom/baidu/mobstat/gb$a;

    if-eq p1, v0, :cond_4

    .line 161
    sget-object v0, Lcom/baidu/mobstat/gb$a;->e:Lcom/baidu/mobstat/gb$a;

    if-eq p1, v0, :cond_5

    .line 163
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Don\'t know how to handle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/baidu/mobstat/gb$a;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 154
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 156
    :cond_2
    const/4 v0, 0x2

    return v0

    .line 158
    :cond_3
    const/16 v0, 0x8

    return v0

    .line 160
    :cond_4
    const/16 v0, 0x9

    return v0

    .line 162
    :cond_5
    const/16 v0, 0xa

    return v0
.end method

.method private a(B)Lcom/baidu/mobstat/gb$a;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/mobstat/ft;
        }
    .end annotation

    .prologue
    .line 213
    packed-switch p1, :pswitch_data_0

    .line 229
    :pswitch_0
    new-instance v0, Lcom/baidu/mobstat/ft;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknow optcode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    int-to-short v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/baidu/mobstat/ft;-><init>(Ljava/lang/String;)V

    throw v0

    .line 215
    :pswitch_1
    sget-object v0, Lcom/baidu/mobstat/gb$a;->a:Lcom/baidu/mobstat/gb$a;

    return-object v0

    .line 217
    :pswitch_2
    sget-object v0, Lcom/baidu/mobstat/gb$a;->b:Lcom/baidu/mobstat/gb$a;

    return-object v0

    .line 219
    :pswitch_3
    sget-object v0, Lcom/baidu/mobstat/gb$a;->c:Lcom/baidu/mobstat/gb$a;

    return-object v0

    .line 222
    :pswitch_4
    sget-object v0, Lcom/baidu/mobstat/gb$a;->f:Lcom/baidu/mobstat/gb$a;

    return-object v0

    .line 224
    :pswitch_5
    sget-object v0, Lcom/baidu/mobstat/gb$a;->d:Lcom/baidu/mobstat/gb$a;

    return-object v0

    .line 226
    :pswitch_6
    sget-object v0, Lcom/baidu/mobstat/gb$a;->e:Lcom/baidu/mobstat/gb$a;

    return-object v0

    .line 213
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 167
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 168
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "258EAFA5-E914-47DA-95CA-C5AB0DC85B11"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    const-string/jumbo v1, "SHA1"

    .line 171
    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 175
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mobstat/gm;->a([B)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 174
    :catch_0
    move-exception v0

    .line 173
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private a(JI)[B
    .locals 7

    .prologue
    .line 204
    new-array v1, p3, [B

    .line 205
    mul-int/lit8 v0, p3, 0x8

    add-int/lit8 v2, v0, -0x8

    const/4 v0, 0x0

    .line 206
    :goto_0
    if-lt v0, p3, :cond_0

    .line 209
    return-object v1

    .line 207
    :cond_0
    mul-int/lit8 v3, v0, 0x8

    sub-int v3, v2, v3

    ushr-long v4, p1, v3

    long-to-int v3, v4

    int-to-byte v3, v3

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    .line 206
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/baidu/mobstat/gd;Lcom/baidu/mobstat/gk;)Lcom/baidu/mobstat/fo$b;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/mobstat/fu;
        }
    .end annotation

    .prologue
    const-string/jumbo v0, "Sec-WebSocket-Key"

    .line 61
    invoke-interface {p1, v0}, Lcom/baidu/mobstat/gd;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 62
    :cond_0
    sget-object v0, Lcom/baidu/mobstat/fo$b;->b:Lcom/baidu/mobstat/fo$b;

    return-object v0

    :cond_1
    const-string/jumbo v0, "Sec-WebSocket-Accept"

    .line 61
    invoke-interface {p2, v0}, Lcom/baidu/mobstat/gk;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "Sec-WebSocket-Accept"

    .line 64
    invoke-interface {p2, v0}, Lcom/baidu/mobstat/gk;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Sec-WebSocket-Key"

    .line 65
    invoke-interface {p1, v1}, Lcom/baidu/mobstat/gd;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 66
    invoke-direct {p0, v1}, Lcom/baidu/mobstat/fp;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 68
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 70
    sget-object v0, Lcom/baidu/mobstat/fo$b;->b:Lcom/baidu/mobstat/fo$b;

    return-object v0

    .line 69
    :cond_2
    sget-object v0, Lcom/baidu/mobstat/fo$b;->a:Lcom/baidu/mobstat/fo$b;

    return-object v0
.end method

.method public a(Lcom/baidu/mobstat/ge;)Lcom/baidu/mobstat/ge;
    .locals 2

    .prologue
    const-string/jumbo v0, "Upgrade"

    const-string/jumbo v1, "websocket"

    .line 180
    invoke-interface {p1, v0, v1}, Lcom/baidu/mobstat/ge;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "Connection"

    const-string/jumbo v1, "Upgrade"

    .line 181
    invoke-interface {p1, v0, v1}, Lcom/baidu/mobstat/ge;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "Sec-WebSocket-Version"

    const-string/jumbo v1, "8"

    .line 182
    invoke-interface {p1, v0, v1}, Lcom/baidu/mobstat/ge;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x10

    .line 184
    new-array v0, v0, [B

    .line 185
    iget-object v1, p0, Lcom/baidu/mobstat/fp;->h:Ljava/util/Random;

    invoke-virtual {v1, v0}, Ljava/util/Random;->nextBytes([B)V

    const-string/jumbo v1, "Sec-WebSocket-Key"

    .line 186
    invoke-static {v0}, Lcom/baidu/mobstat/gm;->a([B)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lcom/baidu/mobstat/ge;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    return-object p1
.end method

.method public a(Lcom/baidu/mobstat/gb;)Ljava/nio/ByteBuffer;
    .locals 12

    .prologue
    const/4 v6, 0x4

    const/4 v4, 0x2

    const/16 v7, -0x80

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 84
    invoke-interface {p1}, Lcom/baidu/mobstat/gb;->c()Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 85
    iget-object v0, p0, Lcom/baidu/mobstat/fp;->d:Lcom/baidu/mobstat/fi$b;

    sget-object v3, Lcom/baidu/mobstat/fi$b;->a:Lcom/baidu/mobstat/fi$b;

    if-eq v0, v3, :cond_1

    move v0, v1

    .line 86
    :goto_0
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    const/16 v5, 0x7d

    if-le v3, v5, :cond_2

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    const v5, 0xffff

    if-le v3, v5, :cond_3

    const/16 v3, 0x8

    .line 87
    :goto_1
    if-gt v3, v2, :cond_4

    move v5, v3

    :goto_2
    add-int/lit8 v9, v5, 0x1

    if-nez v0, :cond_5

    move v5, v1

    :goto_3
    add-int/2addr v5, v9

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v9

    add-int/2addr v5, v9

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v9

    .line 88
    invoke-interface {p1}, Lcom/baidu/mobstat/gb;->f()Lcom/baidu/mobstat/gb$a;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/baidu/mobstat/fp;->a(Lcom/baidu/mobstat/gb$a;)B

    move-result v10

    .line 89
    invoke-interface {p1}, Lcom/baidu/mobstat/gb;->d()Z

    move-result v5

    if-nez v5, :cond_6

    move v5, v1

    :goto_4
    int-to-byte v5, v5

    .line 90
    or-int/2addr v5, v10

    int-to-byte v5, v5

    .line 91
    invoke-virtual {v9, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 92
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    int-to-long v10, v5

    invoke-direct {p0, v10, v11, v3}, Lcom/baidu/mobstat/fp;->a(JI)[B

    move-result-object v5

    .line 93
    sget-boolean v10, Lcom/baidu/mobstat/fp;->f:Z

    if-eqz v10, :cond_7

    .line 95
    :cond_0
    if-eq v3, v2, :cond_8

    .line 97
    if-eq v3, v4, :cond_c

    const/16 v2, 0x8

    .line 100
    if-eq v3, v2, :cond_e

    .line 104
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Size representation not supported/specified"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move v0, v2

    .line 85
    goto :goto_0

    :cond_2
    move v3, v2

    .line 86
    goto :goto_1

    :cond_3
    move v3, v4

    goto :goto_1

    .line 87
    :cond_4
    add-int/lit8 v5, v3, 0x1

    goto :goto_2

    :cond_5
    move v5, v6

    goto :goto_3

    :cond_6
    move v5, v7

    .line 89
    goto :goto_4

    .line 93
    :cond_7
    array-length v10, v5

    if-eq v10, v3, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 96
    :cond_8
    aget-byte v2, v5, v1

    if-nez v0, :cond_9

    move v7, v1

    :cond_9
    or-int/2addr v2, v7

    int-to-byte v2, v2

    invoke-virtual {v9, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 106
    :goto_5
    if-nez v0, :cond_10

    .line 114
    invoke-virtual {v9, v8}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 116
    :cond_a
    sget-boolean v0, Lcom/baidu/mobstat/fp;->f:Z

    if-eqz v0, :cond_11

    .line 117
    :cond_b
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 119
    return-object v9

    .line 98
    :cond_c
    if-nez v0, :cond_d

    move v7, v1

    :cond_d
    or-int/lit8 v2, v7, 0x7e

    int-to-byte v2, v2

    invoke-virtual {v9, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 99
    invoke-virtual {v9, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_5

    .line 101
    :cond_e
    if-nez v0, :cond_f

    move v7, v1

    :cond_f
    or-int/lit8 v2, v7, 0x7f

    int-to-byte v2, v2

    invoke-virtual {v9, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 102
    invoke-virtual {v9, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_5

    .line 107
    :cond_10
    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 108
    iget-object v2, p0, Lcom/baidu/mobstat/fp;->h:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 109
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 110
    :goto_6
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 111
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    rem-int/lit8 v3, v1, 0x4

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    invoke-virtual {v9, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 110
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 116
    :cond_11
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-eqz v0, :cond_b

    new-instance v0, Ljava/lang/AssertionError;

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(I)V

    throw v0
.end method

.method public a(Ljava/nio/ByteBuffer;Z)Ljava/util/List;
    .locals 2
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

    .prologue
    .line 124
    new-instance v0, Lcom/baidu/mobstat/gc;

    invoke-direct {v0}, Lcom/baidu/mobstat/gc;-><init>()V

    .line 126
    :try_start_0
    invoke-interface {v0, p1}, Lcom/baidu/mobstat/ga;->a(Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catch Lcom/baidu/mobstat/fs; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/baidu/mobstat/ga;->a(Z)V

    .line 131
    sget-object v1, Lcom/baidu/mobstat/gb$a;->c:Lcom/baidu/mobstat/gb$a;

    invoke-interface {v0, v1}, Lcom/baidu/mobstat/ga;->a(Lcom/baidu/mobstat/gb$a;)V

    .line 132
    invoke-interface {v0, p2}, Lcom/baidu/mobstat/ga;->b(Z)V

    .line 133
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 129
    :catch_0
    move-exception v0

    .line 128
    new-instance v1, Lcom/baidu/mobstat/fw;

    invoke-direct {v1, v0}, Lcom/baidu/mobstat/fw;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public a()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 378
    iput-object v0, p0, Lcom/baidu/mobstat/fp;->g:Ljava/nio/ByteBuffer;

    .line 379
    return-void
.end method

.method public b()Lcom/baidu/mobstat/fo$a;
    .locals 1

    .prologue
    .line 388
    sget-object v0, Lcom/baidu/mobstat/fo$a;->c:Lcom/baidu/mobstat/fo$a;

    return-object v0
.end method

.method public c()Lcom/baidu/mobstat/fo;
    .locals 1

    .prologue
    .line 383
    new-instance v0, Lcom/baidu/mobstat/fp;

    invoke-direct {v0}, Lcom/baidu/mobstat/fp;-><init>()V

    return-object v0
.end method

.method public c(Ljava/nio/ByteBuffer;)Ljava/util/List;
    .locals 5
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
            Lcom/baidu/mobstat/fv;,
            Lcom/baidu/mobstat/fs;
        }
    .end annotation

    .prologue
    .line 236
    :goto_0
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 239
    iget-object v0, p0, Lcom/baidu/mobstat/fp;->g:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    .line 270
    :goto_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_4

    .line 284
    :goto_2
    return-object v1

    .line 242
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 243
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 244
    iget-object v2, p0, Lcom/baidu/mobstat/fp;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    .line 246
    if-gt v2, v0, :cond_2

    .line 252
    iget-object v0, p0, Lcom/baidu/mobstat/fp;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    invoke-virtual {v0, v3, v4, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 253
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 255
    iget-object v0, p0, Lcom/baidu/mobstat/fp;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v0}, Lcom/baidu/mobstat/fp;->e(Ljava/nio/ByteBuffer;)Lcom/baidu/mobstat/gb;

    move-result-object v0

    .line 256
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 257
    iput-object v0, p0, Lcom/baidu/mobstat/fp;->g:Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Lcom/baidu/mobstat/fp$a; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 267
    :catch_0
    move-exception v0

    .line 260
    iget-object v1, p0, Lcom/baidu/mobstat/fp;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    .line 261
    invoke-virtual {v0}, Lcom/baidu/mobstat/fp$a;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/mobstat/fp;->a(I)I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 262
    sget-boolean v1, Lcom/baidu/mobstat/fp;->f:Z

    if-eqz v1, :cond_3

    .line 263
    :cond_1
    iget-object v1, p0, Lcom/baidu/mobstat/fp;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 264
    iget-object v1, p0, Lcom/baidu/mobstat/fp;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 265
    iput-object v0, p0, Lcom/baidu/mobstat/fp;->g:Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 248
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/baidu/mobstat/fp;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual {v1, v2, v3, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 249
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 250
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
    :try_end_1
    .catch Lcom/baidu/mobstat/fp$a; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    return-object v0

    .line 262
    :cond_3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    iget-object v2, p0, Lcom/baidu/mobstat/fp;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    if-gt v1, v2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 271
    :cond_4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 273
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/baidu/mobstat/fp;->e(Ljava/nio/ByteBuffer;)Lcom/baidu/mobstat/gb;

    move-result-object v0

    .line 274
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lcom/baidu/mobstat/fp$a; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 282
    :catch_1
    move-exception v0

    .line 277
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    .line 278
    invoke-virtual {v0}, Lcom/baidu/mobstat/fp$a;->a()I

    move-result v0

    .line 279
    invoke-virtual {p0, v0}, Lcom/baidu/mobstat/fp;->a(I)I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/fp;->g:Ljava/nio/ByteBuffer;

    .line 280
    iget-object v0, p0, Lcom/baidu/mobstat/fp;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    goto/16 :goto_2
.end method

.method public e(Ljava/nio/ByteBuffer;)Lcom/baidu/mobstat/gb;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/mobstat/fp$a;,
            Lcom/baidu/mobstat/fs;
        }
    .end annotation

    .prologue
    const/16 v11, 0x8

    const/4 v4, 0x4

    const/4 v6, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 289
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    .line 291
    if-lt v7, v6, :cond_2

    .line 293
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v8

    .line 294
    shr-int/lit8 v0, v8, 0x8

    if-nez v0, :cond_3

    move v0, v1

    .line 295
    :goto_0
    and-int/lit8 v3, v8, 0x7f

    shr-int/lit8 v3, v3, 0x4

    int-to-byte v3, v3

    .line 296
    if-nez v3, :cond_4

    .line 298
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    .line 299
    and-int/lit8 v3, v5, -0x80

    if-nez v3, :cond_5

    move v3, v1

    .line 300
    :goto_1
    and-int/lit8 v5, v5, 0x7f

    int-to-byte v5, v5

    .line 301
    and-int/lit8 v8, v8, 0xf

    int-to-byte v8, v8

    invoke-direct {p0, v8}, Lcom/baidu/mobstat/fp;->a(B)Lcom/baidu/mobstat/gb$a;

    move-result-object v8

    .line 303
    if-eqz v0, :cond_6

    .line 309
    :goto_2
    if-gez v5, :cond_9

    .line 310
    :cond_0
    sget-object v9, Lcom/baidu/mobstat/gb$a;->d:Lcom/baidu/mobstat/gb$a;

    if-ne v8, v9, :cond_c

    .line 311
    :cond_1
    new-instance v0, Lcom/baidu/mobstat/ft;

    const-string/jumbo v1, "more than 125 octets"

    invoke-direct {v0, v1}, Lcom/baidu/mobstat/ft;-><init>(Ljava/lang/String;)V

    throw v0

    .line 292
    :cond_2
    new-instance v0, Lcom/baidu/mobstat/fp$a;

    invoke-direct {v0, p0, v6}, Lcom/baidu/mobstat/fp$a;-><init>(Lcom/baidu/mobstat/fp;I)V

    throw v0

    :cond_3
    move v0, v2

    .line 294
    goto :goto_0

    .line 297
    :cond_4
    new-instance v0, Lcom/baidu/mobstat/ft;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "bad rsv "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/baidu/mobstat/ft;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    move v3, v2

    .line 299
    goto :goto_1

    .line 304
    :cond_6
    sget-object v9, Lcom/baidu/mobstat/gb$a;->d:Lcom/baidu/mobstat/gb$a;

    if-ne v8, v9, :cond_8

    .line 305
    :cond_7
    new-instance v0, Lcom/baidu/mobstat/ft;

    const-string/jumbo v1, "control frames may no be fragmented"

    invoke-direct {v0, v1}, Lcom/baidu/mobstat/ft;-><init>(Ljava/lang/String;)V

    throw v0

    .line 304
    :cond_8
    sget-object v9, Lcom/baidu/mobstat/gb$a;->e:Lcom/baidu/mobstat/gb$a;

    if-eq v8, v9, :cond_7

    sget-object v9, Lcom/baidu/mobstat/gb$a;->f:Lcom/baidu/mobstat/gb$a;

    if-eq v8, v9, :cond_7

    goto :goto_2

    :cond_9
    const/16 v9, 0x7d

    .line 309
    if-gt v5, v9, :cond_0

    .line 339
    :goto_3
    if-nez v3, :cond_13

    move v2, v1

    :goto_4
    add-int/2addr v2, v6

    .line 341
    add-int/2addr v2, v5

    .line 343
    if-lt v7, v2, :cond_14

    .line 346
    invoke-virtual {p0, v5}, Lcom/baidu/mobstat/fp;->a(I)I

    move-result v2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 347
    if-nez v3, :cond_15

    .line 354
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    invoke-virtual {v2, v1, v3, v4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 355
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    add-int/2addr v1, v3

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 359
    :cond_a
    sget-object v1, Lcom/baidu/mobstat/gb$a;->f:Lcom/baidu/mobstat/gb$a;

    if-eq v8, v1, :cond_16

    .line 362
    new-instance v1, Lcom/baidu/mobstat/gc;

    invoke-direct {v1}, Lcom/baidu/mobstat/gc;-><init>()V

    .line 363
    invoke-interface {v1, v0}, Lcom/baidu/mobstat/ga;->a(Z)V

    .line 364
    invoke-interface {v1, v8}, Lcom/baidu/mobstat/ga;->a(Lcom/baidu/mobstat/gb$a;)V

    move-object v0, v1

    .line 366
    :goto_5
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 367
    invoke-interface {v0, v2}, Lcom/baidu/mobstat/ga;->a(Ljava/nio/ByteBuffer;)V

    .line 368
    sget-object v1, Lcom/baidu/mobstat/gb$a;->b:Lcom/baidu/mobstat/gb$a;

    if-eq v8, v1, :cond_17

    .line 373
    :cond_b
    return-object v0

    .line 310
    :cond_c
    sget-object v9, Lcom/baidu/mobstat/gb$a;->e:Lcom/baidu/mobstat/gb$a;

    if-eq v8, v9, :cond_1

    sget-object v9, Lcom/baidu/mobstat/gb$a;->f:Lcom/baidu/mobstat/gb$a;

    if-eq v8, v9, :cond_1

    const/16 v9, 0x7e

    .line 313
    if-eq v5, v9, :cond_d

    .line 322
    const/16 v5, 0xa

    .line 323
    if-lt v7, v5, :cond_f

    .line 325
    new-array v9, v11, [B

    move v6, v1

    .line 326
    :goto_6
    if-lt v6, v11, :cond_10

    .line 329
    new-instance v6, Ljava/math/BigInteger;

    invoke-direct {v6, v9}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v6}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v10

    const-wide/32 v12, 0x7fffffff

    .line 330
    cmp-long v6, v10, v12

    if-gtz v6, :cond_11

    :goto_7
    if-nez v2, :cond_12

    .line 331
    new-instance v0, Lcom/baidu/mobstat/fv;

    const-string/jumbo v1, "Payloadsize is to big..."

    invoke-direct {v0, v1}, Lcom/baidu/mobstat/fv;-><init>(Ljava/lang/String;)V

    throw v0

    .line 315
    :cond_d
    if-lt v7, v4, :cond_e

    const/4 v5, 0x3

    .line 317
    new-array v5, v5, [B

    .line 318
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v9

    int-to-byte v9, v9

    aput-byte v9, v5, v2

    .line 319
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v5, v6

    .line 320
    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v5}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    move v5, v2

    move v6, v4

    .line 321
    goto/16 :goto_3

    .line 316
    :cond_e
    new-instance v0, Lcom/baidu/mobstat/fp$a;

    invoke-direct {v0, p0, v4}, Lcom/baidu/mobstat/fp$a;-><init>(Lcom/baidu/mobstat/fp;I)V

    throw v0

    .line 324
    :cond_f
    new-instance v0, Lcom/baidu/mobstat/fp$a;

    invoke-direct {v0, p0, v5}, Lcom/baidu/mobstat/fp$a;-><init>(Lcom/baidu/mobstat/fp;I)V

    throw v0

    .line 327
    :cond_10
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v10

    int-to-byte v10, v10

    aput-byte v10, v9, v6

    .line 326
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_11
    move v2, v1

    .line 330
    goto :goto_7

    .line 333
    :cond_12
    long-to-int v2, v10

    move v6, v5

    move v5, v2

    goto/16 :goto_3

    :cond_13
    move v2, v4

    .line 339
    goto/16 :goto_4

    .line 344
    :cond_14
    new-instance v0, Lcom/baidu/mobstat/fp$a;

    invoke-direct {v0, p0, v2}, Lcom/baidu/mobstat/fp$a;-><init>(Lcom/baidu/mobstat/fp;I)V

    throw v0

    .line 348
    :cond_15
    new-array v3, v4, [B

    .line 349
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 350
    :goto_8
    if-ge v1, v5, :cond_a

    .line 351
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    rem-int/lit8 v6, v1, 0x4

    aget-byte v6, v3, v6

    xor-int/2addr v4, v6

    int-to-byte v4, v4

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 350
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 360
    :cond_16
    new-instance v0, Lcom/baidu/mobstat/fz;

    invoke-direct {v0}, Lcom/baidu/mobstat/fz;-><init>()V

    goto/16 :goto_5

    .line 369
    :cond_17
    invoke-interface {v0}, Lcom/baidu/mobstat/ga;->c()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/mobstat/gn;->b(Ljava/nio/ByteBuffer;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 370
    new-instance v0, Lcom/baidu/mobstat/fs;

    const/16 v1, 0x3ef

    invoke-direct {v0, v1}, Lcom/baidu/mobstat/fs;-><init>(I)V

    throw v0
.end method
