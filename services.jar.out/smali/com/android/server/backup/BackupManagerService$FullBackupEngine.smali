.class Lcom/android/server/backup/BackupManagerService$FullBackupEngine;
.super Ljava/lang/Object;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FullBackupEngine"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;
    }
.end annotation


# instance fields
.field mAgent:Landroid/app/IBackupAgent;

.field mFilesDir:Ljava/io/File;

.field mIncludeApks:Z

.field mManifestFile:Ljava/io/File;

.field mMetadataFile:Ljava/io/File;

.field mOutput:Ljava/io/OutputStream;

.field mOutputFile:Landroid/os/ParcelFileDescriptor;

.field mPkg:Landroid/content/pm/PackageInfo;

.field mPreflightHook:Lcom/android/server/backup/BackupManagerService$FullBackupPreflight;

.field mTimeoutMonitor:Lcom/android/server/backup/BackupManagerService$BackupRestoreTask;

.field final synthetic this$0:Lcom/android/server/backup/BackupManagerService;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/backup/BackupManagerService$FullBackupEngine;Landroid/content/pm/PackageInfo;Landroid/app/backup/FullBackupDataOutput;)V
    .locals 0
    .param p1, "pkg"    # Landroid/content/pm/PackageInfo;
    .param p2, "output"    # Landroid/app/backup/FullBackupDataOutput;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->writeApkToBackup(Landroid/content/pm/PackageInfo;Landroid/app/backup/FullBackupDataOutput;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/backup/BackupManagerService$FullBackupEngine;Landroid/content/pm/PackageInfo;Ljava/io/File;ZZ)V
    .locals 0
    .param p1, "pkg"    # Landroid/content/pm/PackageInfo;
    .param p2, "manifestFile"    # Ljava/io/File;
    .param p3, "withApk"    # Z
    .param p4, "withWidgets"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->writeAppManifest(Landroid/content/pm/PackageInfo;Ljava/io/File;ZZ)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/backup/BackupManagerService$FullBackupEngine;Landroid/content/pm/PackageInfo;Ljava/io/File;[B)V
    .locals 0
    .param p1, "pkg"    # Landroid/content/pm/PackageInfo;
    .param p2, "destination"    # Ljava/io/File;
    .param p3, "widgetData"    # [B

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->writeMetadata(Landroid/content/pm/PackageInfo;Ljava/io/File;[B)V

    return-void
.end method

.method constructor <init>(Lcom/android/server/backup/BackupManagerService;Ljava/io/OutputStream;Lcom/android/server/backup/BackupManagerService$FullBackupPreflight;Landroid/content/pm/PackageInfo;ZLcom/android/server/backup/BackupManagerService$BackupRestoreTask;)V
    .locals 3
    .param p1, "this$0"    # Lcom/android/server/backup/BackupManagerService;
    .param p2, "output"    # Ljava/io/OutputStream;
    .param p3, "preflightHook"    # Lcom/android/server/backup/BackupManagerService$FullBackupPreflight;
    .param p4, "pkg"    # Landroid/content/pm/PackageInfo;
    .param p5, "alsoApks"    # Z
    .param p6, "timeoutMonitor"    # Lcom/android/server/backup/BackupManagerService$BackupRestoreTask;

    .prologue
    .line 3712
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3714
    iput-object p2, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mOutput:Ljava/io/OutputStream;

    .line 3715
    iput-object p3, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mPreflightHook:Lcom/android/server/backup/BackupManagerService$FullBackupPreflight;

    .line 3716
    iput-object p4, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mPkg:Landroid/content/pm/PackageInfo;

    .line 3717
    iput-boolean p5, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mIncludeApks:Z

    .line 3718
    iput-object p6, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mTimeoutMonitor:Lcom/android/server/backup/BackupManagerService$BackupRestoreTask;

    .line 3719
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/data/system"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mFilesDir:Ljava/io/File;

    .line 3720
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mFilesDir:Ljava/io/File;

    const-string/jumbo v2, "_manifest"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mManifestFile:Ljava/io/File;

    .line 3721
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mFilesDir:Ljava/io/File;

    const-string/jumbo v2, "_meta"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mMetadataFile:Ljava/io/File;

    .line 3713
    return-void
.end method

.method private initializeAgent()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 3825
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mAgent:Landroid/app/IBackupAgent;

    if-nez v1, :cond_0

    .line 3829
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mPkg:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v2, v0}, Lcom/android/server/backup/BackupManagerService;->bindToAgentSynchronous(Landroid/content/pm/ApplicationInfo;I)Landroid/app/IBackupAgent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mAgent:Landroid/app/IBackupAgent;

    .line 3832
    :cond_0
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mAgent:Landroid/app/IBackupAgent;

    if-eqz v1, :cond_1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private tearDown()V
    .locals 3

    .prologue
    .line 3952
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mPkg:Landroid/content/pm/PackageInfo;

    if-eqz v1, :cond_0

    .line 3954
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mPkg:Landroid/content/pm/PackageInfo;

    iget-object v0, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 3956
    .local v0, "app":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-static {v1}, Lcom/android/server/backup/BackupManagerService;->-get0(Lcom/android/server/backup/BackupManagerService;)Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/android/server/backup/BackupManagerServiceInjector;->tearDownAgentAndKill(Landroid/app/IActivityManager;Landroid/content/pm/ApplicationInfo;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3951
    .end local v0    # "app":Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_0
    return-void

    .line 3957
    .restart local v0    # "app":Landroid/content/pm/ApplicationInfo;
    :cond_1
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mPkg:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v2}, Lcom/android/server/backup/BackupManagerService;->tearDownAgentAndKill(Landroid/content/pm/ApplicationInfo;)V

    goto :goto_0
