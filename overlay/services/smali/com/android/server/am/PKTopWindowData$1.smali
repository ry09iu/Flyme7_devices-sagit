.class Lcom/android/server/am/PKTopWindowData$1;
.super Ljava/lang/Object;
.source "PKTopWindowData.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/PKTopWindowData;->postASync(Lokhttp3/OkHttpClient;Ljava/lang/String;Ljava/lang/String;)V
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
    .line 160
    iput-object p1, p0, Lcom/android/server/am/PKTopWindowData$1;->this$0:Lcom/android/server/am/PKTopWindowData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 2
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "e"    # Ljava/io/IOException;

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/server/am/PKTopWindowData$1;->this$0:Lcom/android/server/am/PKTopWindowData;

    invoke-static {v0}, Lcom/android/server/am/PKTopWindowData;->-get1(Lcom/android/server/am/PKTopWindowData;)Lcom/android/server/am/PKTopWindowData$PostDataASyncListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/android/server/am/PKTopWindowData$1;->this$0:Lcom/android/server/am/PKTopWindowData;

    invoke-static {v0}, Lcom/android/server/am/PKTopWindowData;->-get1(Lcom/android/server/am/PKTopWindowData;)Lcom/android/server/am/PKTopWindowData$PostDataASyncListener;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-interface {v0, v1}, Lcom/android/server/am/PKTopWindowData$PostDataASyncListener;->onPostDataASyncListener(Ljava/lang/String;)V

    .line 162
    :cond_0
    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 4
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "response"    # Lokhttp3/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 170
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v0

    .line 171
    .local v0, "result":Ljava/lang/String;
    const-string/jumbo v1, "PKTopWindowData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "postASync result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/am/PKTopWindowConfig$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    if-eqz v0, :cond_0

    .line 173
    iget-object v1, p0, Lcom/android/server/am/PKTopWindowData$1;->this$0:Lcom/android/server/am/PKTopWindowData;

    invoke-static {v1}, Lcom/android/server/am/PKTopWindowData;->-get1(Lcom/android/server/am/PKTopWindowData;)Lcom/android/server/am/PKTopWindowData$PostDataASyncListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 174
    iget-object v1, p0, Lcom/android/server/am/PKTopWindowData$1;->this$0:Lcom/android/server/am/PKTopWindowData;

    invoke-static {v1}, Lcom/android/server/am/PKTopWindowData;->-get1(Lcom/android/server/am/PKTopWindowData;)Lcom/android/server/am/PKTopWindowData$PostDataASyncListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/server/am/PKTopWindowData$PostDataASyncListener;->onPostDataASyncListener(Ljava/lang/String;)V

    .line 169
    :cond_0
    return-void
.end method
