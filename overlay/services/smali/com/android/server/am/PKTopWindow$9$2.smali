.class Lcom/android/server/am/PKTopWindow$9$2;
.super Landroid/webkit/WebChromeClient;
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
    .line 857
    iput-object p1, p0, Lcom/android/server/am/PKTopWindow$9$2;->this$1:Lcom/android/server/am/PKTopWindow$9;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "newProgress"    # I

    .prologue
    .line 866
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 865
    return-void
.end method
