.class public abstract Lcom/baidu/mobstat/fm;
.super Lcom/baidu/mobstat/fj;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/mobstat/fi;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mobstat/fm$a;
    }
.end annotation


# static fields
.field static final synthetic c:Z


# instance fields
.field private a:Lcom/baidu/mobstat/fk;

.field protected b:Ljava/net/URI;

.field private d:Ljava/net/Socket;

.field private e:Ljava/io/InputStream;

.field private f:Ljava/io/OutputStream;

.field private g:Ljava/net/Proxy;

.field private h:Ljava/lang/Thread;

.field private i:Lcom/baidu/mobstat/fo;

.field private j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/concurrent/CountDownLatch;

.field private l:Ljava/util/concurrent/CountDownLatch;

.field private m:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const-class v1, Lcom/baidu/mobstat/fm;

    .line 32
    invoke-virtual {v1}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    sput-boolean v0, Lcom/baidu/mobstat/fm;->c:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>(Ljava/net/URI;Lcom/baidu/mobstat/fo;Ljava/util/Map;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Lcom/baidu/mobstat/fo;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 92
    invoke-direct {p0}, Lcom/baidu/mobstat/fj;-><init>()V

    .line 37
    iput-object v0, p0, Lcom/baidu/mobstat/fm;->b:Ljava/net/URI;

    .line 39
    iput-object v0, p0, Lcom/baidu/mobstat/fm;->a:Lcom/baidu/mobstat/fk;

    .line 41
    iput-object v0, p0, Lcom/baidu/mobstat/fm;->d:Ljava/net/Socket;

    .line 47
    sget-object v0, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    iput-object v0, p0, Lcom/baidu/mobstat/fm;->g:Ljava/net/Proxy;

    .line 55
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/baidu/mobstat/fm;->k:Ljava/util/concurrent/CountDownLatch;

    .line 57
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/baidu/mobstat/fm;->l:Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x0

    .line 59
    iput v0, p0, Lcom/baidu/mobstat/fm;->m:I

    .line 93
    if-eqz p1, :cond_0

    .line 95
    if-eqz p2, :cond_1

    .line 98
    iput-object p1, p0, Lcom/baidu/mobstat/fm;->b:Ljava/net/URI;

    .line 99
    iput-object p2, p0, Lcom/baidu/mobstat/fm;->i:Lcom/baidu/mobstat/fo;

    .line 100
    iput-object p3, p0, Lcom/baidu/mobstat/fm;->j:Ljava/util/Map;

    .line 101
    iput p4, p0, Lcom/baidu/mobstat/fm;->m:I

    .line 102
    new-instance v0, Lcom/baidu/mobstat/fk;

    invoke-direct {v0, p0, p2}, Lcom/baidu/mobstat/fk;-><init>(Lcom/baidu/mobstat/fl;Lcom/baidu/mobstat/fo;)V

    iput-object v0, p0, Lcom/baidu/mobstat/fm;->a:Lcom/baidu/mobstat/fk;

    .line 103
    return-void

    .line 94
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 96
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "null as draft is permitted for `WebSocketServer` only!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic a(Lcom/baidu/mobstat/fm;)Lcom/baidu/mobstat/fk;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/baidu/mobstat/fm;->a:Lcom/baidu/mobstat/fk;

    return-object v0
.end method

.method static synthetic b(Lcom/baidu/mobstat/fm;)Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/baidu/mobstat/fm;->f:Ljava/io/OutputStream;

    return-object v0
.end method

.method private h()I
    .locals 4

    .prologue
    .line 229
    iget-object v0, p0, Lcom/baidu/mobstat/fm;->b:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getPort()I

    move-result v0

    const/4 v1, -0x1

    .line 230
    if-eq v0, v1, :cond_0

    .line 240
    return v0

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/baidu/mobstat/fm;->b:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "wss"

    .line 232
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "ws"

    .line 234
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 237
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unknown scheme: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    const/16 v0, 0x1bb

    .line 233
    return v0

    :cond_2
    const/16 v0, 0x50

    .line 235
    return v0
.end method

.method private i()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/mobstat/fu;
        }
    .end annotation

    .prologue
    .line 245
    iget-object v0, p0, Lcom/baidu/mobstat/fm;->b:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getRawPath()Ljava/lang/String;

    move-result-object v0

    .line 246
    iget-object v1, p0, Lcom/baidu/mobstat/fm;->b:Ljava/net/URI;

    invoke-virtual {v1}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    move-result-object v1

    .line 247
    if-nez v0, :cond_2

    :cond_0
    const-string/jumbo v0, "/"

    .line 251
    :goto_0
    if-nez v1, :cond_3

    .line 253
    :goto_1
    invoke-direct {p0}, Lcom/baidu/mobstat/fm;->h()I

    move-result v1

    .line 254
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/baidu/mobstat/fm;->b:Ljava/net/URI;

    invoke-virtual {v3}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x50

    if-ne v1, v3, :cond_4

    const-string/jumbo v1, ""

    :goto_2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 256
    new-instance v2, Lcom/baidu/mobstat/gg;

    invoke-direct {v2}, Lcom/baidu/mobstat/gg;-><init>()V

    .line 257
    invoke-virtual {v2, v0}, Lcom/baidu/mobstat/gg;->a(Ljava/lang/String;)V

    const-string/jumbo v0, "Host"

    .line 258
    invoke-virtual {v2, v0, v1}, Lcom/baidu/mobstat/gg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    iget-object v0, p0, Lcom/baidu/mobstat/fm;->j:Ljava/util/Map;

    if-nez v0, :cond_5

    .line 264
    :cond_1
    iget-object v0, p0, Lcom/baidu/mobstat/fm;->a:Lcom/baidu/mobstat/fk;

    invoke-virtual {v0, v2}, Lcom/baidu/mobstat/fk;->a(Lcom/baidu/mobstat/ge;)V

    .line 265
    return-void

    .line 247
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 252
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 254
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 260
    :cond_5
    iget-object v0, p0, Lcom/baidu/mobstat/fm;->j:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 261
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Lcom/baidu/mobstat/gg;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method


