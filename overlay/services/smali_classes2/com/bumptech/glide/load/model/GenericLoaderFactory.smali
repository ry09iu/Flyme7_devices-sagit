.class public Lcom/bumptech/glide/load/model/GenericLoaderFactory;
.super Ljava/lang/Object;
.source "GenericLoaderFactory.java"


# static fields
.field private static final NULL_MODEL_LOADER:Lcom/bumptech/glide/load/model/ModelLoader;


# instance fields
.field private final cachedModelLoaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class;",
            "Lcom/bumptech/glide/load/model/ModelLoader;",
            ">;>;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private final modelClassToResourceFactories:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class;",
            "Lcom/bumptech/glide/load/model/ModelLoaderFactory;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lcom/bumptech/glide/load/model/GenericLoaderFactory$1;

    invoke-direct {v0}, Lcom/bumptech/glide/load/model/GenericLoaderFactory$1;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/model/GenericLoaderFactory;->NULL_MODEL_LOADER:Lcom/bumptech/glide/load/model/ModelLoader;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/model/GenericLoaderFactory;->modelClassToResourceFactories:Ljava/util/Map;

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/model/GenericLoaderFactory;->cachedModelLoaders:Ljava/util/Map;

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/model/GenericLoaderFactory;->context:Landroid/content/Context;

    .line 38
    return-void
.end method

.method private cacheModelLoader(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "Y:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Class",
            "<TY;>;",
            "Lcom/bumptech/glide/load/model/ModelLoader",
            "<TT;TY;>;)V"
        }
    .end annotation

    .prologue
    .line 154
    iget-object v0, p0, Lcom/bumptech/glide/load/model/GenericLoaderFactory;->cachedModelLoaders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 155
    if-eqz v0, :cond_0

    .line 159
    :goto_0
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    return-void

    .line 156
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 157
    iget-object v1, p0, Lcom/bumptech/glide/load/model/GenericLoaderFactory;->cachedModelLoaders:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private cacheNullLoader(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "Y:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Class",
            "<TY;>;)V"
        }
    .end annotation

    .prologue
    .line 150
    sget-object v0, Lcom/bumptech/glide/load/model/GenericLoaderFactory;->NULL_MODEL_LOADER:Lcom/bumptech/glide/load/model/ModelLoader;

    invoke-direct {p0, p1, p2, v0}, Lcom/bumptech/glide/load/model/GenericLoaderFactory;->cacheModelLoader(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoader;)V

    .line 151
    return-void
.end method

