.class Lcom/android/server/am/PKTopWindowData$2;
.super Ljava/lang/Object;
.source "PKTopWindowData.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/PKTopWindowData;->getASync(Lokhttp3/OkHttpClient;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/PKTopWindowData;


# direct methods
.method constructor <init>(Lcom/android/server/am/PKTopWindowData;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/PKTopWindowData;

    .prologue
    .line 191
    iput-object p1, p0, Lcom/android/server/am/PKTopWindowData$2;->this$0:Lcom/android/server/am/PKTopWindowData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 2
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "e"    # Ljava/io/IOException;

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/server/am/PKTopWindowData$2;->this$0:Lcom/android/server/am/PKTopWindowData;

    invoke-static {v0}, Lcom/android/server/am/PKTopWindowData;->-get0(Lcom/android/server/am/PKTopWindowData;)Lcom/android/server/am/PKTopWindowData$GetDataASyncListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/android/server/am/PKTopWindowData$2;->this$0:Lcom/android/server/am/PKTopWindowData;

    invoke-static {v0}, Lcom/android/server/am/PKTopWindowData;->-get0(Lcom/android/server/am/PKTopWindowData;)Lcom/android/server/am/PKTopWindowData$GetDataASyncListener;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-interface {v0, v1}, Lcom/android/server/am/PKTopWindowData$GetDataASyncListener;->onGetDataASyncListener(Ljava/lang/String;)V

    .line 193
    :cond_0
    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 6
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "response"    # Lokhttp3/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 201
    invoke-virtual {p2}, Lokhttp3/Response;->isSuccessful()Z

    move-result v3

    if-nez v3, :cond_0

    .line 202
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unexpected code "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 204
    :cond_0
    invoke-virtual {p2}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v0

    .line 205
    .local v0, "headers":Lokhttp3/Headers;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Lokhttp3/Headers;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 206
    const-string/jumbo v3, "PKTopWindowData"

    invoke-virtual {v0, v1}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/am/PKTopWindowConfig$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 208
    :cond_1
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v2

    .line 209
    .local v2, "result":Ljava/lang/String;
    const-string/jumbo v3, "PKTopWindowData"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getASync result: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/am/PKTopWindowConfig$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    iget-object v3, p0, Lcom/android/server/am/PKTopWindowData$2;->this$0:Lcom/android/server/am/PKTopWindowData;

    invoke-static {v3}, Lcom/android/server/am/PKTopWindowData;->-get0(Lcom/android/server/am/PKTopWindowData;)Lcom/android/server/am/PKTopWindowData$GetDataASyncListener;

    move-result-object v3

    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    .line 211
    iget-object v3, p0, Lcom/android/server/am/PKTopWindowData$2;->this$0:Lcom/android/server/am/PKTopWindowData;

    invoke-static {v3}, Lcom/android/server/am/PKTopWindowData;->-get0(Lcom/android/server/am/PKTopWindowData;)Lcom/android/server/am/PKTopWindowData$GetDataASyncListener;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/android/server/am/PKTopWindowData$GetDataASyncListener;->onGetDataASyncListener(Ljava/lang/String;)V

    .line 200
    :cond_2
    return-void
.end method
