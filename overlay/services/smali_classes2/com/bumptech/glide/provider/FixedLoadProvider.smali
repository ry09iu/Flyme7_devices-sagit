.class public Lcom/bumptech/glide/provider/FixedLoadProvider;
.super Ljava/lang/Object;
.source "FixedLoadProvider.java"

# interfaces
.implements Lcom/bumptech/glide/provider/LoadProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        "Z:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/provider/LoadProvider",
        "<TA;TT;TZ;TR;>;"
    }
.end annotation


# instance fields
.field private final dataLoadProvider:Lcom/bumptech/glide/provider/DataLoadProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/provider/DataLoadProvider",
            "<TT;TZ;>;"
        }
    .end annotation
.end field

.field private final modelLoader:Lcom/bumptech/glide/load/model/ModelLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/model/ModelLoader",
            "<TA;TT;>;"
        }
    .end annotation
.end field

.field private final transcoder:Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder",
            "<TZ;TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/model/ModelLoader;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;Lcom/bumptech/glide/provider/DataLoadProvider;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/model/ModelLoader",
            "<TA;TT;>;",
            "Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder",
            "<TZ;TR;>;",
            "Lcom/bumptech/glide/provider/DataLoadProvider",
            "<TT;TZ;>;)V"
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    if-eqz p1, :cond_0

    .line 30
    iput-object p1, p0, Lcom/bumptech/glide/provider/FixedLoadProvider;->modelLoader:Lcom/bumptech/glide/load/model/ModelLoader;

    .line 32
    if-eqz p2, :cond_1

    .line 35
    iput-object p2, p0, Lcom/bumptech/glide/provider/FixedLoadProvider;->transcoder:Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;

    .line 37
    if-eqz p3, :cond_2

    .line 40
    iput-object p3, p0, Lcom/bumptech/glide/provider/FixedLoadProvider;->dataLoadProvider:Lcom/bumptech/glide/provider/DataLoadProvider;

    .line 41
    return-void

    .line 28
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "ModelLoader must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Transcoder must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "DataLoadProvider must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getCacheDecoder()Lcom/bumptech/glide/load/ResourceDecoder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/ResourceDecoder",
            "<",
            "Ljava/io/File;",
            "TZ;>;"
        }
    .end annotation

    .prologue
    .line 64
    iget-object v0, p0, Lcom/bumptech/glide/provider/FixedLoadProvider;->dataLoadProvider:Lcom/bumptech/glide/provider/DataLoadProvider;

    invoke-interface {v0}, Lcom/bumptech/glide/provider/DataLoadProvider;->getCacheDecoder()Lcom/bumptech/glide/load/ResourceDecoder;

    move-result-object v0

    return-object v0
.end method

.method public getEncoder()Lcom/bumptech/glide/load/ResourceEncoder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/ResourceEncoder",
            "<TZ;>;"
        }
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Lcom/bumptech/glide/provider/FixedLoadProvider;->dataLoadProvider:Lcom/bumptech/glide/provider/DataLoadProvider;

    invoke-interface {v0}, Lcom/bumptech/glide/provider/DataLoadProvider;->getEncoder()Lcom/bumptech/glide/load/ResourceEncoder;

    move-result-object v0

    return-object v0
.end method

.method public getModelLoader()Lcom/bumptech/glide/load/model/ModelLoader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/model/ModelLoader",
            "<TA;TT;>;"
        }
    .end annotation

    .prologue
    .line 48
    iget-object v0, p0, Lcom/bumptech/glide/provider/FixedLoadProvider;->modelLoader:Lcom/bumptech/glide/load/model/ModelLoader;

    return-object v0
.end method

.method public getSourceDecoder()Lcom/bumptech/glide/load/ResourceDecoder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/ResourceDecoder",
            "<TT;TZ;>;"
        }
    .end annotation

    .prologue
    .line 72
    iget-object v0, p0, Lcom/bumptech/glide/provider/FixedLoadProvider;->dataLoadProvider:Lcom/bumptech/glide/provider/DataLoadProvider;

    invoke-interface {v0}, Lcom/bumptech/glide/provider/DataLoadProvider;->getSourceDecoder()Lcom/bumptech/glide/load/ResourceDecoder;

    move-result-object v0

    return-object v0
.end method

.method public getSourceEncoder()Lcom/bumptech/glide/load/Encoder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/Encoder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Lcom/bumptech/glide/provider/FixedLoadProvider;->dataLoadProvider:Lcom/bumptech/glide/provider/DataLoadProvider;

    invoke-interface {v0}, Lcom/bumptech/glide/provider/DataLoadProvider;->getSourceEncoder()Lcom/bumptech/glide/load/Encoder;

    move-result-object v0

    return-object v0
.end method

.method public getTranscoder()Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder",
            "<TZ;TR;>;"
        }
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lcom/bumptech/glide/provider/FixedLoadProvider;->transcoder:Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;

    return-object v0
.end method
