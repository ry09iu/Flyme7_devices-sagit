.class Lcom/miui/server/BackupManagerService$2;
.super Ljava/lang/Object;
.source "BackupManagerService.java"

# interfaces
.implements Landroid/content/pm/IPackageStatsObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/server/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/server/BackupManagerService;


# direct methods
.method constructor <init>(Lcom/miui/server/BackupManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/server/BackupManagerService;

    .prologue
    .line 756
    iput-object p1, p0, Lcom/miui/server/BackupManagerService$2;->this$0:Lcom/miui/server/BackupManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 774
    const/4 v0, 0x0

    return-object v0
.end method

.method public onGetStatsCompleted(Landroid/content/pm/PackageStats;Z)V
    .locals 8
    .param p1, "pStats"    # Landroid/content/pm/PackageStats;
    .param p2, "succeeded"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 759
    iget-object v2, p1, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    .line 761
    .local v2, "pkg":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/miui/server/BackupManagerService$2;->this$0:Lcom/miui/server/BackupManagerService;

    invoke-static {v3}, Lcom/miui/server/BackupManagerService;->-get6(Lcom/miui/server/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 762
    .local v1, "pi":Landroid/content/pm/PackageInfo;
    iget-object v3, p0, Lcom/miui/server/BackupManagerService$2;->this$0:Lcom/miui/server/BackupManagerService;

    invoke-static {v3}, Lcom/miui/server/BackupManagerService;->-get1(Lcom/miui/server/BackupManagerService;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lmiui/app/backup/BackupManager;->isSysAppForBackup(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 763
    iget-object v3, p0, Lcom/miui/server/BackupManagerService$2;->this$0:Lcom/miui/server/BackupManagerService;

    iget-wide v4, p1, Landroid/content/pm/PackageStats;->dataSize:J

    invoke-static {v3, v4, v5}, Lcom/miui/server/BackupManagerService;->-set0(Lcom/miui/server/BackupManagerService;J)J

    .line 758
    .end local v1    # "pi":Landroid/content/pm/PackageInfo;
    :goto_0
    return-void

    .line 765
    .restart local v1    # "pi":Landroid/content/pm/PackageInfo;
    :cond_0
    iget-object v3, p0, Lcom/miui/server/BackupManagerService$2;->this$0:Lcom/miui/server/BackupManagerService;

    new-instance v4, Ljava/io/File;

    iget-object v5, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    iget-wide v6, p1, Landroid/content/pm/PackageStats;->dataSize:J

    add-long/2addr v4, v6

    invoke-static {v3, v4, v5}, Lcom/miui/server/BackupManagerService;->-set0(Lcom/miui/server/BackupManagerService;J)J
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 767
    .end local v1    # "pi":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 768
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method
