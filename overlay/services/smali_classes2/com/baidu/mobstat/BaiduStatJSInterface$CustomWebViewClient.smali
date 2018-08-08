.class public Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mobstat/BaiduStatJSInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CustomWebViewClient"
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

.field private b:Landroid/webkit/WebViewClient;

.field private c:Lcom/baidu/mobstat/BaiduStatJSInterface$IWebviewPageLoadCallback;

.field private d:Lcom/baidu/mobstat/et;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/webkit/WebViewClient;Lcom/baidu/mobstat/BaiduStatJSInterface$IWebviewPageLoadCallback;Lcom/baidu/mobstat/et;)V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 66
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebViewClient;->a:Ljava/lang/ref/WeakReference;

    .line 67
    iput-object p2, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebViewClient;->b:Landroid/webkit/WebViewClient;

    .line 68
    iput-object p3, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebViewClient;->c:Lcom/baidu/mobstat/BaiduStatJSInterface$IWebviewPageLoadCallback;

    .line 69
    iput-object p4, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebViewClient;->d:Lcom/baidu/mobstat/et;

    .line 70
    return-void
.end method

.method private a(Lorg/json/JSONObject;)Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 206
    if-eqz p1, :cond_0

    .line 210
    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-nez v1, :cond_1

    move-object v1, v0

    .line 214
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 215
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 225
    return-object v1

    .line 207
    :cond_0
    return-object v0

    .line 211
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v1, v0

    goto :goto_0

    .line 217
    :cond_2
    :try_start_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 218
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 219
    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 222
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private a(Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 112
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "action"

    .line 114
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v1, "obj"

    .line 115
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 117
    iget-object v1, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebViewClient;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    .line 118
    if-eqz v1, :cond_0

    const-string/jumbo v3, "onPageStart"

    .line 122
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "onPageEnd"

    .line 130
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string/jumbo v3, "onEvent"

    .line 138
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string/jumbo v3, "onEventStart"

    .line 156
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string/jumbo v3, "onEventEnd"

    .line 165
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    const-string/jumbo v3, "onEventDuration"

    .line 182
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 201
    :goto_0
    return-void

    .line 119
    :cond_0
    return-void

    :cond_1
    const-string/jumbo v2, "page"

    .line 123
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 125
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 129
    invoke-static {}, Lcom/baidu/mobstat/BDStatCore;->instance()Lcom/baidu/mobstat/BDStatCore;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/baidu/mobstat/BDStatCore;->onPageStart(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 126
    :cond_2
    return-void

    :cond_3
    const-string/jumbo v2, "page"

    .line 131
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 133
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 137
    invoke-static {}, Lcom/baidu/mobstat/BDStatCore;->instance()Lcom/baidu/mobstat/BDStatCore;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v0, v3, v4}, Lcom/baidu/mobstat/BDStatCore;->onPageEnd(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/mobstat/ExtraInfo;Z)V

    goto :goto_0

    .line 134
    :cond_4
    return-void

    :cond_5
    const-string/jumbo v2, "event_id"

    .line 139
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "label"

    .line 140
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "acc"

    .line 141
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 143
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    const/4 v5, 0x0

    :try_start_0
    const-string/jumbo v6, "attributes"

    .line 149
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    :goto_1
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebViewClient;->a(Lorg/json/JSONObject;)Ljava/util/HashMap;

    move-result-object v6

    .line 155
    invoke-static {}, Lcom/baidu/mobstat/BDStatCore;->instance()Lcom/baidu/mobstat/BDStatCore;

    move-result-object v0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual/range {v0 .. v8}, Lcom/baidu/mobstat/BDStatCore;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/baidu/mobstat/ExtraInfo;Ljava/util/Map;ZZ)V

    goto :goto_0

    .line 144
    :cond_6
    return-void

    .line 152
    :catch_0
    move-exception v0

    move-object v0, v5

    goto :goto_1

    :cond_7
    const-string/jumbo v2, "event_id"

    .line 157
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "label"

    .line 158
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 160
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 164
    invoke-static {}, Lcom/baidu/mobstat/BDStatCore;->instance()Lcom/baidu/mobstat/BDStatCore;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v2, v0, v4}, Lcom/baidu/mobstat/BDStatCore;->onEventStart(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 161
    :cond_8
    return-void

    :cond_9
    const-string/jumbo v2, "event_id"

    .line 166
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "label"

    .line 167
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 169
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_a

    const/4 v4, 0x0

    :try_start_1
    const-string/jumbo v5, "attributes"

    .line 175
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 179
    :goto_2
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebViewClient;->a(Lorg/json/JSONObject;)Ljava/util/HashMap;

    move-result-object v5

    .line 181
    invoke-static {}, Lcom/baidu/mobstat/BDStatCore;->instance()Lcom/baidu/mobstat/BDStatCore;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v6, 0x1

    invoke-virtual/range {v0 .. v6}, Lcom/baidu/mobstat/BDStatCore;->onEventEnd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/mobstat/ExtraInfo;Ljava/util/Map;Z)V

    goto/16 :goto_0

    .line 170
    :cond_a
    return-void

    .line 178
    :catch_1
    move-exception v0

    move-object v0, v4

    goto :goto_2

    :cond_b
    const-string/jumbo v2, "event_id"

    .line 183
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "label"

    .line 184
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "duration"

    .line 185
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 187
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_c

    const/4 v6, 0x0

    :try_start_2
    const-string/jumbo v7, "attributes"

    .line 193
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 197
    :goto_3
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebViewClient;->a(Lorg/json/JSONObject;)Ljava/util/HashMap;

    move-result-object v7

    .line 199
    invoke-static {}, Lcom/baidu/mobstat/BDStatCore;->instance()Lcom/baidu/mobstat/BDStatCore;

    move-result-object v0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual/range {v0 .. v9}, Lcom/baidu/mobstat/BDStatCore;->onEventDuration(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLcom/baidu/mobstat/ExtraInfo;Ljava/util/Map;ZZ)V

    goto/16 :goto_0

    .line 188
    :cond_c
    return-void

    .line 196
    :catch_2
    move-exception v0

    move-object v0, v6

    goto :goto_3
