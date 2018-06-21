.class public Lcom/android/server/backup/BackupManagerServiceInjector;
.super Ljava/lang/Object;
.source "BackupManagerServiceInjector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/backup/BackupManagerServiceInjector$DeathLinker;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Backup:BackupManagerServiceInjector"

.field private static sBinderDeathLinker:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/backup/BackupManagerServiceInjector$DeathLinker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 101
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/backup/BackupManagerServiceInjector;->sBinderDeathLinker:Ljava/util/HashMap;

    .line 26
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static addRestoredSize(JI)V
    .locals 4
    .param p0, "size"    # J
    .param p2, "fd"    # I

    .prologue
    .line 80
    const-string/jumbo v2, "MiuiBackup"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lmiui/app/backup/IBackupManager;

    .line 82
    .local v0, "bm":Lmiui/app/backup/IBackupManager;
    :try_start_0
    invoke-interface {v0, p2}, Lmiui/app/backup/IBackupManager;->isRunningFromMiui(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 83
    invoke-interface {v0, p0, p1}, Lmiui/app/backup/IBackupManager;->addCompletedSize(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 85
    :catch_0
    move-exception v1

    .line 86
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "Backup:BackupManagerServiceInjector"

    const-string/jumbo v3, "addRestoredSize failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static errorOccur(II)V
    .locals 4
    .param p0, "errCode"    # I
    .param p1, "fd"    # I

    .prologue
    .line 47
    const-string/jumbo v2, "MiuiBackup"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lmiui/app/backup/IBackupManager;

    .line 49
    .local v0, "bm":Lmiui/app/backup/IBackupManager;
    :try_start_0
    invoke-interface {v0, p1}, Lmiui/app/backup/IBackupManager;->isRunningFromMiui(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 50
    invoke-interface {v0, p0}, Lmiui/app/backup/IBackupManager;->errorOccur(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    :cond_0
    :goto_0
    return-void

    .line 52
    :catch_0
    move-exception v1

    .line 53
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "Backup:BackupManagerServiceInjector"

    const-string/jumbo v3, "errorOccur failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static getApplicationInfo(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "fd"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 186
    const-string/jumbo v3, "MiuiBackup"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lmiui/app/backup/IBackupManager;

    .line 187
    .local v0, "bm":Lmiui/app/backup/IBackupManager;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 189
    .local v2, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-interface {v0, p2}, Lmiui/app/backup/IBackupManager;->isRunningFromMiui(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p0, p1}, Lmiui/app/backup/BackupManager;->isSysAppForBackup(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 190
    const/16 v3, 0x400

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 192
    :catch_0
    move-exception v1

    .line 193
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "Backup:BackupManagerServiceInjector"

    const-string/jumbo v4, "getApplicationInfo failed"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 195
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    return-object v3
.end method

.method static getCachedInstallPath(Ljava/io/File;Ljava/lang/String;J)Ljava/io/File;
    .locals 10
    .param p0, "rootCacheDir"    # Ljava/io/File;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "realSize"    # J

    .prologue
    .line 289
    new-instance v7, Landroid/os/StatFs;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 290
    .local v7, "sf":Landroid/os/StatFs;
    invoke-virtual {v7}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v4

    .line 291
    .local v4, "blockSize":J
    invoke-virtual {v7}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v0

    .line 292
    .local v0, "availableCount":J
    mul-long v2, v0, v4

    .line 293
    .local v2, "availableSize":J
    const/4 v6, 0x0

    .line 294
    .local v6, "f":Ljava/io/File;
    cmp-long v8, v2, p2

    if-lez v8, :cond_0

    .line 295
    new-instance v6, Ljava/io/File;

    .end local v6    # "f":Ljava/io/File;
    invoke-direct {v6, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 299
    .local v6, "f":Ljava/io/File;
    :goto_0
    return-object v6

    .line 297
    .local v6, "f":Ljava/io/File;
    :cond_0
    invoke-static {}, Lcom/miui/server/BackupManagerService;->getCachedInstallFile()Ljava/io/File;

    move-result-object v6

    .local v6, "f":Ljava/io/File;
    goto :goto_0
.end method

.method static getPackageInfo(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "fd"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 199
    const-string/jumbo v3, "MiuiBackup"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lmiui/app/backup/IBackupManager;

    .line 200
    .local v0, "bm":Lmiui/app/backup/IBackupManager;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 202
    .local v2, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-interface {v0, p2}, Lmiui/app/backup/IBackupManager;->isRunningFromMiui(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p0, p1}, Lmiui/app/backup/BackupManager;->isSysAppForBackup(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 203
    const/16 v3, 0x440

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 205
    :catch_0
    move-exception v1

    .line 206
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "Backup:BackupManagerServiceInjector"

    const-string/jumbo v4, "getPackageInfo failed"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 208
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    const/16 v3, 0x40

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    return-object v3
.end method

.method static isForceAllowBackup(I)Z
    .locals 4
    .param p0, "fd"    # I

    .prologue
    .line 163
    const-string/jumbo v2, "MiuiBackup"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lmiui/app/backup/IBackupManager;

    .line 165
    .local v0, "bm":Lmiui/app/backup/IBackupManager;
    :try_start_0
    invoke-interface {v0, p0}, Lmiui/app/backup/IBackupManager;->isRunningFromMiui(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    .line 166
    const/4 v2, 0x1

    return v2

    .line 168
    :catch_0
    move-exception v1

    .line 169
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "Backup:BackupManagerServiceInjector"

    const-string/jumbo v3, "isForceAllowBackup error"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 171
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method static isForceAllowBackup(Landroid/content/pm/PackageInfo;I)Z
    .locals 1
    .param p0, "info"    # Landroid/content/pm/PackageInfo;
    .param p1, "fd"    # I

    .prologue
    .line 175
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lmiui/app/backup/BackupManager;->isSysAppForBackup(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 176
    :cond_0
    invoke-static {p1}, Lcom/android/server/backup/BackupManagerServiceInjector;->isForceAllowBackup(I)Z

    move-result v0

    return v0

    .line 178
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method static isForceAllowSysAppBackup(Landroid/content/pm/PackageInfo;I)Z
    .locals 1
    .param p0, "info"    # Landroid/content/pm/PackageInfo;
    .param p1, "fd"    # I

    .prologue
    .line 182
    invoke-static {p0}, Lmiui/app/backup/BackupManager;->isSysAppForBackup(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/android/server/backup/BackupManagerServiceInjector;->isForceAllowBackup(I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isNeedBeKilled(Ljava/lang/String;I)Z
    .locals 5
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "fd"    # I

    .prologue
    .line 212
    const/4 v2, 0x1

    .line 213
    .local v2, "is":Z
    const-string/jumbo v3, "MiuiBackup"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lmiui/app/backup/IBackupManager;

    .line 215
    .local v0, "bm":Lmiui/app/backup/IBackupManager;
    :try_start_0
    invoke-interface {v0, p1}, Lmiui/app/backup/IBackupManager;->isRunningFromMiui(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 216
    invoke-interface {v0, p0}, Lmiui/app/backup/IBackupManager;->isNeedBeKilled(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 221
    .end local v2    # "is":Z
    :cond_0
    :goto_0
    return v2

    .line 218
    .restart local v2    # "is":Z
    :catch_0
    move-exception v1

    .line 219
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "Backup:BackupManagerServiceInjector"

    const-string/jumbo v4, "isNeedBeKilled failed"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static linkToDeath(Landroid/app/IBackupAgent;I)V
    .locals 5
    .param p0, "backupAgent"    # Landroid/app/IBackupAgent;
    .param p1, "fd"    # I

    .prologue
    .line 142
    if-eqz p0, :cond_0

    .line 143
    invoke-interface {p0}, Landroid/app/IBackupAgent;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 144
    .local v0, "agentBinder":Landroid/os/IBinder;
    new-instance v1, Lcom/android/server/backup/BackupManagerServiceInjector$DeathLinker;

    invoke-direct {v1, v0, p1}, Lcom/android/server/backup/BackupManagerServiceInjector$DeathLinker;-><init>(Landroid/os/IBinder;I)V

    .line 145
    .local v1, "deathLinker":Lcom/android/server/backup/BackupManagerServiceInjector$DeathLinker;
    sget-object v3, Lcom/android/server/backup/BackupManagerServiceInjector;->sBinderDeathLinker:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    const/4 v3, 0x0

    :try_start_0
    invoke-interface {v0, v1, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    .end local v0    # "agentBinder":Landroid/os/IBinder;
    .end local v1    # "deathLinker":Lcom/android/server/backup/BackupManagerServiceInjector$DeathLinker;
    :cond_0
    :goto_0
    return-void

    .line 148
    .restart local v0    # "agentBinder":Landroid/os/IBinder;
    .restart local v1    # "deathLinker":Lcom/android/server/backup/BackupManagerServiceInjector$DeathLinker;
    :catch_0
    move-exception v2

    .line 149
    .local v2, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "Backup:BackupManagerServiceInjector"

    const-string/jumbo v4, "linkToDeath failed"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static needUpdateToken(Landroid/app/IBackupAgent;I)Z
    .locals 4
    .param p0, "backupAgent"    # Landroid/app/IBackupAgent;
    .param p1, "token"    # I

    .prologue
    .line 130
    const/4 v1, 0x0

    .line 131
    .local v1, "needUpdateToken":Z
    if-eqz p0, :cond_0

    .line 132
    invoke-interface {p0}, Landroid/app/IBackupAgent;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v2}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v1

    .line 133
    .local v1, "needUpdateToken":Z
    sget-object v2, Lcom/android/server/backup/BackupManagerServiceInjector;->sBinderDeathLinker:Ljava/util/HashMap;

    invoke-interface {p0}, Landroid/app/IBackupAgent;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/backup/BackupManagerServiceInjector$DeathLinker;

    .line 134
    .local v0, "deathLinker":Lcom/android/server/backup/BackupManagerServiceInjector$DeathLinker;
    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {v0, p1}, Lcom/android/server/backup/BackupManagerServiceInjector$DeathLinker;->setToken(I)V

    .line 138
    .end local v0    # "deathLinker":Lcom/android/server/backup/BackupManagerServiceInjector$DeathLinker;
    .end local v1    # "needUpdateToken":Z
    :cond_0
    return v1
.end method

.method static onApkInstalled(I)V
    .locals 4
    .param p0, "fd"    # I

    .prologue
    .line 91
    const-string/jumbo v2, "MiuiBackup"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lmiui/app/backup/IBackupManager;

    .line 93
    .local v0, "bm":Lmiui/app/backup/IBackupManager;
    :try_start_0
    invoke-interface {v0, p0}, Lmiui/app/backup/IBackupManager;->isRunningFromMiui(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 94
    invoke-interface {v0}, Lmiui/app/backup/IBackupManager;->onApkInstalled()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 96
    :catch_0
    move-exception v1

    .line 97
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "Backup:BackupManagerServiceInjector"

    const-string/jumbo v3, "onApkInstalled failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static prepareOperationTimeout(Lcom/android/server/backup/BackupManagerService;IJLcom/android/server/backup/BackupManagerService$BackupRestoreTask;I)V
    .locals 6
    .param p0, "thiz"    # Lcom/android/server/backup/BackupManagerService;
    .param p1, "token"    # I
    .param p2, "interval"    # J
    .param p4, "callback"    # Lcom/android/server/backup/BackupManagerService$BackupRestoreTask;
    .param p5, "fd"    # I

    .prologue
    .line 319
    const-string/jumbo v3, "MiuiBackup"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    check-cast v1, Lmiui/app/backup/IBackupManager;

    .line 320
    .local v1, "bm":Lmiui/app/backup/IBackupManager;
    const/4 v0, 0x1

    .line 322
    .local v0, "backupTimeoutScale":I
    :try_start_0
    invoke-interface {v1, p5}, Lmiui/app/backup/IBackupManager;->isRunningFromMiui(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 323
    invoke-interface {v1}, Lmiui/app/backup/IBackupManager;->getBackupTimeoutScale()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 328
    :cond_0
    :goto_0
    const-string/jumbo v3, "Backup:BackupManagerServiceInjector"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "prepareOperationTimeout backupTimeoutScale = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    int-to-long v4, v0

    mul-long/2addr v4, p2

    invoke-virtual {p0, p1, v4, v5, p4}, Lcom/android/server/backup/BackupManagerService;->prepareOperationTimeout(IJLcom/android/server/backup/BackupManagerService$BackupRestoreTask;)V

    .line 318
    return-void

    .line 325
    :catch_0
    move-exception v2

    .line 326
    .local v2, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "Backup:BackupManagerServiceInjector"

    const-string/jumbo v4, "prepareOperationTimeout failed"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static readMiuiBackupHeader(Landroid/os/ParcelFileDescriptor;I)V
    .locals 4
    .param p0, "in"    # Landroid/os/ParcelFileDescriptor;
    .param p1, "fd"    # I

    .prologue
    .line 69
    const-string/jumbo v2, "MiuiBackup"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lmiui/app/backup/IBackupManager;

    .line 71
    .local v0, "bm":Lmiui/app/backup/IBackupManager;
    :try_start_0
    invoke-interface {v0, p1}, Lmiui/app/backup/IBackupManager;->isRunningFromMiui(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 72
    invoke-interface {v0, p0}, Lmiui/app/backup/IBackupManager;->readMiuiBackupHeader(Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :cond_0
    :goto_0
    return-void

    .line 74
    :catch_0
    move-exception v1

    .line 75
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "Backup:BackupManagerServiceInjector"

    const-string/jumbo v3, "readMiuiBackupHeader failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static restoreFileEnd(Lcom/android/server/backup/BackupManagerService;Landroid/app/IBackupAgent;Landroid/app/backup/IBackupManager;I)V
    .locals 20
    .param p0, "thiz"    # Lcom/android/server/backup/BackupManagerService;
    .param p1, "agent"    # Landroid/app/IBackupAgent;
    .param p2, "backupManagerBinder"    # Landroid/app/backup/IBackupManager;
    .param p3, "fd"    # I

    .prologue
    .line 225
    if-eqz p1, :cond_0

    .line 226
    const-string/jumbo v2, "MiuiBackup"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v18

    check-cast v18, Lmiui/app/backup/IBackupManager;

    .line 228
    .local v18, "bm":Lmiui/app/backup/IBackupManager;
    :try_start_0
    move-object/from16 v0, v18

    move/from16 v1, p3

    invoke-interface {v0, v1}, Lmiui/app/backup/IBackupManager;->isRunningFromMiui(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 229
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService;->generateToken()I

    move-result v3

    .line 230
    .local v3, "token":I
    const-wide/32 v4, 0x493e0

    const/4 v6, 0x0

    move-object/from16 v2, p0

    move/from16 v7, p3

    invoke-static/range {v2 .. v7}, Lcom/android/server/backup/BackupManagerServiceInjector;->prepareOperationTimeout(Lcom/android/server/backup/BackupManagerService;IJLcom/android/server/backup/BackupManagerService$BackupRestoreTask;I)V

    .line 231
    const-wide/16 v7, 0x0

    sget-object v10, Lmiui/app/backup/BackupManager;->DOMAIN_END:Ljava/lang/String;

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object/from16 v5, p1

    move/from16 v16, v3

    move-object/from16 v17, p2

    invoke-interface/range {v5 .. v17}, Landroid/app/IBackupAgent;->doRestoreFile(Landroid/os/ParcelFileDescriptor;JILjava/lang/String;Ljava/lang/String;JJILandroid/app/backup/IBackupManager;)V

    .line 232
    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/android/server/backup/BackupManagerServiceInjector;->needUpdateToken(Landroid/app/IBackupAgent;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 233
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/backup/BackupManagerService;->waitUntilOperationComplete(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    .end local v3    # "token":I
    .end local v18    # "bm":Lmiui/app/backup/IBackupManager;
    :cond_0
    :goto_0
    return-void

    .line 236
    .restart local v18    # "bm":Lmiui/app/backup/IBackupManager;
    :catch_0
    move-exception v19

    .line 237
    .local v19, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "Backup:BackupManagerServiceInjector"

    const-string/jumbo v4, "restoreFileEnd failed"

    move-object/from16 v0, v19

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static routeSocketDataToOutput(Lcom/android/server/backup/BackupManagerService;Landroid/os/ParcelFileDescriptor;Ljava/io/OutputStream;I)V
    .locals 17
    .param p0, "thiz"    # Lcom/android/server/backup/BackupManagerService;
    .param p1, "inPipe"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "out"    # Ljava/io/OutputStream;
    .param p3, "outFd"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 244
    const-string/jumbo v13, "MiuiBackup"

    invoke-static {v13}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    check-cast v2, Lmiui/app/backup/IBackupManager;

    .line 245
    .local v2, "bm":Lmiui/app/backup/IBackupManager;
    const/4 v10, 0x0

    .line 246
    .local v10, "raw":Ljava/io/FileInputStream;
    const/4 v7, 0x0

    .line 248
    .local v7, "in":Ljava/io/DataInputStream;
    :try_start_0
    move/from16 v0, p3

    invoke-interface {v2, v0}, Lmiui/app/backup/IBackupManager;->isRunningFromMiui(I)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 249
    new-instance v11, Ljava/io/FileInputStream;

    invoke-virtual/range {p1 .. p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v13

    invoke-direct {v11, v13}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 250
    .end local v10    # "raw":Ljava/io/FileInputStream;
    .local v11, "raw":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v8, Ljava/io/DataInputStream;

    invoke-direct {v8, v11}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 252
    .local v8, "in":Ljava/io/DataInputStream;
    const v13, 0x8000

    :try_start_2
    new-array v3, v13, [B

    .line 254
    .end local v7    # "in":Ljava/io/DataInputStream;
    .local v3, "buffer":[B
    :cond_0
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    .local v4, "chunkTotal":I
    if-lez v4, :cond_8

    .line 255
    :goto_0
    if-lez v4, :cond_0

    .line 256
    array-length v13, v3

    if-le v4, v13, :cond_1

    array-length v12, v3

    .line 257
    .local v12, "toRead":I
    :goto_1
    const/4 v13, 0x0

    invoke-virtual {v8, v3, v13, v12}, Ljava/io/DataInputStream;->read([BII)I

    move-result v9

    .line 258
    .local v9, "nRead":I
    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v13, v9}, Ljava/io/OutputStream;->write([BII)V

    .line 259
    int-to-long v14, v9

    invoke-interface {v2, v14, v15}, Lmiui/app/backup/IBackupManager;->addCompletedSize(J)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 260
    sub-int/2addr v4, v9

    goto :goto_0

    .end local v9    # "nRead":I
    .end local v12    # "toRead":I
    :cond_1
    move v12, v4

    .line 256
    goto :goto_1

    .line 264
    .end local v3    # "buffer":[B
    .end local v4    # "chunkTotal":I
    .end local v8    # "in":Ljava/io/DataInputStream;
    .end local v11    # "raw":Ljava/io/FileInputStream;
    .restart local v7    # "in":Ljava/io/DataInputStream;
    .restart local v10    # "raw":Ljava/io/FileInputStream;
    :cond_2
    :try_start_3
    const-string/jumbo v13, "routeSocketDataToOutput"

    sget-object v14, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object p1, v15, v16

    const/16 v16, 0x1

    aput-object p2, v15, v16

    move-object/from16 v0, p0

    invoke-static {v0, v13, v14, v15}, Lmiui/util/ReflectionUtils;->tryCallMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Lmiui/util/ObjectReference;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 273
    .end local v7    # "in":Ljava/io/DataInputStream;
    .end local v10    # "raw":Ljava/io/FileInputStream;
    :goto_2
    if-eqz v10, :cond_3

    .line 274
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V

    .line 276
    :cond_3
    if-eqz v7, :cond_4

    .line 277
    invoke-virtual {v7}, Ljava/io/DataInputStream;->close()V

    .line 243
    :cond_4
    :goto_3
    return-void

    .line 269
    .restart local v7    # "in":Ljava/io/DataInputStream;
    .restart local v10    # "raw":Ljava/io/FileInputStream;
    :catch_0
    move-exception v6

    .line 270
    .end local v7    # "in":Ljava/io/DataInputStream;
    .end local v10    # "raw":Ljava/io/FileInputStream;
    .local v6, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :goto_4
    :try_start_4
    const-string/jumbo v13, "Backup:BackupManagerServiceInjector"

    const-string/jumbo v14, "routeSocketDataToOutput failed"

    invoke-static {v13, v14, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 271
    new-instance v13, Ljava/io/IOException;

    invoke-direct {v13}, Ljava/io/IOException;-><init>()V

    throw v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 272
    .end local v6    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :catchall_0
    move-exception v13

    .line 273
    :goto_5
    if-eqz v10, :cond_5

    .line 274
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V

    .line 276
    :cond_5
    if-eqz v7, :cond_6

    .line 277
    invoke-virtual {v7}, Ljava/io/DataInputStream;->close()V

    .line 272
    :cond_6
    throw v13

    .line 267
    .restart local v7    # "in":Ljava/io/DataInputStream;
    .restart local v10    # "raw":Ljava/io/FileInputStream;
    :catch_1
    move-exception v5

    .line 268
    .end local v7    # "in":Ljava/io/DataInputStream;
    .end local v10    # "raw":Ljava/io/FileInputStream;
    .local v5, "e":Landroid/os/RemoteException;
    :goto_6
    :try_start_5
    const-string/jumbo v13, "Backup:BackupManagerServiceInjector"

    const-string/jumbo v14, "routeSocketDataToOutput failed"

    invoke-static {v13, v14, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 273
    if-eqz v10, :cond_7

    .line 274
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V

    .line 276
    :cond_7
    if-eqz v7, :cond_4

    .line 277
    invoke-virtual {v7}, Ljava/io/DataInputStream;->close()V

    goto :goto_3

    .line 272
    .end local v5    # "e":Landroid/os/RemoteException;
    .restart local v7    # "in":Ljava/io/DataInputStream;
    .restart local v11    # "raw":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v13

    move-object v10, v11

    .end local v11    # "raw":Ljava/io/FileInputStream;
    .local v10, "raw":Ljava/io/FileInputStream;
    goto :goto_5

    .end local v7    # "in":Ljava/io/DataInputStream;
    .end local v10    # "raw":Ljava/io/FileInputStream;
    .restart local v8    # "in":Ljava/io/DataInputStream;
    .restart local v11    # "raw":Ljava/io/FileInputStream;
    :catchall_2
    move-exception v13

    move-object v7, v8

    .end local v8    # "in":Ljava/io/DataInputStream;
    .local v7, "in":Ljava/io/DataInputStream;
    move-object v10, v11

    .end local v11    # "raw":Ljava/io/FileInputStream;
    .restart local v10    # "raw":Ljava/io/FileInputStream;
    goto :goto_5

    .line 267
    .end local v10    # "raw":Ljava/io/FileInputStream;
    .local v7, "in":Ljava/io/DataInputStream;
    .restart local v11    # "raw":Ljava/io/FileInputStream;
    :catch_2
    move-exception v5

    .restart local v5    # "e":Landroid/os/RemoteException;
    move-object v10, v11

    .end local v11    # "raw":Ljava/io/FileInputStream;
    .restart local v10    # "raw":Ljava/io/FileInputStream;
    goto :goto_6

    .end local v5    # "e":Landroid/os/RemoteException;
    .end local v7    # "in":Ljava/io/DataInputStream;
    .end local v10    # "raw":Ljava/io/FileInputStream;
    .restart local v8    # "in":Ljava/io/DataInputStream;
    .restart local v11    # "raw":Ljava/io/FileInputStream;
    :catch_3
    move-exception v5

    .restart local v5    # "e":Landroid/os/RemoteException;
    move-object v7, v8

    .end local v8    # "in":Ljava/io/DataInputStream;
    .local v7, "in":Ljava/io/DataInputStream;
    move-object v10, v11

    .end local v11    # "raw":Ljava/io/FileInputStream;
    .restart local v10    # "raw":Ljava/io/FileInputStream;
    goto :goto_6

    .line 269
    .end local v5    # "e":Landroid/os/RemoteException;
    .end local v10    # "raw":Ljava/io/FileInputStream;
    .local v7, "in":Ljava/io/DataInputStream;
    .restart local v11    # "raw":Ljava/io/FileInputStream;
    :catch_4
    move-exception v6

    .restart local v6    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    move-object v10, v11

    .end local v11    # "raw":Ljava/io/FileInputStream;
    .restart local v10    # "raw":Ljava/io/FileInputStream;
    goto :goto_4

    .end local v6    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    .end local v7    # "in":Ljava/io/DataInputStream;
    .end local v10    # "raw":Ljava/io/FileInputStream;
    .restart local v8    # "in":Ljava/io/DataInputStream;
    .restart local v11    # "raw":Ljava/io/FileInputStream;
    :catch_5
    move-exception v6

    .restart local v6    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    move-object v7, v8

    .end local v8    # "in":Ljava/io/DataInputStream;
    .local v7, "in":Ljava/io/DataInputStream;
    move-object v10, v11

    .end local v11    # "raw":Ljava/io/FileInputStream;
    .restart local v10    # "raw":Ljava/io/FileInputStream;
    goto :goto_4

    .end local v6    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    .end local v7    # "in":Ljava/io/DataInputStream;
    .end local v10    # "raw":Ljava/io/FileInputStream;
    .restart local v3    # "buffer":[B
    .restart local v4    # "chunkTotal":I
    .restart local v8    # "in":Ljava/io/DataInputStream;
    .restart local v11    # "raw":Ljava/io/FileInputStream;
    :cond_8
    move-object v7, v8

    .end local v8    # "in":Ljava/io/DataInputStream;
    .restart local v7    # "in":Ljava/io/DataInputStream;
    move-object v10, v11

    .end local v11    # "raw":Ljava/io/FileInputStream;
    .restart local v10    # "raw":Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method static setOutputFileDescriptor(Lcom/android/server/backup/BackupManagerService$FullBackupEngine;Landroid/os/ParcelFileDescriptor;)V
    .locals 0
    .param p0, "engine"    # Lcom/android/server/backup/BackupManagerService$FullBackupEngine;
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;

    .prologue
    .line 283
    if-eqz p0, :cond_0

    .line 284
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    .line 282
    :cond_0
    return-void
.end method

.method static startConfirmationUi(Lcom/android/server/backup/BackupManagerService;ILjava/lang/String;I)Z
    .locals 4
    .param p0, "thiz"    # Lcom/android/server/backup/BackupManagerService;
    .param p1, "token"    # I
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "fd"    # I

    .prologue
    .line 32
    const-string/jumbo v2, "MiuiBackup"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lmiui/app/backup/IBackupManager;

    .line 34
    .local v0, "bm":Lmiui/app/backup/IBackupManager;
    :try_start_0
    invoke-interface {v0, p3}, Lmiui/app/backup/IBackupManager;->isRunningFromMiui(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 35
    invoke-interface {v0, p1, p2}, Lmiui/app/backup/IBackupManager;->startConfirmationUi(ILjava/lang/String;)V

    .line 43
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 37
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/backup/BackupManagerService;->startConfirmationUi(ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 39
    :catch_0
    move-exception v1

    .line 40
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "Backup:BackupManagerServiceInjector"

    const-string/jumbo v3, "confirmation failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 41
    const/4 v2, 0x0

    return v2
.end method

.method static tearDownAgentAndKill(Landroid/app/IActivityManager;Landroid/content/pm/ApplicationInfo;I)Z
    .locals 5
    .param p0, "activityManager"    # Landroid/app/IActivityManager;
    .param p1, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "fd"    # I

    .prologue
    .line 303
    const/4 v2, 0x0

    .line 304
    .local v2, "handle":Z
    const-string/jumbo v3, "MiuiBackup"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lmiui/app/backup/IBackupManager;

    .line 306
    .local v0, "bm":Lmiui/app/backup/IBackupManager;
    :try_start_0
    invoke-interface {v0, p2}, Lmiui/app/backup/IBackupManager;->isRunningFromMiui(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 307
    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v3, p2}, Lcom/android/server/backup/BackupManagerServiceInjector;->isNeedBeKilled(Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 308
    const/4 v2, 0x1

    .line 309
    invoke-interface {p0, p1}, Landroid/app/IActivityManager;->unbindBackupAgent(Landroid/content/pm/ApplicationInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 315
    :cond_0
    :goto_0
    return v2

    .line 312
    :catch_0
    move-exception v1

    .line 313
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "Backup:BackupManagerServiceInjector"

    const-string/jumbo v4, "isNeedBeKilled failed"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static unlinkToDeath(Landroid/app/IBackupAgent;)V
    .locals 3
    .param p0, "backupAgent"    # Landroid/app/IBackupAgent;

    .prologue
    .line 155
    if-eqz p0, :cond_0

    .line 156
    invoke-interface {p0}, Landroid/app/IBackupAgent;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 157
    .local v0, "agentBinder":Landroid/os/IBinder;
    sget-object v1, Lcom/android/server/backup/BackupManagerServiceInjector;->sBinderDeathLinker:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder$DeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 158
    sget-object v1, Lcom/android/server/backup/BackupManagerServiceInjector;->sBinderDeathLinker:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    .end local v0    # "agentBinder":Landroid/os/IBinder;
    :cond_0
    return-void
.end method

.method static writeMiuiBackupHeader(Landroid/os/ParcelFileDescriptor;I)V
    .locals 4
    .param p0, "out"    # Landroid/os/ParcelFileDescriptor;
    .param p1, "fd"    # I

    .prologue
    .line 58
    const-string/jumbo v2, "MiuiBackup"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lmiui/app/backup/IBackupManager;

    .line 60
    .local v0, "bm":Lmiui/app/backup/IBackupManager;
    :try_start_0
    invoke-interface {v0, p1}, Lmiui/app/backup/IBackupManager;->isRunningFromMiui(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 61
    invoke-interface {v0, p0}, Lmiui/app/backup/IBackupManager;->writeMiuiBackupHeader(Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :cond_0
    :goto_0
    return-void

    .line 63
    :catch_0
    move-exception v1

    .line 64
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "Backup:BackupManagerServiceInjector"

    const-string/jumbo v3, "writeMiuiBackupHeader failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