# virtual methods
.method public a()Ljava/net/InetSocketAddress;
    .locals 1

    .prologue
    .line 491
    iget-object v0, p0, Lcom/baidu/mobstat/fm;->a:Lcom/baidu/mobstat/fk;

    invoke-virtual {v0}, Lcom/baidu/mobstat/fk;->a()Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public a(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 349
    return-void
.end method

.method public abstract a(ILjava/lang/String;Z)V
.end method

.method public a(Lcom/baidu/mobstat/fi;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 334
    invoke-virtual {p0, p2, p3}, Lcom/baidu/mobstat/fm;->a(ILjava/lang/String;)V

    .line 335
    return-void
.end method

.method public final a(Lcom/baidu/mobstat/fi;ILjava/lang/String;Z)V
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/baidu/mobstat/fm;->h:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 309
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/baidu/mobstat/fm;->d:Ljava/net/Socket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_1

    .line 314
    :goto_1
    invoke-virtual {p0, p2, p3, p4}, Lcom/baidu/mobstat/fm;->a(ILjava/lang/String;Z)V

    .line 315
    iget-object v0, p0, Lcom/baidu/mobstat/fm;->k:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 316
    iget-object v0, p0, Lcom/baidu/mobstat/fm;->l:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 317
    return-void

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/baidu/mobstat/fm;->h:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 310
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/baidu/mobstat/fm;->d:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 313
    :catch_0
    move-exception v0

    .line 312
    invoke-virtual {p0, p0, v0}, Lcom/baidu/mobstat/fm;->a(Lcom/baidu/mobstat/fi;Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public a(Lcom/baidu/mobstat/fi;Lcom/baidu/mobstat/gb;)V
    .locals 0

    .prologue
    .line 289
    invoke-virtual {p0, p2}, Lcom/baidu/mobstat/fm;->b(Lcom/baidu/mobstat/gb;)V

    .line 290
    return-void
.end method

.method public final a(Lcom/baidu/mobstat/fi;Lcom/baidu/mobstat/gi;)V
    .locals 1

    .prologue
    .line 297
    check-cast p2, Lcom/baidu/mobstat/gk;

    invoke-virtual {p0, p2}, Lcom/baidu/mobstat/fm;->a(Lcom/baidu/mobstat/gk;)V

    .line 298
    iget-object v0, p0, Lcom/baidu/mobstat/fm;->k:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 299
    return-void
.end method

.method public final a(Lcom/baidu/mobstat/fi;Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 324
    invoke-virtual {p0, p2}, Lcom/baidu/mobstat/fm;->a(Ljava/lang/Exception;)V

    .line 325
    return-void
.end method

.method public final a(Lcom/baidu/mobstat/fi;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 279
    invoke-virtual {p0, p2}, Lcom/baidu/mobstat/fm;->a(Ljava/lang/String;)V

    .line 280
    return-void
.end method

.method public final a(Lcom/baidu/mobstat/fi;Ljava/nio/ByteBuffer;)V
    .locals 0

    .prologue
    .line 284
    invoke-virtual {p0, p2}, Lcom/baidu/mobstat/fm;->a(Ljava/nio/ByteBuffer;)V

    .line 285
    return-void
.end method

.method public a(Lcom/baidu/mobstat/gb;)V
    .locals 1

    .prologue
    .line 486
    iget-object v0, p0, Lcom/baidu/mobstat/fm;->a:Lcom/baidu/mobstat/fk;

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/fk;->a(Lcom/baidu/mobstat/gb;)V

    .line 487
    return-void
.end method

.method public abstract a(Lcom/baidu/mobstat/gk;)V
.end method

.method public abstract a(Ljava/lang/Exception;)V
.end method

.method public abstract a(Ljava/lang/String;)V
.end method

.method public a(Ljava/net/Socket;)V
    .locals 2

    .prologue
    .line 423
    iget-object v0, p0, Lcom/baidu/mobstat/fm;->d:Ljava/net/Socket;

    if-nez v0, :cond_0

    .line 426
    iput-object p1, p0, Lcom/baidu/mobstat/fm;->d:Ljava/net/Socket;

    .line 427
    return-void

    .line 424
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "socket has already been set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Ljava/nio/ByteBuffer;)V
    .locals 0

    .prologue
    .line 388
    return-void
.end method

.method public a([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/channels/NotYetConnectedException;
        }
    .end annotation

    .prologue
    .line 186
    iget-object v0, p0, Lcom/baidu/mobstat/fm;->a:Lcom/baidu/mobstat/fk;

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/fk;->a([B)V

    .line 187
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/baidu/mobstat/fm;->h:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 136
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/baidu/mobstat/fm;->h:Ljava/lang/Thread;

    .line 137
    iget-object v0, p0, Lcom/baidu/mobstat/fm;->h:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 138
    return-void

    .line 135
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "WebSocketClient objects are not reuseable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(ILjava/lang/String;Z)V
    .locals 0

    .prologue
    .line 358
    return-void
.end method

.method public final b(Lcom/baidu/mobstat/fi;)V
    .locals 0

    .prologue
    .line 330
    return-void
.end method

.method public b(Lcom/baidu/mobstat/fi;ILjava/lang/String;Z)V
    .locals 0

    .prologue
    .line 339
    invoke-virtual {p0, p2, p3, p4}, Lcom/baidu/mobstat/fm;->b(ILjava/lang/String;Z)V

    .line 340
    return-void
.end method

.method public b(Lcom/baidu/mobstat/gb;)V
    .locals 0

    .prologue
    .line 390
    return-void
.end method

.method public c(Lcom/baidu/mobstat/fi;)Ljava/net/InetSocketAddress;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 370
    iget-object v0, p0, Lcom/baidu/mobstat/fm;->d:Ljava/net/Socket;

    if-nez v0, :cond_0

    .line 372
    return-object v1

    .line 371
    :cond_0
    iget-object v0, p0, Lcom/baidu/mobstat/fm;->d:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public c()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/baidu/mobstat/fm;->b()V

    .line 147
    iget-object v0, p0, Lcom/baidu/mobstat/fm;->k:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 148
    iget-object v0, p0, Lcom/baidu/mobstat/fm;->a:Lcom/baidu/mobstat/fk;

    invoke-virtual {v0}, Lcom/baidu/mobstat/fk;->c()Z

    move-result v0

    return v0
.end method

.method public d()V
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/baidu/mobstat/fm;->h:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 159
    :goto_0
    return-void

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/baidu/mobstat/fm;->a:Lcom/baidu/mobstat/fk;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/fk;->a(I)V

    goto :goto_0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Lcom/baidu/mobstat/fm;->a:Lcom/baidu/mobstat/fk;

    invoke-virtual {v0}, Lcom/baidu/mobstat/fk;->e()Z

    move-result v0

    return v0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 446
    iget-object v0, p0, Lcom/baidu/mobstat/fm;->a:Lcom/baidu/mobstat/fk;

    invoke-virtual {v0}, Lcom/baidu/mobstat/fk;->f()Z

    move-result v0

    return v0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 451
    iget-object v0, p0, Lcom/baidu/mobstat/fm;->a:Lcom/baidu/mobstat/fk;

    invoke-virtual {v0}, Lcom/baidu/mobstat/fk;->d()Z

    move-result v0

    return v0
.end method

.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 191
    :try_start_0
    iget-object v0, p0, Lcom/baidu/mobstat/fm;->d:Ljava/net/Socket;

    if-eqz v0, :cond_2

    .line 193
    iget-object v0, p0, Lcom/baidu/mobstat/fm;->d:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_3

    .line 196
    :goto_0
    iget-object v0, p0, Lcom/baidu/mobstat/fm;->d:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isBound()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 198
    :goto_1
    iget-object v0, p0, Lcom/baidu/mobstat/fm;->d:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/fm;->e:Ljava/io/InputStream;

    .line 199
    iget-object v0, p0, Lcom/baidu/mobstat/fm;->d:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/fm;->f:Ljava/io/OutputStream;

    .line 201
    invoke-direct {p0}, Lcom/baidu/mobstat/fm;->i()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/baidu/mobstat/fm$a;

    invoke-direct {v1, p0, v5}, Lcom/baidu/mobstat/fm$a;-><init>(Lcom/baidu/mobstat/fm;Lcom/baidu/mobstat/fn;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/baidu/mobstat/fm;->h:Ljava/lang/Thread;

    .line 209
    iget-object v0, p0, Lcom/baidu/mobstat/fm;->h:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 211
    sget v0, Lcom/baidu/mobstat/fk;->b:I

    new-array v0, v0, [B

    .line 215
    :goto_2
    :try_start_1
    invoke-virtual {p0}, Lcom/baidu/mobstat/fm;->g()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/baidu/mobstat/fm;->a:Lcom/baidu/mobstat/fk;

    invoke-virtual {v0}, Lcom/baidu/mobstat/fk;->b()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    .line 226
    :goto_3
    sget-boolean v0, Lcom/baidu/mobstat/fm;->c:Z

    if-eqz v0, :cond_6

    .line 227
    :cond_1
    return-void

    .line 192
    :cond_2
    :try_start_2
    new-instance v0, Ljava/net/Socket;

    iget-object v1, p0, Lcom/baidu/mobstat/fm;->g:Ljava/net/Proxy;

    invoke-direct {v0, v1}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    iput-object v0, p0, Lcom/baidu/mobstat/fm;->d:Ljava/net/Socket;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 206
    :catch_0
    move-exception v0

    .line 203
    iget-object v1, p0, Lcom/baidu/mobstat/fm;->a:Lcom/baidu/mobstat/fk;

    invoke-virtual {p0, v1, v0}, Lcom/baidu/mobstat/fm;->a(Lcom/baidu/mobstat/fi;Ljava/lang/Exception;)V

    .line 204
    iget-object v1, p0, Lcom/baidu/mobstat/fm;->a:Lcom/baidu/mobstat/fk;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Lcom/baidu/mobstat/fk;->b(ILjava/lang/String;)V

    .line 205
    return-void

    .line 194
    :cond_3
    :try_start_3
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 197
    :cond_4
    iget-object v0, p0, Lcom/baidu/mobstat/fm;->d:Ljava/net/Socket;

    new-instance v1, Ljava/net/InetSocketAddress;

    iget-object v2, p0, Lcom/baidu/mobstat/fm;->b:Ljava/net/URI;

    invoke-virtual {v2}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/baidu/mobstat/fm;->h()I

    move-result v3

    invoke-direct {v1, v2, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    iget v2, p0, Lcom/baidu/mobstat/fm;->m:I

    invoke-virtual {v0, v1, v2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 215
    :cond_5
    :try_start_4
    invoke-virtual {p0}, Lcom/baidu/mobstat/fm;->f()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/baidu/mobstat/fm;->e:Ljava/io/InputStream;

    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-eq v1, v4, :cond_0

    .line 216
    iget-object v2, p0, Lcom/baidu/mobstat/fm;->a:Lcom/baidu/mobstat/fk;

    const/4 v3, 0x0

    invoke-static {v0, v3, v1}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/baidu/mobstat/fk;->a(Ljava/nio/ByteBuffer;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    .line 225
    :catch_1
    move-exception v0

    .line 220
    iget-object v0, p0, Lcom/baidu/mobstat/fm;->a:Lcom/baidu/mobstat/fk;

    invoke-virtual {v0}, Lcom/baidu/mobstat/fk;->b()V

    goto :goto_3

    .line 225
    :catch_2
    move-exception v0

    .line 223
    invoke-virtual {p0, v0}, Lcom/baidu/mobstat/fm;->a(Ljava/lang/Exception;)V

    .line 224
    iget-object v1, p0, Lcom/baidu/mobstat/fm;->a:Lcom/baidu/mobstat/fk;

    const/16 v2, 0x3ee

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/baidu/mobstat/fk;->b(ILjava/lang/String;)V

    goto :goto_3

    .line 226
    :cond_6
    iget-object v0, p0, Lcom/baidu/mobstat/fm;->d:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method
