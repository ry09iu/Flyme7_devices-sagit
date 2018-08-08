.class Lcom/baidu/mobstat/ce;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/baidu/mobstat/LogSender;


# direct methods
.method constructor <init>(Lcom/baidu/mobstat/LogSender;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 363
    iput-object p1, p0, Lcom/baidu/mobstat/ce;->c:Lcom/baidu/mobstat/LogSender;

    iput-object p2, p0, Lcom/baidu/mobstat/ce;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/baidu/mobstat/ce;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 366
    invoke-static {}, Lcom/baidu/mobstat/DataCore;->instance()Lcom/baidu/mobstat/DataCore;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mobstat/ce;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/baidu/mobstat/ce;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/mobstat/DataCore;->constructLogWithEmptyBody(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 367
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 371
    :goto_0
    return-void

    .line 369
    :cond_0
    iget-object v1, p0, Lcom/baidu/mobstat/ce;->c:Lcom/baidu/mobstat/LogSender;

    iget-object v2, p0, Lcom/baidu/mobstat/ce;->a:Landroid/content/Context;

    invoke-static {v1, v2, v0}, Lcom/baidu/mobstat/LogSender;->c(Lcom/baidu/mobstat/LogSender;Landroid/content/Context;Ljava/lang/String;)Z

    goto :goto_0
.end method
