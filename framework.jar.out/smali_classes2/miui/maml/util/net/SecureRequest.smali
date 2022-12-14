.class public Lmiui/maml/util/net/SecureRequest;
.super Ljava/lang/Object;
.source "SecureRequest.java"


# static fields
.field private static final UTF8:Ljava/lang/String; = "utf-8"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static decryptResponse(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "body"    # Ljava/lang/String;
    .param p1, "security"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/maml/util/net/CipherException;,
            Lmiui/maml/util/net/InvalidResponseException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    .line 124
    invoke-static {p1, v5}, Lmiui/maml/util/net/CloudCoder;->newAESCipher(Ljava/lang/String;I)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 125
    .local v1, "cipher":Ljavax/crypto/Cipher;
    if-nez v1, :cond_0

    .line 126
    new-instance v5, Lmiui/maml/util/net/CipherException;

    const-string/jumbo v6, "failed to init cipher"

    invoke-direct {v5, v6}, Lmiui/maml/util/net/CipherException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 128
    :cond_0
    const/4 v3, 0x0

    .line 130
    .local v3, "responseData":Ljava/lang/String;
    const/4 v5, 0x2

    :try_start_0
    invoke-static {p0, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v5

    invoke-virtual {v1, v5}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    .line 131
    .local v0, "bytes":[B
    new-instance v4, Ljava/lang/String;

    const-string/jumbo v5, "utf-8"

    invoke-direct {v4, v0, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3    # "responseData":Ljava/lang/String;
    .local v4, "responseData":Ljava/lang/String;
    move-object v3, v4

    .line 135
    .end local v0    # "bytes":[B
    .end local v4    # "responseData":Ljava/lang/String;
    :goto_0
    if-nez v3, :cond_1

    .line 136
    new-instance v5, Lmiui/maml/util/net/InvalidResponseException;

    const-string/jumbo v6, "failed to decrypt response"

    invoke-direct {v5, v6}, Lmiui/maml/util/net/InvalidResponseException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 138
    :cond_1
    return-object v3

    .line 132
    .restart local v3    # "responseData":Ljava/lang/String;
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public static encryptParams(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;
    .locals 11
    .param p0, "method"    # Ljava/lang/String;
    .param p1, "url"    # Ljava/lang/String;
    .param p3, "security"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/maml/util/net/CipherException;
        }
    .end annotation

    .prologue
    .line 90
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v9, 0x1

    invoke-static {p3, v9}, Lmiui/maml/util/net/CloudCoder;->newAESCipher(Ljava/lang/String;I)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 91
    .local v0, "cipher":Ljavax/crypto/Cipher;
    if-nez v0, :cond_0

    .line 92
    new-instance v9, Lmiui/maml/util/net/CipherException;

    const-string/jumbo v10, "failed to init cipher"

    invoke-direct {v9, v10}, Lmiui/maml/util/net/CipherException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 94
    :cond_0
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 95
    .local v6, "requestParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 116
    :cond_1
    invoke-static {p0, p1, v6, p3}, Lmiui/maml/util/net/CloudCoder;->generateSignature(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 118
    .local v7, "signature":Ljava/lang/String;
    const-string/jumbo v9, "signature"

    invoke-virtual {v6, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    return-object v6

    .line 96
    .end local v7    # "signature":Ljava/lang/String;
    :cond_2
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    .line 97
    .local v2, "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "entry$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 98
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 99
    .local v5, "key":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 100
    .local v8, "value":Ljava/lang/String;
    if-eqz v5, :cond_3

    if-eqz v8, :cond_3

    .line 102
    const-string/jumbo v9, "_"

    invoke-virtual {v5, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 105
    :try_start_0
    const-string/jumbo v9, "utf-8"

    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    invoke-virtual {v0, v9}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v9

    .line 106
    const/4 v10, 0x2

    .line 104
    invoke-static {v9, v10}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 112
    :cond_4
    invoke-virtual {v6, v5, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 107
    :catch_0
    move-exception v1

    .line 108
    .local v1, "e":Ljava/lang/Exception;
    new-instance v9, Lmiui/maml/util/net/CipherException;

    .line 109
    const-string/jumbo v10, "failed to encrypt request params"

    .line 108
    invoke-direct {v9, v10, v1}, Lmiui/maml/util/net/CipherException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9
.end method

.method public static getAsMap(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ZLjava/lang/String;)Lmiui/maml/util/net/SimpleRequest$MapContent;
    .locals 2
    .param p0, "url"    # Ljava/lang/String;
    .param p3, "readBody"    # Z
    .param p4, "security"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/String;",
            ")",
            "Lmiui/maml/util/net/SimpleRequest$MapContent;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmiui/maml/util/net/CipherException;,
            Lmiui/maml/util/net/AccessDeniedException;,
            Lmiui/maml/util/net/InvalidResponseException;,
            Lmiui/maml/util/net/AuthenticationFailureException;
        }
    .end annotation

    .prologue
    .line 42
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p2, "cookies":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p0, p1, p2, p3, p4}, Lmiui/maml/util/net/SecureRequest;->getAsString(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ZLjava/lang/String;)Lmiui/maml/util/net/SimpleRequest$StringContent;

    move-result-object v0

    .line 44
    .local v0, "stringContent":Lmiui/maml/util/net/SimpleRequest$StringContent;
    invoke-static {v0}, Lmiui/maml/util/net/SimpleRequest;->convertStringToMap(Lmiui/maml/util/net/SimpleRequest$StringContent;)Lmiui/maml/util/net/SimpleRequest$MapContent;

    move-result-object v1

    return-object v1
.end method

.method public static getAsString(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ZLjava/lang/String;)Lmiui/maml/util/net/SimpleRequest$StringContent;
    .locals 3
    .param p0, "url"    # Ljava/lang/String;
    .param p3, "readBody"    # Z
    .param p4, "security"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/String;",
            ")",
            "Lmiui/maml/util/net/SimpleRequest$StringContent;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmiui/maml/util/net/CipherException;,
            Lmiui/maml/util/net/AccessDeniedException;,
            Lmiui/maml/util/net/InvalidResponseException;,
            Lmiui/maml/util/net/AuthenticationFailureException;
        }
    .end annotation

    .prologue
    .line 30
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p2, "cookies":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "GET"

    invoke-static {v2, p0, p1, p4}, Lmiui/maml/util/net/SecureRequest;->encryptParams(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 33
    .local v0, "requestParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p0, v0, p2, p3}, Lmiui/maml/util/net/SimpleRequest;->getAsString(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Z)Lmiui/maml/util/net/SimpleRequest$StringContent;

    move-result-object v1

    .line 35
    .local v1, "response":Lmiui/maml/util/net/SimpleRequest$StringContent;
    invoke-static {v1, p4}, Lmiui/maml/util/net/SecureRequest;->processStringResponse(Lmiui/maml/util/net/SimpleRequest$StringContent;Ljava/lang/String;)Lmiui/maml/util/net/SimpleRequest$StringContent;

    move-result-object v2

    return-object v2
.end method

.method public static postAsMap(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ZLjava/lang/String;)Lmiui/maml/util/net/SimpleRequest$MapContent;
    .locals 2
    .param p0, "url"    # Ljava/lang/String;
    .param p3, "readBody"    # Z
    .param p4, "security"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/String;",
            ")",
            "Lmiui/maml/util/net/SimpleRequest$MapContent;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmiui/maml/util/net/AccessDeniedException;,
            Lmiui/maml/util/net/InvalidResponseException;,
            Lmiui/maml/util/net/CipherException;,
            Lmiui/maml/util/net/AuthenticationFailureException;
        }
    .end annotation

    .prologue
    .line 65
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p2, "cookies":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p0, p1, p2, p3, p4}, Lmiui/maml/util/net/SecureRequest;->postAsString(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ZLjava/lang/String;)Lmiui/maml/util/net/SimpleRequest$StringContent;

    move-result-object v0

    .line 67
    .local v0, "stringContent":Lmiui/maml/util/net/SimpleRequest$StringContent;
    invoke-static {v0}, Lmiui/maml/util/net/SimpleRequest;->convertStringToMap(Lmiui/maml/util/net/SimpleRequest$StringContent;)Lmiui/maml/util/net/SimpleRequest$MapContent;

    move-result-object v1

    return-object v1
.end method

.method public static postAsString(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ZLjava/lang/String;)Lmiui/maml/util/net/SimpleRequest$StringContent;
    .locals 3
    .param p0, "url"    # Ljava/lang/String;
    .param p3, "readBody"    # Z
    .param p4, "security"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/String;",
            ")",
            "Lmiui/maml/util/net/SimpleRequest$StringContent;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmiui/maml/util/net/CipherException;,
            Lmiui/maml/util/net/AccessDeniedException;,
            Lmiui/maml/util/net/InvalidResponseException;,
            Lmiui/maml/util/net/AuthenticationFailureException;
        }
    .end annotation

    .prologue
    .line 52
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p2, "cookies":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "POST"

    invoke-static {v2, p0, p1, p4}, Lmiui/maml/util/net/SecureRequest;->encryptParams(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 55
    .local v0, "requestParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p0, v0, p2, p3}, Lmiui/maml/util/net/SimpleRequest;->postAsString(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Z)Lmiui/maml/util/net/SimpleRequest$StringContent;

    move-result-object v1

    .line 57
    .local v1, "response":Lmiui/maml/util/net/SimpleRequest$StringContent;
    invoke-static {v1, p4}, Lmiui/maml/util/net/SecureRequest;->processStringResponse(Lmiui/maml/util/net/SimpleRequest$StringContent;Ljava/lang/String;)Lmiui/maml/util/net/SimpleRequest$StringContent;

    move-result-object v2

    return-object v2
.end method

.method private static processStringResponse(Lmiui/maml/util/net/SimpleRequest$StringContent;Ljava/lang/String;)Lmiui/maml/util/net/SimpleRequest$StringContent;
    .locals 5
    .param p0, "stringResponse"    # Lmiui/maml/util/net/SimpleRequest$StringContent;
    .param p1, "security"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmiui/maml/util/net/InvalidResponseException;,
            Lmiui/maml/util/net/CipherException;
        }
    .end annotation

    .prologue
    .line 74
    if-nez p0, :cond_0

    .line 75
    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "no response from server"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 77
    :cond_0
    invoke-virtual {p0}, Lmiui/maml/util/net/SimpleRequest$StringContent;->getBody()Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "body":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 79
    new-instance v3, Lmiui/maml/util/net/InvalidResponseException;

    const-string/jumbo v4, "invalid response from server"

    invoke-direct {v3, v4}, Lmiui/maml/util/net/InvalidResponseException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 81
    :cond_1
    invoke-static {v0, p1}, Lmiui/maml/util/net/SecureRequest;->decryptResponse(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 82
    .local v1, "decryptedBody":Ljava/lang/String;
    new-instance v2, Lmiui/maml/util/net/SimpleRequest$StringContent;

    invoke-direct {v2, v1}, Lmiui/maml/util/net/SimpleRequest$StringContent;-><init>(Ljava/lang/String;)V

    .line 83
    .local v2, "resultContent":Lmiui/maml/util/net/SimpleRequest$StringContent;
    invoke-virtual {p0}, Lmiui/maml/util/net/SimpleRequest$StringContent;->getHeaders()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmiui/maml/util/net/SimpleRequest$StringContent;->putHeaders(Ljava/util/Map;)V

    .line 84
    return-object v2
.end method
