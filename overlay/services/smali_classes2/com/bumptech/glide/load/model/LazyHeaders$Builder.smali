.class public final Lcom/bumptech/glide/load/model/LazyHeaders$Builder;
.super Ljava/lang/Object;
.source "LazyHeaders.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/model/LazyHeaders;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# static fields
.field private static final DEFAULT_ENCODING:Ljava/lang/String; = "identity"

.field private static final DEFAULT_HEADERS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/bumptech/glide/load/model/LazyHeaderFactory;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final DEFAULT_USER_AGENT:Ljava/lang/String;

.field private static final ENCODING_HEADER:Ljava/lang/String; = "Accept-Encoding"

.field private static final USER_AGENT_HEADER:Ljava/lang/String; = "User-Agent"


# instance fields
.field private copyOnModify:Z

.field private headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/bumptech/glide/load/model/LazyHeaderFactory;",
            ">;>;"
        }
    .end annotation
.end field

.field private isEncodingDefault:Z

.field private isUserAgentDefault:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-string/jumbo v0, "http.agent"

    .line 95
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/load/model/LazyHeaders$Builder;->DEFAULT_USER_AGENT:Ljava/lang/String;

    .line 104
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 106
    sget-object v1, Lcom/bumptech/glide/load/model/LazyHeaders$Builder;->DEFAULT_USER_AGENT:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    const-string/jumbo v1, "Accept-Encoding"

    .line 111
    new-instance v2, Lcom/bumptech/glide/load/model/LazyHeaders$StringHeaderFactory;

    const-string/jumbo v3, "identity"

    invoke-direct {v2, v3}, Lcom/bumptech/glide/load/model/LazyHeaders$StringHeaderFactory;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/load/model/LazyHeaders$Builder;->DEFAULT_HEADERS:Ljava/util/Map;

    .line 115
    return-void

    :cond_0
    const-string/jumbo v1, "User-Agent"

    .line 107
    new-instance v2, Lcom/bumptech/glide/load/model/LazyHeaders$StringHeaderFactory;

    sget-object v3, Lcom/bumptech/glide/load/model/LazyHeaders$Builder;->DEFAULT_USER_AGENT:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/bumptech/glide/load/model/LazyHeaders$StringHeaderFactory;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-boolean v1, p0, Lcom/bumptech/glide/load/model/LazyHeaders$Builder;->copyOnModify:Z

    .line 118
    sget-object v0, Lcom/bumptech/glide/load/model/LazyHeaders$Builder;->DEFAULT_HEADERS:Ljava/util/Map;

    iput-object v0, p0, Lcom/bumptech/glide/load/model/LazyHeaders$Builder;->headers:Ljava/util/Map;

    .line 119
    iput-boolean v1, p0, Lcom/bumptech/glide/load/model/LazyHeaders$Builder;->isEncodingDefault:Z

    .line 120
    iput-boolean v1, p0, Lcom/bumptech/glide/load/model/LazyHeaders$Builder;->isUserAgentDefault:Z

    return-void
.end method

.method private copyHeaders()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/bumptech/glide/load/model/LazyHeaderFactory;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 220
    new-instance v1, Ljava/util/HashMap;

    iget-object v0, p0, Lcom/bumptech/glide/load/model/LazyHeaders$Builder;->headers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 222
    iget-object v0, p0, Lcom/bumptech/glide/load/model/LazyHeaders$Builder;->headers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 225
    return-object v1

    .line 222
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 223
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private copyIfNecessary()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 205
    iget-boolean v0, p0, Lcom/bumptech/glide/load/model/LazyHeaders$Builder;->copyOnModify:Z

    if-nez v0, :cond_0

    .line 209
    :goto_0
    return-void

    .line 206
    :cond_0
    iput-boolean v1, p0, Lcom/bumptech/glide/load/model/LazyHeaders$Builder;->copyOnModify:Z

    .line 207
    invoke-direct {p0}, Lcom/bumptech/glide/load/model/LazyHeaders$Builder;->copyHeaders()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/model/LazyHeaders$Builder;->headers:Ljava/util/Map;

    goto :goto_0
.end method

