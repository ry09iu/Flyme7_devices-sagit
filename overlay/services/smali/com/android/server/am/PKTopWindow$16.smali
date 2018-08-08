.class Lcom/android/server/am/PKTopWindow$16;
.super Ljava/lang/Object;
.source "PKTopWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/PKTopWindow;->uploadUserStat(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/PKTopWindow;

.field final synthetic val$pkg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/am/PKTopWindow;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/PKTopWindow;
    .param p2, "val$pkg"    # Ljava/lang/String;

    .prologue
    .line 1183
    iput-object p1, p0, Lcom/android/server/am/PKTopWindow$16;->this$0:Lcom/android/server/am/PKTopWindow;

    iput-object p2, p0, Lcom/android/server/am/PKTopWindow$16;->val$pkg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 1186
    iget-object v2, p0, Lcom/android/server/am/PKTopWindow$16;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-static {v2}, Lcom/android/server/am/PKTopWindow;->-get11(Lcom/android/server/am/PKTopWindow;)Lcom/android/server/am/PKTopWindowData;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1188
    iget-object v2, p0, Lcom/android/server/am/PKTopWindow$16;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-static {v2}, Lcom/android/server/am/PKTopWindow;->-get11(Lcom/android/server/am/PKTopWindow;)Lcom/android/server/am/PKTopWindowData;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/PKTopWindow$16;->val$pkg:Ljava/lang/String;

    invoke-virtual {v2, v4, v3}, Lcom/android/server/am/PKTopWindowData;->requestJson(ZLjava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1189
    .local v0, "requestJsonArray":[Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/am/PKTopWindow$16;->this$0:Lcom/android/server/am/PKTopWindow;

    const/4 v3, 0x0

    aget-object v3, v0, v3

    iput-object v3, v2, Lcom/android/server/am/PKTopWindow;->fullJson:Ljava/lang/String;

    .line 1190
    iget-object v2, p0, Lcom/android/server/am/PKTopWindow$16;->this$0:Lcom/android/server/am/PKTopWindow;

    aget-object v3, v0, v4

    invoke-static {v2, v3}, Lcom/android/server/am/PKTopWindow;->-set6(Lcom/android/server/am/PKTopWindow;Ljava/lang/String;)Ljava/lang/String;

    .line 1192
    iget-object v2, p0, Lcom/android/server/am/PKTopWindow$16;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-static {v2}, Lcom/android/server/am/PKTopWindow;->-get11(Lcom/android/server/am/PKTopWindow;)Lcom/android/server/am/PKTopWindowData;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "local_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/PKTopWindow$16;->val$pkg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/am/PKTopWindowData;->getUserStat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1195
    .local v1, "userStat":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/am/PKTopWindow$16;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-static {v2}, Lcom/android/server/am/PKTopWindow;->-get11(Lcom/android/server/am/PKTopWindow;)Lcom/android/server/am/PKTopWindowData;

    move-result-object v2

    new-instance v3, Lcom/android/server/am/PKTopWindow$16$1;

    invoke-direct {v3, p0}, Lcom/android/server/am/PKTopWindow$16$1;-><init>(Lcom/android/server/am/PKTopWindow$16;)V

    .line 1200
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/server/am/PKTopWindow$16;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-static {v5}, Lcom/android/server/am/PKTopWindow;->-wrap0(Lcom/android/server/am/PKTopWindow;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "v1/user?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1195
    invoke-virtual {v2, v3, v4}, Lcom/android/server/am/PKTopWindowData;->getDataASync(Lcom/android/server/am/PKTopWindowData$GetDataASyncListener;Ljava/lang/String;)V

    .line 1185
    .end local v0    # "requestJsonArray":[Ljava/lang/String;
    .end local v1    # "userStat":Ljava/lang/String;
    :cond_0
    return-void
.end method
