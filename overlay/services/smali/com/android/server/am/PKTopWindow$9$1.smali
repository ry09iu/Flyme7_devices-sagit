.class Lcom/android/server/am/PKTopWindow$9$1;
.super Landroid/webkit/WebViewClient;
.source "PKTopWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/PKTopWindow$9;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/am/PKTopWindow$9;


# direct methods
.method constructor <init>(Lcom/android/server/am/PKTopWindow$9;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/am/PKTopWindow$9;

    .prologue
    .line 817
    iput-object p1, p0, Lcom/android/server/am/PKTopWindow$9$1;->this$1:Lcom/android/server/am/PKTopWindow$9;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 840
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 841
    const/4 v0, 0x0

    return v0

    .line 843
    :cond_0
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 844
    const/4 v0, 0x1

    return v0
.end method
