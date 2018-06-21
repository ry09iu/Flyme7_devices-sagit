.class Lcom/android/server/pm/PackageManagerProxy;
.super Ljava/lang/Object;
.source "PackageManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/PackageManagerProxy$PackageDeleteObserver;,
        Lcom/android/server/pm/PackageManagerProxy$PackageInstallObserver;
    }
.end annotation


# static fields
.field private static final INSTALL_TIME_OUT:J = 0x493e0L

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/android/server/pm/PackageManagerProxy;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/PackageManagerProxy;->TAG:Ljava/lang/String;

    .line 24
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static cleanUpResource(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageSetting;)Z
    .locals 11
    .param p0, "pms"    # Lcom/android/server/pm/PackageManagerService;
    .param p1, "ps"    # Lcom/android/server/pm/PackageSetting;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 139
    const/4 v0, 0x0

    .line 145
    .local v0, "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    :try_start_0
    const-string/jumbo v4, "packageFlagsToInstallFlags"

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-static {p0, v4, v5, v6}, Lmiui/util/ReflectionUtils;->callMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 146
    .local v2, "flags":I
    const-class v4, Lcom/android/server/pm/InstructionSets;

    const-string/jumbo v5, "getAppDexInstructionSets"

    const-class v6, [Ljava/lang/String;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    invoke-static {v4, v5, v6, v7}, Lmiui/util/ReflectionUtils;->callStaticMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 147
    .local v1, "dexInstructionSets":[Ljava/lang/String;
    const-string/jumbo v4, "createInstallArgsForExisting"

    const-class v5, Lcom/android/server/pm/PackageManagerService$InstallArgs;

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Object;

    .line 148
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    .line 149
    iget-object v7, p1, Lcom/android/server/pm/PackageSetting;->codePathString:Ljava/lang/String;

    const/4 v8, 0x1

    aput-object v7, v6, v8

    .line 150
    iget-object v7, p1, Lcom/android/server/pm/PackageSetting;->resourcePathString:Ljava/lang/String;

    const/4 v8, 0x2

    aput-object v7, v6, v8

    .line 151
    iget-object v7, p1, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPathString:Ljava/lang/String;

    const/4 v8, 0x3

    aput-object v7, v6, v8

    .line 152
    const/4 v7, 0x4

    aput-object v1, v6, v7

    .line 147
    invoke-static {p0, v4, v5, v6}, Lmiui/util/ReflectionUtils;->callMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    check-cast v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    .local v0, "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    if-nez v0, :cond_0

    .line 158
    return v9

    .line 153
    .end local v0    # "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    .end local v1    # "dexInstructionSets":[Ljava/lang/String;
    .end local v2    # "flags":I
    :catch_0
    move-exception v3

    .line 154
    .local v3, "t":Ljava/lang/Throwable;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 155
    return v9

    .line 160
    .end local v3    # "t":Ljava/lang/Throwable;
    .restart local v0    # "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    .restart local v1    # "dexInstructionSets":[Ljava/lang/String;
    .restart local v2    # "flags":I
    :cond_0
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v4

    .line 161
    :try_start_1
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->cleanUpResourcesLI()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v4

    .line 163
    return v10

    .line 160
    :catchall_0
    move-exception v5

    monitor-exit v4

    throw v5
.end method

.method static copyOdexFileIfExists(Ljava/io/File;Ljava/io/File;)V
    .locals 13
    .param p0, "origin"    # Ljava/io/File;
    .param p1, "codeFile"    # Ljava/io/File;

    .prologue
    const/4 v6, 0x0

    .line 174
    sget-object v7, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    array-length v8, v7

    move v5, v6

    :goto_0
    if-ge v5, v8, :cond_3

    aget-object v0, v7, v5

    .line 175
    .local v0, "abi":Ljava/lang/String;
    invoke-static {v0}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 176
    .local v2, "instructionSet":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 177
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, ".apk"

    const-string/jumbo v12, ".odex"

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    .line 176
    invoke-direct {v4, v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    .local v4, "srcOdexFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 179
    new-instance v9, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v9}, Lcom/android/server/pm/PackageManagerProxy;->createIfNonexist(Ljava/io/File;)V

    .line 180
    new-instance v1, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 181
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    .line 180
    invoke-direct {v1, v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    .local v1, "dstOdexFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 183
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 185
    :cond_0
    invoke-static {v4, v1}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 186
    const/4 v9, 0x1

    invoke-virtual {v1, v9, v6}, Ljava/io/File;->setReadable(ZZ)Z

    move-result v3

    .line 187
    :goto_1
    sget-object v9, Lcom/android/server/pm/PackageManagerProxy;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Copy odex file from: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 188
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    .line 187
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 188
    const-string/jumbo v11, " to "

    .line 187
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 188
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    .line 187
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    if-eqz v3, :cond_1

    .line 190
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 174
    .end local v1    # "dstOdexFile":Ljava/io/File;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 185
    .restart local v1    # "dstOdexFile":Ljava/io/File;
    :cond_2
    const/4 v3, 0x0

    .local v3, "ret":Z
    goto :goto_1

    .line 173
    .end local v0    # "abi":Ljava/lang/String;
    .end local v1    # "dstOdexFile":Ljava/io/File;
    .end local v2    # "instructionSet":Ljava/lang/String;
    .end local v3    # "ret":Z
    .end local v4    # "srcOdexFile":Ljava/io/File;
    :cond_3
    return-void
.end method

.method private static createIfNonexist(Ljava/io/File;)V
    .locals 3
    .param p0, "dir"    # Ljava/io/File;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 197
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 198
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 199
    invoke-virtual {p0, v1, v2}, Ljava/io/File;->setReadable(ZZ)Z

    .line 200
    invoke-virtual {p0, v1, v2}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 201
    invoke-virtual {p0, v1}, Ljava/io/File;->setWritable(Z)Z

    .line 196
    :cond_0
    return-void
.end method

.method static deleteApp(Landroid/content/pm/IPackageManager;Ljava/lang/String;Z)Z
    .locals 6
    .param p0, "pm"    # Landroid/content/pm/IPackageManager;
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "keepData"    # Z

    .prologue
    .line 91
    const/4 v3, 0x2

    .line 92
    .local v3, "flags":I
    if-eqz p2, :cond_0

    .line 93
    const/4 v3, 0x3

    .line 95
    :cond_0
    new-instance v4, Lcom/android/server/pm/PackageManagerProxy$PackageDeleteObserver;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/android/server/pm/PackageManagerProxy$PackageDeleteObserver;-><init>(Lcom/android/server/pm/PackageManagerProxy$PackageDeleteObserver;)V

    .line 97
    .local v4, "obs":Lcom/android/server/pm/PackageManagerProxy$PackageDeleteObserver;
    const/4 v5, 0x0

    :try_start_0
    invoke-interface {p0, p1, v4, v5, v3}, Landroid/content/pm/IPackageManager;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver2;II)V

    .line 98
    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    .line 99
    :goto_0
    :try_start_1
    iget-boolean v5, v4, Lcom/android/server/pm/PackageManagerProxy$PackageDeleteObserver;->finished:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v5, :cond_1

    .line 101
    :try_start_2
    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerProxy$PackageDeleteObserver;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 102
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/InterruptedException;
    goto :goto_0

    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_1
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    .line 111
    :goto_1
    iget-boolean v5, v4, Lcom/android/server/pm/PackageManagerProxy$PackageDeleteObserver;->result:Z

    return v5

    .line 98
    :catchall_0
    move-exception v5

    :try_start_4
    monitor-exit v4

    throw v5
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2

    .line 106
    :catch_1
    move-exception v2

    .line 107
    .local v2, "e":Ljava/lang/SecurityException;
    invoke-virtual {v2}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_1

    .line 108
    .end local v2    # "e":Ljava/lang/SecurityException;
    :catch_2
    move-exception v0

    .line 109
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method static doRenameApk(Ljava/io/File;Ljava/lang/String;I)V
    .locals 6
    .param p0, "codeFile"    # Ljava/io/File;
    .param p1, "originName"    # Ljava/lang/String;
    .param p2, "installFlags"    # I

    .prologue
    .line 206
    const/high16 v3, 0x40000000    # 2.0f

    and-int/2addr v3, p2

    if-eqz v3, :cond_0

    .line 207
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "base.apk"

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    .local v1, "baseApk":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 209
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    .local v0, "afterApk":Ljava/io/File;
    sget-object v3, Lcom/android/server/pm/PackageManagerProxy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "INSTALL_FROM_BOOTING: Rename: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/system/Os;->rename(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    .end local v0    # "afterApk":Ljava/io/File;
    .end local v1    # "baseApk":Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 213
    .restart local v0    # "afterApk":Ljava/io/File;
    .restart local v1    # "baseApk":Ljava/io/File;
    :catch_0
    move-exception v2

    .line 214
    .local v2, "e":Landroid/system/ErrnoException;
    sget-object v3, Lcom/android/server/pm/PackageManagerProxy;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Failed to rename "

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static installApp(Landroid/content/pm/IPackageManager;Ljava/io/File;)I
    .locals 8
    .param p0, "pm"    # Landroid/content/pm/IPackageManager;
    .param p1, "apkFile"    # Ljava/io/File;

    .prologue
    .line 67
    new-instance v2, Lcom/android/server/pm/PackageManagerProxy$PackageInstallObserver;

    const/4 v0, 0x0

    invoke-direct {v2, v0}, Lcom/android/server/pm/PackageManagerProxy$PackageInstallObserver;-><init>(Lcom/android/server/pm/PackageManagerProxy$PackageInstallObserver;)V

    .line 71
    .local v2, "obs":Lcom/android/server/pm/PackageManagerProxy$PackageInstallObserver;
    const v3, 0x40000042    # 2.0000157f

    .line 72
    .local v3, "flags":I
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "system"

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    move-object v0, p0

    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->installPackageAsUser(Ljava/lang/String;Landroid/content/pm/IPackageInstallObserver2;ILjava/lang/String;I)V

    .line 73
    monitor-enter v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 74
    :cond_0
    :goto_0
    :try_start_1
    iget-boolean v0, v2, Lcom/android/server/pm/PackageManagerProxy$PackageInstallObserver;->finished:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    .line 76
    const-wide/32 v0, 0x493e0

    :try_start_2
    invoke-virtual {v2, v0, v1}, Lcom/android/server/pm/PackageManagerProxy$PackageInstallObserver;->wait(J)V

    .line 77
    iget-boolean v0, v2, Lcom/android/server/pm/PackageManagerProxy$PackageInstallObserver;->finished:Z

    if-nez v0, :cond_0

    .line 78
    sget-object v0, Lcom/android/server/pm/PackageManagerProxy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Install "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, " timeout"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 80
    :catch_0
    move-exception v7

    .local v7, "e":Ljava/lang/InterruptedException;
    goto :goto_0

    .end local v7    # "e":Ljava/lang/InterruptedException;
    :cond_1
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    .line 87
    :goto_1
    iget v0, v2, Lcom/android/server/pm/PackageManagerProxy$PackageInstallObserver;->result:I

    return v0

    .line 73
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v2

    throw v0
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    .line 84
    :catch_1
    move-exception v6

    .line 85
    .local v6, "e":Landroid/os/RemoteException;
    invoke-virtual {v6}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method static parsePackage(Ljava/io/File;)Landroid/content/pm/PackageParser$Package;
    .locals 5
    .param p0, "apkFile"    # Ljava/io/File;

    .prologue
    const/4 v4, 0x0

    .line 116
    const/4 v1, 0x4

    .line 117
    .local v1, "parseFlags":I
    :try_start_0
    new-instance v3, Landroid/content/pm/PackageParser;

    invoke-direct {v3}, Landroid/content/pm/PackageParser;-><init>()V

    .line 118
    .local v3, "pp":Landroid/content/pm/PackageParser;
    invoke-virtual {v3, p0, v1}, Landroid/content/pm/PackageParser;->parsePackage(Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v2

    .line 119
    .local v2, "pkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v2, :cond_0

    .line 120
    invoke-static {v2, v1}, Landroid/content/pm/PackageParser;->collectCertificates(Landroid/content/pm/PackageParser$Package;I)V
    :try_end_0
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :cond_0
    return-object v2

    .line 123
    .end local v2    # "pkg":Landroid/content/pm/PackageParser$Package;
    .end local v3    # "pp":Landroid/content/pm/PackageParser;
    :catch_0
    move-exception v0

    .line 124
    .local v0, "e":Landroid/content/pm/PackageParser$PackageParserException;
    invoke-virtual {v0}, Landroid/content/pm/PackageParser$PackageParserException;->printStackTrace()V

    .line 125
    return-object v4
.end method

.method static parsePackageLite(Ljava/io/File;)Landroid/content/pm/PackageParser$PackageLite;
    .locals 2
    .param p0, "apkFile"    # Ljava/io/File;

    .prologue
    .line 131
    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, v1}, Landroid/content/pm/PackageParser;->parsePackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;
    :try_end_0
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 132
    :catch_0
    move-exception v0

    .line 133
    .local v0, "e":Landroid/content/pm/PackageParser$PackageParserException;
    invoke-virtual {v0}, Landroid/content/pm/PackageParser$PackageParserException;->printStackTrace()V

    .line 134
    const/4 v1, 0x0

    return-object v1
.end method
