.class public Lcom/baidu/mobstat/en;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile a:Z

.field private static volatile b:Z

.field private static volatile c:Z


# direct methods
.method private static a()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "https://dxp.baidu.com/vizParser"

    .line 208
    return-object v0
.end method

.method private static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    .prologue
    const-string/jumbo v0, "mtj_autoTracker.js"

    .line 212
    invoke-static {p0, v0}, Lcom/baidu/mobstat/ex;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 214
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 215
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 223
    :cond_0
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 224
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 238
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v0, "https://dxp.baidu.com/autoTracker"

    .line 241
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 245
    :goto_2
    return-object v0

    .line 216
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mobstat/fb$a;->a([B)Ljava/lang/String;

    move-result-object v0

    .line 218
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 219
    new-instance v2, Landroid/util/Pair;

    const-string/jumbo v3, "sign"

    invoke-direct {v2, v3, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 224
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 226
    :try_start_0
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "UTF-8"

    invoke-static {v1, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 227
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "UTF-8"

    invoke-static {v0, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 229
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 232
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "&"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 236
    :catch_0
    move-exception v0

    goto :goto_1

    .line 230
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 242
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 249
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 250
    new-instance v1, Landroid/util/Pair;

    const-string/jumbo v2, "sdkVersion"

    invoke-static {}, Lcom/baidu/mobstat/StatService;->getSdkVersion()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    new-instance v1, Landroid/util/Pair;

    const-string/jumbo v2, "appKey"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    new-instance v1, Landroid/util/Pair;

    const-string/jumbo v2, "packageName"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 253
    new-instance v1, Landroid/util/Pair;

    const-string/jumbo v2, "appVersion"

    invoke-static {p0}, Lcom/baidu/mobstat/ff;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    new-instance v1, Landroid/util/Pair;

    const-string/jumbo v2, "cuid"

    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v3

    invoke-virtual {v3, p0, v5}, Lcom/baidu/mobstat/CooperService;->getCUID(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    new-instance v1, Landroid/util/Pair;

    const-string/jumbo v2, "imei"

    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/baidu/mobstat/CooperService;->getDevicImei(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    new-instance v1, Landroid/util/Pair;

    const-string/jumbo v2, "platform"

    const-string/jumbo v3, "Android"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 257
    new-instance v1, Landroid/util/Pair;

    const-string/jumbo v2, "model"

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 258
    new-instance v1, Landroid/util/Pair;

    const-string/jumbo v2, "s"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    new-instance v1, Landroid/util/Pair;

    const-string/jumbo v2, "o"

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 262
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "https://dxp.baidu.com/circleConfig?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 279
    return-object v0

    .line 262
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 264
    :try_start_0
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "UTF-8"

    invoke-static {v1, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 265
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "UTF-8"

    invoke-static {v0, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 267
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 270
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "&"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 274
    :catch_0
    move-exception v0

    goto :goto_0

    .line 268
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, ""

    .line 186
    packed-switch p2, :pswitch_data_0

    .line 204
    :goto_0
    return-object v0

    .line 188
    :pswitch_0
    invoke-static {}, Lcom/baidu/mobstat/en;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 192
    :pswitch_1
    invoke-static {p0}, Lcom/baidu/mobstat/en;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 196
    :pswitch_2
    invoke-static {p0, p1}, Lcom/baidu/mobstat/en;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 186
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static a(IZ)V
    .locals 0

    .prologue
    .line 55
    packed-switch p0, :pswitch_data_0

    .line 71
    :goto_0
    return-void

    .line 57
    :pswitch_0
    sput-boolean p1, Lcom/baidu/mobstat/en;->a:Z

    goto :goto_0

    .line 61
    :pswitch_1
    sput-boolean p1, Lcom/baidu/mobstat/en;->b:Z

    goto :goto_0

    .line 65
    :pswitch_2
    sput-boolean p1, Lcom/baidu/mobstat/en;->c:Z

    goto :goto_0

    .line 55
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static a(I)Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 34
    packed-switch p0, :pswitch_data_0

    .line 51
    :goto_0
    return v0

    .line 36
    :pswitch_0
    sget-boolean v0, Lcom/baidu/mobstat/en;->a:Z

    goto :goto_0

    .line 40
    :pswitch_1
    sget-boolean v0, Lcom/baidu/mobstat/en;->b:Z

    goto :goto_0

    .line 44
    :pswitch_2
    sget-boolean v0, Lcom/baidu/mobstat/en;->c:Z

    goto :goto_0

    .line 34
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;IZ)Z
    .locals 12

    .prologue
    const-class v4, Lcom/baidu/mobstat/en;

    monitor-enter v4

    .line 85
    :try_start_0
    invoke-static {p2}, Lcom/baidu/mobstat/en;->a(I)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v1, 0x0

    .line 90
    if-eqz p0, :cond_4

    .line 94
    invoke-static {p0, p1, p2}, Lcom/baidu/mobstat/en;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 95
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 99
    invoke-static {}, Lcom/baidu/mobstat/ei;->c()Lcom/baidu/mobstat/ei;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/ei;->b()Z

    move-result v0

    if-nez v0, :cond_6

    .line 102
    :cond_0
    :goto_0
    invoke-static {}, Lcom/baidu/mobstat/eo;->c()Lcom/baidu/mobstat/eo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/eo;->b()Z

    move-result v0

    if-nez v0, :cond_7

    .line 106
    :goto_1
    invoke-static {p2}, Lcom/baidu/mobstat/en;->b(I)Ljava/lang/String;

    move-result-object v5

    .line 107
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    .line 113
    :try_start_1
    invoke-static {p0, v2}, Lcom/baidu/mobstat/ex;->d(Landroid/content/Context;Ljava/lang/String;)Ljava/net/HttpURLConnection;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v0

    .line 115
    :try_start_2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    const-wide/16 v2, 0x0

    const/4 v6, 0x1

    .line 118
    if-eq p2, v6, :cond_9

    .line 126
    :goto_2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    .line 127
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v7

    .line 129
    invoke-static {}, Lcom/baidu/mobstat/ei;->c()Lcom/baidu/mobstat/ei;

    move-result-object v8

    invoke-virtual {v8}, Lcom/baidu/mobstat/ei;->b()Z

    move-result v8

    if-nez v8, :cond_a

    .line 133
    :cond_1
    :goto_3
    invoke-static {}, Lcom/baidu/mobstat/eo;->c()Lcom/baidu/mobstat/eo;

    move-result-object v8

    invoke-virtual {v8}, Lcom/baidu/mobstat/eo;->b()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v8

    if-nez v8, :cond_b

    :goto_4
    const/16 v8, 0xc8

    .line 140
    if-eq v6, v8, :cond_c

    .line 175
    :goto_5
    if-nez v0, :cond_e

    :cond_2
    :goto_6
    monitor-exit v4

    .line 180
    return v1

    .line 86
    :cond_3
    const/4 v0, 0x1

    monitor-exit v4

    return v0

    .line 91
    :cond_4
    const/4 v0, 0x0

    monitor-exit v4

    return v0

    .line 96
    :cond_5
    const/4 v0, 0x0

    monitor-exit v4

    return v0

    .line 99
    :cond_6
    if-eqz p3, :cond_0

    .line 100
    :try_start_3
    invoke-static {}, Lcom/baidu/mobstat/ei;->c()Lcom/baidu/mobstat/ei;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "requestUrl:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/baidu/mobstat/ei;->a(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0

    .line 103
    :cond_7
    :try_start_4
    invoke-static {}, Lcom/baidu/mobstat/eo;->c()Lcom/baidu/mobstat/eo;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "requestUrl:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/baidu/mobstat/eo;->a(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 108
    :cond_8
    const/4 v0, 0x0

    monitor-exit v4

    return v0

    :cond_9
    :try_start_5
    const-string/jumbo v6, "X-INTERVAL"

    .line 120
    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-wide v2

    goto :goto_2

    .line 129
    :cond_a
    if-eqz p3, :cond_1

    .line 130
    :try_start_6
    invoke-static {}, Lcom/baidu/mobstat/ei;->c()Lcom/baidu/mobstat/ei;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "contentLength:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " fileName:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/baidu/mobstat/ei;->a(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto/16 :goto_3

    .line 176
    :catch_0
    move-exception v2

    .line 175
    if-eqz v0, :cond_2

    .line 176
    :try_start_7
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_6

    .line 134
    :cond_b
    :try_start_8
    invoke-static {}, Lcom/baidu/mobstat/eo;->c()Lcom/baidu/mobstat/eo;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "contentLength:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " fileName:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/baidu/mobstat/eo;->a(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto/16 :goto_4

    .line 176
    :catchall_1
    move-exception v1

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    .line 175
    :goto_7
    if-nez v1, :cond_f

    .line 178
    :goto_8
    :try_start_9
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 143
    :cond_c
    packed-switch p2, :pswitch_data_0

    .line 162
    :goto_9
    :pswitch_0
    if-gtz v7, :cond_d

    :goto_a
    const/4 v1, 0x1

    .line 170
    const/4 v2, 0x1

    :try_start_a
    invoke-static {p2, v2}, Lcom/baidu/mobstat/en;->a(IZ)V

    goto/16 :goto_5

    .line 149
    :pswitch_1
    invoke-static {}, Lcom/baidu/mobstat/BasicStoreTools;->getInstance()Lcom/baidu/mobstat/BasicStoreTools;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v6, p0, v8, v9}, Lcom/baidu/mobstat/BasicStoreTools;->setAutoTraceTrackJsFetchTime(Landroid/content/Context;J)V

    .line 150
    invoke-static {}, Lcom/baidu/mobstat/BasicStoreTools;->getInstance()Lcom/baidu/mobstat/BasicStoreTools;

    move-result-object v6

    invoke-virtual {v6, p0, v2, v3}, Lcom/baidu/mobstat/BasicStoreTools;->setAutoTraceTrackJsFetchInterval(Landroid/content/Context;J)V

    goto :goto_9

    .line 154
    :pswitch_2
    invoke-static {}, Lcom/baidu/mobstat/BasicStoreTools;->getInstance()Lcom/baidu/mobstat/BasicStoreTools;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v2, p0, v8, v9}, Lcom/baidu/mobstat/BasicStoreTools;->setAutoTraceConfigFetchTime(Landroid/content/Context;J)V

    goto :goto_9

    :cond_d
    const/4 v2, 0x0

    .line 164
    invoke-virtual {p0, v5, v2}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    .line 165
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/baidu/mobstat/fc;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)Z

    move-result v1

    .line 166
    invoke-static {v2}, Lcom/baidu/mobstat/fc;->a(Ljava/io/Closeable;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_a

    .line 176
    :cond_e
    :try_start_b
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_6

    :cond_f
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_8

    :catchall_2
    move-exception v1

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    goto :goto_7

    .line 123
    :catch_1
    move-exception v6

    goto/16 :goto_2

    .line 143
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static b(I)Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, ""

    .line 285
    packed-switch p0, :pswitch_data_0

    .line 303
    :goto_0
    return-object v0

    :pswitch_0
    const-string/jumbo v0, "mtj_vizParser.js"

    goto :goto_0

    :pswitch_1
    const-string/jumbo v0, "mtj_autoTracker.js"

    goto :goto_0

    :pswitch_2
    const-string/jumbo v0, "mtj_auto.config"

    goto :goto_0

    .line 285
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