.method private getCachedLoader(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/model/ModelLoader;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "Y:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Class",
            "<TY;>;)",
            "Lcom/bumptech/glide/load/model/ModelLoader",
            "<TT;TY;>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 163
    iget-object v0, p0, Lcom/bumptech/glide/load/model/GenericLoaderFactory;->cachedModelLoaders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 165
    if-nez v0, :cond_0

    move-object v0, v1

    .line 169
    :goto_0
    return-object v0

    .line 166
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/model/ModelLoader;

    goto :goto_0
.end method

.method private getFactory(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/model/ModelLoaderFactory;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "Y:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Class",
            "<TY;>;)",
            "Lcom/bumptech/glide/load/model/ModelLoaderFactory",
            "<TT;TY;>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 173
    iget-object v0, p0, Lcom/bumptech/glide/load/model/GenericLoaderFactory;->modelClassToResourceFactories:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 175
    if-nez v0, :cond_1

    move-object v0, v1

    .line 179
    :goto_0
    if-eqz v0, :cond_2

    .line 199
    :cond_0
    :goto_1
    return-object v0

    .line 176
    :cond_1
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/model/ModelLoaderFactory;

    goto :goto_0

    .line 180
    :cond_2
    iget-object v1, p0, Lcom/bumptech/glide/load/model/GenericLoaderFactory;->modelClassToResourceFactories:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    move-object v0, v1

    goto :goto_1

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 186
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_4

    move-object v0, v1

    :goto_3
    move-object v1, v0

    .line 196
    goto :goto_2

    .line 187
    :cond_4
    iget-object v3, p0, Lcom/bumptech/glide/load/model/GenericLoaderFactory;->modelClassToResourceFactories:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 189
    if-nez v0, :cond_5

    move-object v0, v1

    goto :goto_3

    .line 190
    :cond_5
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/model/ModelLoaderFactory;

    .line 191
    if-nez v0, :cond_0

    goto :goto_3
.end method


# virtual methods
.method public declared-synchronized buildModelLoader(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/model/ModelLoader;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "Y:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Class",
            "<TY;>;)",
            "Lcom/bumptech/glide/load/model/ModelLoader",
            "<TT;TY;>;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    monitor-enter p0

    .line 126
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/bumptech/glide/load/model/GenericLoaderFactory;->getCachedLoader(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/model/ModelLoader;

    move-result-object v0

    .line 127
    if-nez v0, :cond_0

    .line 138
    invoke-direct {p0, p1, p2}, Lcom/bumptech/glide/load/model/GenericLoaderFactory;->getFactory(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/model/ModelLoaderFactory;

    move-result-object v1

    .line 139
    if-nez v1, :cond_2

    .line 144
    invoke-direct {p0, p1, p2}, Lcom/bumptech/glide/load/model/GenericLoaderFactory;->cacheNullLoader(Ljava/lang/Class;Ljava/lang/Class;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    .line 146
    return-object v0

    .line 131
    :cond_0
    :try_start_1
    sget-object v1, Lcom/bumptech/glide/load/model/GenericLoaderFactory;->NULL_MODEL_LOADER:Lcom/bumptech/glide/load/model/ModelLoader;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    monitor-exit p0

    .line 134
    return-object v0

    :cond_1
    monitor-exit p0

    .line 132
    return-object v2

    .line 140
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/bumptech/glide/load/model/GenericLoaderFactory;->context:Landroid/content/Context;

    invoke-interface {v1, v0, p0}, Lcom/bumptech/glide/load/model/ModelLoaderFactory;->build(Landroid/content/Context;Lcom/bumptech/glide/load/model/GenericLoaderFactory;)Lcom/bumptech/glide/load/model/ModelLoader;

    move-result-object v0

    .line 141
    invoke-direct {p0, p1, p2, v0}, Lcom/bumptech/glide/load/model/GenericLoaderFactory;->cacheModelLoader(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoader;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized buildModelLoader(Ljava/lang/Class;Ljava/lang/Class;Landroid/content/Context;)Lcom/bumptech/glide/load/model/ModelLoader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "Y:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Class",
            "<TY;>;",
            "Landroid/content/Context;",
            ")",
            "Lcom/bumptech/glide/load/model/ModelLoader",
            "<TT;TY;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    monitor-enter p0

    .line 112
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/load/model/GenericLoaderFactory;->buildModelLoader(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/model/ModelLoader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized register(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/load/model/ModelLoaderFactory;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "Y:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Class",
            "<TY;>;",
            "Lcom/bumptech/glide/load/model/ModelLoaderFactory",
            "<TT;TY;>;)",
            "Lcom/bumptech/glide/load/model/ModelLoaderFactory",
            "<TT;TY;>;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    monitor-enter p0

    .line 73
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/load/model/GenericLoaderFactory;->cachedModelLoaders:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 75
    iget-object v0, p0, Lcom/bumptech/glide/load/model/GenericLoaderFactory;->modelClassToResourceFactories:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 76
    if-eqz v0, :cond_1

    .line 81
    :goto_0
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/model/ModelLoaderFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    if-nez v0, :cond_2

    :cond_0
    :goto_1
    monitor-exit p0

    .line 94
    return-object v0

    .line 77
    :cond_1
    :try_start_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 78
    iget-object v1, p0, Lcom/bumptech/glide/load/model/GenericLoaderFactory;->modelClassToResourceFactories:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 86
    :cond_2
    :try_start_2
    iget-object v1, p0, Lcom/bumptech/glide/load/model/GenericLoaderFactory;->modelClassToResourceFactories:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 87
    invoke-interface {v1, v0}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    if-eqz v1, :cond_3

    move-object v0, v2

    .line 89
    goto :goto_1
.end method

.method public declared-synchronized unregister(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/model/ModelLoaderFactory;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "Y:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Class",
            "<TY;>;)",
            "Lcom/bumptech/glide/load/model/ModelLoaderFactory",
            "<TT;TY;>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    monitor-enter p0

    .line 50
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/load/model/GenericLoaderFactory;->cachedModelLoaders:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 53
    iget-object v0, p0, Lcom/bumptech/glide/load/model/GenericLoaderFactory;->modelClassToResourceFactories:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    monitor-exit p0

    .line 57
    return-object v0

    .line 55
    :cond_0
    :try_start_1
    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/model/ModelLoaderFactory;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
