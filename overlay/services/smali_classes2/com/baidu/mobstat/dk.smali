.class Lcom/baidu/mobstat/dk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/ref/WeakReference;

.field final synthetic b:Ljava/lang/ref/WeakReference;

.field final synthetic c:Landroid/view/View;

.field final synthetic d:J

.field final synthetic e:Lcom/baidu/mobstat/dc;


# direct methods
.method constructor <init>(Lcom/baidu/mobstat/dc;Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;Landroid/view/View;J)V
    .locals 1

    .prologue
    .line 282
    iput-object p1, p0, Lcom/baidu/mobstat/dk;->e:Lcom/baidu/mobstat/dc;

    iput-object p2, p0, Lcom/baidu/mobstat/dk;->a:Ljava/lang/ref/WeakReference;

    iput-object p3, p0, Lcom/baidu/mobstat/dk;->b:Ljava/lang/ref/WeakReference;

    iput-object p4, p0, Lcom/baidu/mobstat/dk;->c:Landroid/view/View;

    iput-wide p5, p0, Lcom/baidu/mobstat/dk;->d:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 285
    iget-object v0, p0, Lcom/baidu/mobstat/dk;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 286
    if-eqz v0, :cond_0

    .line 290
    iget-object v1, p0, Lcom/baidu/mobstat/dk;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 291
    if-eqz v1, :cond_1

    .line 295
    iget-object v1, p0, Lcom/baidu/mobstat/dk;->e:Lcom/baidu/mobstat/dc;

    iget-object v2, p0, Lcom/baidu/mobstat/dk;->c:Landroid/view/View;

    iget-wide v4, p0, Lcom/baidu/mobstat/dk;->d:J

    invoke-static {v1, v2, v0, v4, v5}, Lcom/baidu/mobstat/dc;->a(Lcom/baidu/mobstat/dc;Landroid/view/View;Landroid/app/Activity;J)V

    .line 296
    return-void

    .line 287
    :cond_0
    return-void

    .line 292
    :cond_1
    return-void
.end method
