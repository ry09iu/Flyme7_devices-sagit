.class Lcom/baidu/mobstat/dj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/ref/WeakReference;

.field final synthetic b:J

.field final synthetic c:Lcom/baidu/mobstat/dc;


# direct methods
.method constructor <init>(Lcom/baidu/mobstat/dc;Ljava/lang/ref/WeakReference;J)V
    .locals 1

    .prologue
    .line 259
    iput-object p1, p0, Lcom/baidu/mobstat/dj;->c:Lcom/baidu/mobstat/dc;

    iput-object p2, p0, Lcom/baidu/mobstat/dj;->a:Ljava/lang/ref/WeakReference;

    iput-wide p3, p0, Lcom/baidu/mobstat/dj;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 262
    iget-object v0, p0, Lcom/baidu/mobstat/dj;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 263
    if-eqz v0, :cond_0

    .line 267
    iget-object v1, p0, Lcom/baidu/mobstat/dj;->c:Lcom/baidu/mobstat/dc;

    iget-wide v2, p0, Lcom/baidu/mobstat/dj;->b:J

    invoke-static {v1, v0, v2, v3}, Lcom/baidu/mobstat/dc;->c(Lcom/baidu/mobstat/dc;Landroid/app/Activity;J)V

    .line 268
    return-void

    .line 264
    :cond_0
    return-void
.end method
