.class Lcom/android/server/am/PKTopWindow$9$4;
.super Ljava/lang/Object;
.source "PKTopWindow.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/PKTopWindow$9;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field count:I

.field final synthetic this$1:Lcom/android/server/am/PKTopWindow$9;


# direct methods
.method constructor <init>(Lcom/android/server/am/PKTopWindow$9;)V
    .locals 1
    .param p1, "this$1"    # Lcom/android/server/am/PKTopWindow$9;

    .prologue
    .line 903
    iput-object p1, p0, Lcom/android/server/am/PKTopWindow$9$4;->this$1:Lcom/android/server/am/PKTopWindow$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 904
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/PKTopWindow$9$4;->count:I

    .line 903
    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x1

    .line 908
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 909
    sparse-switch p2, :sswitch_data_0

    .line 938
    :cond_0
    :goto_0
    :sswitch_0
    return v3

    .line 911
    :sswitch_1
    const-string/jumbo v1, "PKTopWindow"

    const-string/jumbo v2, "onKey KEYCODE_BACK"

    invoke-static {v1, v2}, Lcom/android/server/am/PKTopWindowConfig$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 912
    instance-of v1, p1, Landroid/webkit/WebView;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 913
    check-cast v0, Lcom/android/server/am/PKTopWindowViewFactory$ADWebView;

    .line 914
    .local v0, "adWebView":Landroid/webkit/WebView;
    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 915
    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 917
    iget-object v1, p0, Lcom/android/server/am/PKTopWindow$9$4;->this$1:Lcom/android/server/am/PKTopWindow$9;

    iget-object v1, v1, Lcom/android/server/am/PKTopWindow$9;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-static {v1}, Lcom/android/server/am/PKTopWindow;->-get11(Lcom/android/server/am/PKTopWindow;)Lcom/android/server/am/PKTopWindowData;

    move-result-object v1

    const-string/jumbo v2, "ADVIEW_CLICKED_ACTUAL"

    invoke-virtual {v1, v2}, Lcom/android/server/am/PKTopWindowData;->mtjPageEnd(Ljava/lang/String;)V

    goto :goto_0

    .line 919
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/PKTopWindow$9$4;->this$1:Lcom/android/server/am/PKTopWindow$9;

    iget-object v1, v1, Lcom/android/server/am/PKTopWindow$9;->this$0:Lcom/android/server/am/PKTopWindow;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/android/server/am/PKTopWindow;->dismissWindowsAt(I)V

    goto :goto_0

    .line 909
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x4 -> :sswitch_1
        0xbb -> :sswitch_0
        0xdb -> :sswitch_0
    .end sparse-switch
.end method
