.class Lcom/miui/server/BackupManagerService$3;
.super Ljava/lang/Object;
.source "BackupManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/server/BackupManagerService;->startConfirmationUi(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/server/BackupManagerService;

.field final synthetic val$token:I


# direct methods
.method constructor <init>(Lcom/miui/server/BackupManagerService;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/server/BackupManagerService;
    .param p2, "val$token"    # I

    .prologue
    .line 230
    iput-object p1, p0, Lcom/miui/server/BackupManagerService$3;->this$0:Lcom/miui/server/BackupManagerService;

    iput p2, p0, Lcom/miui/server/BackupManagerService$3;->val$token:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 234
    const-string/jumbo v1, "backup"

    .line 233
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Landroid/app/backup/IBackupManager;

    .line 236
    .local v0, "bm":Landroid/app/backup/IBackupManager;
    :try_start_0
    iget v1, p0, Lcom/miui/server/BackupManagerService$3;->val$token:I

    const-string/jumbo v3, ""

    iget-object v2, p0, Lcom/miui/server/BackupManagerService$3;->this$0:Lcom/miui/server/BackupManagerService;

    invoke-static {v2}, Lcom/miui/server/BackupManagerService;->-get8(Lcom/miui/server/BackupManagerService;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/miui/server/BackupManagerService$FullBackupRestoreObserver;

    iget-object v2, p0, Lcom/miui/server/BackupManagerService$3;->this$0:Lcom/miui/server/BackupManagerService;

    const/4 v7, 0x0

    invoke-direct {v5, v2, v7}, Lcom/miui/server/BackupManagerService$FullBackupRestoreObserver;-><init>(Lcom/miui/server/BackupManagerService;Lcom/miui/server/BackupManagerService$FullBackupRestoreObserver;)V

    const/4 v2, 0x1

    invoke-interface/range {v0 .. v5}, Landroid/app/backup/IBackupManager;->acknowledgeFullBackupOrRestore(IZLjava/lang/String;Ljava/lang/String;Landroid/app/backup/IFullBackupRestoreObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    :goto_0
    return-void

    .line 237
    :catch_0
    move-exception v6

    .line 238
    .local v6, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "Backup:BackupManagerService"

    const-string/jumbo v2, "acknowledgeFullBackupOrRestore failed"

    invoke-static {v1, v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
