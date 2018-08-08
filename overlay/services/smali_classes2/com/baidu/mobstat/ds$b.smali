.class public Lcom/baidu/mobstat/ds$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/mobstat/BaiduStatJSInterface$IWebviewPageLoadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mobstat/ds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;Lcom/baidu/mobstat/et;)V
    .locals 2

    .prologue
    .line 185
    invoke-static {}, Lcom/baidu/mobstat/cg;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    invoke-static {}, Lcom/baidu/mobstat/eo;->c()Lcom/baidu/mobstat/eo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/eo;->b()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    const-string/jumbo v0, "WebViewInterface"

    .line 193
    invoke-virtual {p1, p3, v0}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 194
    invoke-static {}, Lcom/baidu/mobstat/ec;->a()Lcom/baidu/mobstat/ec;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/baidu/mobstat/ec;->a(Landroid/webkit/WebView;Ljava/lang/String;Lcom/baidu/mobstat/et;)V

    .line 195
    return-void

    .line 186
    :cond_0
    return-void

    .line 190
    :cond_1
    invoke-static {}, Lcom/baidu/mobstat/eo;->c()Lcom/baidu/mobstat/eo;

    move-result-object v0

    const-string/jumbo v1, "WebView onPageFinished"

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/eo;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Lcom/baidu/mobstat/et;)V
    .locals 2

    .prologue
    .line 167
    invoke-static {}, Lcom/baidu/mobstat/cg;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    invoke-static {}, Lcom/baidu/mobstat/eo;->c()Lcom/baidu/mobstat/eo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/eo;->b()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    const-string/jumbo v0, "WebViewInterface"

    .line 175
    invoke-virtual {p1, p3, v0}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    return-void

    .line 168
    :cond_0
    return-void

    .line 172
    :cond_1
    invoke-static {}, Lcom/baidu/mobstat/eo;->c()Lcom/baidu/mobstat/eo;

    move-result-object v0

    const-string/jumbo v1, "WebView onPageStarted"

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/eo;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
