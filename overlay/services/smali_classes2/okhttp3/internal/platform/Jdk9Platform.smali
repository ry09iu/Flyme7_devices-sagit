.class final Lokhttp3/internal/platform/Jdk9Platform;
.super Lokhttp3/internal/platform/Platform;
.source "Jdk9Platform.java"


# instance fields
.field final getProtocolMethod:Ljava/lang/reflect/Method;

.field final setProtocolMethod:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lokhttp3/internal/platform/Platform;-><init>()V

    .line 38
    iput-object p1, p0, Lokhttp3/internal/platform/Jdk9Platform;->setProtocolMethod:Ljava/lang/reflect/Method;

    .line 39
    iput-object p2, p0, Lokhttp3/internal/platform/Jdk9Platform;->getProtocolMethod:Ljava/lang/reflect/Method;

    .line 40
    return-void
.end method

.method public static buildIfSupported()Lokhttp3/internal/platform/Jdk9Platform;
    .locals 5

    .prologue
    :try_start_0
    const-class v0, Ljavax/net/ssl/SSLParameters;

    const-string/jumbo v1, "setApplicationProtocols"

    const/4 v2, 0x1

    .line 88
    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, [Ljava/lang/String;

    aput-object v4, v2, v3

    .line 89
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const-class v1, Ljavax/net/ssl/SSLSocket;

    const-string/jumbo v2, "getApplicationProtocol"

    const/4 v3, 0x0

    .line 90
    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 92
    new-instance v2, Lokhttp3/internal/platform/Jdk9Platform;

    invoke-direct {v2, v0, v1}, Lokhttp3/internal/platform/Jdk9Platform;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    .line 97
    return-object v0
.end method


# virtual methods
.method public configureTlsExtensions(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/SSLSocket;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lokhttp3/Protocol;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 46
    :try_start_0
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object v0

    .line 48
    invoke-static {p3}, Lokhttp3/internal/platform/Jdk9Platform;->alpnProtocolNames(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 50
    iget-object v2, p0, Lokhttp3/internal/platform/Jdk9Platform;->setProtocolMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 51
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v3, v4

    .line 50
    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    invoke-virtual {p1, v0}, Ljavax/net/ssl/SSLSocket;->setSSLParameters(Ljavax/net/ssl/SSLParameters;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    return-void

    .line 56
    :catch_0
    move-exception v0

    const-string/jumbo v1, "unable to set ssl parameters"

    .line 55
    invoke-static {v1, v0}, Lokhttp3/internal/Util;->assertionError(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/AssertionError;

    move-result-object v0

    throw v0
.end method

.method public getSelectedProtocol(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .locals 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 62
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/platform/Jdk9Platform;->getProtocolMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 66
    if-nez v0, :cond_1

    .line 67
    :cond_0
    return-object v2

    :cond_1
    const-string/jumbo v1, ""

    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    .line 70
    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "unable to get selected protocols"

    .line 72
    invoke-static {v1, v0}, Lokhttp3/internal/Util;->assertionError(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/AssertionError;

    move-result-object v0

    throw v0
.end method

.method public trustManager(Ljavax/net/ssl/SSLSocketFactory;)Ljavax/net/ssl/X509TrustManager;
    .locals 2

    .prologue
    .line 81
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "clientBuilder.sslSocketFactory(SSLSocketFactory) not supported on JDK 9+"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
