.class Lcom/android/server/am/PKTopWindow$12;
.super Ljava/lang/Object;
.source "PKTopWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/PKTopWindow;->destroyADWebview()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/PKTopWindow;


# direct methods
.method constructor <init>(Lcom/android/server/am/PKTopWindow;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/PKTopWindow;

    .prologue
    .line 990
    iput-object p1, p0, Lcom/android/server/am/PKTopWindow$12;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 993
    iget-object v0, p0, Lcom/android/server/am/PKTopWindow$12;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-static {v0}, Lcom/android/server/am/PKTopWindow;->-get3(Lcom/android/server/am/PKTopWindow;)Lcom/android/server/am/PKTopWindowViewFactory$ADWebView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 994
    iget-object v0, p0, Lcom/android/server/am/PKTopWindow$12;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-static {v0}, Lcom/android/server/am/PKTopWindow;->-get3(Lcom/android/server/am/PKTopWindow;)Lcom/android/server/am/PKTopWindowViewFactory$ADWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/PKTopWindowViewFactory$ADWebView;->stopLoading()V

    .line 995
    iget-object v0, p0, Lcom/android/server/am/PKTopWindow$12;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-static {v0}, Lcom/android/server/am/PKTopWindow;->-get3(Lcom/android/server/am/PKTopWindow;)Lcom/android/server/am/PKTopWindowViewFactory$ADWebView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/am/PKTopWindowViewFactory$ADWebView;->clearCache(Z)V

    .line 996
    iget-object v0, p0, Lcom/android/server/am/PKTopWindow$12;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-static {v0}, Lcom/android/server/am/PKTopWindow;->-get3(Lcom/android/server/am/PKTopWindow;)Lcom/android/server/am/PKTopWindowViewFactory$ADWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/PKTopWindowViewFactory$ADWebView;->clearFormData()V

    .line 997
    iget-object v0, p0, Lcom/android/server/am/PKTopWindow$12;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-static {v0}, Lcom/android/server/am/PKTopWindow;->-get3(Lcom/android/server/am/PKTopWindow;)Lcom/android/server/am/PKTopWindowViewFactory$ADWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/PKTopWindowViewFactory$ADWebView;->clearHistory()V

    .line 998
    iget-object v0, p0, Lcom/android/server/am/PKTopWindow$12;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-static {v0}, Lcom/android/server/am/PKTopWindow;->-get3(Lcom/android/server/am/PKTopWindow;)Lcom/android/server/am/PKTopWindowViewFactory$ADWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/PKTopWindowViewFactory$ADWebView;->clearMatches()V

    .line 999
    iget-object v0, p0, Lcom/android/server/am/PKTopWindow$12;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-static {v0}, Lcom/android/server/am/PKTopWindow;->-get3(Lcom/android/server/am/PKTopWindow;)Lcom/android/server/am/PKTopWindowViewFactory$ADWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/PKTopWindowViewFactory$ADWebView;->clearSslPreferences()V

    .line 1000
    iget-object v0, p0, Lcom/android/server/am/PKTopWindow$12;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-static {v0}, Lcom/android/server/am/PKTopWindow;->-get3(Lcom/android/server/am/PKTopWindow;)Lcom/android/server/am/PKTopWindowViewFactory$ADWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/PKTopWindowViewFactory$ADWebView;->clearDisappearingChildren()V

    .line 1001
    iget-object v0, p0, Lcom/android/server/am/PKTopWindow$12;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-static {v0}, Lcom/android/server/am/PKTopWindow;->-get3(Lcom/android/server/am/PKTopWindow;)Lcom/android/server/am/PKTopWindowViewFactory$ADWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/PKTopWindowViewFactory$ADWebView;->clearAnimation()V

    .line 1002
    iget-object v0, p0, Lcom/android/server/am/PKTopWindow$12;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-static {v0}, Lcom/android/server/am/PKTopWindow;->-get18(Lcom/android/server/am/PKTopWindow;)Lcom/android/server/am/PKTopWindowViewFactory$SecondWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1003
    iget-object v0, p0, Lcom/android/server/am/PKTopWindow$12;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-static {v0}, Lcom/android/server/am/PKTopWindow;->-get18(Lcom/android/server/am/PKTopWindow;)Lcom/android/server/am/PKTopWindowViewFactory$SecondWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/PKTopWindowViewFactory$SecondWindow;->removeAllViews()V

    .line 1005
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/PKTopWindow$12;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-static {v0}, Lcom/android/server/am/PKTopWindow;->-get3(Lcom/android/server/am/PKTopWindow;)Lcom/android/server/am/PKTopWindowViewFactory$ADWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/PKTopWindowViewFactory$ADWebView;->destroyDrawingCache()V

    .line 1006
    iget-object v0, p0, Lcom/android/server/am/PKTopWindow$12;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-static {v0}, Lcom/android/server/am/PKTopWindow;->-get3(Lcom/android/server/am/PKTopWindow;)Lcom/android/server/am/PKTopWindowViewFactory$ADWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/PKTopWindowViewFactory$ADWebView;->destroy()V

    .line 1007
    iget-object v0, p0, Lcom/android/server/am/PKTopWindow$12;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-static {v0, v2}, Lcom/android/server/am/PKTopWindow;->-set1(Lcom/android/server/am/PKTopWindow;Lcom/android/server/am/PKTopWindowViewFactory$ADWebView;)Lcom/android/server/am/PKTopWindowViewFactory$ADWebView;

    .line 992
    :cond_1
    :goto_0
    return-void

    .line 1008
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/PKTopWindow$12;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-static {v0}, Lcom/android/server/am/PKTopWindow;->-get18(Lcom/android/server/am/PKTopWindow;)Lcom/android/server/am/PKTopWindowViewFactory$SecondWindow;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1009
    iget-object v0, p0, Lcom/android/server/am/PKTopWindow$12;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-static {v0}, Lcom/android/server/am/PKTopWindow;->-get18(Lcom/android/server/am/PKTopWindow;)Lcom/android/server/am/PKTopWindowViewFactory$SecondWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/PKTopWindowViewFactory$SecondWindow;->removeAllViews()V

    goto :goto_0
.end method
