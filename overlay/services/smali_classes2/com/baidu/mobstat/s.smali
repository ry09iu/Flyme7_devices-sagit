.class abstract Lcom/baidu/mobstat/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private a:Lcom/baidu/mobstat/aa;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lcom/baidu/mobstat/z;

    invoke-direct {v0}, Lcom/baidu/mobstat/z;-><init>()V

    .line 21
    new-instance v1, Lcom/baidu/mobstat/aa;

    invoke-direct {v1, v0, p1}, Lcom/baidu/mobstat/aa;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/baidu/mobstat/s;->a:Lcom/baidu/mobstat/aa;

    const-string/jumbo v1, ".confd"

    .line 23
    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/z;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 24
    if-nez v0, :cond_0

    .line 27
    :goto_0
    return-void

    .line 25
    :cond_0
    invoke-direct {p0, p2}, Lcom/baidu/mobstat/s;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/baidu/mobstat/s;->a:Lcom/baidu/mobstat/aa;

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/aa;->a(Ljava/lang/String;)V

    .line 34
    return-void
.end method


# virtual methods
.method protected a(Landroid/content/ContentValues;)J
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/baidu/mobstat/s;->a:Lcom/baidu/mobstat/aa;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/baidu/mobstat/aa;->a(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method public abstract a(Ljava/lang/String;Ljava/lang/String;)J
.end method

.method protected a(Ljava/lang/String;II)Landroid/database/Cursor;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 70
    iget-object v0, p0, Lcom/baidu/mobstat/s;->a:Lcom/baidu/mobstat/aa;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " desc"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    invoke-virtual/range {v0 .. v7}, Lcom/baidu/mobstat/aa;->a([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/database/Cursor;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "=? "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x1

    .line 79
    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v3, v0

    .line 81
    iget-object v0, p0, Lcom/baidu/mobstat/s;->a:Lcom/baidu/mobstat/aa;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " desc"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v4, v1

    move-object v5, v1

    invoke-virtual/range {v0 .. v7}, Lcom/baidu/mobstat/aa;->a([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public abstract a(II)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/mobstat/r;",
            ">;"
        }
    .end annotation
.end method

.method public declared-synchronized a()Z
    .locals 2

    .prologue
    monitor-enter p0

    .line 43
    :try_start_0
    iget-object v0, p0, Lcom/baidu/mobstat/s;->a:Lcom/baidu/mobstat/aa;

    invoke-virtual {v0}, Lcom/baidu/mobstat/aa;->a()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catch_0
    move-exception v0

    .line 45
    :try_start_1
    invoke-static {}, Lcom/baidu/mobstat/eg;->c()Lcom/baidu/mobstat/eg;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/mobstat/eg;->b(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected a(J)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    const-string/jumbo v2, "_id=? "

    .line 107
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 108
    new-array v4, v1, [Ljava/lang/String;

    aput-object v3, v4, v0

    .line 110
    iget-object v3, p0, Lcom/baidu/mobstat/s;->a:Lcom/baidu/mobstat/aa;

    invoke-virtual {v3, v2, v4}, Lcom/baidu/mobstat/aa;->a(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-gtz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method protected b()I
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/baidu/mobstat/s;->a:Lcom/baidu/mobstat/aa;

    invoke-virtual {v0}, Lcom/baidu/mobstat/aa;->b()I

    move-result v0

    return v0
.end method

.method public abstract b(J)Z
.end method

.method public declared-synchronized close()V
    .locals 2

    .prologue
    monitor-enter p0

    .line 59
    :try_start_0
    iget-object v0, p0, Lcom/baidu/mobstat/s;->a:Lcom/baidu/mobstat/aa;

    invoke-virtual {v0}, Lcom/baidu/mobstat/aa;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    .line 63
    return-void

    .line 62
    :catch_0
    move-exception v0

    .line 61
    :try_start_1
    invoke-static {}, Lcom/baidu/mobstat/eg;->c()Lcom/baidu/mobstat/eg;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/mobstat/eg;->b(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
