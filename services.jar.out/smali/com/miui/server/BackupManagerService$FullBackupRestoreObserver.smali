.class Lcom/miui/server/BackupManagerService$FullBackupRestoreObserver;
.super Landroid/app/backup/IFullBackupRestoreObserver$Stub;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/server/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FullBackupRestoreObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/server/BackupManagerService;


# direct methods
.method private constructor <init>(Lcom/miui/server/BackupManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/server/BackupManagerService;

    .prologue
    .line 687
    iput-object p1, p0, Lcom/miui/server/BackupManagerService$FullBackupRestoreObserver;->this$0:Lcom/miui/server/BackupManagerService;

    invoke-direct {p0}, Landroid/app/backup/IFullBackupRestoreObserver$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/server/BackupManagerService;Lcom/miui/server/BackupManagerService$FullBackupRestoreObserver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/server/BackupManagerService;

    .prologue
    invoke-direct {p0, p1}, Lcom/miui/server/BackupManagerService$FullBackupRestoreObserver;-><init>(Lcom/miui/server/BackupManagerService;)V

    return-void
.end method


# virtual methods
.method public onBackupPackage(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 695
    iget-object v0, p0, Lcom/miui/server/BackupManagerService$FullBackupRestoreObserver;->this$0:Lcom/miui/server/BackupManagerService;

    invoke-static {v0}, Lcom/miui/server/BackupManagerService;->-get3(Lcom/miui/server/BackupManagerService;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/server/BackupManagerService$FullBackupRestoreObserver;->this$0:Lcom/miui/server/BackupManagerService;

    invoke-static {v0}, Lcom/miui/server/BackupManagerService;->-get3(Lcom/miui/server/BackupManagerService;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 698
    :cond_0
    iget-object v0, p0, Lcom/miui/server/BackupManagerService$FullBackupRestoreObserver;->this$0:Lcom/miui/server/BackupManagerService;

    invoke-static {v0}, Lcom/miui/server/BackupManagerService;->-get0(Lcom/miui/server/BackupManagerService;)Lmiui/app/backup/IPackageBackupRestoreObserver;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 699
    iget-object v0, p0, Lcom/miui/server/BackupManagerService$FullBackupRestoreObserver;->this$0:Lcom/miui/server/BackupManagerService;

    invoke-static {v0}, Lcom/miui/server/BackupManagerService;->-get0(Lcom/miui/server/BackupManagerService;)Lmiui/app/backup/IPackageBackupRestoreObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/server/BackupManagerService$FullBackupRestoreObserver;->this$0:Lcom/miui/server/BackupManagerService;

    invoke-static {v1}, Lcom/miui/server/BackupManagerService;->-get3(Lcom/miui/server/BackupManagerService;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/server/BackupManagerService$FullBackupRestoreObserver;->this$0:Lcom/miui/server/BackupManagerService;

    invoke-static {v2}, Lcom/miui/server/BackupManagerService;->-get2(Lcom/miui/server/BackupManagerService;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lmiui/app/backup/IPackageBackupRestoreObserver;->onBackupStart(Ljava/lang/String;I)V

    .line 694
    :cond_1
    return-void
.end method

.method public onEndBackup()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 705
    iget-object v0, p0, Lcom/miui/server/BackupManagerService$FullBackupRestoreObserver;->this$0:Lcom/miui/server/BackupManagerService;

    invoke-static {v0}, Lcom/miui/server/BackupManagerService;->-get0(Lcom/miui/server/BackupManagerService;)Lmiui/app/backup/IPackageBackupRestoreObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 706
    iget-object v0, p0, Lcom/miui/server/BackupManagerService$FullBackupRestoreObserver;->this$0:Lcom/miui/server/BackupManagerService;

    invoke-static {v0}, Lcom/miui/server/BackupManagerService;->-get0(Lcom/miui/server/BackupManagerService;)Lmiui/app/backup/IPackageBackupRestoreObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/server/BackupManagerService$FullBackupRestoreObserver;->this$0:Lcom/miui/server/BackupManagerService;

    invoke-static {v1}, Lcom/miui/server/BackupManagerService;->-get3(Lcom/miui/server/BackupManagerService;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/server/BackupManagerService$FullBackupRestoreObserver;->this$0:Lcom/miui/server/BackupManagerService;

    invoke-static {v2}, Lcom/miui/server/BackupManagerService;->-get2(Lcom/miui/server/BackupManagerService;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lmiui/app/backup/IPackageBackupRestoreObserver;->onBackupEnd(Ljava/lang/String;I)V

    .line 704
    :cond_0
    return-void
.end method

.method public onEndRestore()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 724
    iget-object v0, p0, Lcom/miui/server/BackupManagerService$FullBackupRestoreObserver;->this$0:Lcom/miui/server/BackupManagerService;

    invoke-static {v0}, Lcom/miui/server/BackupManagerService;->-get0(Lcom/miui/server/BackupManagerService;)Lmiui/app/backup/IPackageBackupRestoreObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 726
    iget-object v0, p0, Lcom/miui/server/BackupManagerService$FullBackupRestoreObserver;->this$0:Lcom/miui/server/BackupManagerService;

    invoke-static {v0}, Lcom/miui/server/BackupManagerService;->-get0(Lcom/miui/server/BackupManagerService;)Lmiui/app/backup/IPackageBackupRestoreObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/server/BackupManagerService$FullBackupRestoreObserver;->this$0:Lcom/miui/server/BackupManagerService;

    invoke-static {v1}, Lcom/miui/server/BackupManagerService;->-get3(Lcom/miui/server/BackupManagerService;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/server/BackupManagerService$FullBackupRestoreObserver;->this$0:Lcom/miui/server/BackupManagerService;

    invoke-static {v2}, Lcom/miui/server/BackupManagerService;->-get2(Lcom/miui/server/BackupManagerService;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lmiui/app/backup/IPackageBackupRestoreObserver;->onRestoreEnd(Ljava/lang/String;I)V

    .line 723
    :cond_0
    return-void
.end method

.method public onRestorePackage(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 716
    iget-object v0, p0, Lcom/miui/server/BackupManagerService$FullBackupRestoreObserver;->this$0:Lcom/miui/server/BackupManagerService;

    invoke-static {v0}, Lcom/miui/server/BackupManagerService;->-get0(Lcom/miui/server/BackupManagerService;)Lmiui/app/backup/IPackageBackupRestoreObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 718
    iget-object v0, p0, Lcom/miui/server/BackupManagerService$FullBackupRestoreObserver;->this$0:Lcom/miui/server/BackupManagerService;

    invoke-static {v0}, Lcom/miui/server/BackupManagerService;->-get0(Lcom/miui/server/BackupManagerService;)Lmiui/app/backup/IPackageBackupRestoreObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/server/BackupManagerService$FullBackupRestoreObserver;->this$0:Lcom/miui/server/BackupManagerService;

    invoke-static {v1}, Lcom/miui/server/BackupManagerService;->-get3(Lcom/miui/server/BackupManagerService;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/server/BackupManagerService$FullBackupRestoreObserver;->this$0:Lcom/miui/server/BackupManagerService;

    invoke-static {v2}, Lcom/miui/server/BackupManagerService;->-get2(Lcom/miui/server/BackupManagerService;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lmiui/app/backup/IPackageBackupRestoreObserver;->onRestoreStart(Ljava/lang/String;I)V

    .line 715
    :cond_0
    return-void
.end method

.method public onStartBackup()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 690
    return-void
.end method

.method public onStartRestore()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 711
    return-void
.end method

.method public onTimeout()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 731
    return-void
.end method
