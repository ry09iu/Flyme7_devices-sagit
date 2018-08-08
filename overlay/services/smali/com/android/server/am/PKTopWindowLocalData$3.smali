.class Lcom/android/server/am/PKTopWindowLocalData$3;
.super Ljava/lang/Object;
.source "PKTopWindowLocalData.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/PKTopWindowLocalData;->postDataASync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/PKTopWindowLocalData;

.field final synthetic val$tag:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/am/PKTopWindowLocalData;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/PKTopWindowLocalData;
    .param p2, "val$tag"    # Ljava/lang/String;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/android/server/am/PKTopWindowLocalData$3;->this$0:Lcom/android/server/am/PKTopWindowLocalData;

    iput-object p2, p0, Lcom/android/server/am/PKTopWindowLocalData$3;->val$tag:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 0
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "e"    # Ljava/io/IOException;

    .prologue
    .line 110
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
    .line 116
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, "result":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 118
    iget-object v1, p0, Lcom/android/server/am/PKTopWindowLocalData$3;->this$0:Lcom/android/server/am/PKTopWindowLocalData;

    invoke-static {v1}, Lcom/android/server/am/PKTopWindowLocalData;->-get1(Lcom/android/server/am/PKTopWindowLocalData;)Lcom/android/server/am/PKTopWindowLocalData$PostDataASyncListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 119
    iget-object v1, p0, Lcom/android/server/am/PKTopWindowLocalData$3;->this$0:Lcom/android/server/am/PKTopWindowLocalData;

    invoke-static {v1}, Lcom/android/server/am/PKTopWindowLocalData;->-get1(Lcom/android/server/am/PKTopWindowLocalData;)Lcom/android/server/am/PKTopWindowLocalData$PostDataASyncListener;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/PKTopWindowLocalData$3;->val$tag:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Lcom/android/server/am/PKTopWindowLocalData$PostDataASyncListener;->onPostDataASync(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    :cond_0
    const-string/jumbo v1, "PKTopWindowLocalData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "postDataASync result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/am/PKTopWindowConfig$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    :cond_1
    return-void
.end method
