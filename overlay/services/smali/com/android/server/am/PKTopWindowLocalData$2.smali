.class Lcom/android/server/am/PKTopWindowLocalData$2;
.super Ljava/lang/Object;
.source "PKTopWindowLocalData.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/PKTopWindowLocalData;->getDataASync(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/PKTopWindowLocalData;

.field final synthetic val$file:Ljava/io/File;

.field final synthetic val$tag:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/am/PKTopWindowLocalData;Ljava/io/File;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/PKTopWindowLocalData;
    .param p2, "val$file"    # Ljava/io/File;
    .param p3, "val$tag"    # Ljava/lang/String;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/server/am/PKTopWindowLocalData$2;->this$0:Lcom/android/server/am/PKTopWindowLocalData;

    iput-object p2, p0, Lcom/android/server/am/PKTopWindowLocalData$2;->val$file:Ljava/io/File;

    iput-object p3, p0, Lcom/android/server/am/PKTopWindowLocalData$2;->val$tag:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 0
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "e"    # Ljava/io/IOException;

    .prologue
    .line 85
    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 7
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "response"    # Lokhttp3/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 90
    const/4 v1, 0x0

    .local v1, "source":Lokio/BufferedSource;
    :try_start_0
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object v1

    .line 91
    .local v1, "source":Lokio/BufferedSource;
    iget-object v2, p0, Lcom/android/server/am/PKTopWindowLocalData$2;->val$file:Ljava/io/File;

    invoke-static {v2}, Lokio/Okio;->sink(Ljava/io/File;)Lokio/Sink;

    move-result-object v2

    invoke-static {v2}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v0

    .line 92
    .local v0, "sink":Lokio/BufferedSink;
    invoke-interface {v0, v1}, Lokio/BufferedSink;->writeAll(Lokio/Source;)J

    .line 93
    invoke-interface {v0}, Lokio/BufferedSink;->close()V

    .line 94
    iget-object v2, p0, Lcom/android/server/am/PKTopWindowLocalData$2;->this$0:Lcom/android/server/am/PKTopWindowLocalData;

    invoke-static {v2}, Lcom/android/server/am/PKTopWindowLocalData;->-get0(Lcom/android/server/am/PKTopWindowLocalData;)Lcom/android/server/am/PKTopWindowLocalData$GetDataASyncListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 95
    iget-object v2, p0, Lcom/android/server/am/PKTopWindowLocalData$2;->this$0:Lcom/android/server/am/PKTopWindowLocalData;

    invoke-static {v2}, Lcom/android/server/am/PKTopWindowLocalData;->-get0(Lcom/android/server/am/PKTopWindowLocalData;)Lcom/android/server/am/PKTopWindowLocalData$GetDataASyncListener;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/am/PKTopWindowLocalData$2;->val$tag:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-interface {v2, v5, v4}, Lcom/android/server/am/PKTopWindowLocalData$GetDataASyncListener;->onGetDataASync(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 97
    :cond_0
    if-eqz v1, :cond_1

    :try_start_1
    invoke-interface {v1}, Lokio/BufferedSource;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_0
    if-eqz v3, :cond_5

    throw v3

    :catch_0
    move-exception v3

    goto :goto_0

    .end local v0    # "sink":Lokio/BufferedSink;
    .end local v1    # "source":Lokio/BufferedSource;
    :catch_1
    move-exception v2

    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v3

    move-object v6, v3

    move-object v3, v2

    move-object v2, v6

    :goto_1
    if-eqz v1, :cond_2

    :try_start_3
    invoke-interface {v1}, Lokio/BufferedSource;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_2
    :goto_2
    if-eqz v3, :cond_4

    throw v3

    :catch_2
    move-exception v4

    if-nez v3, :cond_3

    move-object v3, v4

    goto :goto_2

    :cond_3
    if-eq v3, v4, :cond_2

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_4
    throw v2

    .line 89
    .restart local v0    # "sink":Lokio/BufferedSink;
    .restart local v1    # "source":Lokio/BufferedSource;
    :cond_5
    return-void

    .line 97
    .end local v0    # "sink":Lokio/BufferedSink;
    .end local v1    # "source":Lokio/BufferedSource;
    :catchall_1
    move-exception v2

    goto :goto_1
.end method
