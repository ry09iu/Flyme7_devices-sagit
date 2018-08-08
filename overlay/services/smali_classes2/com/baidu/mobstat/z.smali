.class Lcom/baidu/mobstat/z;
.super Landroid/content/ContextWrapper;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 19
    invoke-direct {p0, v0}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 20
    return-void
.end method


# virtual methods
.method public getDatabasePath(Ljava/lang/String;)Ljava/io/File;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 24
    invoke-static {}, Lcom/baidu/mobstat/ex;->a()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "mounted"

    .line 25
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 26
    if-eqz v1, :cond_0

    .line 30
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 31
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "backups/system"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 32
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 33
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 37
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 38
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 39
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 47
    :goto_1
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3

    :goto_2
    return-object v0

    .line 27
    :cond_0
    return-object v0

    .line 34
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    goto :goto_0

    .line 41
    :cond_2
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 44
    :catch_0
    move-exception v2

    .line 43
    invoke-static {}, Lcom/baidu/mobstat/eg;->c()Lcom/baidu/mobstat/eg;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/baidu/mobstat/eg;->b(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 47
    goto :goto_2
.end method

.method public openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 59
    invoke-virtual {p0, p1}, Lcom/baidu/mobstat/z;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 60
    if-nez v0, :cond_1

    .line 61
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "db path is null or path can not be write"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 63
    invoke-static {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/io/File;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;Landroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 80
    invoke-virtual {p0, p1}, Lcom/baidu/mobstat/z;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 81
    if-nez v0, :cond_1

    .line 82
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "db path is null or path can not be write"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 84
    invoke-static {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/io/File;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method