.method private getFactories(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/bumptech/glide/load/model/LazyHeaderFactory;",
            ">;"
        }
    .end annotation

    .prologue
    .line 196
    iget-object v0, p0, Lcom/bumptech/glide/load/model/LazyHeaders$Builder;->headers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 197
    if-eqz v0, :cond_0

    .line 201
    :goto_0
    return-object v0

    .line 198
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 199
    iget-object v1, p0, Lcom/bumptech/glide/load/model/LazyHeaders$Builder;->headers:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Lcom/bumptech/glide/load/model/LazyHeaderFactory;)Lcom/bumptech/glide/load/model/LazyHeaders$Builder;
    .locals 1

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/bumptech/glide/load/model/LazyHeaders$Builder;->isEncodingDefault:Z

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/bumptech/glide/load/model/LazyHeaders$Builder;->isUserAgentDefault:Z

    if-nez v0, :cond_3

    .line 151
    :goto_0
    invoke-direct {p0}, Lcom/bumptech/glide/load/model/LazyHeaders$Builder;->copyIfNecessary()V

    .line 152
    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/model/LazyHeaders$Builder;->getFactories(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    return-object p0

    :cond_1
    const-string/jumbo v0, "Accept-Encoding"

    .line 146
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/load/model/LazyHeaders$Builder;->setHeader(Ljava/lang/String;Lcom/bumptech/glide/load/model/LazyHeaderFactory;)Lcom/bumptech/glide/load/model/LazyHeaders$Builder;

    move-result-object v0

    return-object v0

    :cond_3
    const-string/jumbo v0, "User-Agent"

    .line 146
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0
.end method

.method public addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/bumptech/glide/load/model/LazyHeaders$Builder;
    .locals 1

    .prologue
    .line 132
    new-instance v0, Lcom/bumptech/glide/load/model/LazyHeaders$StringHeaderFactory;

    invoke-direct {v0, p2}, Lcom/bumptech/glide/load/model/LazyHeaders$StringHeaderFactory;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/bumptech/glide/load/model/LazyHeaders$Builder;->addHeader(Ljava/lang/String;Lcom/bumptech/glide/load/model/LazyHeaderFactory;)Lcom/bumptech/glide/load/model/LazyHeaders$Builder;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/bumptech/glide/load/model/LazyHeaders;
    .locals 2

    .prologue
    .line 215
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/load/model/LazyHeaders$Builder;->copyOnModify:Z

    .line 216
    new-instance v0, Lcom/bumptech/glide/load/model/LazyHeaders;

    iget-object v1, p0, Lcom/bumptech/glide/load/model/LazyHeaders$Builder;->headers:Ljava/util/Map;

    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/model/LazyHeaders;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public setHeader(Ljava/lang/String;Lcom/bumptech/glide/load/model/LazyHeaderFactory;)Lcom/bumptech/glide/load/model/LazyHeaders$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 176
    invoke-direct {p0}, Lcom/bumptech/glide/load/model/LazyHeaders$Builder;->copyIfNecessary()V

    .line 177
    if-eqz p2, :cond_2

    .line 180
    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/model/LazyHeaders$Builder;->getFactories(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 181
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 182
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    :goto_0
    iget-boolean v0, p0, Lcom/bumptech/glide/load/model/LazyHeaders$Builder;->isEncodingDefault:Z

    if-nez v0, :cond_3

    .line 188
    :cond_0
    :goto_1
    iget-boolean v0, p0, Lcom/bumptech/glide/load/model/LazyHeaders$Builder;->isUserAgentDefault:Z

    if-nez v0, :cond_4

    .line 192
    :cond_1
    :goto_2
    return-object p0

    .line 178
    :cond_2
    iget-object v0, p0, Lcom/bumptech/glide/load/model/LazyHeaders$Builder;->headers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "Accept-Encoding"

    .line 185
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    iput-boolean v1, p0, Lcom/bumptech/glide/load/model/LazyHeaders$Builder;->isEncodingDefault:Z

    goto :goto_1

    :cond_4
    const-string/jumbo v0, "User-Agent"

    .line 188
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 189
    iput-boolean v1, p0, Lcom/bumptech/glide/load/model/LazyHeaders$Builder;->isUserAgentDefault:Z

    goto :goto_2
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/bumptech/glide/load/model/LazyHeaders$Builder;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 166
    if-eqz p2, :cond_0

    new-instance v0, Lcom/bumptech/glide/load/model/LazyHeaders$StringHeaderFactory;

    invoke-direct {v0, p2}, Lcom/bumptech/glide/load/model/LazyHeaders$StringHeaderFactory;-><init>(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/bumptech/glide/load/model/LazyHeaders$Builder;->setHeader(Ljava/lang/String;Lcom/bumptech/glide/load/model/LazyHeaderFactory;)Lcom/bumptech/glide/load/model/LazyHeaders$Builder;

    move-result-object v0

    return-object v0
.end method