.end method

.method private writeApkToBackup(Landroid/content/pm/PackageInfo;Landroid/app/backup/FullBackupDataOutput;)V
    .locals 16
    .param p1, "pkg"    # Landroid/content/pm/PackageInfo;
    .param p2, "output"    # Landroid/app/backup/FullBackupDataOutput;

    .prologue
    .line 3838
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v5

    .line 3839
    .local v5, "appSourceDir":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v4

    .line 3840
    .local v4, "apkDir":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v2, "a"

    const/4 v3, 0x0

    move-object/from16 v6, p2

    invoke-static/range {v1 .. v6}, Landroid/app/backup/FullBackup;->backupToTar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/FullBackupDataOutput;)I

    .line 3849
    new-instance v15, Landroid/os/Environment$UserEnvironment;

    const/4 v1, 0x0

    invoke-direct {v15, v1}, Landroid/os/Environment$UserEnvironment;-><init>(I)V

    .line 3850
    .local v15, "userEnv":Landroid/os/Environment$UserEnvironment;
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v15, v1}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAppObbDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v13, v1, v2

    .line 3851
    .local v13, "obbDir":Ljava/io/File;
    if-eqz v13, :cond_0

    .line 3853
    invoke-virtual {v13}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v14

    .line 3854
    .local v14, "obbFiles":[Ljava/io/File;
    if-eqz v14, :cond_0

    .line 3855
    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    .line 3856
    .local v9, "obbDirName":Ljava/lang/String;
    const/4 v1, 0x0

    array-length v2, v14

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v12, v14, v1

    .line 3857
    .local v12, "obb":Ljava/io/File;
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v7, "obb"

    .line 3858
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    .line 3857
    const/4 v8, 0x0

    move-object/from16 v11, p2

    invoke-static/range {v6 .. v11}, Landroid/app/backup/FullBackup;->backupToTar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/FullBackupDataOutput;)I

    .line 3856
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3835
    .end local v9    # "obbDirName":Ljava/lang/String;
    .end local v12    # "obb":Ljava/io/File;
    .end local v14    # "obbFiles":[Ljava/io/File;
    :cond_0
    return-void
.end method

