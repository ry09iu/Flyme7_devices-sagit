.class public Lcom/android/server/am/PKTopWindowLocalData;
.super Ljava/lang/Object;
.source "PKTopWindowLocalData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/PKTopWindowLocalData$GetDataASyncListener;,
        Lcom/android/server/am/PKTopWindowLocalData$PostDataASyncListener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "PKTopWindowLocalData"

.field public static final TAG_BACKUP_SERVER:Ljava/lang/String; = "backup_server"

.field public static final TAG_DOWNLOAD_PK_ICON:Ljava/lang/String; = "download_pk_icon"

.field public static final TAG_SYNC_PK_ICON:Ljava/lang/String; = "sync_pk_icon"

.field public static final TAG_SYNC_WHITE_PACKS:Ljava/lang/String; = "sync_white_packs"

.field private static volatile sInstance:Lcom/android/server/am/PKTopWindowLocalData;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mGetDataASyncListener:Lcom/android/server/am/PKTopWindowLocalData$GetDataASyncListener;

.field private mOkHttpClient:Lokhttp3/OkHttpClient;

.field private mPostDataASyncListener:Lcom/android/server/am/PKTopWindowLocalData$PostDataASyncListener;


# direct methods
.method static synthetic -get0(Lcom/android/server/am/PKTopWindowLocalData;)Lcom/android/server/am/PKTopWindowLocalData$GetDataASyncListener;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/PKTopWindowLocalData;->mGetDataASyncListener:Lcom/android/server/am/PKTopWindowLocalData$GetDataASyncListener;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/am/PKTopWindowLocalData;)Lcom/android/server/am/PKTopWindowLocalData$PostDataASyncListener;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/PKTopWindowLocalData;->mPostDataASyncListener:Lcom/android/server/am/PKTopWindowLocalData$PostDataASyncListener;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/PKTopWindowLocalData;->sInstance:Lcom/android/server/am/PKTopWindowLocalData;

    .line 30
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/android/server/am/PKTopWindowLocalData;->mContext:Landroid/content/Context;

    .line 44
    new-instance v0, Lokhttp3/OkHttpClient;

    invoke-direct {v0}, Lokhttp3/OkHttpClient;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/PKTopWindowLocalData;->mOkHttpClient:Lokhttp3/OkHttpClient;

    .line 42
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/am/PKTopWindowLocalData;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    sget-object v0, Lcom/android/server/am/PKTopWindowLocalData;->sInstance:Lcom/android/server/am/PKTopWindowLocalData;

    .line 49
    .local v0, "localData":Lcom/android/server/am/PKTopWindowLocalData;
    if-nez v0, :cond_1

    .line 50
    const-class v3, Lcom/android/server/am/PKTopWindowLocalData;

    monitor-enter v3

    .line 51
    :try_start_0
    sget-object v0, Lcom/android/server/am/PKTopWindowLocalData;->sInstance:Lcom/android/server/am/PKTopWindowLocalData;

    .line 52
    if-nez v0, :cond_0

    .line 53
    new-instance v1, Lcom/android/server/am/PKTopWindowLocalData;

    invoke-direct {v1, p0}, Lcom/android/server/am/PKTopWindowLocalData;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    .end local v0    # "localData":Lcom/android/server/am/PKTopWindowLocalData;
    .local v1, "localData":Lcom/android/server/am/PKTopWindowLocalData;
    :try_start_1
    sput-object v1, Lcom/android/server/am/PKTopWindowLocalData;->sInstance:Lcom/android/server/am/PKTopWindowLocalData;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    .end local v1    # "localData":Lcom/android/server/am/PKTopWindowLocalData;
    .restart local v0    # "localData":Lcom/android/server/am/PKTopWindowLocalData;
    :cond_0
    monitor-exit v3

    .line 58
    :cond_1
    return-object v0

    .line 50
    :catchall_0
    move-exception v2

    :goto_0
    monitor-exit v3

    throw v2

    .end local v0    # "localData":Lcom/android/server/am/PKTopWindowLocalData;
    .restart local v1    # "localData":Lcom/android/server/am/PKTopWindowLocalData;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "localData":Lcom/android/server/am/PKTopWindowLocalData;
    .restart local v0    # "localData":Lcom/android/server/am/PKTopWindowLocalData;
    goto :goto_0
.end method


# virtual methods
.method getDataASync(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;
    .param p3, "tag"    # Ljava/lang/String;

    .prologue
    .line 82
    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v1, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 83
    .local v0, "request":Lokhttp3/Request;
    iget-object v1, p0, Lcom/android/server/am/PKTopWindowLocalData;->mOkHttpClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v1

    new-instance v2, Lcom/android/server/am/PKTopWindowLocalData$2;

    invoke-direct {v2, p0, p2, p3}, Lcom/android/server/am/PKTopWindowLocalData$2;-><init>(Lcom/android/server/am/PKTopWindowLocalData;Ljava/io/File;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 81
    return-void
.end method

.method getDataASync(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 62
    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v1, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 63
    .local v0, "request":Lokhttp3/Request;
    iget-object v1, p0, Lcom/android/server/am/PKTopWindowLocalData;->mOkHttpClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v1

    new-instance v2, Lcom/android/server/am/PKTopWindowLocalData$1;

    invoke-direct {v2, p0, p2}, Lcom/android/server/am/PKTopWindowLocalData$1;-><init>(Lcom/android/server/am/PKTopWindowLocalData;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 61
    return-void
.end method

.method postDataASync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "json"    # Ljava/lang/String;
    .param p3, "tag"    # Ljava/lang/String;

    .prologue
    .line 103
    const-string/jumbo v2, "application/json; charset=utf-8"

    invoke-static {v2}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v2

    invoke-static {v2, p2}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v0

    .line 104
    .local v0, "body":Lokhttp3/RequestBody;
    new-instance v2, Lokhttp3/Request$Builder;

    invoke-direct {v2}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v2, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v1

    .line 108
    .local v1, "request":Lokhttp3/Request;
    iget-object v2, p0, Lcom/android/server/am/PKTopWindowLocalData;->mOkHttpClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v2, v1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v2

    new-instance v3, Lcom/android/server/am/PKTopWindowLocalData$3;

    invoke-direct {v3, p0, p3}, Lcom/android/server/am/PKTopWindowLocalData$3;-><init>(Lcom/android/server/am/PKTopWindowLocalData;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 102
    return-void
.end method

.method setOnGetDataASync(Lcom/android/server/am/PKTopWindowLocalData$GetDataASyncListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/server/am/PKTopWindowLocalData$GetDataASyncListener;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/android/server/am/PKTopWindowLocalData;->mGetDataASyncListener:Lcom/android/server/am/PKTopWindowLocalData$GetDataASyncListener;

    .line 127
    return-void
.end method

.method setOnPostDataASync(Lcom/android/server/am/PKTopWindowLocalData$PostDataASyncListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/server/am/PKTopWindowLocalData$PostDataASyncListener;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/android/server/am/PKTopWindowLocalData;->mPostDataASyncListener:Lcom/android/server/am/PKTopWindowLocalData$PostDataASyncListener;

    .line 131
    return-void
.end method
