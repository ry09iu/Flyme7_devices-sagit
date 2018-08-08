.class public final Lokhttp3/internal/tls/BasicCertificateChainCleaner;
.super Lokhttp3/internal/tls/CertificateChainCleaner;
.source "BasicCertificateChainCleaner.java"


# static fields
.field private static final MAX_SIGNERS:I = 0x9


# instance fields
.field private final trustRootIndex:Lokhttp3/internal/tls/TrustRootIndex;


# direct methods
.method public constructor <init>(Lokhttp3/internal/tls/TrustRootIndex;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lokhttp3/internal/tls/CertificateChainCleaner;-><init>()V

    .line 44
    iput-object p1, p0, Lokhttp3/internal/tls/BasicCertificateChainCleaner;->trustRootIndex:Lokhttp3/internal/tls/TrustRootIndex;

    .line 45
    return-void
.end method

.method private verifySignature(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 106
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v0

    invoke-virtual {p2}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/security/Principal;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    :try_start_0
    invoke-virtual {p2}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    const/4 v0, 0x1

    return v0

    .line 106
    :cond_0
    return v2

    .line 109
    :catch_0
    move-exception v0

    .line 111
    return v2
.end method


# virtual methods
.method public clean(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 56
    new-instance v5, Ljava/util/ArrayDeque;

    invoke-direct {v5, p1}, Ljava/util/ArrayDeque;-><init>(Ljava/util/Collection;)V

    .line 57
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 58
    invoke-interface {v5}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v4, v0

    move v2, v0

    :goto_0
    const/16 v0, 0x9

    .line 62
    if-lt v4, v0, :cond_0

    .line 101
    new-instance v0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Certificate chain too long: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_0
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 68
    iget-object v1, p0, Lokhttp3/internal/tls/BasicCertificateChainCleaner;->trustRootIndex:Lokhttp3/internal/tls/TrustRootIndex;

    invoke-interface {v1, v0}, Lokhttp3/internal/tls/TrustRootIndex;->findByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;

    move-result-object v1

    .line 69
    if-nez v1, :cond_2

    .line 82
    invoke-interface {v5}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_6

    .line 92
    if-nez v2, :cond_7

    .line 97
    new-instance v1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to find a trusted cert that signed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 70
    :cond_2
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v3, :cond_4

    .line 71
    :cond_3
    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    :goto_1
    invoke-direct {p0, v1, v1}, Lokhttp3/internal/tls/BasicCertificateChainCleaner;->verifySignature(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;)Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v3

    .line 62
    :goto_2
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    move v2, v0

    goto :goto_0

    .line 70
    :cond_4
    invoke-virtual {v0, v1}, Ljava/security/cert/X509Certificate;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    .line 74
    :cond_5
    return-object v6

    .line 83
    :cond_6
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 84
    invoke-direct {p0, v0, v1}, Lokhttp3/internal/tls/BasicCertificateChainCleaner;->verifySignature(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 85
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    .line 86
    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v2

    .line 87
    goto :goto_2

    .line 93
    :cond_7
    return-object v6
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 120
    if-eq p1, p0, :cond_1

    .line 121
    instance-of v2, p1, Lokhttp3/internal/tls/BasicCertificateChainCleaner;

    if-nez v2, :cond_2

    :goto_0
    move v0, v1

    :cond_0
    return v0

    .line 120
    :cond_1
    return v0

    .line 121
    :cond_2
    check-cast p1, Lokhttp3/internal/tls/BasicCertificateChainCleaner;

    iget-object v2, p1, Lokhttp3/internal/tls/BasicCertificateChainCleaner;->trustRootIndex:Lokhttp3/internal/tls/TrustRootIndex;

    iget-object v3, p0, Lokhttp3/internal/tls/BasicCertificateChainCleaner;->trustRootIndex:Lokhttp3/internal/tls/TrustRootIndex;

    .line 122
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lokhttp3/internal/tls/BasicCertificateChainCleaner;->trustRootIndex:Lokhttp3/internal/tls/TrustRootIndex;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