.method private writeAppManifest(Landroid/content/pm/PackageInfo;Ljava/io/File;ZZ)V
    .locals 9
    .param p1, "pkg"    # Landroid/content/pm/PackageInfo;
    .param p2, "manifestFile"    # Ljava/io/File;
    .param p3, "withApk"    # Z
    .param p4, "withWidgets"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3877
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v5, 0x1000

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3878
    .local v0, "builder":Ljava/lang/StringBuilder;
    new-instance v3, Landroid/util/StringBuilderPrinter;

    invoke-direct {v3, v0}, Landroid/util/StringBuilderPrinter;-><init>(Ljava/lang/StringBuilder;)V

    .line 3880
    .local v3, "printer":Landroid/util/StringBuilderPrinter;
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    .line 3881
    iget-object v5, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    .line 3882
    iget v5, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    .line 3883
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    .line 3885
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-static {v5}, Lcom/android/server/backup/BackupManagerService;->-get2(Lcom/android/server/backup/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v5

    iget-object v6, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3886
    .local v1, "installerName":Ljava/lang/String;
    if-eqz v1, :cond_1

    .end local v1    # "installerName":Ljava/lang/String;
    :goto_0
    invoke-virtual {v3, v1}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    .line 3888
    if-eqz p3, :cond_2

    const-string/jumbo v5, "1"

    :goto_1
    invoke-virtual {v3, v5}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    .line 3889
    iget-object v5, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-nez v5, :cond_3

    .line 3890
    const-string/jumbo v5, "0"

    invoke-virtual {v3, v5}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    .line 3898
    :cond_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 3899
    .local v2, "outstream":Ljava/io/FileOutputStream;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/FileOutputStream;->write([B)V

    .line 3900
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 3907
    const-wide/16 v6, 0x0

    invoke-virtual {p2, v6, v7}, Ljava/io/File;->setLastModified(J)Z

    .line 3865
    return-void

    .line 3886
    .end local v2    # "outstream":Ljava/io/FileOutputStream;
    .restart local v1    # "installerName":Ljava/lang/String;
    :cond_1
    const-string/jumbo v1, ""

    goto :goto_0

    .line 3888
    .end local v1    # "installerName":Ljava/lang/String;
    :cond_2
    const-string/jumbo v5, "0"

    goto :goto_1

    .line 3892
    :cond_3
    iget-object v5, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    .line 3893
    iget-object v6, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v5, 0x0

    array-length v7, v6

    :goto_2
    if-ge v5, v7, :cond_0

    aget-object v4, v6, v5

    .line 3894
    .local v4, "sig":Landroid/content/pm/Signature;
    invoke-virtual {v4}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    .line 3893
    add-int/lit8 v5, v5, 0x1

    goto :goto_2
.end method

.method private writeMetadata(Landroid/content/pm/PackageInfo;Ljava/io/File;[B)V
    .locals 8
    .param p1, "pkg"    # Landroid/content/pm/PackageInfo;
    .param p2, "destination"    # Ljava/io/File;
    .param p3, "widgetData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3928
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v5, 0x200

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3929
    .local v0, "b":Ljava/lang/StringBuilder;
    new-instance v4, Landroid/util/StringBuilderPrinter;

    invoke-direct {v4, v0}, Landroid/util/StringBuilderPrinter;-><init>(Ljava/lang/StringBuilder;)V

    .line 3930
    .local v4, "printer":Landroid/util/StringBuilderPrinter;
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    .line 3931
    iget-object v5, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    .line 3933
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 3934
    .local v2, "fout":Ljava/io/FileOutputStream;
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 3935
    .local v1, "bout":Ljava/io/BufferedOutputStream;
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 3936
    .local v3, "out":Ljava/io/DataOutputStream;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 3938
    if-eqz p3, :cond_0

    array-length v5, p3

    if-lez v5, :cond_0

    .line 3939
    const v5, 0x1ffed01

    invoke-virtual {v3, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 3940
    array-length v5, p3

    invoke-virtual {v3, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 3941
    invoke-virtual {v3, p3}, Ljava/io/DataOutputStream;->write([B)V

    .line 3943
    :cond_0
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    .line 3944
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    .line 3948
    const-wide/16 v6, 0x0

    invoke-virtual {p2, v6, v7}, Ljava/io/File;->setLastModified(J)Z

    .line 3927
    return-void
.end method


# virtual methods
.method public backupOnePackage()I
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v7, 0x0

    .line 3744
    const/16 v13, -0x3eb

    .line 3746
    .local v13, "result":I
    invoke-direct {p0}, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->initializeAgent()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 3748
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mAgent:Landroid/app/IBackupAgent;

    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/server/backup/BackupManagerServiceInjector;->linkToDeath(Landroid/app/IBackupAgent;I)V

    .line 3749
    const/4 v12, 0x0

    .line 3751
    .local v12, "pipes":[Landroid/os/ParcelFileDescriptor;
    :try_start_0
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v12

    .line 3753
    .local v12, "pipes":[Landroid/os/ParcelFileDescriptor;
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mPkg:Landroid/content/pm/PackageInfo;

    iget-object v9, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 3755
    .local v9, "app":Landroid/content/pm/ApplicationInfo;
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mPkg:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v3, "com.android.sharedstoragebackup"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    .line 3756
    .local v11, "isSharedStorage":Z
    iget-boolean v2, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mIncludeApks:Z

    if-eqz v2, :cond_0

    .line 3757
    if-eqz v11, :cond_4

    .line 3756
    :cond_0
    const/4 v6, 0x0

    .line 3763
    .local v6, "sendApk":Z
    :goto_0
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mPkg:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 3764
    const/4 v3, 0x0

    .line 3763
    invoke-static {v2, v3}, Lcom/android/server/AppWidgetBackupBridge;->getWidgetState(Ljava/lang/String;I)[B

    move-result-object v8

    .line 3766
    .local v8, "widgetBlob":[B
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v2}, Lcom/android/server/backup/BackupManagerService;->generateToken()I

    move-result v5

    .line 3767
    .local v5, "token":I
    new-instance v0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;

    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mPkg:Landroid/content/pm/PackageInfo;

    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mAgent:Landroid/app/IBackupAgent;

    const/4 v4, 0x1

    aget-object v4, v12, v4

    .line 3768
    if-eqz v11, :cond_7

    :goto_1
    move-object v1, p0

    .line 3767
    invoke-direct/range {v0 .. v8}, Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;-><init>(Lcom/android/server/backup/BackupManagerService$FullBackupEngine;Landroid/content/pm/PackageInfo;Landroid/app/IBackupAgent;Landroid/os/ParcelFileDescriptor;IZZ[B)V

    .line 3769
    .local v0, "runner":Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;
    const/4 v1, 0x1

    aget-object v1, v12, v1

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 3770
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-object v1, v12, v2

    .line 3771
    new-instance v14, Ljava/lang/Thread;

    const-string/jumbo v1, "app-data-runner"

    invoke-direct {v14, v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 3772
    .local v14, "t":Ljava/lang/Thread;
    invoke-virtual {v14}, Ljava/lang/Thread;->start()V

    .line 3777
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->this$0:Lcom/android/server/backup/BackupManagerService;

    const/4 v2, 0x0

    aget-object v2, v12, v2

    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mOutput:Ljava/io/OutputStream;

    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v4

    invoke-static {v1, v2, v3, v4}, Lcom/android/server/backup/BackupManagerServiceInjector;->routeSocketDataToOutput(Lcom/android/server/backup/BackupManagerService;Landroid/os/ParcelFileDescriptor;Ljava/io/OutputStream;I)V

    .line 3781
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mAgent:Landroid/app/IBackupAgent;

    invoke-static {v1, v5}, Lcom/android/server/backup/BackupManagerServiceInjector;->needUpdateToken(Landroid/app/IBackupAgent;I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v1, v5}, Lcom/android/server/backup/BackupManagerService;->waitUntilOperationComplete(I)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_8

    .line 3787
    :cond_1
    const/4 v13, 0x0

    .line 3795
    :goto_2
    :try_start_1
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mOutput:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 3796
    if-eqz v12, :cond_3

    .line 3797
    const/4 v1, 0x0

    aget-object v1, v12, v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    aget-object v1, v12, v1

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 3798
    :cond_2
    const/4 v1, 0x1

    aget-object v1, v12, v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    aget-object v1, v12, v1

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 3806
    .end local v0    # "runner":Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;
    .end local v5    # "token":I
    .end local v6    # "sendApk":Z
    .end local v8    # "widgetBlob":[B
    .end local v9    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v11    # "isSharedStorage":Z
    .end local v12    # "pipes":[Landroid/os/ParcelFileDescriptor;
    .end local v14    # "t":Ljava/lang/Thread;
    :cond_3
    :goto_3
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mAgent:Landroid/app/IBackupAgent;

    invoke-static {v1}, Lcom/android/server/backup/BackupManagerServiceInjector;->unlinkToDeath(Landroid/app/IBackupAgent;)V

    .line 3810
    :goto_4
    invoke-direct {p0}, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->tearDown()V

    .line 3811
    return v13

    .line 3758
    .restart local v9    # "app":Landroid/content/pm/ApplicationInfo;
    .restart local v11    # "isSharedStorage":Z
    .restart local v12    # "pipes":[Landroid/os/ParcelFileDescriptor;
    :cond_4
    :try_start_2
    iget v2, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_0

    .line 3759
    iget v2, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_5

    .line 3760
    iget v2, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_6

    const/4 v6, 0x1

    .restart local v6    # "sendApk":Z
    goto/16 :goto_0

    .line 3759
    .end local v6    # "sendApk":Z
    :cond_5
    const/4 v6, 0x1

    .restart local v6    # "sendApk":Z
    goto/16 :goto_0

    .line 3760
    .end local v6    # "sendApk":Z
    :cond_6
    const/4 v6, 0x0

    .restart local v6    # "sendApk":Z
    goto/16 :goto_0

    .restart local v5    # "token":I
    .restart local v8    # "widgetBlob":[B
    :cond_7
    move v7, v1

    .line 3768
    goto :goto_1

    .line 3782
    .restart local v0    # "runner":Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;
    .restart local v14    # "t":Ljava/lang/Thread;
    :cond_8
    const-string/jumbo v1, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Full backup failed on package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mPkg:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 3789
    .end local v0    # "runner":Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;
    .end local v5    # "token":I
    .end local v6    # "sendApk":Z
    .end local v8    # "widgetBlob":[B
    .end local v9    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v11    # "isSharedStorage":Z
    .end local v12    # "pipes":[Landroid/os/ParcelFileDescriptor;
    .end local v14    # "t":Ljava/lang/Thread;
    :catch_0
    move-exception v10

    .line 3790
    .local v10, "e":Ljava/io/IOException;
    :try_start_3
    const-string/jumbo v1, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error backing up "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mPkg:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v10}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3791
    const/16 v13, -0x3eb

    .line 3795
    :try_start_4
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mOutput:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 3796
    if-eqz v12, :cond_3

    .line 3797
    const/4 v1, 0x0

    aget-object v1, v12, v1

    if-eqz v1, :cond_9

    const/4 v1, 0x0

    aget-object v1, v12, v1

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 3798
    :cond_9
    const/4 v1, 0x1

    aget-object v1, v12, v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    aget-object v1, v12, v1

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_3

    .line 3800
    :catch_1
    move-exception v10

    .line 3801
    const-string/jumbo v1, "BackupManagerService"

    const-string/jumbo v2, "Error bringing down backup stack"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3802
    :goto_5
    const/16 v13, -0x3e8

    goto/16 :goto_3

    .line 3800
    .end local v10    # "e":Ljava/io/IOException;
    .restart local v0    # "runner":Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;
    .restart local v5    # "token":I
    .restart local v6    # "sendApk":Z
    .restart local v8    # "widgetBlob":[B
    .restart local v9    # "app":Landroid/content/pm/ApplicationInfo;
    .restart local v11    # "isSharedStorage":Z
    .restart local v12    # "pipes":[Landroid/os/ParcelFileDescriptor;
    .restart local v14    # "t":Ljava/lang/Thread;
    :catch_2
    move-exception v10

    .line 3801
    .restart local v10    # "e":Ljava/io/IOException;
    const-string/jumbo v1, "BackupManagerService"

    const-string/jumbo v2, "Error bringing down backup stack"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 3792
    .end local v0    # "runner":Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;
    .end local v5    # "token":I
    .end local v6    # "sendApk":Z
    .end local v8    # "widgetBlob":[B
    .end local v9    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v10    # "e":Ljava/io/IOException;
    .end local v11    # "isSharedStorage":Z
    .end local v12    # "pipes":[Landroid/os/ParcelFileDescriptor;
    .end local v14    # "t":Ljava/lang/Thread;
    :catchall_0
    move-exception v1

    .line 3795
    :try_start_5
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mOutput:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 3796
    if-eqz v12, :cond_b

    .line 3797
    const/4 v2, 0x0

    aget-object v2, v12, v2

    if-eqz v2, :cond_a

    const/4 v2, 0x0

    aget-object v2, v12, v2

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 3798
    :cond_a
    const/4 v2, 0x1

    aget-object v2, v12, v2

    if-eqz v2, :cond_b

    const/4 v2, 0x1

    aget-object v2, v12, v2

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 3792
    :cond_b
    :goto_6
    throw v1

    .line 3800
    :catch_3
    move-exception v10

    .line 3801
    .restart local v10    # "e":Ljava/io/IOException;
    const-string/jumbo v2, "BackupManagerService"

    const-string/jumbo v3, "Error bringing down backup stack"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3802
    const/16 v13, -0x3e8

    goto :goto_6

    .line 3808
    .end local v10    # "e":Ljava/io/IOException;
    :cond_c
    const-string/jumbo v1, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to bind to full agent for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mPkg:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4
.end method

.method public preflightCheck()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3725
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mPreflightHook:Lcom/android/server/backup/BackupManagerService$FullBackupPreflight;

    if-nez v1, :cond_0

    .line 3729
    const/4 v1, 0x0

    return v1

    .line 3731
    :cond_0
    invoke-direct {p0}, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->initializeAgent()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3732
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mPreflightHook:Lcom/android/server/backup/BackupManagerService$FullBackupPreflight;

    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mPkg:Landroid/content/pm/PackageInfo;

    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mAgent:Landroid/app/IBackupAgent;

    invoke-interface {v1, v2, v3}, Lcom/android/server/backup/BackupManagerService$FullBackupPreflight;->preflightFullBackup(Landroid/content/pm/PackageInfo;Landroid/app/IBackupAgent;)I

    move-result v0

    .line 3736
    .local v0, "result":I
    return v0

    .line 3738
    .end local v0    # "result":I
    :cond_1
    const-string/jumbo v1, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to bind to full agent for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mPkg:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3739
    const/16 v1, -0x3eb

    return v1
.end method

.method public sendQuotaExceeded(JJ)V
    .locals 3
    .param p1, "backupDataBytes"    # J
    .param p3, "quotaBytes"    # J

    .prologue
    .line 3815
    invoke-direct {p0}, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->initializeAgent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3817
    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mAgent:Landroid/app/IBackupAgent;

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/app/IBackupAgent;->doQuotaExceeded(JJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3814
    :cond_0
    :goto_0
    return-void

    .line 3818
    :catch_0
    move-exception v0

    .line 3819
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BackupManagerService"

    const-string/jumbo v2, "Remote exception while telling agent about quota exceeded"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
