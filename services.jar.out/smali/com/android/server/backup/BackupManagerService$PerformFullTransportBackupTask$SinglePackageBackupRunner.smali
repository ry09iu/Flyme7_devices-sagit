.class Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;
.super Ljava/lang/Object;
.source "BackupManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/android/server/backup/BackupManagerService$BackupRestoreTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SinglePackageBackupRunner"
.end annotation


# instance fields
.field final mBackupLatch:Ljava/util/concurrent/CountDownLatch;

.field private volatile mBackupResult:I

.field private mEngine:Lcom/android/server/backup/BackupManagerService$FullBackupEngine;

.field final mOutput:Landroid/os/ParcelFileDescriptor;

.field final mPreflight:Lcom/android/server/backup/BackupManagerService$FullBackupPreflight;

.field final mPreflightLatch:Ljava/util/concurrent/CountDownLatch;

.field private volatile mPreflightResult:I

.field final mTarget:Landroid/content/pm/PackageInfo;

.field final synthetic this$1:Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;


# direct methods
.method constructor <init>(Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;Landroid/os/ParcelFileDescriptor;Landroid/content/pm/PackageInfo;Lcom/android/internal/backup/IBackupTransport;)V
    .locals 3
    .param p1, "this$1"    # Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;
    .param p2, "output"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "target"    # Landroid/content/pm/PackageInfo;
    .param p4, "transport"    # Lcom/android/internal/backup/IBackupTransport;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/16 v1, -0x3eb

    .line 4871
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;->this$1:Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4873
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-static {v0}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;->mOutput:Landroid/os/ParcelFileDescriptor;

    .line 4874
    iput-object p3, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;->mTarget:Landroid/content/pm/PackageInfo;

    .line 4875
    new-instance v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupPreflight;

    invoke-direct {v0, p1, p4}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupPreflight;-><init>(Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;Lcom/android/internal/backup/IBackupTransport;)V

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;->mPreflight:Lcom/android/server/backup/BackupManagerService$FullBackupPreflight;

    .line 4876
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;->mPreflightLatch:Ljava/util/concurrent/CountDownLatch;

    .line 4877
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;->mBackupLatch:Ljava/util/concurrent/CountDownLatch;

    .line 4878
    iput v1, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;->mPreflightResult:I

    .line 4879
    iput v1, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;->mBackupResult:I

    .line 4872
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 0

    .prologue
    .line 4942
    return-void
.end method

