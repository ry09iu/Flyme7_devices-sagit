.class Lcom/android/server/am/PKTopWindow$9;
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
    .line 809
    iput-object p1, p0, Lcom/android/server/am/PKTopWindow$9;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 812
    iget-object v1, p0, Lcom/android/server/am/PKTopWindow$9;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-static {v1}, Lcom/android/server/am/PKTopWindow;->-get22(Lcom/android/server/am/PKTopWindow;)Lcom/android/server/am/PKTopWindowViewFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/PKTopWindowViewFactory;->createSecondWindow()Ljava/util/List;

    move-result-object v0

    .line 813
    .local v0, "list":Ljava/util/List;
    iget-object v2, p0, Lcom/android/server/am/PKTopWindow$9;->this$0:Lcom/android/server/am/PKTopWindow;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/PKTopWindowViewFactory$SecondWindow;

    invoke-static {v2, v1}, Lcom/android/server/am/PKTopWindow;->-set4(Lcom/android/server/am/PKTopWindow;Lcom/android/server/am/PKTopWindowViewFactory$SecondWindow;)Lcom/android/server/am/PKTopWindowViewFactory$SecondWindow;

    .line 814
    iget-object v2, p0, Lcom/android/server/am/PKTopWindow$9;->this$0:Lcom/android/server/am/PKTopWindow;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager$LayoutParams;

    invoke-static {v2, v1}, Lcom/android/server/am/PKTopWindow;->-set5(Lcom/android/server/am/PKTopWindow;Landroid/view/WindowManager$LayoutParams;)Landroid/view/WindowManager$LayoutParams;

    .line 815
    iget-object v2, p0, Lcom/android/server/am/PKTopWindow$9;->this$0:Lcom/android/server/am/PKTopWindow;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/PKTopWindowViewFactory$ADWebView;

    invoke-static {v2, v1}, Lcom/android/server/am/PKTopWindow;->-set1(Lcom/android/server/am/PKTopWindow;Lcom/android/server/am/PKTopWindowViewFactory$ADWebView;)Lcom/android/server/am/PKTopWindowViewFactory$ADWebView;

    .line 816
    iget-object v1, p0, Lcom/android/server/am/PKTopWindow$9;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-static {v1}, Lcom/android/server/am/PKTopWindow;->-get3(Lcom/android/server/am/PKTopWindow;)Lcom/android/server/am/PKTopWindowViewFactory$ADWebView;

    move-result-object v1

    invoke-static {}, Lcom/android/server/am/PKTopWindow;->-get28()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/PKTopWindowViewFactory$ADWebView;->loadUrl(Ljava/lang/String;)V

    .line 817
    iget-object v1, p0, Lcom/android/server/am/PKTopWindow$9;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-static {v1}, Lcom/android/server/am/PKTopWindow;->-get3(Lcom/android/server/am/PKTopWindow;)Lcom/android/server/am/PKTopWindowViewFactory$ADWebView;

    move-result-object v1

    new-instance v2, Lcom/android/server/am/PKTopWindow$9$1;

    invoke-direct {v2, p0}, Lcom/android/server/am/PKTopWindow$9$1;-><init>(Lcom/android/server/am/PKTopWindow$9;)V

    invoke-virtual {v1, v2}, Lcom/android/server/am/PKTopWindowViewFactory$ADWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 857
    iget-object v1, p0, Lcom/android/server/am/PKTopWindow$9;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-static {v1}, Lcom/android/server/am/PKTopWindow;->-get3(Lcom/android/server/am/PKTopWindow;)Lcom/android/server/am/PKTopWindowViewFactory$ADWebView;

    move-result-object v1

    new-instance v2, Lcom/android/server/am/PKTopWindow$9$2;

    invoke-direct {v2, p0}, Lcom/android/server/am/PKTopWindow$9$2;-><init>(Lcom/android/server/am/PKTopWindow$9;)V

    invoke-virtual {v1, v2}, Lcom/android/server/am/PKTopWindowViewFactory$ADWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 870
    iget-object v1, p0, Lcom/android/server/am/PKTopWindow$9;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-static {v1}, Lcom/android/server/am/PKTopWindow;->-get3(Lcom/android/server/am/PKTopWindow;)Lcom/android/server/am/PKTopWindowViewFactory$ADWebView;

    move-result-object v1

    new-instance v2, Lcom/android/server/am/PKTopWindow$9$3;

    invoke-direct {v2, p0}, Lcom/android/server/am/PKTopWindow$9$3;-><init>(Lcom/android/server/am/PKTopWindow$9;)V

    invoke-virtual {v1, v2}, Lcom/android/server/am/PKTopWindowViewFactory$ADWebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 903
    iget-object v1, p0, Lcom/android/server/am/PKTopWindow$9;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-static {v1}, Lcom/android/server/am/PKTopWindow;->-get3(Lcom/android/server/am/PKTopWindow;)Lcom/android/server/am/PKTopWindowViewFactory$ADWebView;

    move-result-object v1

    new-instance v2, Lcom/android/server/am/PKTopWindow$9$4;

    invoke-direct {v2, p0}, Lcom/android/server/am/PKTopWindow$9$4;-><init>(Lcom/android/server/am/PKTopWindow$9;)V

    invoke-virtual {v1, v2}, Lcom/android/server/am/PKTopWindowViewFactory$ADWebView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 811
    return-void
.end method
