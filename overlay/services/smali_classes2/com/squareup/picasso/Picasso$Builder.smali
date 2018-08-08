.class public Lcom/squareup/picasso/Picasso$Builder;
.super Ljava/lang/Object;
.source "Picasso.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/picasso/Picasso;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private cache:Lcom/squareup/picasso/Cache;

.field private final context:Landroid/content/Context;

.field private defaultBitmapConfig:Landroid/graphics/Bitmap$Config;

.field private downloader:Lcom/squareup/picasso/Downloader;

.field private indicatorsEnabled:Z

.field private listener:Lcom/squareup/picasso/Picasso$Listener;

.field private loggingEnabled:Z

.field private requestHandlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/squareup/picasso/RequestHandler;",
            ">;"
        }
    .end annotation
.end field

.field private service:Ljava/util/concurrent/ExecutorService;

.field private transformer:Lcom/squareup/picasso/Picasso$RequestTransformer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 699
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 700
    if-eqz p1, :cond_0

    .line 703
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/picasso/Picasso$Builder;->context:Landroid/content/Context;

    .line 704
    return-void

    .line 701
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Context must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addRequestHandler(Lcom/squareup/picasso/RequestHandler;)Lcom/squareup/picasso/Picasso$Builder;
    .locals 2

    .prologue
    .line 789
    if-eqz p1, :cond_0

    .line 792
    iget-object v0, p0, Lcom/squareup/picasso/Picasso$Builder;->requestHandlers:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 795
    :goto_0
    iget-object v0, p0, Lcom/squareup/picasso/Picasso$Builder;->requestHandlers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 798
    iget-object v0, p0, Lcom/squareup/picasso/Picasso$Builder;->requestHandlers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 799
    return-object p0

    .line 790
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "RequestHandler must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 793
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/squareup/picasso/Picasso$Builder;->requestHandlers:Ljava/util/List;

    goto :goto_0

    .line 796
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "RequestHandler already registered."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public build()Lcom/squareup/picasso/Picasso;
    .locals 19

    .prologue
    .line 829
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/squareup/picasso/Picasso$Builder;->context:Landroid/content/Context;

    .line 831
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/squareup/picasso/Picasso$Builder;->downloader:Lcom/squareup/picasso/Downloader;

    if-eqz v1, :cond_0

    .line 834
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/squareup/picasso/Picasso$Builder;->cache:Lcom/squareup/picasso/Cache;

    if-eqz v1, :cond_1

    .line 837
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/squareup/picasso/Picasso$Builder;->service:Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_2

    .line 840
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/squareup/picasso/Picasso$Builder;->transformer:Lcom/squareup/picasso/Picasso$RequestTransformer;

    if-eqz v1, :cond_3

    .line 844
    :goto_3
    new-instance v7, Lcom/squareup/picasso/Stats;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/squareup/picasso/Picasso$Builder;->cache:Lcom/squareup/picasso/Cache;

    invoke-direct {v7, v1}, Lcom/squareup/picasso/Stats;-><init>(Lcom/squareup/picasso/Cache;)V

    .line 846
    new-instance v1, Lcom/squareup/picasso/Dispatcher;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/squareup/picasso/Picasso$Builder;->service:Ljava/util/concurrent/ExecutorService;

    sget-object v4, Lcom/squareup/picasso/Picasso;->HANDLER:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/squareup/picasso/Picasso$Builder;->downloader:Lcom/squareup/picasso/Downloader;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/squareup/picasso/Picasso$Builder;->cache:Lcom/squareup/picasso/Cache;

    invoke-direct/range {v1 .. v7}, Lcom/squareup/picasso/Dispatcher;-><init>(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;Landroid/os/Handler;Lcom/squareup/picasso/Downloader;Lcom/squareup/picasso/Cache;Lcom/squareup/picasso/Stats;)V

    .line 848
    new-instance v8, Lcom/squareup/picasso/Picasso;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/squareup/picasso/Picasso$Builder;->cache:Lcom/squareup/picasso/Cache;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/squareup/picasso/Picasso$Builder;->listener:Lcom/squareup/picasso/Picasso$Listener;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/squareup/picasso/Picasso$Builder;->transformer:Lcom/squareup/picasso/Picasso$RequestTransformer;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/squareup/picasso/Picasso$Builder;->requestHandlers:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/squareup/picasso/Picasso$Builder;->defaultBitmapConfig:Landroid/graphics/Bitmap$Config;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/squareup/picasso/Picasso$Builder;->indicatorsEnabled:Z

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/squareup/picasso/Picasso$Builder;->loggingEnabled:Z

    move/from16 v18, v0

    move-object v9, v2

    move-object v10, v1

    move-object v15, v7

    invoke-direct/range {v8 .. v18}, Lcom/squareup/picasso/Picasso;-><init>(Landroid/content/Context;Lcom/squareup/picasso/Dispatcher;Lcom/squareup/picasso/Cache;Lcom/squareup/picasso/Picasso$Listener;Lcom/squareup/picasso/Picasso$RequestTransformer;Ljava/util/List;Lcom/squareup/picasso/Stats;Landroid/graphics/Bitmap$Config;ZZ)V

    return-object v8

    .line 832
    :cond_0
    invoke-static {v2}, Lcom/squareup/picasso/Utils;->createDefaultDownloader(Landroid/content/Context;)Lcom/squareup/picasso/Downloader;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/squareup/picasso/Picasso$Builder;->downloader:Lcom/squareup/picasso/Downloader;

    goto :goto_0

    .line 835
    :cond_1
    new-instance v1, Lcom/squareup/picasso/LruCache;

    invoke-direct {v1, v2}, Lcom/squareup/picasso/LruCache;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/squareup/picasso/Picasso$Builder;->cache:Lcom/squareup/picasso/Cache;

    goto :goto_1

    .line 838
    :cond_2
    new-instance v1, Lcom/squareup/picasso/PicassoExecutorService;

    invoke-direct {v1}, Lcom/squareup/picasso/PicassoExecutorService;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/squareup/picasso/Picasso$Builder;->service:Ljava/util/concurrent/ExecutorService;

    goto :goto_2

    .line 841
    :cond_3
    sget-object v1, Lcom/squareup/picasso/Picasso$RequestTransformer;->IDENTITY:Lcom/squareup/picasso/Picasso$RequestTransformer;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/squareup/picasso/Picasso$Builder;->transformer:Lcom/squareup/picasso/Picasso$RequestTransformer;

    goto :goto_3