.method getBackupResultBlocking()I
    .locals 6

    .prologue
    .line 4931
    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;->mBackupLatch:Ljava/util/concurrent/CountDownLatch;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/32 v4, 0x493e0

    invoke-virtual {v1, v4, v5, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 4932
    iget v1, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;->mBackupResult:I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 4933
    :catch_0
    move-exception v0

    .line 4934
    .local v0, "e":Ljava/lang/InterruptedException;
    const/16 v1, -0x3eb

    return v1
.end method

.method getPreflightResultBlocking()J
    .locals 6

    .prologue
    .line 4918
    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;->mPreflightLatch:Ljava/util/concurrent/CountDownLatch;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/32 v4, 0x493e0

    invoke-virtual {v1, v4, v5, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 4919
    iget v1, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;->mPreflightResult:I

    if-nez v1, :cond_0

    .line 4920
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;->mPreflight:Lcom/android/server/backup/BackupManagerService$FullBackupPreflight;

    invoke-interface {v1}, Lcom/android/server/backup/BackupManagerService$FullBackupPreflight;->getExpectedSizeOrErrorCode()J

    move-result-wide v2

    return-wide v2

    .line 4922
    :cond_0
    iget v1, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;->mPreflightResult:I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v2, v1

    return-wide v2

    .line 4924
    :catch_0
    move-exception v0

    .line 4925
    .local v0, "e":Ljava/lang/InterruptedException;
    const-wide/16 v2, -0x3eb

    return-wide v2
.end method

.method public handleTimeout()V
    .locals 3

    .prologue
    .line 4950
    const-string/jumbo v0, "PFTBT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Full backup timeout of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;->mTarget:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4952
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;->this$1:Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;->mTarget:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService;->tearDownAgentAndKill(Landroid/content/pm/ApplicationInfo;)V

    .line 4948
    return-void
.end method

.method public operationComplete(J)V
    .locals 0
    .param p1, "result"    # J

    .prologue
    .line 4945
    return-void
.end method

.method public run()V
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 4884
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;->mOutput:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 4885
    .local v2, "out":Ljava/io/FileOutputStream;
    new-instance v0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;->this$1:Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;

    iget-object v1, v1, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;->mPreflight:Lcom/android/server/backup/BackupManagerService$FullBackupPreflight;

    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;->mTarget:Landroid/content/pm/PackageInfo;

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;-><init>(Lcom/android/server/backup/BackupManagerService;Ljava/io/OutputStream;Lcom/android/server/backup/BackupManagerService$FullBackupPreflight;Landroid/content/pm/PackageInfo;ZLcom/android/server/backup/BackupManagerService$BackupRestoreTask;)V

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;->mEngine:Lcom/android/server/backup/BackupManagerService$FullBackupEngine;

    .line 4887
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;->mEngine:Lcom/android/server/backup/BackupManagerService$FullBackupEngine;

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;->mOutput:Landroid/os/ParcelFileDescriptor;

    invoke-static {v0, v1}, Lcom/android/server/backup/BackupManagerServiceInjector;->setOutputFileDescriptor(Lcom/android/server/backup/BackupManagerService$FullBackupEngine;Landroid/os/ParcelFileDescriptor;)V

    .line 4890
    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;->mEngine:Lcom/android/server/backup/BackupManagerService$FullBackupEngine;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->preflightCheck()I

    move-result v0

    iput v0, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;->mPreflightResult:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4892
    :try_start_1
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;->mPreflightLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 4895
    iget v0, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;->mPreflightResult:I

    if-nez v0, :cond_0

    .line 4896
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;->mEngine:Lcom/android/server/backup/BackupManagerService$FullBackupEngine;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->backupOnePackage()I

    move-result v0

    iput v0, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;->mBackupResult:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4901
    :cond_0
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;->mBackupLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 4903
    :try_start_2
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;->mOutput:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 4883
    :goto_0
    return-void

    .line 4891
    :catchall_0
    move-exception v0

    .line 4892
    :try_start_3
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;->mPreflightLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 4891
    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 4898
    :catch_0
    move-exception v8

    .line 4899
    .local v8, "e":Ljava/lang/Exception;
    :try_start_4
    const-string/jumbo v0, "PFTBT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Exception during full package backup of "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;->mTarget:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 4901
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;->mBackupLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 4903
    :try_start_5
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;->mOutput:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .line 4904
    :catch_1
    move-exception v7

    .line 4905
    .local v7, "e":Ljava/io/IOException;
    const-string/jumbo v0, "PFTBT"

    const-string/jumbo v1, "Error closing transport pipe in runner"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4904
    .end local v7    # "e":Ljava/io/IOException;
    .end local v8    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v7

    .line 4905
    .restart local v7    # "e":Ljava/io/IOException;
    const-string/jumbo v0, "PFTBT"

    const-string/jumbo v1, "Error closing transport pipe in runner"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4900
    .end local v7    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v0

    .line 4901
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;->mBackupLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 4903
    :try_start_6
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;->mOutput:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 4900
    :goto_1
    throw v0

    .line 4904
    :catch_3
    move-exception v7

    .line 4905
    .restart local v7    # "e":Ljava/io/IOException;
    const-string/jumbo v1, "PFTBT"

    const-string/jumbo v3, "Error closing transport pipe in runner"

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public sendQuotaExceeded(JJ)V
    .locals 1
    .param p1, "backupDataBytes"    # J
    .param p3, "quotaBytes"    # J

    .prologue
    .line 4911
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;->mEngine:Lcom/android/server/backup/BackupManagerService$FullBackupEngine;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->sendQuotaExceeded(JJ)V

    .line 4910
    return-void
.end method
