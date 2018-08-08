.class public final Lokhttp3/ConnectionSpec$Builder;
.super Ljava/lang/Object;
.source "ConnectionSpec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/ConnectionSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field cipherSuites:[Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field supportsTlsExtensions:Z

.field tls:Z

.field tlsVersions:[Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lokhttp3/ConnectionSpec;)V
    .locals 1

    .prologue
    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 238
    iget-boolean v0, p1, Lokhttp3/ConnectionSpec;->tls:Z

    iput-boolean v0, p0, Lokhttp3/ConnectionSpec$Builder;->tls:Z

    .line 239
    iget-object v0, p1, Lokhttp3/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    iput-object v0, p0, Lokhttp3/ConnectionSpec$Builder;->cipherSuites:[Ljava/lang/String;

    .line 240
    iget-object v0, p1, Lokhttp3/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    iput-object v0, p0, Lokhttp3/ConnectionSpec$Builder;->tlsVersions:[Ljava/lang/String;

    .line 241
    iget-boolean v0, p1, Lokhttp3/ConnectionSpec;->supportsTlsExtensions:Z

    iput-boolean v0, p0, Lokhttp3/ConnectionSpec$Builder;->supportsTlsExtensions:Z

    .line 242
    return-void
.end method

.method constructor <init>(Z)V
    .locals 0

    .prologue
    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 234
    iput-boolean p1, p0, Lokhttp3/ConnectionSpec$Builder;->tls:Z

    .line 235
    return-void
.end method


# virtual methods
.method public allEnabledCipherSuites()Lokhttp3/ConnectionSpec$Builder;
    .locals 2

    .prologue
    .line 245
    iget-boolean v0, p0, Lokhttp3/ConnectionSpec$Builder;->tls:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 246
    iput-object v0, p0, Lokhttp3/ConnectionSpec$Builder;->cipherSuites:[Ljava/lang/String;

    .line 247
    return-object p0

    .line 245
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "no cipher suites for cleartext connections"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public allEnabledTlsVersions()Lokhttp3/ConnectionSpec$Builder;
    .locals 2

    .prologue
    .line 272
    iget-boolean v0, p0, Lokhttp3/ConnectionSpec$Builder;->tls:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 273
    iput-object v0, p0, Lokhttp3/ConnectionSpec$Builder;->tlsVersions:[Ljava/lang/String;

    .line 274
    return-object p0

    .line 272
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "no TLS versions for cleartext connections"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public build()Lokhttp3/ConnectionSpec;
    .locals 1

    .prologue
    .line 306
    new-instance v0, Lokhttp3/ConnectionSpec;

    invoke-direct {v0, p0}, Lokhttp3/ConnectionSpec;-><init>(Lokhttp3/ConnectionSpec$Builder;)V

    return-object v0
.end method

.method public varargs cipherSuites([Ljava/lang/String;)Lokhttp3/ConnectionSpec$Builder;
    .locals 2

    .prologue
    .line 261
    iget-boolean v0, p0, Lokhttp3/ConnectionSpec$Builder;->tls:Z

    if-eqz v0, :cond_0

    .line 263
    array-length v0, p1

    if-eqz v0, :cond_1

    .line 267
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lokhttp3/ConnectionSpec$Builder;->cipherSuites:[Ljava/lang/String;

    .line 268
    return-object p0

    .line 261
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "no cipher suites for cleartext connections"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 264
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "At least one cipher suite is required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public varargs cipherSuites([Lokhttp3/CipherSuite;)Lokhttp3/ConnectionSpec$Builder;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 251
    iget-boolean v1, p0, Lokhttp3/ConnectionSpec$Builder;->tls:Z

    if-eqz v1, :cond_0

    .line 253
    array-length v1, p1

    new-array v1, v1, [Ljava/lang/String;

    .line 254
    :goto_0
    array-length v2, p1

    if-lt v0, v2, :cond_1

    .line 257
    invoke-virtual {p0, v1}, Lokhttp3/ConnectionSpec$Builder;->cipherSuites([Ljava/lang/String;)Lokhttp3/ConnectionSpec$Builder;

    move-result-object v0

    return-object v0

    .line 251
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "no cipher suites for cleartext connections"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 255
    :cond_1
    aget-object v2, p1, v0

    iget-object v2, v2, Lokhttp3/CipherSuite;->javaName:Ljava/lang/String;

    aput-object v2, v1, v0

    .line 254
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public supportsTlsExtensions(Z)Lokhttp3/ConnectionSpec$Builder;
    .locals 2

    .prologue
    .line 300
    iget-boolean v0, p0, Lokhttp3/ConnectionSpec$Builder;->tls:Z

    if-eqz v0, :cond_0

    .line 301
    iput-boolean p1, p0, Lokhttp3/ConnectionSpec$Builder;->supportsTlsExtensions:Z

    .line 302
    return-object p0

    .line 300
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "no TLS extensions for cleartext connections"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public varargs tlsVersions([Ljava/lang/String;)Lokhttp3/ConnectionSpec$Builder;
    .locals 2

    .prologue
    .line 289
    iget-boolean v0, p0, Lokhttp3/ConnectionSpec$Builder;->tls:Z

    if-eqz v0, :cond_0

    .line 291
    array-length v0, p1

    if-eqz v0, :cond_1

    .line 295
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lokhttp3/ConnectionSpec$Builder;->tlsVersions:[Ljava/lang/String;

    .line 296
    return-object p0

    .line 289
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "no TLS versions for cleartext connections"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 292
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "At least one TLS version is required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public varargs tlsVersions([Lokhttp3/TlsVersion;)Lokhttp3/ConnectionSpec$Builder;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 278
    iget-boolean v1, p0, Lokhttp3/ConnectionSpec$Builder;->tls:Z

    if-eqz v1, :cond_0

    .line 280
    array-length v1, p1

    new-array v1, v1, [Ljava/lang/String;

    .line 281
    :goto_0
    array-length v2, p1

    if-lt v0, v2, :cond_1

    .line 285
    invoke-virtual {p0, v1}, Lokhttp3/ConnectionSpec$Builder;->tlsVersions([Ljava/lang/String;)Lokhttp3/ConnectionSpec$Builder;

    move-result-object v0

    return-object v0

    .line 278
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "no TLS versions for cleartext connections"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 282
    :cond_1
    aget-object v2, p1, v0

    iget-object v2, v2, Lokhttp3/TlsVersion;->javaName:Ljava/lang/String;

    aput-object v2, v1, v0

    .line 281
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
