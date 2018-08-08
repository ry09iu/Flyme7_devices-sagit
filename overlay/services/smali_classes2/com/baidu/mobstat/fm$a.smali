.class Lcom/baidu/mobstat/fm$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mobstat/fm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/mobstat/fm;


# direct methods
.method private constructor <init>(Lcom/baidu/mobstat/fm;)V
    .locals 0

    .prologue
    .line 392
    iput-object p1, p0, Lcom/baidu/mobstat/fm$a;->a:Lcom/baidu/mobstat/fm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/mobstat/fm;Lcom/baidu/mobstat/fn;)V
    .locals 0

    .prologue
    .line 392
    invoke-direct {p0, p1}, Lcom/baidu/mobstat/fm$a;-><init>(Lcom/baidu/mobstat/fm;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 395
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const-string/jumbo v1, "WebsocketWriteThread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 397
    :goto_0
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 407
    :goto_1
    return-void

    .line 398
    :cond_0
    iget-object v0, p0, Lcom/baidu/mobstat/fm$a;->a:Lcom/baidu/mobstat/fm;

    invoke-static {v0}, Lcom/baidu/mobstat/fm;->a(Lcom/baidu/mobstat/fm;)Lcom/baidu/mobstat/fk;

    move-result-object v0

    iget-object v0, v0, Lcom/baidu/mobstat/fk;->d:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 399
    iget-object v1, p0, Lcom/baidu/mobstat/fm$a;->a:Lcom/baidu/mobstat/fm;

    invoke-static {v1}, Lcom/baidu/mobstat/fm;->b(Lcom/baidu/mobstat/fm;)Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-virtual {v1, v2, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 400
    iget-object v0, p0, Lcom/baidu/mobstat/fm$a;->a:Lcom/baidu/mobstat/fm;

    invoke-static {v0}, Lcom/baidu/mobstat/fm;->b(Lcom/baidu/mobstat/fm;)Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 406
    :catch_0
    move-exception v0

    .line 403
    iget-object v0, p0, Lcom/baidu/mobstat/fm$a;->a:Lcom/baidu/mobstat/fm;

    invoke-static {v0}, Lcom/baidu/mobstat/fm;->a(Lcom/baidu/mobstat/fm;)Lcom/baidu/mobstat/fk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/fk;->b()V

    goto :goto_1

    .line 406
    :catch_1
    move-exception v0

    goto :goto_1
.end method
