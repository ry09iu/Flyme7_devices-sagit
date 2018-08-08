.class public Lokhttp3/internal/platform/ConscryptPlatform;
.super Lokhttp3/internal/platform/Platform;
.source "ConscryptPlatform.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lokhttp3/internal/platform/Platform;-><init>()V

    .line 37
    return-void
.end method

.method public static buildIfSupported()Lokhttp3/internal/platform/Platform;
    .locals 2

    .prologue
    const/4 v1, 0x0

    :try_start_0
    const-string/jumbo v0, "org.conscrypt.ConscryptEngineSocket"

    .line 100
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 102
    invoke-static {}, Lorg/conscrypt/Conscrypt;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    const/4 v0, 0x1

    invoke-static {v0}, Lorg/conscrypt/Conscrypt;->setUseEngineSocketByDefault(Z)V

    .line 107
    new-instance v0, Lokhttp3/internal/platform/ConscryptPlatform;

    invoke-direct {v0}, Lokhttp3/internal/platform/ConscryptPlatform;-><init>()V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 103
    :cond_0
    return-object v1

    .line 107
    :catch_0
    move-exception v0

    .line 109
    return-object v1
.end method

.method private getProvider()Ljava/security/Provider;
    .locals 1

    .prologue
    .line 40
    new-instance v0, Lorg/conscrypt/OpenSSLProvider;

    invoke-direct {v0}, Lorg/conscrypt/OpenSSLProvider;-><init>()V

    return-object v0
.end method


# virtual methods
.method public configureTlsExtensions(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V
    .locals 2
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
    const/4 v1, 0x0

    .line 66
    invoke-static {p1}, Lorg/conscrypt/Conscrypt;->isConscrypt(Ljavax/net/ssl/SSLSocket;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    invoke-super {p0, p1, p2, p3}, Lokhttp3/internal/platform/Platform;->configureTlsExtensions(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V

    .line 79
    :goto_0
    return-void

    .line 68
    :cond_0
    if-nez p2, :cond_1

    .line 74
    :goto_1
    invoke-static {p3}, Lokhttp3/internal/platform/Platform;->alpnProtocolNames(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 75
    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/conscrypt/Conscrypt;->setApplicationProtocols(Ljavax/net/ssl/SSLSocket;[Ljava/lang/String;)V

    goto :goto_0

    .line 69
    :cond_1
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/conscrypt/Conscrypt;->setUseSessionTickets(Ljavax/net/ssl/SSLSocket;Z)V

    .line 70
    invoke-static {p1, p2}, Lorg/conscrypt/Conscrypt;->setHostname(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getSSLContext()Ljavax/net/ssl/SSLContext;
    .locals 3

    .prologue
    :try_start_0
    const-string/jumbo v0, "TLS"

    .line 91
    invoke-direct {p0}, Lokhttp3/internal/platform/ConscryptPlatform;->getProvider()Ljava/security/Provider;

    move-result-object v1

    invoke-static {v0, v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/net/ssl/SSLContext;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    .line 93
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "No TLS provider"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getSelectedProtocol(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 82
    invoke-static {p1}, Lorg/conscrypt/Conscrypt;->isConscrypt(Ljavax/net/ssl/SSLSocket;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    invoke-super {p0, p1}, Lokhttp3/internal/platform/Platform;->getSelectedProtocol(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 83
    :cond_0
    invoke-static {p1}, Lorg/conscrypt/Conscrypt;->getApplicationProtocol(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public trustManager(Ljavax/net/ssl/SSLSocketFactory;)Ljavax/net/ssl/X509TrustManager;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 44
    invoke-static {p1}, Lorg/conscrypt/Conscrypt;->isConscrypt(Ljavax/net/ssl/SSLSocketFactory;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    const-class v0, Ljava/lang/Object;

    const-string/jumbo v1, "sslParameters"

    .line 51
    invoke-static {p1, v0, v1}, Lokhttp3/internal/platform/ConscryptPlatform;->readFieldOrNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 53
    if-nez v0, :cond_1

    .line 57
    return-object v2

    .line 45
    :cond_0
    invoke-super {p0, p1}, Lokhttp3/internal/platform/Platform;->trustManager(Ljavax/net/ssl/SSLSocketFactory;)Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    return-object v0

    :cond_1
    :try_start_1
    const-class v1, Ljavax/net/ssl/X509TrustManager;

    const-string/jumbo v2, "x509TrustManager"

    .line 54
    invoke-static {v0, v1, v2}, Lokhttp3/internal/platform/ConscryptPlatform;->readFieldOrNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/X509TrustManager;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    .line 57
    :catch_0
    move-exception v0

    .line 59
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v2, "clientBuilder.sslSocketFactory(SSLSocketFactory) not supported on Conscrypt"

    invoke-direct {v1, v2, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
