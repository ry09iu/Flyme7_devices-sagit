.class public Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mobstat/BaiduStatJSInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CustomWebChromeViewClient"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/webkit/WebChromeClient;

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/mobstat/BaiduStatJSInterface$IWebviewPageLoadCallback;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/baidu/mobstat/et;

.field private e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/webkit/WebChromeClient;Ljava/util/ArrayList;Lcom/baidu/mobstat/et;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/webkit/WebChromeClient;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/mobstat/BaiduStatJSInterface$IWebviewPageLoadCallback;",
            ">;",
            "Lcom/baidu/mobstat/et;",
            ")V"
        }
    .end annotation

    .prologue
    .line 474
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    const/4 v0, 0x0

    .line 471
    iput v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;->e:I

    .line 475
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;->a:Ljava/lang/ref/WeakReference;

    .line 476
    iput-object p2, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;->b:Landroid/webkit/WebChromeClient;

    .line 477
    iput-object p3, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;->c:Ljava/util/ArrayList;

    .line 478
    iput-object p4, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;->d:Lcom/baidu/mobstat/et;

    .line 479
    return-void
.end method


# virtual methods
.method public onCloseWindow(Landroid/webkit/WebView;)V
    .locals 1

    .prologue
    .line 547
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;->b:Landroid/webkit/WebChromeClient;

    if-nez v0, :cond_0

    .line 550
    :goto_0
    return-void

    .line 548
    :cond_0
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;->b:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1}, Landroid/webkit/WebChromeClient;->onCloseWindow(Landroid/webkit/WebView;)V

    goto :goto_0
.end method

.method public onConsoleMessage(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 540
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;->b:Landroid/webkit/WebChromeClient;

    if-nez v0, :cond_0

    .line 543
    :goto_0
    return-void

    .line 541
    :cond_0
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;->b:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebChromeClient;->onConsoleMessage(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 1

    .prologue
    .line 530
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;->b:Landroid/webkit/WebChromeClient;

    if-nez v0, :cond_0

    .line 534
    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z

    move-result v0

    return v0

    .line 531
    :cond_0
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;->b:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1}, Landroid/webkit/WebChromeClient;->onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z

    move-result v0

    return v0
.end method

.method public onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
    .locals 1

    .prologue
    .line 512
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;->b:Landroid/webkit/WebChromeClient;

    if-nez v0, :cond_0

    .line 516
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z

    move-result v0

    return v0

    .line 513
    :cond_0
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;->b:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z

    move-result v0

    return v0
.end method

.method public onExceededDatabaseQuota(Ljava/lang/String;Ljava/lang/String;JJJLandroid/webkit/WebStorage$QuotaUpdater;)V
    .locals 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 556
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;->b:Landroid/webkit/WebChromeClient;

    if-nez v0, :cond_0

    .line 560
    :goto_0
    return-void

    .line 557
    :cond_0
    iget-object v1, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;->b:Landroid/webkit/WebChromeClient;

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move-object/from16 v10, p9

    invoke-virtual/range {v1 .. v10}, Landroid/webkit/WebChromeClient;->onExceededDatabaseQuota(Ljava/lang/String;Ljava/lang/String;JJJLandroid/webkit/WebStorage$QuotaUpdater;)V

    goto :goto_0
.end method

.method public onGeolocationPermissionsHidePrompt()V
    .locals 1

    .prologue
    .line 564
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;->b:Landroid/webkit/WebChromeClient;

    if-nez v0, :cond_0

    .line 567
    :goto_0
    return-void

    .line 565
    :cond_0
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;->b:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0}, Landroid/webkit/WebChromeClient;->onGeolocationPermissionsHidePrompt()V

    goto :goto_0
.end method

.method public onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .locals 1

    .prologue
    .line 571
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;->b:Landroid/webkit/WebChromeClient;

    if-nez v0, :cond_0

    .line 574
    :goto_0
    return-void

    .line 572
    :cond_0
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;->b:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebChromeClient;->onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V

    goto :goto_0
.end method

.method public onHideCustomView()V
    .locals 1

    .prologue
    .line 578
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;->b:Landroid/webkit/WebChromeClient;

    if-nez v0, :cond_0

    .line 581
    :goto_0
    return-void

    .line 579
    :cond_0
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;->b:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0}, Landroid/webkit/WebChromeClient;->onHideCustomView()V

    goto :goto_0
.end method

.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 1

    .prologue
    .line 521
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;->b:Landroid/webkit/WebChromeClient;

    if-nez v0, :cond_0

    .line 525
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result v0

    return v0

    .line 522
    :cond_0
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;->b:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result v0

    return v0
.end method

