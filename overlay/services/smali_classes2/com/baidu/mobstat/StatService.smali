.class public Lcom/baidu/mobstat/StatService;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mobstat/StatService$WearListener;
    }
.end annotation


# static fields
.field public static final EXCEPTION_LOG:I = 0x1

.field public static final JAVA_EXCEPTION_LOG:I = 0x10

.field private static a:Z

.field private static b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    sput-boolean v0, Lcom/baidu/mobstat/StatService;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;Landroid/webkit/WebView;Landroid/webkit/WebViewClient;Landroid/webkit/WebChromeClient;Z)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi",
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 823
    if-eqz p0, :cond_0

    .line 828
    if-eqz p1, :cond_1

    .line 833
    invoke-static {p1}, Lcom/baidu/mobstat/StatService;->a(Landroid/webkit/WebView;)V

    .line 835
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 837
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    const-string/jumbo v1, "UTF-8"

    .line 838
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 839
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 841
    if-eqz p4, :cond_2

    .line 845
    new-instance v0, Lcom/baidu/mobstat/et;

    invoke-direct {v0}, Lcom/baidu/mobstat/et;-><init>()V

    const-string/jumbo v1, "WebViewInterface"

    .line 846
    invoke-virtual {p1, v0, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 848
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 851
    new-instance v2, Lcom/baidu/mobstat/cg$b;

    invoke-direct {v2}, Lcom/baidu/mobstat/cg$b;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 854
    new-instance v2, Lcom/baidu/mobstat/ds$b;

    invoke-direct {v2}, Lcom/baidu/mobstat/ds$b;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 857
    new-instance v2, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;

    invoke-direct {v2, p0, p3, v1, v0}, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;-><init>(Landroid/content/Context;Landroid/webkit/WebChromeClient;Ljava/util/ArrayList;Lcom/baidu/mobstat/et;)V

    .line 859
    invoke-virtual {p1, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    const v0, -0x17701

    .line 860
    invoke-virtual {p1, v0, v2}, Landroid/webkit/WebView;->setTag(ILjava/lang/Object;)V

    .line 869
    :goto_0
    invoke-static {}, Lcom/baidu/mobstat/BDStatCore;->instance()Lcom/baidu/mobstat/BDStatCore;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/mobstat/BDStatCore;->init(Landroid/content/Context;)V

    .line 870
    return-void

    .line 824
    :cond_0
    invoke-static {}, Lcom/baidu/mobstat/eh;->c()Lcom/baidu/mobstat/eh;

    move-result-object v0

    const-string/jumbo v1, "[WARNING] context is null, invalid"

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/eh;->c(Ljava/lang/String;)V

    .line 825
    return-void

    .line 829
    :cond_1
    invoke-static {}, Lcom/baidu/mobstat/eh;->c()Lcom/baidu/mobstat/eh;

    move-result-object v0

    const-string/jumbo v1, "[WARNING] webview is null, invalid"

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/eh;->c(Ljava/lang/String;)V

    .line 830
    return-void

    .line 842
    :cond_2
    new-instance v0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebViewClient;

    invoke-direct {v0, p0, p2, v2, v2}, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebViewClient;-><init>(Landroid/content/Context;Landroid/webkit/WebViewClient;Lcom/baidu/mobstat/BaiduStatJSInterface$IWebviewPageLoadCallback;Lcom/baidu/mobstat/et;)V

    .line 843
    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    goto :goto_0
.end method

.method private static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/mobstat/ExtraInfo;)V
    .locals 3

    .prologue
    const-class v1, Lcom/baidu/mobstat/StatService;

    monitor-enter v1

    .line 218
    if-nez p0, :cond_1

    .line 219
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/baidu/mobstat/eh;->c()Lcom/baidu/mobstat/eh;

    move-result-object v0

    const-string/jumbo v2, "[WARNING] onPageEnd parameter invalid"

    invoke-virtual {v0, v2}, Lcom/baidu/mobstat/eh;->c(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 220
    return-void

    .line 218
    :cond_1
    :try_start_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 223
    invoke-static {}, Lcom/baidu/mobstat/BDStatCore;->instance()Lcom/baidu/mobstat/BDStatCore;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/baidu/mobstat/BDStatCore;->onPageEnd(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/mobstat/ExtraInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 224
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/baidu/mobstat/ExtraInfo;Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lcom/baidu/mobstat/ExtraInfo;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const-string/jumbo v0, "onEvent(...)"

    .line 450
    invoke-static {p0, v0}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 454
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Landroid/app/Application;

    const-string/jumbo v1, "onCreate"

    .line 458
    invoke-static {v0, v1}, Lcom/baidu/mobstat/fh;->a(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v7

    .line 459
    if-nez v7, :cond_2

    .line 466
    :goto_0
    invoke-static {}, Lcom/baidu/mobstat/BDStatCore;->instance()Lcom/baidu/mobstat/BDStatCore;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 467
    invoke-static {p5}, Lcom/baidu/mobstat/fh;->a(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object v6

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    .line 466
    invoke-virtual/range {v0 .. v7}, Lcom/baidu/mobstat/BDStatCore;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/baidu/mobstat/ExtraInfo;Ljava/util/Map;Z)V

    .line 468
    return-void

    .line 451
    :cond_0
    return-void

    .line 455
    :cond_1
    return-void

    .line 460
    :cond_2
    invoke-static {}, Lcom/baidu/mobstat/eh;->c()Lcom/baidu/mobstat/eh;

    move-result-object v0

    const-string/jumbo v1, "[WARNING] onEvent \u65b9\u6cd5\u88ab Application.onCreate()\u8c03\u7528\uff0cnot a good practice; \u53ef\u80fd\u7531\u4e8e\u591a\u8fdb\u7a0b\u53cd\u590d\u91cd\u542f\u7b49\u539f\u56e0\u9020\u6210Application.onCreate() \u65b9\u6cd5\u591a\u6b21\u88ab\u6267\u884c\uff0c\u5bfc\u81f4\u542f\u52a8\u6b21\u6570\u9ad8\uff1b\u5efa\u8bae\u57cb\u70b9\u5728\u7edf\u8ba1\u8def\u5f84\u89e6\u53d1\u7684\u7b2c\u4e00\u4e2a\u9875\u9762\u4e2d\uff0c\u6bd4\u5982APP\u4e3b\u9875\u9762\u4e2d"

    .line 461
    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/eh;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLcom/baidu/mobstat/ExtraInfo;Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Lcom/baidu/mobstat/ExtraInfo;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const-string/jumbo v1, "onEventDuration(...)"

    .line 610
    invoke-static {p0, v1}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 614
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-wide/16 v2, 0x0

    .line 618
    cmp-long v1, p3, v2

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-nez v0, :cond_3

    .line 619
    invoke-static {}, Lcom/baidu/mobstat/eh;->c()Lcom/baidu/mobstat/eh;

    move-result-object v0

    const-string/jumbo v1, "[WARNING] onEventDuration duration must be greater than zero"

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/eh;->b(Ljava/lang/String;)V

    .line 620
    return-void

    .line 611
    :cond_1
    return-void

    .line 615
    :cond_2
    return-void

    :cond_3
    const-class v0, Landroid/app/Application;

    const-string/jumbo v1, "onCreate"

    .line 623
    invoke-static {v0, v1}, Lcom/baidu/mobstat/fh;->a(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v8

    .line 624
    if-nez v8, :cond_4

    .line 631
    :goto_0
    invoke-static {}, Lcom/baidu/mobstat/BDStatCore;->instance()Lcom/baidu/mobstat/BDStatCore;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 632
    invoke-static {p6}, Lcom/baidu/mobstat/fh;->a(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object v7

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    .line 631
    invoke-virtual/range {v0 .. v8}, Lcom/baidu/mobstat/BDStatCore;->onEventDuration(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLcom/baidu/mobstat/ExtraInfo;Ljava/util/Map;Z)V

    .line 633
    return-void

    .line 625
    :cond_4
    invoke-static {}, Lcom/baidu/mobstat/eh;->c()Lcom/baidu/mobstat/eh;

    move-result-object v0

    const-string/jumbo v1, "[WARNING] onEventDuration \u65b9\u6cd5\u88ab Application.onCreate()\u8c03\u7528\uff0cnot a good practice; \u53ef\u80fd\u7531\u4e8e\u591a\u8fdb\u7a0b\u53cd\u590d\u91cd\u542f\u7b49\u539f\u56e0\u9020\u6210Application.onCreate() \u65b9\u6cd5\u591a\u6b21\u88ab\u6267\u884c\uff0c\u5bfc\u81f4\u542f\u52a8\u6b21\u6570\u9ad8\uff1b\u5efa\u8bae\u57cb\u70b9\u5728\u7edf\u8ba1\u8def\u5f84\u89e6\u53d1\u7684\u7b2c\u4e00\u4e2a\u9875\u9762\u4e2d\uff0c\u6bd4\u5982APP\u4e3b\u9875\u9762\u4e2d"

    .line 626
    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/eh;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/mobstat/ExtraInfo;)V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    .line 518
    invoke-static/range {v0 .. v5}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/baidu/mobstat/ExtraInfo;Ljava/util/Map;)V

    .line 519
    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/mobstat/ExtraInfo;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/baidu/mobstat/ExtraInfo;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const-string/jumbo v0, "onEventEnd(...)"

    .line 596
    invoke-static {p0, v0}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 600
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 604
    invoke-static {}, Lcom/baidu/mobstat/BDStatCore;->instance()Lcom/baidu/mobstat/BDStatCore;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 605
    invoke-static {p4}, Lcom/baidu/mobstat/fh;->a(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object v5

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    .line 604
    invoke-virtual/range {v0 .. v5}, Lcom/baidu/mobstat/BDStatCore;->onEventEnd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/mobstat/ExtraInfo;Ljava/util/Map;)V

    .line 606
    return-void

    .line 597
    :cond_0
    return-void

    .line 601
    :cond_1
    return-void
.end method

.method private static a(Landroid/content/Context;Z)V
    .locals 2

    .prologue
    const-string/jumbo v0, "onError(...)"

    .line 439
    invoke-static {p0, v0}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 443
    invoke-static {}, Lcom/baidu/mobstat/BDStatCore;->instance()Lcom/baidu/mobstat/BDStatCore;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/mobstat/BDStatCore;->init(Landroid/content/Context;)V

    .line 445
    invoke-static {}, Lcom/baidu/mobstat/ExceptionAnalysis;->getInstance()Lcom/baidu/mobstat/ExceptionAnalysis;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/baidu/mobstat/ExceptionAnalysis;->openExceptionAnalysis(Landroid/content/Context;Z)V

    .line 446
    return-void

    .line 440
    :cond_0
    return-void
.end method

.method private static a(Landroid/webkit/WebView;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 789
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_1

    .line 790
    :cond_0
    return-void

    .line 789
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-gt v0, v1, :cond_0

    const-string/jumbo v0, "searchBoxJavaBridge_"

    .line 793
    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    const-string/jumbo v0, "accessibility"

    .line 794
    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    const-string/jumbo v0, "accessibilityTraversal"

    .line 795
    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 796
    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 684
    if-eqz p0, :cond_0

    .line 689
    const/4 v0, 0x1

    return v0

    .line 685
    :cond_0
    invoke-static {}, Lcom/baidu/mobstat/eh;->c()Lcom/baidu/mobstat/eh;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[WARNING] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", context is null, invalid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/eh;->b(Ljava/lang/String;)V

    .line 686
    const/4 v0, 0x0

    return v0
.end method

.method private static a(Ljava/lang/Class;Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    const/4 v0, 0x2

    .line 54
    :goto_0
    array-length v2, v3

    if-lt v0, v2, :cond_0

    .line 70
    return v1

    .line 55
    :cond_0
    aget-object v2, v3, v0

    .line 56
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 54
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 58
    :cond_1
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 59
    :goto_2
    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v4

    if-nez v4, :cond_3

    :cond_2
    const/4 v1, 0x1

    .line 63
    goto :goto_1

    .line 59
    :cond_3
    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v4

    if-eq v4, p0, :cond_2

    .line 60
    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_2

    .line 66
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public static autoTrace(Landroid/content/Context;ZZ)V
    .locals 2

    .prologue
    .line 980
    if-eqz p1, :cond_0

    const-string/jumbo v0, "autoTrace(...)"

    .line 984
    invoke-static {p0, v0}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 988
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/mobstat/CooperService;->getAppKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 989
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 995
    invoke-static {v0}, Lcom/baidu/mobstat/cg;->a(Ljava/lang/String;)V

    .line 996
    invoke-static {p2}, Lcom/baidu/mobstat/cg;->a(Z)V

    .line 998
    sget-boolean v0, Lcom/baidu/mobstat/StatService;->b:Z

    if-eqz v0, :cond_3

    .line 1002
    :goto_0
    invoke-static {}, Lcom/baidu/mobstat/BDStatCore;->instance()Lcom/baidu/mobstat/BDStatCore;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/mobstat/BDStatCore;->init(Landroid/content/Context;)V

    .line 1003
    return-void

    .line 981
    :cond_0
    return-void

    .line 985
    :cond_1
    return-void

    .line 990
    :cond_2
    invoke-static {}, Lcom/baidu/mobstat/eh;->c()Lcom/baidu/mobstat/eh;

    move-result-object v0

    const-string/jumbo v1, "[WARNING] AppKey is invalid, auto trace will do not take effect"

    .line 991
    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/eh;->c(Ljava/lang/String;)V

    .line 992
    return-void

    .line 999
    :cond_3
    sget-object v0, Lcom/baidu/mobstat/MtjConfig$FeedTrackStrategy;->TRACK_ALL:Lcom/baidu/mobstat/MtjConfig$FeedTrackStrategy;

    invoke-static {v0}, Lcom/baidu/mobstat/StatService;->setFeedTrack(Lcom/baidu/mobstat/MtjConfig$FeedTrackStrategy;)V

    goto :goto_0
.end method

.method public static bindJSInterface(Landroid/content/Context;Landroid/webkit/WebView;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 805
    check-cast v0, Landroid/webkit/WebViewClient;

    invoke-static {p0, p1, v0}, Lcom/baidu/mobstat/StatService;->bindJSInterface(Landroid/content/Context;Landroid/webkit/WebView;Landroid/webkit/WebViewClient;)V

    .line 806
    return-void
.end method

.method public static bindJSInterface(Landroid/content/Context;Landroid/webkit/WebView;Landroid/webkit/WebViewClient;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi",
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 817
    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;Landroid/webkit/WebView;Landroid/webkit/WebViewClient;Landroid/webkit/WebChromeClient;Z)V

    .line 818
    return-void
.end method

.method public static enableDeviceMac(Landroid/content/Context;Z)V
    .locals 1

    .prologue
    .line 81
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/baidu/mobstat/CooperService;->enableDeviceMac(Landroid/content/Context;Z)V

    .line 83
    invoke-static {}, Lcom/baidu/mobstat/BDStatCore;->instance()Lcom/baidu/mobstat/BDStatCore;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/mobstat/BDStatCore;->init(Landroid/content/Context;)V

    .line 84
    return-void
.end method

.method public static enableListTrack(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 1158
    if-eqz p0, :cond_0

    const v0, -0x17aea

    .line 1162
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1163
    return-void

    .line 1159
    :cond_0
    return-void
.end method

.method public static getAppKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 703
    invoke-static {p0}, Lcom/baidu/mobstat/PrefOperate;->getAppKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSdkVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 901
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/CooperService;->getMTJSDKVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTestDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 891
    invoke-static {p0}, Lcom/baidu/mobstat/ff;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 892
    return-object v0
.end method

.method public static onErised(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    const-string/jumbo v0, "onErised(...)"

    .line 935
    invoke-static {p0, v0}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 939
    if-nez p1, :cond_2

    .line 940
    :cond_0
    invoke-static {}, Lcom/baidu/mobstat/eh;->c()Lcom/baidu/mobstat/eh;

    move-result-object v0

    const-string/jumbo v1, "[WARNING] AppKey is invalid"

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/eh;->c(Ljava/lang/String;)V

    .line 941
    return-void

    .line 936
    :cond_1
    return-void

    :cond_2
    const-string/jumbo v0, ""

    .line 939
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 944
    invoke-static {}, Lcom/baidu/mobstat/BDStatCore;->instance()Lcom/baidu/mobstat/BDStatCore;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/baidu/mobstat/BDStatCore;->onErised(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 945
    return-void
.end method

.method public static onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 529
    invoke-static {p0, p1, p2, v0}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/mobstat/ExtraInfo;)V

    .line 530
    return-void
.end method

.method public static onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6

    .prologue
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, v4

    .line 506
    invoke-static/range {v0 .. v5}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/baidu/mobstat/ExtraInfo;Ljava/util/Map;)V

    .line 507
    return-void
.end method

.method public static onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    .line 494
    invoke-static/range {v0 .. v5}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/baidu/mobstat/ExtraInfo;Ljava/util/Map;)V

    .line 495
    return-void
.end method

.method public static onEventDuration(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 9

    .prologue
    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v7, v6

    .line 672
    invoke-static/range {v1 .. v7}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLcom/baidu/mobstat/ExtraInfo;Ljava/util/Map;)V

    .line 673
    return-void
.end method

.method public static onEventDuration(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v7, p5

    .line 660
    invoke-static/range {v1 .. v7}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLcom/baidu/mobstat/ExtraInfo;Ljava/util/Map;)V

    .line 661
    return-void
.end method

.method public static onEventEnd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 577
    invoke-static {p0, p1, p2, v0, v0}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/mobstat/ExtraInfo;Ljava/util/Map;)V

    .line 578
    return-void
.end method

.method public static onEventEnd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 591
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1, p3}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/mobstat/ExtraInfo;Ljava/util/Map;)V

    .line 592
    return-void
.end method

.method public static onEventStart(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-string/jumbo v0, "onEventStart(...)"

    .line 542
    invoke-static {p0, v0}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 546
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 550
    invoke-static {}, Lcom/baidu/mobstat/BDStatCore;->instance()Lcom/baidu/mobstat/BDStatCore;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/baidu/mobstat/BDStatCore;->onEventStart(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 551
    return-void

    .line 543
    :cond_0
    return-void

    .line 547
    :cond_1
    return-void
.end method

.method public static declared-synchronized onPageEnd(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    const-class v0, Lcom/baidu/mobstat/StatService;

    monitor-enter v0

    const/4 v1, 0x0

    .line 238
    :try_start_0
    invoke-static {p0, p1, v1}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/mobstat/ExtraInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 239
    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized onPageStart(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    const-class v1, Lcom/baidu/mobstat/StatService;

    monitor-enter v1

    .line 197
    if-nez p0, :cond_1

    .line 198
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/baidu/mobstat/eh;->c()Lcom/baidu/mobstat/eh;

    move-result-object v0

    const-string/jumbo v2, "[WARNING] onPageStart parameter invalid"

    invoke-virtual {v0, v2}, Lcom/baidu/mobstat/eh;->c(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 199
    return-void

    .line 197
    :cond_1
    :try_start_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 202
    invoke-static {}, Lcom/baidu/mobstat/BDStatCore;->instance()Lcom/baidu/mobstat/BDStatCore;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/baidu/mobstat/BDStatCore;->onPageStart(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 203
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized onPause(Landroid/app/Activity;)V
    .locals 2

    .prologue
    const-class v0, Lcom/baidu/mobstat/StatService;

    monitor-enter v0

    const/4 v1, 0x0

    .line 270
    :try_start_0
    invoke-static {p0, v1}, Lcom/baidu/mobstat/StatService;->onPause(Landroid/app/Activity;Lcom/baidu/mobstat/ExtraInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 271
    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized onPause(Landroid/app/Activity;Lcom/baidu/mobstat/ExtraInfo;)V
    .locals 3

    .prologue
    const-class v1, Lcom/baidu/mobstat/StatService;

    monitor-enter v1

    :try_start_0
    const-string/jumbo v0, "onPause(...)"

    .line 250
    invoke-static {p0, v0}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Landroid/app/Activity;

    const-string/jumbo v2, "onPause"

    .line 254
    invoke-static {v0, v2}, Lcom/baidu/mobstat/StatService;->a(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 259
    invoke-static {}, Lcom/baidu/mobstat/BDStatCore;->instance()Lcom/baidu/mobstat/BDStatCore;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, p1}, Lcom/baidu/mobstat/BDStatCore;->onPause(Landroid/app/Activity;ZLcom/baidu/mobstat/ExtraInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 260
    return-void

    :cond_0
    monitor-exit v1

    .line 251
    return-void

    .line 255
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/baidu/mobstat/eh;->c()Lcom/baidu/mobstat/eh;

    move-result-object v0

    const-string/jumbo v2, "[WARNING] onPause must be called in Activity.onPause"

    invoke-virtual {v0, v2}, Lcom/baidu/mobstat/eh;->c(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 256
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized onPause(Landroid/app/Fragment;)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const-class v1, Lcom/baidu/mobstat/StatService;

    monitor-enter v1

    .line 309
    if-eqz p0, :cond_0

    .line 314
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v2, "onPause"

    invoke-static {v0, v2}, Lcom/baidu/mobstat/StatService;->a(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 320
    invoke-static {}, Lcom/baidu/mobstat/BDStatCore;->instance()Lcom/baidu/mobstat/BDStatCore;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/mobstat/BDStatCore;->onPause(Landroid/app/Fragment;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 321
    return-void

    .line 310
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/baidu/mobstat/eh;->c()Lcom/baidu/mobstat/eh;

    move-result-object v0

    const-string/jumbo v2, "[WARNING] onPause parameter invalid"

    invoke-virtual {v0, v2}, Lcom/baidu/mobstat/eh;->c(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 311
    return-void

    .line 315
    :cond_1
    :try_start_2
    invoke-static {}, Lcom/baidu/mobstat/eh;->c()Lcom/baidu/mobstat/eh;

    move-result-object v0

    const-string/jumbo v2, "[WARNING] onPause must be called in android.app.Fragment.onPause()"

    .line 316
    invoke-virtual {v0, v2}, Lcom/baidu/mobstat/eh;->c(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v1

    .line 317
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized onPause(Landroid/support/v4/app/Fragment;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const-class v1, Lcom/baidu/mobstat/StatService;

    monitor-enter v1

    .line 284
    if-eqz p0, :cond_0

    :try_start_0
    const-class v0, Landroid/support/v4/app/Fragment;

    const-string/jumbo v2, "onPause"

    .line 289
    invoke-static {v0, v2}, Lcom/baidu/mobstat/StatService;->a(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 294
    invoke-static {}, Lcom/baidu/mobstat/BDStatCore;->instance()Lcom/baidu/mobstat/BDStatCore;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/mobstat/BDStatCore;->onPause(Landroid/support/v4/app/Fragment;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 295
    return-void

    .line 285
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/baidu/mobstat/eh;->c()Lcom/baidu/mobstat/eh;

    move-result-object v0

    const-string/jumbo v2, "[WARNING] onPause parameter invalid"

    invoke-virtual {v0, v2}, Lcom/baidu/mobstat/eh;->c(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 286
    return-void

    .line 290
    :cond_1
    :try_start_2
    invoke-static {}, Lcom/baidu/mobstat/eh;->c()Lcom/baidu/mobstat/eh;

    move-result-object v0

    const-string/jumbo v2, "[WARNING] onPause must be called in Fragment.onPause()"

    invoke-virtual {v0, v2}, Lcom/baidu/mobstat/eh;->c(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v1

    .line 291
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized onResume(Landroid/app/Activity;)V
    .locals 3

    .prologue
    const-class v1, Lcom/baidu/mobstat/StatService;

    monitor-enter v1

    :try_start_0
    const-string/jumbo v0, "onResume(...)"

    .line 113
    invoke-static {p0, v0}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Landroid/app/Activity;

    const-string/jumbo v2, "onResume"

    .line 117
    invoke-static {v0, v2}, Lcom/baidu/mobstat/StatService;->a(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 122
    invoke-static {}, Lcom/baidu/mobstat/BDStatCore;->instance()Lcom/baidu/mobstat/BDStatCore;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2}, Lcom/baidu/mobstat/BDStatCore;->onResume(Landroid/app/Activity;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 123
    return-void

    :cond_0
    monitor-exit v1

    .line 114
    return-void

    .line 118
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/baidu/mobstat/eh;->c()Lcom/baidu/mobstat/eh;

    move-result-object v0

    const-string/jumbo v2, "[WARNING] onResume must be called in Activity.onResume()"

    invoke-virtual {v0, v2}, Lcom/baidu/mobstat/eh;->c(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 119
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized onResume(Landroid/app/Fragment;)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const-class v1, Lcom/baidu/mobstat/StatService;

    monitor-enter v1

    .line 165
    if-eqz p0, :cond_0

    .line 170
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v2, "onResume"

    invoke-static {v0, v2}, Lcom/baidu/mobstat/StatService;->a(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 175
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 176
    if-eqz v0, :cond_2

    .line 181
    invoke-static {}, Lcom/baidu/mobstat/BDStatCore;->instance()Lcom/baidu/mobstat/BDStatCore;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/mobstat/BDStatCore;->onResume(Landroid/app/Fragment;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 182
    return-void

    .line 166
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/baidu/mobstat/eh;->c()Lcom/baidu/mobstat/eh;

    move-result-object v0

    const-string/jumbo v2, "[WARNING] onResume parameter invalid"

    invoke-virtual {v0, v2}, Lcom/baidu/mobstat/eh;->c(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 167
    return-void

    .line 171
    :cond_1
    :try_start_2
    invoke-static {}, Lcom/baidu/mobstat/eh;->c()Lcom/baidu/mobstat/eh;

    move-result-object v0

    const-string/jumbo v2, "[WARNING] onResume must be called in Fragment.onResume()"

    invoke-virtual {v0, v2}, Lcom/baidu/mobstat/eh;->c(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v1

    .line 172
    return-void

    .line 177
    :cond_2
    :try_start_3
    invoke-static {}, Lcom/baidu/mobstat/eh;->c()Lcom/baidu/mobstat/eh;

    move-result-object v0

    const-string/jumbo v2, "[WARNING] can not get Activity, fragment may not attached to activity"

    invoke-virtual {v0, v2}, Lcom/baidu/mobstat/eh;->c(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v1

    .line 178
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized onResume(Landroid/support/v4/app/Fragment;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const-class v1, Lcom/baidu/mobstat/StatService;

    monitor-enter v1

    .line 135
    if-eqz p0, :cond_0

    :try_start_0
    const-class v0, Landroid/support/v4/app/Fragment;

    const-string/jumbo v2, "onResume"

    .line 140
    invoke-static {v0, v2}, Lcom/baidu/mobstat/StatService;->a(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 145
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 146
    if-eqz v0, :cond_2

    .line 152
    invoke-static {}, Lcom/baidu/mobstat/BDStatCore;->instance()Lcom/baidu/mobstat/BDStatCore;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/mobstat/BDStatCore;->onResume(Landroid/support/v4/app/Fragment;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 153
    return-void

    .line 136
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/baidu/mobstat/eh;->c()Lcom/baidu/mobstat/eh;

    move-result-object v0

    const-string/jumbo v2, "[WARNING] onResume parameter invalid"

    invoke-virtual {v0, v2}, Lcom/baidu/mobstat/eh;->c(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 137
    return-void

    .line 141
    :cond_1
    :try_start_2
    invoke-static {}, Lcom/baidu/mobstat/eh;->c()Lcom/baidu/mobstat/eh;

    move-result-object v0

    const-string/jumbo v2, "[WARNING] onResume must be called in Fragment.onResume()"

    invoke-virtual {v0, v2}, Lcom/baidu/mobstat/eh;->c(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v1

    .line 142
    return-void

    .line 147
    :cond_2
    :try_start_3
    invoke-static {}, Lcom/baidu/mobstat/eh;->c()Lcom/baidu/mobstat/eh;

    move-result-object v0

    const-string/jumbo v2, "[WARNING] can not get FragmentActivity, fragment may not attached to activity"

    .line 148
    invoke-virtual {v0, v2}, Lcom/baidu/mobstat/eh;->c(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v1

    .line 149
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static recordException(Landroid/content/Context;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 1060
    if-eqz p0, :cond_0

    .line 1064
    if-eqz p1, :cond_1

    .line 1068
    invoke-static {}, Lcom/baidu/mobstat/ExceptionAnalysis;->getInstance()Lcom/baidu/mobstat/ExceptionAnalysis;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Lcom/baidu/mobstat/ExceptionAnalysis;->saveCrashInfo(Landroid/content/Context;Ljava/lang/Throwable;Z)V

    .line 1069
    return-void

    .line 1061
    :cond_0
    return-void

    .line 1065
    :cond_1
    return-void
.end method

.method public static setAppChannel(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 737
    invoke-static {p0, p1, p2}, Lcom/baidu/mobstat/PrefOperate;->setAppChannel(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 739
    invoke-static {}, Lcom/baidu/mobstat/BDStatCore;->instance()Lcom/baidu/mobstat/BDStatCore;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/mobstat/BDStatCore;->init(Landroid/content/Context;)V

    .line 740
    return-void
.end method

.method public static setAppChannel(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 717
    invoke-static {p0}, Lcom/baidu/mobstat/PrefOperate;->setAppChannel(Ljava/lang/String;)V

    .line 718
    return-void
.end method

.method public static setAppKey(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 699
    invoke-static {p0}, Lcom/baidu/mobstat/PrefOperate;->setAppKey(Ljava/lang/String;)V

    .line 700
    return-void
.end method

.method public static setAppVersionName(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/16 v2, 0x100

    const/4 v1, 0x0

    .line 1175
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1179
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, v2, :cond_1

    .line 1183
    :goto_0
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/baidu/mobstat/CooperService;->setAppVersionName(Landroid/content/Context;Ljava/lang/String;)V

    .line 1184
    return-void

    .line 1176
    :cond_0
    return-void

    .line 1180
    :cond_1
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public static setAttributes(Landroid/view/View;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1015
    if-eqz p0, :cond_0

    const v0, -0x17700

    .line 1019
    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1020
    return-void

    .line 1016
    :cond_0
    return-void
.end method

.method public static setContentId(Landroid/view/View;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/16 v2, 0x100

    const/4 v1, 0x0

    .line 1126
    if-eqz p0, :cond_0

    .line 1130
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1134
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, v2, :cond_2

    :goto_1
    const v0, -0x17aec

    .line 1138
    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1139
    return-void

    .line 1127
    :cond_0
    return-void

    :cond_1
    const-string/jumbo p1, ""

    goto :goto_0

    .line 1135
    :cond_2
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_1
.end method

.method public static setContentTitle(Landroid/view/View;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/16 v2, 0x100

    const/4 v1, 0x0

    .line 1104
    if-eqz p0, :cond_0

    .line 1108
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1112
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, v2, :cond_2

    :goto_1
    const v0, -0x17aeb

    .line 1116
    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1117
    return-void

    .line 1105
    :cond_0
    return-void

    :cond_1
    const-string/jumbo p1, ""

    goto :goto_0

    .line 1113
    :cond_2
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_1
.end method

.method public static setDebugOn(Z)V
    .locals 1

    .prologue
    .line 768
    invoke-static {}, Lcom/baidu/mobstat/eh;->c()Lcom/baidu/mobstat/eh;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/mobstat/eh;->a(Z)V

    .line 769
    return-void
.end method

.method public static setFeedTrack(Lcom/baidu/mobstat/MtjConfig$FeedTrackStrategy;)V
    .locals 1

    .prologue
    .line 1148
    invoke-static {p0}, Lcom/baidu/mobstat/ds;->a(Lcom/baidu/mobstat/MtjConfig$FeedTrackStrategy;)V

    .line 1149
    const/4 v0, 0x1

    sput-boolean v0, Lcom/baidu/mobstat/StatService;->b:Z

    .line 1150
    return-void
.end method

.method public static setForTv(Landroid/content/Context;Z)V
    .locals 1

    .prologue
    .line 780
    invoke-static {}, Lcom/baidu/mobstat/BasicStoreTools;->getInstance()Lcom/baidu/mobstat/BasicStoreTools;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/baidu/mobstat/BasicStoreTools;->setForTV(Landroid/content/Context;Z)V

    .line 782
    invoke-static {}, Lcom/baidu/mobstat/BDStatCore;->instance()Lcom/baidu/mobstat/BDStatCore;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/mobstat/BDStatCore;->init(Landroid/content/Context;)V

    .line 783
    return-void
.end method

.method public static setListName(Landroid/view/View;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/16 v2, 0x100

    const/4 v1, 0x0

    .line 1081
    if-eqz p0, :cond_0

    .line 1085
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1089
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, v2, :cond_2

    :goto_1
    const v0, -0x17ae9

    .line 1093
    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1094
    return-void

    .line 1082
    :cond_0
    return-void

    :cond_1
    const-string/jumbo p1, ""

    goto :goto_0

    .line 1090
    :cond_2
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_1
.end method

.method public static setLogSenderDelayed(I)V
    .locals 1

    .prologue
    .line 750
    invoke-static {}, Lcom/baidu/mobstat/LogSender;->instance()Lcom/baidu/mobstat/LogSender;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/mobstat/LogSender;->setLogSenderDelayed(I)V

    .line 751
    return-void
.end method

.method public static setOn(Landroid/content/Context;I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const-string/jumbo v0, "setOn(...)"

    .line 331
    invoke-static {p0, v0}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 335
    sget-boolean v0, Lcom/baidu/mobstat/StatService;->a:Z

    if-nez v0, :cond_1

    .line 339
    sput-boolean v2, Lcom/baidu/mobstat/StatService;->a:Z

    .line 342
    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_2

    .line 344
    and-int/lit8 v0, p1, 0x10

    if-nez v0, :cond_3

    .line 348
    :goto_0
    invoke-static {}, Lcom/baidu/mobstat/BDStatCore;->instance()Lcom/baidu/mobstat/BDStatCore;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/mobstat/BDStatCore;->init(Landroid/content/Context;)V

    .line 349
    return-void

    .line 332
    :cond_0
    return-void

    .line 336
    :cond_1
    return-void

    .line 343
    :cond_2
    invoke-static {p0, v1}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;Z)V

    goto :goto_0

    .line 345
    :cond_3
    invoke-static {p0, v2}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;Z)V

    goto :goto_0
.end method

.method public static setSendLogStrategy(Landroid/content/Context;Lcom/baidu/mobstat/SendStrategyEnum;I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 428
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/baidu/mobstat/StatService;->setSendLogStrategy(Landroid/content/Context;Lcom/baidu/mobstat/SendStrategyEnum;IZ)V

    .line 429
    return-void
.end method

.method public static setSendLogStrategy(Landroid/content/Context;Lcom/baidu/mobstat/SendStrategyEnum;IZ)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const-string/jumbo v0, "setSendLogStrategy(...)"

    .line 395
    invoke-static {p0, v0}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Landroid/app/Application;

    const-string/jumbo v1, "onCreate"

    .line 399
    invoke-static {v0, v1}, Lcom/baidu/mobstat/fh;->a(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v0

    .line 400
    if-nez v0, :cond_1

    .line 407
    :goto_0
    invoke-static {}, Lcom/baidu/mobstat/BDStatCore;->instance()Lcom/baidu/mobstat/BDStatCore;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/baidu/mobstat/BDStatCore;->onSessionStart(Landroid/content/Context;Z)V

    .line 409
    invoke-static {}, Lcom/baidu/mobstat/LogSender;->instance()Lcom/baidu/mobstat/LogSender;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/baidu/mobstat/LogSender;->setSendLogStrategy(Landroid/content/Context;Lcom/baidu/mobstat/SendStrategyEnum;IZ)V

    .line 410
    return-void

    .line 396
    :cond_0
    return-void

    .line 401
    :cond_1
    invoke-static {}, Lcom/baidu/mobstat/eh;->c()Lcom/baidu/mobstat/eh;

    move-result-object v1

    const-string/jumbo v2, "[WARNING] setSendLogStrategy \u65b9\u6cd5\u88ab Application.onCreate()\u8c03\u7528\uff0cnot a good practice; \u53ef\u80fd\u7531\u4e8e\u591a\u8fdb\u7a0b\u53cd\u590d\u91cd\u542f\u7b49\u539f\u56e0\u9020\u6210Application.onCreate() \u65b9\u6cd5\u591a\u6b21\u88ab\u6267\u884c\uff0c\u5bfc\u81f4\u542f\u52a8\u6b21\u6570\u9ad8\uff1b\u5efa\u8bae\u57cb\u70b9\u5728\u7edf\u8ba1\u8def\u5f84\u89e6\u53d1\u7684\u7b2c\u4e00\u4e2a\u9875\u9762\u4e2d\uff0c\u6bd4\u5982APP\u4e3b\u9875\u9762\u4e2d"

    invoke-virtual {v1, v2}, Lcom/baidu/mobstat/eh;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setSessionTimeOut(I)V
    .locals 1

    .prologue
    .line 759
    invoke-static {}, Lcom/baidu/mobstat/BDStatCore;->instance()Lcom/baidu/mobstat/BDStatCore;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/mobstat/BDStatCore;->setSessionTimeOut(I)V

    .line 760
    return-void
.end method

.method public static setUserId(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1044
    if-eqz p0, :cond_0

    .line 1048
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/baidu/mobstat/CooperService;->setUserId(Landroid/content/Context;Ljava/lang/String;)V

    .line 1050
    invoke-static {}, Lcom/baidu/mobstat/BDStatCore;->instance()Lcom/baidu/mobstat/BDStatCore;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/mobstat/BDStatCore;->init(Landroid/content/Context;)V

    .line 1051
    return-void

    .line 1045
    :cond_0
    return-void
.end method

.method public static start(Landroid/content/Context;)V
    .locals 3

    .prologue
    const-string/jumbo v0, "start(...)"

    .line 363
    invoke-static {p0, v0}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Landroid/app/Application;

    const-string/jumbo v1, "onCreate"

    .line 367
    invoke-static {v0, v1}, Lcom/baidu/mobstat/fh;->a(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v0

    .line 368
    if-nez v0, :cond_1

    .line 375
    :goto_0
    invoke-static {}, Lcom/baidu/mobstat/BDStatCore;->instance()Lcom/baidu/mobstat/BDStatCore;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/baidu/mobstat/BDStatCore;->onSessionStart(Landroid/content/Context;Z)V

    .line 376
    return-void

    .line 364
    :cond_0
    return-void

    .line 369
    :cond_1
    invoke-static {}, Lcom/baidu/mobstat/eh;->c()Lcom/baidu/mobstat/eh;

    move-result-object v1

    const-string/jumbo v2, "[WARNING] start \u65b9\u6cd5\u88ab Application.onCreate()\u8c03\u7528\uff0cnot a good practice; \u53ef\u80fd\u7531\u4e8e\u591a\u8fdb\u7a0b\u53cd\u590d\u91cd\u542f\u7b49\u539f\u56e0\u9020\u6210Application.onCreate() \u65b9\u6cd5\u591a\u6b21\u88ab\u6267\u884c\uff0c\u5bfc\u81f4\u542f\u52a8\u6b21\u6570\u9ad8\uff1b\u5efa\u8bae\u57cb\u70b9\u5728\u7edf\u8ba1\u8def\u5f84\u89e6\u53d1\u7684\u7b2c\u4e00\u4e2a\u9875\u9762\u4e2d\uff0c\u6bd4\u5982APP\u4e3b\u9875\u9762\u4e2d"

    invoke-virtual {v1, v2}, Lcom/baidu/mobstat/eh;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static trackWebView(Landroid/content/Context;Landroid/webkit/WebView;Landroid/webkit/WebChromeClient;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1031
    const/4 v1, 0x1

    invoke-static {p0, p1, v0, p2, v1}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;Landroid/webkit/WebView;Landroid/webkit/WebViewClient;Landroid/webkit/WebChromeClient;Z)V

    .line 1033
    return-void
.end method
