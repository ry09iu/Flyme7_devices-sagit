.class Lcom/baidu/mobstat/dh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/webkit/WebView;

.field final synthetic b:Lcom/baidu/mobstat/dc;


# direct methods
.method constructor <init>(Lcom/baidu/mobstat/dc;Landroid/webkit/WebView;)V
    .locals 0

    .prologue
    .line 1527
    iput-object p1, p0, Lcom/baidu/mobstat/dh;->b:Lcom/baidu/mobstat/dc;

    iput-object p2, p0, Lcom/baidu/mobstat/dh;->a:Landroid/webkit/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1530
    iget-object v0, p0, Lcom/baidu/mobstat/dh;->b:Lcom/baidu/mobstat/dc;

    invoke-static {v0}, Lcom/baidu/mobstat/dc;->d(Lcom/baidu/mobstat/dc;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1533
    :try_start_0
    iget-object v0, p0, Lcom/baidu/mobstat/dh;->b:Lcom/baidu/mobstat/dc;

    iget-object v2, p0, Lcom/baidu/mobstat/dh;->a:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v0, v2}, Lcom/baidu/mobstat/dc;->a(Lcom/baidu/mobstat/dc;F)F

    .line 1534
    iget-object v0, p0, Lcom/baidu/mobstat/dh;->b:Lcom/baidu/mobstat/dc;

    iget-object v2, p0, Lcom/baidu/mobstat/dh;->a:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getScale()F

    move-result v2

    invoke-static {v0, v2}, Lcom/baidu/mobstat/dc;->b(Lcom/baidu/mobstat/dc;F)F

    .line 1536
    iget-object v0, p0, Lcom/baidu/mobstat/dh;->b:Lcom/baidu/mobstat/dc;

    invoke-static {v0}, Lcom/baidu/mobstat/dc;->d(Lcom/baidu/mobstat/dc;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1537
    monitor-exit v1

    .line 1538
    return-void

    .line 1537
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
