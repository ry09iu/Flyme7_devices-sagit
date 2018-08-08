.class public final Lcom/baidu/mobstat/fe;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/net/LocalServerSocket;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()Z
    .locals 2

    .prologue
    monitor-enter p0

    .line 22
    :try_start_0
    iget-object v0, p0, Lcom/baidu/mobstat/fe;->a:Landroid/net/LocalServerSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 30
    :goto_0
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 23
    :cond_0
    :try_start_1
    new-instance v0, Landroid/net/LocalServerSocket;

    const-string/jumbo v1, "com.baidu.mobstat.bplus"

    invoke-direct {v0, v1}, Landroid/net/LocalServerSocket;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/baidu/mobstat/fe;->a:Landroid/net/LocalServerSocket;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 28
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final declared-synchronized b()V
    .locals 1

    .prologue
    monitor-enter p0

    .line 54
    :try_start_0
    iget-object v0, p0, Lcom/baidu/mobstat/fe;->a:Landroid/net/LocalServerSocket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :goto_0
    monitor-exit p0

    .line 62
    return-void

    .line 56
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/baidu/mobstat/fe;->a:Landroid/net/LocalServerSocket;

    invoke-virtual {v0}, Landroid/net/LocalServerSocket;->close()V

    const/4 v0, 0x0

    .line 57
    iput-object v0, p0, Lcom/baidu/mobstat/fe;->a:Landroid/net/LocalServerSocket;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 60
    :catch_0
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
