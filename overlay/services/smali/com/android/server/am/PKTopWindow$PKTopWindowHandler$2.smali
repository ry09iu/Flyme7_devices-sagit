.class Lcom/android/server/am/PKTopWindow$PKTopWindowHandler$2;
.super Ljava/lang/Object;
.source "PKTopWindow.java"

# interfaces
.implements Lcom/android/server/am/PKTopWindowData$GetDataASyncListener;


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
    .line 1295
    iput-object p1, p0, Lcom/android/server/am/PKTopWindow$PKTopWindowHandler$2;->this$1:Lcom/android/server/am/PKTopWindow$PKTopWindowHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetDataASyncListener(Ljava/lang/String;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 1298
    const-string/jumbo v0, "PKTopWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "userStatResult: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/am/PKTopWindowConfig$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1299
    sget-boolean v0, Lcom/android/server/am/PKTopWindowConfig;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1300
    iget-object v0, p0, Lcom/android/server/am/PKTopWindow$PKTopWindowHandler$2;->this$1:Lcom/android/server/am/PKTopWindow$PKTopWindowHandler;

    iget-object v0, v0, Lcom/android/server/am/PKTopWindow$PKTopWindowHandler;->this$0:Lcom/android/server/am/PKTopWindow;

    iget-object v0, v0, Lcom/android/server/am/PKTopWindow;->mUpdateUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/PKTopWindow$PKTopWindowHandler$2$1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/am/PKTopWindow$PKTopWindowHandler$2$1;-><init>(Lcom/android/server/am/PKTopWindow$PKTopWindowHandler$2;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1297
    :cond_0
    return-void
.end method