.method public onJsBeforeUnload(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 1

    .prologue
    .line 585
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;->b:Landroid/webkit/WebChromeClient;

    if-nez v0, :cond_0

    .line 589
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsBeforeUnload(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result v0

    return v0

    .line 586
    :cond_0
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;->b:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsBeforeUnload(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result v0

    return v0
.end method

.method public onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 1

    .prologue
    .line 594
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;->b:Landroid/webkit/WebChromeClient;

    if-nez v0, :cond_0

    .line 598
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result v0

    return v0

    .line 595
    :cond_0
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;->b:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result v0

    return v0
.end method

.method public onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .locals 6

    .prologue
    .line 604
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;->b:Landroid/webkit/WebChromeClient;

    if-nez v0, :cond_0

    .line 608
    invoke-super/range {p0 .. p5}, Landroid/webkit/WebChromeClient;->onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z

    move-result v0

    return v0

    .line 605
    :cond_0
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;->b:Landroid/webkit/WebChromeClient;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebChromeClient;->onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z

    move-result v0

    return v0
.end method

.method public onJsTimeout()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 614
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;->b:Landroid/webkit/WebChromeClient;

    if-nez v0, :cond_0

    .line 618
    invoke-super {p0}, Landroid/webkit/WebChromeClient;->onJsTimeout()Z

    move-result v0

    return v0

    .line 615
    :cond_0
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;->b:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0}, Landroid/webkit/WebChromeClient;->onJsTimeout()Z

    move-result v0

    return v0
.end method

.method public onPermissionRequest(Landroid/webkit/PermissionRequest;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 624
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;->b:Landroid/webkit/WebChromeClient;

    if-nez v0, :cond_0

    .line 627
    :goto_0
    return-void

    .line 625
    :cond_0
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;->b:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1}, Landroid/webkit/WebChromeClient;->onPermissionRequest(Landroid/webkit/PermissionRequest;)V

    goto :goto_0
.end method

.method public onPermissionRequestCanceled(Landroid/webkit/PermissionRequest;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 632
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;->b:Landroid/webkit/WebChromeClient;

    if-nez v0, :cond_0

    .line 635
    :goto_0
    return-void

    .line 633
    :cond_0
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;->b:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1}, Landroid/webkit/WebChromeClient;->onPermissionRequestCanceled(Landroid/webkit/PermissionRequest;)V

    goto :goto_0
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 4

    .prologue
    .line 483
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;->c:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 505
    :cond_0
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;->b:Landroid/webkit/WebChromeClient;

    if-nez v0, :cond_6

    .line 508
    :goto_0
    return-void

    .line 485
    :cond_1
    iget v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;->e:I

    if-eqz v0, :cond_4

    .line 494
    :cond_2
    iput p2, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;->e:I

    const/16 v0, 0x64

    .line 495
    if-ne p2, v0, :cond_0

    .line 496
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mobstat/BaiduStatJSInterface$IWebviewPageLoadCallback;

    .line 497
    if-eqz v0, :cond_3

    .line 500
    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;->d:Lcom/baidu/mobstat/et;

    invoke-interface {v0, p1, v2, v3}, Lcom/baidu/mobstat/BaiduStatJSInterface$IWebviewPageLoadCallback;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;Lcom/baidu/mobstat/et;)V

    goto :goto_1

    .line 486
    :cond_4
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mobstat/BaiduStatJSInterface$IWebviewPageLoadCallback;

    .line 487
    if-eqz v0, :cond_5

    .line 490
    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;->d:Lcom/baidu/mobstat/et;

    invoke-interface {v0, p1, v2, v3}, Lcom/baidu/mobstat/BaiduStatJSInterface$IWebviewPageLoadCallback;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Lcom/baidu/mobstat/et;)V

    goto :goto_2

    .line 506
    :cond_6
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;->b:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    goto :goto_0
.end method

.method public onReachedMaxAppCacheSize(JJLandroid/webkit/WebStorage$QuotaUpdater;)V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 640
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;->b:Landroid/webkit/WebChromeClient;

    if-nez v0, :cond_0

    .line 643
    :goto_0
    return-void

    .line 641
    :cond_0
    iget-object v1, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;->b:Landroid/webkit/WebChromeClient;

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Landroid/webkit/WebChromeClient;->onReachedMaxAppCacheSize(JJLandroid/webkit/WebStorage$QuotaUpdater;)V

    goto :goto_0
.end method

.method public onReceivedIcon(Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 647
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;->b:Landroid/webkit/WebChromeClient;

    if-nez v0, :cond_0

    .line 650
    :goto_0
    return-void

    .line 648
    :cond_0
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;->b:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedIcon(Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 654
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;->b:Landroid/webkit/WebChromeClient;

    if-nez v0, :cond_0

    .line 657
    :goto_0
    return-void

    .line 655
    :cond_0
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;->b:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onReceivedTouchIconUrl(Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 661
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;->b:Landroid/webkit/WebChromeClient;

    if-nez v0, :cond_0

    .line 664
    :goto_0
    return-void

    .line 662
    :cond_0
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;->b:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebChromeClient;->onReceivedTouchIconUrl(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public onRequestFocus(Landroid/webkit/WebView;)V
    .locals 1

    .prologue
    .line 668
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;->b:Landroid/webkit/WebChromeClient;

    if-nez v0, :cond_0

    .line 671
    :goto_0
    return-void

    .line 669
    :cond_0
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;->b:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1}, Landroid/webkit/WebChromeClient;->onRequestFocus(Landroid/webkit/WebView;)V

    goto :goto_0
.end method

.method public onShowCustomView(Landroid/view/View;ILandroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 684
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;->b:Landroid/webkit/WebChromeClient;

    if-nez v0, :cond_0

    .line 687
    :goto_0
    return-void

    .line 685
    :cond_0
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;->b:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebChromeClient;->onShowCustomView(Landroid/view/View;ILandroid/webkit/WebChromeClient$CustomViewCallback;)V

    goto :goto_0
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 1

    .prologue
    .line 675
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;->b:Landroid/webkit/WebChromeClient;

    if-nez v0, :cond_0

    .line 678
    :goto_0
    return-void

    .line 676
    :cond_0
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;->b:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebChromeClient;->onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    goto :goto_0
.end method

.method public onShowFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Landroid/webkit/ValueCallback",
            "<[",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/webkit/WebChromeClient$FileChooserParams;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 693
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;->b:Landroid/webkit/WebChromeClient;

    if-nez v0, :cond_0

    .line 697
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebChromeClient;->onShowFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z

    move-result v0

    return v0

    .line 694
    :cond_0
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;->b:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebChromeClient;->onShowFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z

    move-result v0

    return v0
.end method
