.class Lcom/android/server/am/PKTopWindow$10;
.super Ljava/lang/Object;
.source "PKTopWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/PKTopWindow;->showSecondWindow()V
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
    .line 943
    iput-object p1, p0, Lcom/android/server/am/PKTopWindow$10;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 947
    iget-object v0, p0, Lcom/android/server/am/PKTopWindow$10;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-static {v0}, Lcom/android/server/am/PKTopWindow;->-get12(Lcom/android/server/am/PKTopWindow;)Lcom/android/server/am/PKTopWindowEvent;

    move-result-object v0

    if-nez v0, :cond_2

    .line 948
    iget-object v0, p0, Lcom/android/server/am/PKTopWindow$10;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-static {v0}, Lcom/android/server/am/PKTopWindow;->-get3(Lcom/android/server/am/PKTopWindow;)Lcom/android/server/am/PKTopWindowViewFactory$ADWebView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 949
    iget-object v0, p0, Lcom/android/server/am/PKTopWindow$10;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-static {v0}, Lcom/android/server/am/PKTopWindow;->-get3(Lcom/android/server/am/PKTopWindow;)Lcom/android/server/am/PKTopWindowViewFactory$ADWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/PKTopWindowViewFactory$ADWebView;->stopLoading()V

    .line 950
    iget-object v0, p0, Lcom/android/server/am/PKTopWindow$10;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-static {v0}, Lcom/android/server/am/PKTopWindow;->-get3(Lcom/android/server/am/PKTopWindow;)Lcom/android/server/am/PKTopWindowViewFactory$ADWebView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/am/PKTopWindowViewFactory$ADWebView;->clearCache(Z)V

    .line 951
    iget-object v0, p0, Lcom/android/server/am/PKTopWindow$10;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-static {v0}, Lcom/android/server/am/PKTopWindow;->-get3(Lcom/android/server/am/PKTopWindow;)Lcom/android/server/am/PKTopWindowViewFactory$ADWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/PKTopWindowViewFactory$ADWebView;->clearFormData()V

    .line 952
    iget-object v0, p0, Lcom/android/server/am/PKTopWindow$10;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-static {v0}, Lcom/android/server/am/PKTopWindow;->-get3(Lcom/android/server/am/PKTopWindow;)Lcom/android/server/am/PKTopWindowViewFactory$ADWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/PKTopWindowViewFactory$ADWebView;->clearHistory()V

    .line 953
    iget-object v0, p0, Lcom/android/server/am/PKTopWindow$10;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-static {v0}, Lcom/android/server/am/PKTopWindow;->-get3(Lcom/android/server/am/PKTopWindow;)Lcom/android/server/am/PKTopWindowViewFactory$ADWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/PKTopWindowViewFactory$ADWebView;->clearMatches()V

    .line 954
    iget-object v0, p0, Lcom/android/server/am/PKTopWindow$10;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-static {v0}, Lcom/android/server/am/PKTopWindow;->-get3(Lcom/android/server/am/PKTopWindow;)Lcom/android/server/am/PKTopWindowViewFactory$ADWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/PKTopWindowViewFactory$ADWebView;->clearSslPreferences()V

    .line 955
    iget-object v0, p0, Lcom/android/server/am/PKTopWindow$10;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-static {v0}, Lcom/android/server/am/PKTopWindow;->-get3(Lcom/android/server/am/PKTopWindow;)Lcom/android/server/am/PKTopWindowViewFactory$ADWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/PKTopWindowViewFactory$ADWebView;->clearDisappearingChildren()V

    .line 956
    iget-object v0, p0, Lcom/android/server/am/PKTopWindow$10;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-static {v0}, Lcom/android/server/am/PKTopWindow;->-get3(Lcom/android/server/am/PKTopWindow;)Lcom/android/server/am/PKTopWindowViewFactory$ADWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/PKTopWindowViewFactory$ADWebView;->clearAnimation()V

    .line 957
    iget-object v0, p0, Lcom/android/server/am/PKTopWindow$10;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-static {v0}, Lcom/android/server/am/PKTopWindow;->-get18(Lcom/android/server/am/PKTopWindow;)Lcom/android/server/am/PKTopWindowViewFactory$SecondWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 958
    iget-object v0, p0, Lcom/android/server/am/PKTopWindow$10;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-static {v0}, Lcom/android/server/am/PKTopWindow;->-get18(Lcom/android/server/am/PKTopWindow;)Lcom/android/server/am/PKTopWindowViewFactory$SecondWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/PKTopWindowViewFactory$SecondWindow;->removeAllViews()V

    .line 960
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/PKTopWindow$10;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-static {v0}, Lcom/android/server/am/PKTopWindow;->-get3(Lcom/android/server/am/PKTopWindow;)Lcom/android/server/am/PKTopWindowViewFactory$ADWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/PKTopWindowViewFactory$ADWebView;->destroyDrawingCache()V

    .line 961
    iget-object v0, p0, Lcom/android/server/am/PKTopWindow$10;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-static {v0}, Lcom/android/server/am/PKTopWindow;->-get3(Lcom/android/server/am/PKTopWindow;)Lcom/android/server/am/PKTopWindowViewFactory$ADWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/PKTopWindowViewFactory$ADWebView;->destroy()V

    .line 962
    iget-object v0, p0, Lcom/android/server/am/PKTopWindow$10;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-static {v0, v2}, Lcom/android/server/am/PKTopWindow;->-set1(Lcom/android/server/am/PKTopWindow;Lcom/android/server/am/PKTopWindowViewFactory$ADWebView;)Lcom/android/server/am/PKTopWindowViewFactory$ADWebView;

    .line 964
    :cond_1
    return-void

    .line 966
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/PKTopWindow$10;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-static {v0}, Lcom/android/server/am/PKTopWindow;->-get23(Lcom/android/server/am/PKTopWindow;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/PKTopWindow$10;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-static {v1}, Lcom/android/server/am/PKTopWindow;->-get18(Lcom/android/server/am/PKTopWindow;)Lcom/android/server/am/PKTopWindowViewFactory$SecondWindow;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/PKTopWindow$10;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-static {v2}, Lcom/android/server/am/PKTopWindow;->-get19(Lcom/android/server/am/PKTopWindow;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 945
    return-void
.end method
