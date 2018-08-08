.class Lcom/baidu/mobstat/co;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mobstat/co$a;,
        Lcom/baidu/mobstat/co$b;,
        Lcom/baidu/mobstat/co$c;
    }
.end annotation


# static fields
.field private static final c:Ljava/nio/ByteBuffer;


# instance fields
.field private a:Lcom/baidu/mobstat/co$a;

.field private b:Lcom/baidu/mobstat/co$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sput-object v0, Lcom/baidu/mobstat/co;->c:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public constructor <init>(Ljava/net/URI;Lcom/baidu/mobstat/co$a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/mobstat/co$c;
        }
    .end annotation

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p2, p0, Lcom/baidu/mobstat/co;->a:Lcom/baidu/mobstat/co$a;

    const/4 v0, 0x0

    .line 61
    :try_start_0
    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "wss://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 65
    :goto_0
    new-instance v1, Lcom/baidu/mobstat/co$b;

    const/16 v2, 0x1388

    invoke-direct {v1, p0, p1, v2, v0}, Lcom/baidu/mobstat/co$b;-><init>(Lcom/baidu/mobstat/co;Ljava/net/URI;ILjava/net/Socket;)V

    iput-object v1, p0, Lcom/baidu/mobstat/co;->b:Lcom/baidu/mobstat/co$b;

    .line 66
    iget-object v0, p0, Lcom/baidu/mobstat/co;->b:Lcom/baidu/mobstat/co$b;

    invoke-virtual {v0}, Lcom/baidu/mobstat/co$b;->c()Z

    .line 70
    return-void

    .line 62
    :cond_0
    invoke-direct {p0}, Lcom/baidu/mobstat/co;->c()Ljava/net/Socket;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 69
    :catch_0
    move-exception v0

    .line 68
    new-instance v1, Lcom/baidu/mobstat/co$c;

    invoke-direct {v1, p0, v0}, Lcom/baidu/mobstat/co$c;-><init>(Lcom/baidu/mobstat/co;Ljava/lang/Throwable;)V

    throw v1
.end method

.method static synthetic a(Lcom/baidu/mobstat/co;)Lcom/baidu/mobstat/co$a;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/baidu/mobstat/co;->a:Lcom/baidu/mobstat/co$a;

    return-object v0
.end method

.method private c()Ljava/net/Socket;
    .locals 5

    .prologue
    const/4 v0, 0x0

    :try_start_0
    const-string/jumbo v1, "TLS"

    .line 35
    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 36
    invoke-virtual {v1, v2, v3, v4}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 37
    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 42
    :goto_0
    if-eqz v1, :cond_0

    .line 48
    :try_start_1
    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 53
    :goto_1
    return-object v0

    .line 40
    :catch_0
    move-exception v1

    move-object v1, v0

    .line 39
    goto :goto_0

    .line 43
    :cond_0
    return-object v0

    .line 51
    :catch_1
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/baidu/mobstat/co;->b:Lcom/baidu/mobstat/co$b;

    if-nez v0, :cond_0

    .line 86
    :goto_0
    return-void

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/baidu/mobstat/co;->b:Lcom/baidu/mobstat/co$b;

    invoke-virtual {v0}, Lcom/baidu/mobstat/co$b;->d()V

    goto :goto_0
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/channels/NotYetConnectedException;
        }
    .end annotation

    .prologue
    .line 90
    iget-object v0, p0, Lcom/baidu/mobstat/co;->b:Lcom/baidu/mobstat/co$b;

    if-nez v0, :cond_0

    .line 94
    :goto_0
    return-void

    .line 91
    :cond_0
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 92
    iget-object v1, p0, Lcom/baidu/mobstat/co;->b:Lcom/baidu/mobstat/co$b;

    invoke-virtual {v1, v0}, Lcom/baidu/mobstat/co$b;->a([B)V

    goto :goto_0
.end method

.method public b()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 97
    iget-object v1, p0, Lcom/baidu/mobstat/co;->b:Lcom/baidu/mobstat/co$b;

    invoke-virtual {v1}, Lcom/baidu/mobstat/co$b;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/baidu/mobstat/co;->b:Lcom/baidu/mobstat/co$b;

    invoke-virtual {v1}, Lcom/baidu/mobstat/co$b;->g()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/baidu/mobstat/co;->b:Lcom/baidu/mobstat/co$b;

    invoke-virtual {v1}, Lcom/baidu/mobstat/co$b;->e()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