.end method


# virtual methods
.method public doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebViewClient;->b:Landroid/webkit/WebViewClient;

    if-nez v0, :cond_0

    .line 302
    :goto_0
    return-void

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebViewClient;->b:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewClient;->doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public onFormResubmission(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebViewClient;->b:Landroid/webkit/WebViewClient;

    if-nez v0, :cond_0

    .line 290
    :goto_0
    return-void

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebViewClient;->b:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onFormResubmission(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V

    goto :goto_0
.end method

.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebViewClient;->b:Landroid/webkit/WebViewClient;

    if-nez v0, :cond_0

    .line 263
    :goto_0
    return-void

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebViewClient;->b:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPageCommitVisible(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 418
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebViewClient;->b:Landroid/webkit/WebViewClient;

    if-nez v0, :cond_0

    .line 421
    :goto_0
    return-void

    .line 419
    :cond_0
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebViewClient;->b:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->onPageCommitVisible(Landroid/webkit/WebView;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebViewClient;->b:Landroid/webkit/WebViewClient;

    if-nez v0, :cond_0

    .line 251
    :goto_0
    return-void

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebViewClient;->b:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebViewClient;->b:Landroid/webkit/WebViewClient;

    if-nez v0, :cond_0

    .line 239
    :goto_0
    return-void

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebViewClient;->b:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public onReceivedClientCertRequest(Landroid/webkit/WebView;Landroid/webkit/ClientCertRequest;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 385
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebViewClient;->b:Landroid/webkit/WebViewClient;

    if-nez v0, :cond_0

    .line 388
    :goto_0
    return-void

    .line 386
    :cond_0
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebViewClient;->b:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->onReceivedClientCertRequest(Landroid/webkit/WebView;Landroid/webkit/ClientCertRequest;)V

    goto :goto_0
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 431
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebViewClient;->b:Landroid/webkit/WebViewClient;

    if-nez v0, :cond_0

    .line 434
    :goto_0
    return-void

    .line 432
    :cond_0
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebViewClient;->b:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 439
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebViewClient;->b:Landroid/webkit/WebViewClient;

    if-nez v0, :cond_0

    .line 442
    :goto_0
    return-void

    .line 440
    :cond_0
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebViewClient;->b:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    goto :goto_0
.end method

.method public onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebViewClient;->b:Landroid/webkit/WebViewClient;

    if-nez v0, :cond_0

    .line 328
    :goto_0
    return-void

    .line 326
    :cond_0
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebViewClient;->b:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 447
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebViewClient;->b:Landroid/webkit/WebViewClient;

    if-nez v0, :cond_0

    .line 450
    :goto_0
    return-void

    .line 448
    :cond_0
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebViewClient;->b:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V

    goto :goto_0
.end method

.method public onReceivedLoginRequest(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 377
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebViewClient;->b:Landroid/webkit/WebViewClient;

    if-nez v0, :cond_0

    .line 380
    :goto_0
    return-void

    .line 378
    :cond_0
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebViewClient;->b:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedLoginRequest(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebViewClient;->b:Landroid/webkit/WebViewClient;

    if-nez v0, :cond_0

    .line 315
    :goto_0
    return-void

    .line 313
    :cond_0
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebViewClient;->b:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    goto :goto_0
.end method

.method public onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 455
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebViewClient;->b:Landroid/webkit/WebViewClient;

    if-nez v0, :cond_0

    .line 459
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z

    move-result v0

    return v0

    .line 456
    :cond_0
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebViewClient;->b:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z

    move-result v0

    return v0
.end method

.method public onScaleChanged(Landroid/webkit/WebView;FF)V
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebViewClient;->b:Landroid/webkit/WebViewClient;

    if-nez v0, :cond_0

    .line 366
    :goto_0
    return-void

    .line 364
    :cond_0
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebViewClient;->b:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onScaleChanged(Landroid/webkit/WebView;FF)V

    goto :goto_0
.end method

.method public onTooManyRedirects(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 274
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebViewClient;->b:Landroid/webkit/WebViewClient;

    if-nez v0, :cond_0

    .line 277
    :goto_0
    return-void

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebViewClient;->b:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onTooManyRedirects(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V

    goto :goto_0
.end method

.method public onUnhandledKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)V
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebViewClient;->b:Landroid/webkit/WebViewClient;

    if-nez v0, :cond_0

    .line 354
    :goto_0
    return-void

    .line 352
    :cond_0
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebViewClient;->b:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->onUnhandledKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)V

    goto :goto_0
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 408
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebViewClient;->b:Landroid/webkit/WebViewClient;

    if-nez v0, :cond_0

    .line 412
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    return-object v0

    .line 409
    :cond_0
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebViewClient;->b:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    return-object v0
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 398
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebViewClient;->b:Landroid/webkit/WebViewClient;

    if-nez v0, :cond_0

    .line 402
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    return-object v0

    .line 399
    :cond_0
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebViewClient;->b:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    return-object v0
.end method

.method public shouldOverrideKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebViewClient;->b:Landroid/webkit/WebViewClient;

    if-nez v0, :cond_0

    .line 341
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 338
    :cond_0
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebViewClient;->b:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 104
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebViewClient;->b:Landroid/webkit/WebViewClient;

    if-nez v0, :cond_0

    .line 108
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z

    move-result v0

    return v0

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebViewClient;->b:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z

    move-result v0

    return v0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    .prologue
    :try_start_0
    const-string/jumbo v0, "UTF-8"

    .line 81
    invoke-static {p2, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 83
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebViewClient;->b:Landroid/webkit/WebViewClient;

    if-nez v0, :cond_2

    .line 96
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_1
    :try_start_1
    const-string/jumbo v0, "bmtj:"

    .line 83
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    .line 84
    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebViewClient;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 85
    const/4 v0, 0x1

    return v0

    .line 94
    :cond_2
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebViewClient;->b:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 91
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method