.end method

.method public debugging(Z)Lcom/squareup/picasso/Picasso$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 807
    invoke-virtual {p0, p1}, Lcom/squareup/picasso/Picasso$Builder;->indicatorsEnabled(Z)Lcom/squareup/picasso/Picasso$Builder;

    move-result-object v0

    return-object v0
.end method

.method public defaultBitmapConfig(Landroid/graphics/Bitmap$Config;)Lcom/squareup/picasso/Picasso$Builder;
    .locals 2

    .prologue
    .line 711
    if-eqz p1, :cond_0

    .line 714
    iput-object p1, p0, Lcom/squareup/picasso/Picasso$Builder;->defaultBitmapConfig:Landroid/graphics/Bitmap$Config;

    .line 715
    return-object p0

    .line 712
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Bitmap config must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public downloader(Lcom/squareup/picasso/Downloader;)Lcom/squareup/picasso/Picasso$Builder;
    .locals 2

    .prologue
    .line 720
    if-eqz p1, :cond_0

    .line 723
    iget-object v0, p0, Lcom/squareup/picasso/Picasso$Builder;->downloader:Lcom/squareup/picasso/Downloader;

    if-nez v0, :cond_1

    .line 726
    iput-object p1, p0, Lcom/squareup/picasso/Picasso$Builder;->downloader:Lcom/squareup/picasso/Downloader;

    .line 727
    return-object p0

    .line 721
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Downloader must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 724
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Downloader already set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public executor(Ljava/util/concurrent/ExecutorService;)Lcom/squareup/picasso/Picasso$Builder;
    .locals 2

    .prologue
    .line 736
    if-eqz p1, :cond_0

    .line 739
    iget-object v0, p0, Lcom/squareup/picasso/Picasso$Builder;->service:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_1

    .line 742
    iput-object p1, p0, Lcom/squareup/picasso/Picasso$Builder;->service:Ljava/util/concurrent/ExecutorService;

    .line 743
    return-object p0

    .line 737
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Executor service must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 740
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Executor service already set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public indicatorsEnabled(Z)Lcom/squareup/picasso/Picasso$Builder;
    .locals 0

    .prologue
    .line 812
    iput-boolean p1, p0, Lcom/squareup/picasso/Picasso$Builder;->indicatorsEnabled:Z

    .line 813
    return-object p0
.end method

.method public listener(Lcom/squareup/picasso/Picasso$Listener;)Lcom/squareup/picasso/Picasso$Builder;
    .locals 2

    .prologue
    .line 760
    if-eqz p1, :cond_0

    .line 763
    iget-object v0, p0, Lcom/squareup/picasso/Picasso$Builder;->listener:Lcom/squareup/picasso/Picasso$Listener;

    if-nez v0, :cond_1

    .line 766
    iput-object p1, p0, Lcom/squareup/picasso/Picasso$Builder;->listener:Lcom/squareup/picasso/Picasso$Listener;

    .line 767
    return-object p0

    .line 761
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Listener must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 764
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Listener already set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public loggingEnabled(Z)Lcom/squareup/picasso/Picasso$Builder;
    .locals 0

    .prologue
    .line 823
    iput-boolean p1, p0, Lcom/squareup/picasso/Picasso$Builder;->loggingEnabled:Z

    .line 824
    return-object p0
.end method

.method public memoryCache(Lcom/squareup/picasso/Cache;)Lcom/squareup/picasso/Picasso$Builder;
    .locals 2

    .prologue
    .line 748
    if-eqz p1, :cond_0

    .line 751
    iget-object v0, p0, Lcom/squareup/picasso/Picasso$Builder;->cache:Lcom/squareup/picasso/Cache;

    if-nez v0, :cond_1

    .line 754
    iput-object p1, p0, Lcom/squareup/picasso/Picasso$Builder;->cache:Lcom/squareup/picasso/Cache;

    .line 755
    return-object p0

    .line 749
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Memory cache must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 752
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Memory cache already set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public requestTransformer(Lcom/squareup/picasso/Picasso$RequestTransformer;)Lcom/squareup/picasso/Picasso$Builder;
    .locals 2

    .prologue
    .line 777
    if-eqz p1, :cond_0

    .line 780
    iget-object v0, p0, Lcom/squareup/picasso/Picasso$Builder;->transformer:Lcom/squareup/picasso/Picasso$RequestTransformer;

    if-nez v0, :cond_1

    .line 783
    iput-object p1, p0, Lcom/squareup/picasso/Picasso$Builder;->transformer:Lcom/squareup/picasso/Picasso$RequestTransformer;

    .line 784
    return-object p0

    .line 778
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Transformer must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 781
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Transformer already set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
