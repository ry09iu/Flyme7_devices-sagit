.class Lcom/android/server/am/PKTopWindow$PKTopWindowHandler$1;
.super Ljava/lang/Object;
.source "PKTopWindow.java"

# interfaces
.implements Lcom/android/server/am/PKTopWindowData$PostDataASyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/PKTopWindow$PKTopWindowHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/am/PKTopWindow$PKTopWindowHandler;


# direct methods
.method constructor <init>(Lcom/android/server/am/PKTopWindow$PKTopWindowHandler;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/am/PKTopWindow$PKTopWindowHandler;

    .prologue
    .line 1242
    iput-object p1, p0, Lcom/android/server/am/PKTopWindow$PKTopWindowHandler$1;->this$1:Lcom/android/server/am/PKTopWindow$PKTopWindowHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPostDataASyncListener(Ljava/lang/String;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 1245
    const-string/jumbo v0, "PKTopWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "viewResult: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/am/PKTopWindowConfig$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1246
    const-string/jumbo v0, "true"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1248
    iget-object v0, p0, Lcom/android/server/am/PKTopWindow$PKTopWindowHandler$1;->this$1:Lcom/android/server/am/PKTopWindow$PKTopWindowHandler;

    iget-object v0, v0, Lcom/android/server/am/PKTopWindow$PKTopWindowHandler;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-static {v0}, Lcom/android/server/am/PKTopWindow;->-get11(Lcom/android/server/am/PKTopWindow;)Lcom/android/server/am/PKTopWindowData;

    move-result-object v0

    const-string/jumbo v1, "ADVIEW_VIEWED"

    invoke-virtual {v0, v1}, Lcom/android/server/am/PKTopWindowData;->mtjPageEnd(Ljava/lang/String;)V

    .line 1250
    :cond_0
    sget-boolean v0, Lcom/android/server/am/PKTopWindowConfig;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 1251
    iget-object v0, p0, Lcom/android/server/am/PKTopWindow$PKTopWindowHandler$1;->this$1:Lcom/android/server/am/PKTopWindow$PKTopWindowHandler;

    iget-object v0, v0, Lcom/android/server/am/PKTopWindow$PKTopWindowHandler;->this$0:Lcom/android/server/am/PKTopWindow;

    iget-object v0, v0, Lcom/android/server/am/PKTopWindow;->mUpdateUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/PKTopWindow$PKTopWindowHandler$1$1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/am/PKTopWindow$PKTopWindowHandler$1$1;-><init>(Lcom/android/server/am/PKTopWindow$PKTopWindowHandler$1;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1244
    :cond_1
    return-void
.end method
