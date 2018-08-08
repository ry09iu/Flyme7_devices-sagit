.class Lcom/baidu/mobstat/di;
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
    .line 200
    iput-object p1, p0, Lcom/baidu/mobstat/di;->c:Lcom/baidu/mobstat/dc;

    iput-object p2, p0, Lcom/baidu/mobstat/di;->a:Ljava/lang/ref/WeakReference;

    iput-wide p3, p0, Lcom/baidu/mobstat/di;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 203
    iget-object v0, p0, Lcom/baidu/mobstat/di;->c:Lcom/baidu/mobstat/dc;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/baidu/mobstat/dc;->a(Lcom/baidu/mobstat/dc;Z)Z

    .line 205
    iget-object v0, p0, Lcom/baidu/mobstat/di;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 206
    if-eqz v0, :cond_0

    .line 210
    iget-object v1, p0, Lcom/baidu/mobstat/di;->c:Lcom/baidu/mobstat/dc;

    iget-wide v2, p0, Lcom/baidu/mobstat/di;->b:J

    invoke-static {v1, v0, v2, v3}, Lcom/baidu/mobstat/dc;->b(Lcom/baidu/mobstat/dc;Landroid/app/Activity;J)V

    .line 211
    return-void

    .line 207
    :cond_0
    return-void
.end method
