.class Lmiui/app/backup/BackupManager$1;
.super Ljava/lang/Thread;
.source "BackupManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/app/backup/BackupManager;->restoreFile(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;ZLmiui/app/backup/BackupManager$BackupRestoreListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/app/backup/BackupManager;

.field final synthetic val$fd:Landroid/os/ParcelFileDescriptor;

.field final synthetic val$writeSide:Landroid/os/ParcelFileDescriptor;


# direct methods
.method constructor <init>(Lmiui/app/backup/BackupManager;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;)V
    .locals 0
    .param p1, "this$0"    # Lmiui/app/backup/BackupManager;
    .param p2, "val$writeSide"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "val$fd"    # Landroid/os/ParcelFileDescriptor;

    .prologue
    .line 254
    iput-object p1, p0, Lmiui/app/backup/BackupManager$1;->this$0:Lmiui/app/backup/BackupManager;

    iput-object p2, p0, Lmiui/app/backup/BackupManager$1;->val$writeSide:Landroid/os/ParcelFileDescriptor;

    iput-object p3, p0, Lmiui/app/backup/BackupManager$1;->val$fd:Landroid/os/ParcelFileDescriptor;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 257
    const/4 v2, 0x0

    .line 258
    .local v2, "is":Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 260
    .local v4, "os":Ljava/io/OutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    iget-object v7, p0, Lmiui/app/backup/BackupManager$1;->val$fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 261
    .end local v2    # "is":Ljava/io/InputStream;
    .local v3, "is":Ljava/io/InputStream;
    :try_start_1
    new-instance v5, Ljava/io/FileOutputStream;

    iget-object v7, p0, Lmiui/app/backup/BackupManager$1;->val$writeSide:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 263
    .local v5, "os":Ljava/io/OutputStream;
    const/16 v7, 0x400

    :try_start_2
    new-array v0, v7, [B

    .line 264
    .end local v4    # "os":Ljava/io/OutputStream;
    .local v0, "buf":[B
    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v6

    .local v6, "read":I
    if-lez v6, :cond_3

    .line 265
    const/4 v7, 0x0

    invoke-virtual {v5, v0, v7, v6}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 267
    .end local v0    # "buf":[B
    .end local v6    # "read":I
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    move-object v4, v5

    .end local v5    # "os":Ljava/io/OutputStream;
    .local v4, "os":Ljava/io/OutputStream;
    move-object v2, v3

    .line 268
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v4    # "os":Ljava/io/OutputStream;
    :goto_1
    :try_start_3
    const-string/jumbo v7, "Backup:BackupManager"

    const-string/jumbo v8, "IOException"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 271
    if-eqz v2, :cond_0

    .line 272
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 274
    :cond_0
    if-eqz v4, :cond_1

    .line 275
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 277
    :cond_1
    iget-object v7, p0, Lmiui/app/backup/BackupManager$1;->val$writeSide:Landroid/os/ParcelFileDescriptor;

    if-eqz v7, :cond_2

    .line 278
    iget-object v7, p0, Lmiui/app/backup/BackupManager$1;->val$writeSide:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 256
    .end local v1    # "e":Ljava/io/IOException;
    :cond_2
    :goto_2
    return-void

    .line 271
    .restart local v0    # "buf":[B
    .restart local v3    # "is":Ljava/io/InputStream;
    .restart local v5    # "os":Ljava/io/OutputStream;
    .restart local v6    # "read":I
    :cond_3
    if-eqz v3, :cond_4

    .line 272
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 274
    :cond_4
    if-eqz v5, :cond_5

    .line 275
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    .line 277
    :cond_5
    iget-object v7, p0, Lmiui/app/backup/BackupManager$1;->val$writeSide:Landroid/os/ParcelFileDescriptor;

    if-eqz v7, :cond_6

    .line 278
    iget-object v7, p0, Lmiui/app/backup/BackupManager$1;->val$writeSide:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :cond_6
    :goto_3
    move-object v4, v5

    .end local v5    # "os":Ljava/io/OutputStream;
    .restart local v4    # "os":Ljava/io/OutputStream;
    move-object v2, v3

    .end local v3    # "is":Ljava/io/InputStream;
    .local v2, "is":Ljava/io/InputStream;
    goto :goto_2

    .line 280
    .end local v2    # "is":Ljava/io/InputStream;
    .end local v4    # "os":Ljava/io/OutputStream;
    .restart local v3    # "is":Ljava/io/InputStream;
    .restart local v5    # "os":Ljava/io/OutputStream;
    :catch_1
    move-exception v1

    .line 281
    .restart local v1    # "e":Ljava/io/IOException;
    const-string/jumbo v7, "Backup:BackupManager"

    const-string/jumbo v8, "IOException"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 280
    .end local v0    # "buf":[B
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v5    # "os":Ljava/io/OutputStream;
    .end local v6    # "read":I
    :catch_2
    move-exception v1

    .line 281
    const-string/jumbo v7, "Backup:BackupManager"

    const-string/jumbo v8, "IOException"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 269
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 271
    :goto_4
    if-eqz v2, :cond_7

    .line 272
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 274
    :cond_7
    if-eqz v4, :cond_8

    .line 275
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 277
    :cond_8
    iget-object v8, p0, Lmiui/app/backup/BackupManager$1;->val$writeSide:Landroid/os/ParcelFileDescriptor;

    if-eqz v8, :cond_9

    .line 278
    iget-object v8, p0, Lmiui/app/backup/BackupManager$1;->val$writeSide:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v8}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 269
    :cond_9
    :goto_5
    throw v7

    .line 280
    :catch_3
    move-exception v1

    .line 281
    .restart local v1    # "e":Ljava/io/IOException;
    const-string/jumbo v8, "Backup:BackupManager"

    const-string/jumbo v9, "IOException"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 269
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v3    # "is":Ljava/io/InputStream;
    .local v4, "os":Ljava/io/OutputStream;
    :catchall_1
    move-exception v7

    move-object v2, v3

    .end local v3    # "is":Ljava/io/InputStream;
    .restart local v2    # "is":Ljava/io/InputStream;
    goto :goto_4

    .end local v2    # "is":Ljava/io/InputStream;
    .end local v4    # "os":Ljava/io/OutputStream;
    .restart local v3    # "is":Ljava/io/InputStream;
    .restart local v5    # "os":Ljava/io/OutputStream;
    :catchall_2
    move-exception v7

    move-object v4, v5

    .end local v5    # "os":Ljava/io/OutputStream;
    .local v4, "os":Ljava/io/OutputStream;
    move-object v2, v3

    .end local v3    # "is":Ljava/io/InputStream;
    .restart local v2    # "is":Ljava/io/InputStream;
    goto :goto_4

    .line 267
    .local v2, "is":Ljava/io/InputStream;
    .local v4, "os":Ljava/io/OutputStream;
    :catch_4
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_1

    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "is":Ljava/io/InputStream;
    .restart local v3    # "is":Ljava/io/InputStream;
    :catch_5
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    move-object v2, v3

    .end local v3    # "is":Ljava/io/InputStream;
    .local v2, "is":Ljava/io/InputStream;
    goto :goto_1
.end method
