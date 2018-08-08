.class Lcom/baidu/mobstat/dl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/baidu/mobstat/dc;


# direct methods
.method constructor <init>(Lcom/baidu/mobstat/dc;)V
    .locals 0

    .prologue
    .line 315
    iput-object p1, p0, Lcom/baidu/mobstat/dl;->a:Lcom/baidu/mobstat/dc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 318
    iget-object v0, p0, Lcom/baidu/mobstat/dl;->a:Lcom/baidu/mobstat/dc;

    invoke-static {v0}, Lcom/baidu/mobstat/dc;->a(Lcom/baidu/mobstat/dc;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 322
    iget-object v0, p0, Lcom/baidu/mobstat/dl;->a:Lcom/baidu/mobstat/dc;

    invoke-static {v0}, Lcom/baidu/mobstat/dc;->a(Lcom/baidu/mobstat/dc;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 323
    if-eqz v0, :cond_2

    .line 327
    invoke-static {v0}, Lcom/baidu/mobstat/eq;->e(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    .line 330
    iget-object v1, p0, Lcom/baidu/mobstat/dl;->a:Lcom/baidu/mobstat/dc;

    invoke-static {v1}, Lcom/baidu/mobstat/dc;->b(Lcom/baidu/mobstat/dc;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 333
    :cond_0
    :goto_0
    return-void

    .line 319
    :cond_1
    return-void

    .line 324
    :cond_2
    return-void

    .line 330
    :cond_3
    iget-object v1, p0, Lcom/baidu/mobstat/dl;->a:Lcom/baidu/mobstat/dc;

    invoke-static {v1}, Lcom/baidu/mobstat/dc;->b(Lcom/baidu/mobstat/dc;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/baidu/mobstat/dl;->a:Lcom/baidu/mobstat/dc;

    invoke-static {v0}, Lcom/baidu/mobstat/dc;->c(Lcom/baidu/mobstat/dc;)V

    goto :goto_0
.end method
