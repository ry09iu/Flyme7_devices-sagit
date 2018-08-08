.class Lcom/baidu/mobstat/cc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/baidu/mobstat/LogSender;


# direct methods
.method constructor <init>(Lcom/baidu/mobstat/LogSender;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 249
    iput-object p1, p0, Lcom/baidu/mobstat/cc;->b:Lcom/baidu/mobstat/LogSender;

    iput-object p2, p0, Lcom/baidu/mobstat/cc;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 254
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 257
    iget-object v2, p0, Lcom/baidu/mobstat/cc;->b:Lcom/baidu/mobstat/LogSender;

    iget-object v3, p0, Lcom/baidu/mobstat/cc;->a:Landroid/content/Context;

    sget-object v4, Lcom/baidu/mobstat/Config;->PREFIX_SEND_DATA:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/baidu/mobstat/LogSender;->a(Lcom/baidu/mobstat/LogSender;Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 258
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 262
    iget-object v2, p0, Lcom/baidu/mobstat/cc;->b:Lcom/baidu/mobstat/LogSender;

    iget-object v3, p0, Lcom/baidu/mobstat/cc;->a:Landroid/content/Context;

    const-string/jumbo v4, "__track_send_data_"

    invoke-static {v2, v3, v4}, Lcom/baidu/mobstat/LogSender;->a(Lcom/baidu/mobstat/LogSender;Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 263
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 268
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v3, v1

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 298
    :cond_0
    :goto_1
    return-void

    .line 268
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 269
    iget-object v2, p0, Lcom/baidu/mobstat/cc;->a:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/baidu/mobstat/ex;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 271
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "__track_send_data_"

    .line 277
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    move v2, v1

    .line 281
    :goto_2
    iget-object v6, p0, Lcom/baidu/mobstat/cc;->b:Lcom/baidu/mobstat/LogSender;

    iget-object v7, p0, Lcom/baidu/mobstat/cc;->a:Landroid/content/Context;

    invoke-static {v6, v7, v5, v2}, Lcom/baidu/mobstat/LogSender;->a(Lcom/baidu/mobstat/LogSender;Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_4

    .line 286
    iget-object v2, p0, Lcom/baidu/mobstat/cc;->a:Landroid/content/Context;

    invoke-static {v2, v0, v5}, Lcom/baidu/mobstat/LogSender;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    add-int/lit8 v0, v3, 0x1

    const/4 v2, 0x5

    if-ge v0, v2, :cond_0

    :goto_3
    move v3, v0

    .line 293
    goto :goto_0

    .line 272
    :cond_2
    iget-object v2, p0, Lcom/baidu/mobstat/cc;->a:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/baidu/mobstat/ex;->b(Landroid/content/Context;Ljava/lang/String;)Z

    goto :goto_0

    .line 296
    :catch_0
    move-exception v0

    goto :goto_1

    :cond_3
    const/4 v2, 0x1

    .line 278
    goto :goto_2

    .line 283
    :cond_4
    iget-object v2, p0, Lcom/baidu/mobstat/cc;->a:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/baidu/mobstat/ex;->b(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_3
.end method
