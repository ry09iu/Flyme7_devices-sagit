.class Lcom/android/server/pm/PackageDexOptimizer;
.super Ljava/lang/Object;
.source "PackageDexOptimizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/PackageDexOptimizer$ForcedUpdatePackageDexOptimizer;
    }
.end annotation


# static fields
.field static final DEX_OPT_FAILED:I = -0x1

.field static final DEX_OPT_PERFORMED:I = 0x1

.field static final DEX_OPT_SKIPPED:I = 0x0

.field static final OAT_DIR_NAME:Ljava/lang/String; = "oat"

.field private static final TAG:Ljava/lang/String; = "PackageManager.DexOptimizer"


# instance fields
.field private final mDexoptWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mInstallLock:Ljava/lang/Object;

.field private final mInstaller:Lcom/android/server/pm/Installer;

.field private volatile mSystemReady:Z


# direct methods
.method constructor <init>(Lcom/android/server/pm/Installer;Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "installer"    # Lcom/android/server/pm/Installer;
    .param p2, "installLock"    # Ljava/lang/Object;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "wakeLockTag"    # Ljava/lang/String;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/android/server/pm/PackageDexOptimizer;->mInstaller:Lcom/android/server/pm/Installer;

    .line 68
    iput-object p2, p0, Lcom/android/server/pm/PackageDexOptimizer;->mInstallLock:Ljava/lang/Object;

    .line 70
    const-string/jumbo v1, "power"

    invoke-virtual {p3, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 71
    .local v0, "powerManager":Landroid/os/PowerManager;
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/PackageDexOptimizer;->mDexoptWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 66
    return-void
.end method

.method protected constructor <init>(Lcom/android/server/pm/PackageDexOptimizer;)V
    .locals 1
    .param p1, "from"    # Lcom/android/server/pm/PackageDexOptimizer;

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iget-object v0, p1, Lcom/android/server/pm/PackageDexOptimizer;->mInstaller:Lcom/android/server/pm/Installer;

    iput-object v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mInstaller:Lcom/android/server/pm/Installer;

    .line 76
    iget-object v0, p1, Lcom/android/server/pm/PackageDexOptimizer;->mInstallLock:Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mInstallLock:Ljava/lang/Object;

    .line 77
    iget-object v0, p1, Lcom/android/server/pm/PackageDexOptimizer;->mDexoptWakeLock:Landroid/os/PowerManager$WakeLock;

    iput-object v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mDexoptWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 78
    iget-boolean v0, p1, Lcom/android/server/pm/PackageDexOptimizer;->mSystemReady:Z

    iput-boolean v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mSystemReady:Z

    .line 74
    return-void
.end method

.method static canOptimizePackage(Landroid/content/pm/PackageParser$Package;)Z
    .locals 2
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .prologue
    const/4 v0, 0x0

    .line 82
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private createOatDirIfSupported(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "dexInstructionSet"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 325
    invoke-virtual {p1}, Landroid/content/pm/PackageParser$Package;->canHaveOatDir()Z

    move-result v3

    if-nez v3, :cond_0

    .line 326
    return-object v5

    .line 328
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->codePath:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 329
    .local v0, "codePath":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 330
    invoke-static {v0}, Lcom/android/server/pm/PackageDexOptimizer;->getOatDir(Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    .line 332
    .local v2, "oatDir":Ljava/io/File;
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/PackageDexOptimizer;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, p2}, Lcom/android/server/pm/Installer;->createOatDir(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/android/internal/os/InstallerConnection$InstallerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 337
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 333
    :catch_0
    move-exception v1

    .line 334
    .local v1, "e":Lcom/android/internal/os/InstallerConnection$InstallerException;
    const-string/jumbo v3, "PackageManager.DexOptimizer"

    const-string/jumbo v4, "Failed to create oat dir"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 335
    return-object v5

    .line 339
    .end local v1    # "e":Lcom/android/internal/os/InstallerConnection$InstallerException;
    .end local v2    # "oatDir":Ljava/io/File;
    :cond_1
    return-object v5
.end method

.method static getOatDir(Ljava/io/File;)Ljava/io/File;
    .locals 2
    .param p0, "codePath"    # Ljava/io/File;

    .prologue
    .line 343
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "oat"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static isUsedByOtherApps(Landroid/content/pm/PackageParser$Package;)Z
    .locals 11
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .prologue
    const/4 v10, 0x0

    .line 357
    invoke-virtual {p0}, Landroid/content/pm/PackageParser$Package;->isForwardLocked()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 359
    return v10

    .line 362
    :cond_0
    invoke-virtual {p0}, Landroid/content/pm/PackageParser$Package;->getAllCodePathsExcludingResourceOnly()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "apkPath$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 364
    .local v0, "apkPath":Ljava/lang/String;
    :try_start_0
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Lcom/android/server/pm/PackageManagerServiceUtils;->realpath(Ljava/io/File;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 370
    const/16 v8, 0x2f

    const/16 v9, 0x40

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v7

    .line 371
    .local v7, "useMarker":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v2

    .line 372
    .local v2, "currentUserIds":[I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    array-length v8, v2

    if-ge v5, v8, :cond_1

    .line 374
    aget v8, v2, v5

    invoke-static {v8}, Landroid/os/Environment;->getDataProfilesDeForeignDexDirectory(I)Ljava/io/File;

    move-result-object v6

    .line 375
    .local v6, "profileDir":Ljava/io/File;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 376
    .local v4, "foreignUseMark":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 377
    const/4 v8, 0x1

    return v8

    .line 365
    .end local v2    # "currentUserIds":[I
    .end local v4    # "foreignUseMark":Ljava/io/File;
    .end local v5    # "i":I
    .end local v6    # "profileDir":Ljava/io/File;
    .end local v7    # "useMarker":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 367
    .local v3, "e":Ljava/io/IOException;
    const-string/jumbo v8, "PackageManager.DexOptimizer"

    const-string/jumbo v9, "Failed to get canonical path"

    invoke-static {v8, v9, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 372
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v2    # "currentUserIds":[I
    .restart local v4    # "foreignUseMark":Ljava/io/File;
    .restart local v5    # "i":I
    .restart local v6    # "profileDir":Ljava/io/File;
    .restart local v7    # "useMarker":Ljava/lang/String;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 381
    .end local v0    # "apkPath":Ljava/lang/String;
    .end local v2    # "currentUserIds":[I
    .end local v4    # "foreignUseMark":Ljava/io/File;
    .end local v5    # "i":I
    .end local v6    # "profileDir":Ljava/io/File;
    .end local v7    # "useMarker":Ljava/lang/String;
    :cond_3
    return v10
.end method

.method private performDexOptLI(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;[Ljava/lang/String;ZLjava/lang/String;Lcom/android/server/pm/CompilerStats$PackageStats;)I
    .locals 8
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "sharedLibraries"    # [Ljava/lang/String;
    .param p3, "targetInstructionSets"    # [Ljava/lang/String;
    .param p4, "checkProfiles"    # Z
    .param p5, "targetCompilerFilter"    # Ljava/lang/String;
    .param p6, "packageStats"    # Lcom/android/server/pm/CompilerStats$PackageStats;

    .prologue
    .line 170
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/server/pm/PackageDexOptimizer;->performDexOptLI(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;[Ljava/lang/String;ZLjava/lang/String;Lcom/android/server/pm/CompilerStats$PackageStats;I)I

    move-result v0

    return v0
.end method

.method private performDexOptLI(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;[Ljava/lang/String;ZLjava/lang/String;Lcom/android/server/pm/CompilerStats$PackageStats;I)I
    .locals 37
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "sharedLibraries"    # [Ljava/lang/String;
    .param p3, "targetInstructionSets"    # [Ljava/lang/String;
    .param p4, "checkProfiles"    # Z
    .param p5, "targetCompilerFilter"    # Ljava/lang/String;
    .param p6, "packageStats"    # Lcom/android/server/pm/CompilerStats$PackageStats;
    .param p7, "extraFlags"    # I

    .prologue
    .line 177
    if-eqz p3, :cond_0

    .line 178
    move-object/from16 v20, p3

    .line 180
    .local v20, "instructionSets":[Ljava/lang/String;
    :goto_0
    invoke-static/range {p1 .. p1}, Lcom/android/server/pm/PackageDexOptimizer;->canOptimizePackage(Landroid/content/pm/PackageParser$Package;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 181
    const/4 v2, 0x0

    return v2

    .line 178
    .end local v20    # "instructionSets":[Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v2}, Lcom/android/server/pm/InstructionSets;->getAppDexInstructionSets(Landroid/content/pm/ApplicationInfo;)[Ljava/lang/String;

    move-result-object v20

    .restart local v20    # "instructionSets":[Ljava/lang/String;
    goto :goto_0

    .line 184
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/PackageParser$Package;->getAllCodePathsExcludingResourceOnly()Ljava/util/List;

    move-result-object v27

    .line 185
    .local v27, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getSharedAppGid(I)I

    move-result v4

    .line 187
    .local v4, "sharedGid":I
    invoke-static/range {p5 .. p5}, Ldalvik/system/DexFile;->isProfileGuidedCompilerFilter(Ljava/lang/String;)Z

    move-result v22

    .line 190
    .local v22, "isProfileGuidedFilter":Z
    if-eqz v22, :cond_3

    invoke-static/range {p1 .. p1}, Lcom/android/server/pm/PackageDexOptimizer;->isUsedByOtherApps(Landroid/content/pm/PackageParser$Package;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 191
    const/16 p4, 0x0

    .line 193
    .local p4, "checkProfiles":Z
    invoke-static/range {p5 .. p5}, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->getNonProfileGuidedCompilerFilter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    .line 194
    invoke-static/range {p5 .. p5}, Ldalvik/system/DexFile;->isProfileGuidedCompilerFilter(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 195
    new-instance v2, Ljava/lang/IllegalStateException;

    move-object/from16 v0, p5

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 197
    :cond_2
    const/16 v22, 0x0

    .line 201
    .end local v22    # "isProfileGuidedFilter":Z
    .end local p4    # "checkProfiles":Z
    :cond_3
    const/16 v25, 0x0

    .line 202
    .local v25, "newProfile":Z
    if-eqz p4, :cond_4

    if-eqz v22, :cond_4

    .line 205
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageDexOptimizer;->mInstaller:Lcom/android/server/pm/Installer;

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lcom/android/server/pm/Installer;->mergeProfiles(ILjava/lang/String;)Z
    :try_end_0
    .catch Lcom/android/internal/os/InstallerConnection$InstallerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v25

    .line 211
    .end local v25    # "newProfile":Z
    :cond_4
    :goto_1
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v2, v2, 0x4000

    if-eqz v2, :cond_6

    const/16 v34, 0x1

    .line 212
    .local v34, "vmSafeMode":Z
    :goto_2
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_7

    const/4 v14, 0x1

    .line 214
    .local v14, "debuggable":Z
    :goto_3
    const/16 v28, 0x0

    .line 215
    .local v28, "performedDexOpt":Z
    const/16 v31, 0x1

    .line 217
    .local v31, "successfulDexOpt":Z
    invoke-static/range {v20 .. v20}, Lcom/android/server/pm/InstructionSets;->getDexCodeInstructionSets([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 218
    .local v15, "dexCodeInstructionSets":[Ljava/lang/String;
    const/4 v2, 0x0

    array-length v0, v15

    move/from16 v36, v0

    move/from16 v35, v2

    :goto_4
    move/from16 v0, v35

    move/from16 v1, v36

    if-ge v0, v1, :cond_12

    aget-object v6, v15, v35

    .line 219
    .local v6, "dexCodeInstructionSet":Ljava/lang/String;
    invoke-interface/range {v27 .. v27}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v26

    .local v26, "path$iterator":Ljava/util/Iterator;
    :cond_5
    :goto_5
    :pswitch_0
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 222
    .local v3, "path":Ljava/lang/String;
    :try_start_1
    move-object/from16 v0, p5

    move/from16 v1, v25

    invoke-static {v3, v6, v0, v1}, Ldalvik/system/DexFile;->getDexOptNeeded(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v7

    .line 228
    .local v7, "dexoptNeeded":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/server/pm/PackageDexOptimizer;->adjustDexoptNeeded(I)I

    move-result v7

    .line 235
    const/4 v8, 0x0

    .line 236
    .local v8, "oatDir":Ljava/lang/String;
    packed-switch v7, :pswitch_data_0

    .line 250
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Invalid dexopt:"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 206
    .end local v3    # "path":Ljava/lang/String;
    .end local v6    # "dexCodeInstructionSet":Ljava/lang/String;
    .end local v7    # "dexoptNeeded":I
    .end local v8    # "oatDir":Ljava/lang/String;
    .end local v14    # "debuggable":Z
    .end local v15    # "dexCodeInstructionSets":[Ljava/lang/String;
    .end local v26    # "path$iterator":Ljava/util/Iterator;
    .end local v28    # "performedDexOpt":Z
    .end local v31    # "successfulDexOpt":Z
    .end local v34    # "vmSafeMode":Z
    .restart local v25    # "newProfile":Z
    :catch_0
    move-exception v17

    .line 207
    .local v17, "e":Lcom/android/internal/os/InstallerConnection$InstallerException;
    const-string/jumbo v2, "PackageManager.DexOptimizer"

    const-string/jumbo v5, "Failed to merge profiles"

    move-object/from16 v0, v17

    invoke-static {v2, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 211
    .end local v17    # "e":Lcom/android/internal/os/InstallerConnection$InstallerException;
    .end local v25    # "newProfile":Z
    :cond_6
    const/16 v34, 0x0

    .restart local v34    # "vmSafeMode":Z
    goto :goto_2

    .line 212
    :cond_7
    const/4 v14, 0x0

    .restart local v14    # "debuggable":Z
    goto :goto_3

    .line 224
    .restart local v3    # "path":Ljava/lang/String;
    .restart local v6    # "dexCodeInstructionSet":Ljava/lang/String;
    .restart local v15    # "dexCodeInstructionSets":[Ljava/lang/String;
    .restart local v26    # "path$iterator":Ljava/util/Iterator;
    .restart local v28    # "performedDexOpt":Z
    .restart local v31    # "successfulDexOpt":Z
    :catch_1
    move-exception v21

    .line 225
    .local v21, "ioe":Ljava/io/IOException;
    const-string/jumbo v2, "PackageManager.DexOptimizer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "IOException reading apk: "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-static {v2, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 226
    const/4 v2, -0x1

    return v2

    .line 240
    .end local v21    # "ioe":Ljava/io/IOException;
    .restart local v7    # "dexoptNeeded":I
    .restart local v8    # "oatDir":Ljava/lang/String;
    :pswitch_1
    const-string/jumbo v16, "dex2oat"

    .line 241
    .local v16, "dexoptType":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v6}, Lcom/android/server/pm/PackageDexOptimizer;->createOatDirIfSupported(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 253
    .end local v8    # "oatDir":Ljava/lang/String;
    :goto_6
    const/4 v12, 0x0

    .line 254
    .local v12, "sharedLibrariesPath":Ljava/lang/String;
    if-eqz p2, :cond_a

    move-object/from16 v0, p2

    array-length v2, v0

    if-eqz v2, :cond_a

    .line 255
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    .line 256
    .local v30, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    move-object/from16 v0, p2

    array-length v5, v0

    :goto_7
    if-ge v2, v5, :cond_9

    aget-object v24, p2, v2

    .line 257
    .local v24, "lib":Ljava/lang/String;
    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    if-eqz v10, :cond_8

    .line 258
    const-string/jumbo v10, ":"

    move-object/from16 v0, v30

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    :cond_8
    move-object/from16 v0, v30

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 244
    .end local v12    # "sharedLibrariesPath":Ljava/lang/String;
    .end local v16    # "dexoptType":Ljava/lang/String;
    .end local v24    # "lib":Ljava/lang/String;
    .end local v30    # "sb":Ljava/lang/StringBuilder;
    .restart local v8    # "oatDir":Ljava/lang/String;
    :pswitch_2
    const-string/jumbo v16, "patchoat"

    .restart local v16    # "dexoptType":Ljava/lang/String;
    goto :goto_6

    .line 247
    .end local v16    # "dexoptType":Ljava/lang/String;
    :pswitch_3
    const-string/jumbo v16, "self patchoat"

    .restart local v16    # "dexoptType":Ljava/lang/String;
    goto :goto_6

    .line 262
    .end local v8    # "oatDir":Ljava/lang/String;
    .restart local v12    # "sharedLibrariesPath":Ljava/lang/String;
    .restart local v30    # "sb":Ljava/lang/StringBuilder;
    :cond_9
    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 264
    .end local v12    # "sharedLibrariesPath":Ljava/lang/String;
    .end local v30    # "sb":Ljava/lang/StringBuilder;
    :cond_a
    const-string/jumbo v2, "PackageManager.DexOptimizer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Running dexopt ("

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v10, ") on: "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v10, " pkg="

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 265
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 264
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 265
    const-string/jumbo v10, " isa="

    .line 264
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 266
    const-string/jumbo v10, " vmSafeMode="

    .line 264
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v34

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 266
    const-string/jumbo v10, " debuggable="

    .line 264
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 267
    const-string/jumbo v10, " target-filter="

    .line 264
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 267
    const-string/jumbo v10, " oatDir = "

    .line 264
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 268
    const-string/jumbo v10, " sharedLibraries="

    .line 264
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/PackageParser$Package;->isForwardLocked()Z

    move-result v2

    if-nez v2, :cond_b

    if-eqz v22, :cond_c

    :cond_b
    const/16 v23, 0x0

    .line 271
    .local v23, "isPublic":Z
    :goto_8
    if-eqz v22, :cond_d

    const/16 v29, 0x20

    .line 273
    .local v29, "profileFlag":I
    :goto_9
    if-eqz v23, :cond_e

    const/4 v2, 0x2

    move v5, v2

    .line 274
    :goto_a
    if-eqz v34, :cond_f

    const/4 v2, 0x4

    .line 273
    :goto_b
    or-int/2addr v5, v2

    .line 275
    if-eqz v14, :cond_10

    const/16 v2, 0x8

    .line 273
    :goto_c
    or-int/2addr v2, v5

    or-int v2, v2, v29

    or-int/lit8 v2, v2, 0x10

    .line 272
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/pm/PackageDexOptimizer;->adjustDexoptFlags(I)I

    move-result v9

    .line 280
    .local v9, "dexFlags":I
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v32

    .line 282
    .local v32, "startTime":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageDexOptimizer;->mInstaller:Lcom/android/server/pm/Installer;

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 283
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/content/pm/PackageParser$Package;->volumeUuid:Ljava/lang/String;

    move-object/from16 v10, p5

    move/from16 v13, p7

    .line 282
    invoke-virtual/range {v2 .. v13}, Lcom/android/server/pm/Installer;->dexopt(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 288
    const/16 v28, 0x1

    .line 290
    if-eqz p6, :cond_5

    .line 291
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 292
    .local v18, "endTime":J
    sub-long v10, v18, v32

    long-to-int v2, v10

    int-to-long v10, v2

    move-object/from16 v0, p6

    invoke-virtual {v0, v3, v10, v11}, Lcom/android/server/pm/CompilerStats$PackageStats;->setCompileTime(Ljava/lang/String;J)V
    :try_end_2
    .catch Lcom/android/internal/os/InstallerConnection$InstallerException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_5

    .line 294
    .end local v18    # "endTime":J
    .end local v32    # "startTime":J
    :catch_2
    move-exception v17

    .line 295
    .restart local v17    # "e":Lcom/android/internal/os/InstallerConnection$InstallerException;
    const-string/jumbo v2, "PackageManager.DexOptimizer"

    const-string/jumbo v5, "Failed to dexopt"

    move-object/from16 v0, v17

    invoke-static {v2, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 296
    const/16 v31, 0x0

    goto/16 :goto_5

    .line 270
    .end local v9    # "dexFlags":I
    .end local v17    # "e":Lcom/android/internal/os/InstallerConnection$InstallerException;
    .end local v23    # "isPublic":Z
    .end local v29    # "profileFlag":I
    :cond_c
    const/16 v23, 0x1

    .restart local v23    # "isPublic":Z
    goto :goto_8

    .line 271
    :cond_d
    const/16 v29, 0x0

    .restart local v29    # "profileFlag":I
    goto :goto_9

    .line 273
    :cond_e
    const/4 v2, 0x0

    move v5, v2

    goto :goto_a

    .line 274
    :cond_f
    const/4 v2, 0x0

    goto :goto_b

    .line 275
    :cond_10
    const/4 v2, 0x0

    goto :goto_c

    .line 218
    .end local v3    # "path":Ljava/lang/String;
    .end local v7    # "dexoptNeeded":I
    .end local v16    # "dexoptType":Ljava/lang/String;
    .end local v23    # "isPublic":Z
    .end local v29    # "profileFlag":I
    :cond_11
    add-int/lit8 v2, v35, 0x1

    move/from16 v35, v2

    goto/16 :goto_4

    .line 301
    .end local v6    # "dexCodeInstructionSet":Ljava/lang/String;
    .end local v26    # "path$iterator":Ljava/util/Iterator;
    :cond_12
    if-eqz v31, :cond_14

    .line 306
    if-eqz v28, :cond_13

    const/4 v2, 0x1

    :goto_d
    return v2

    :cond_13
    const/4 v2, 0x0

    goto :goto_d

    .line 308
    :cond_14
    const/4 v2, -0x1

    return v2

    .line 236
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method protected adjustDexoptFlags(I)I
    .locals 0
    .param p1, "dexoptFlags"    # I

    .prologue
    .line 137
    return p1
.end method

.method protected adjustDexoptNeeded(I)I
    .locals 0
    .param p1, "dexoptNeeded"    # I

    .prologue
    .line 130
    return p1
.end method

.method dumpDexoptState(Lcom/android/internal/util/IndentingPrintWriter;Landroid/content/pm/PackageParser$Package;)V
    .locals 12
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;
    .param p2, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .prologue
    .line 144
    iget-object v8, p2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v8}, Lcom/android/server/pm/InstructionSets;->getAppDexInstructionSets(Landroid/content/pm/ApplicationInfo;)[Ljava/lang/String;

    move-result-object v2

    .line 145
    .local v2, "instructionSets":[Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/pm/InstructionSets;->getDexCodeInstructionSets([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 147
    .local v0, "dexCodeInstructionSets":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/pm/PackageParser$Package;->getAllCodePathsExcludingResourceOnly()Ljava/util/List;

    move-result-object v6

    .line 149
    .local v6, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v8, 0x0

    array-length v9, v0

    :goto_0
    if-ge v8, v9, :cond_1

    aget-object v1, v0, v8

    .line 150
    .local v1, "instructionSet":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Instruction Set: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 152
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "path$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 153
    .local v4, "path":Ljava/lang/String;
    const/4 v7, 0x0

    .line 155
    .local v7, "status":Ljava/lang/String;
    :try_start_0
    invoke-static {v4, v1}, Ldalvik/system/DexFile;->getDexFileStatus(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 159
    .local v7, "status":Ljava/lang/String;
    :goto_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "path: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 160
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "status: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 156
    .local v7, "status":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 157
    .local v3, "ioe":Ljava/io/IOException;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "[Exception]: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .local v7, "status":Ljava/lang/String;
    goto :goto_2

    .line 162
    .end local v3    # "ioe":Ljava/io/IOException;
    .end local v4    # "path":Ljava/lang/String;
    .end local v7    # "status":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 149
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 143
    .end local v1    # "instructionSet":Ljava/lang/String;
    .end local v5    # "path$iterator":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method performDexOpt(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;[Ljava/lang/String;ZLjava/lang/String;Lcom/android/server/pm/CompilerStats$PackageStats;)I
    .locals 8
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "sharedLibraries"    # [Ljava/lang/String;
    .param p3, "instructionSets"    # [Ljava/lang/String;
    .param p4, "checkProfiles"    # Z
    .param p5, "targetCompilationFilter"    # Ljava/lang/String;
    .param p6, "packageStats"    # Lcom/android/server/pm/CompilerStats$PackageStats;

    .prologue
    .line 96
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/PackageDexOptimizer;->performDexOpt(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;[Ljava/lang/String;ZLjava/lang/String;Lcom/android/server/pm/CompilerStats$PackageStats;I)I

    move-result v0

    return v0
.end method

.method performDexOpt(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;[Ljava/lang/String;ZLjava/lang/String;Lcom/android/server/pm/CompilerStats$PackageStats;I)I
    .locals 5
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "sharedLibraries"    # [Ljava/lang/String;
    .param p3, "instructionSets"    # [Ljava/lang/String;
    .param p4, "checkProfiles"    # Z
    .param p5, "targetCompilationFilter"    # Ljava/lang/String;
    .param p6, "packageStats"    # Lcom/android/server/pm/CompilerStats$PackageStats;
    .param p7, "extraFlags"    # I

    .prologue
    .line 103
    iget-object v2, p0, Lcom/android/server/pm/PackageDexOptimizer;->mInstallLock:Ljava/lang/Object;

    monitor-enter v2

    .line 104
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mSystemReady:Z

    .line 105
    .local v0, "useLock":Z
    if-eqz v0, :cond_0

    .line 106
    iget-object v1, p0, Lcom/android/server/pm/PackageDexOptimizer;->mDexoptWakeLock:Landroid/os/PowerManager$WakeLock;

    new-instance v3, Landroid/os/WorkSource;

    iget-object v4, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {v3, v4}, Landroid/os/WorkSource;-><init>(I)V

    invoke-virtual {v1, v3}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 107
    iget-object v1, p0, Lcom/android/server/pm/PackageDexOptimizer;->mDexoptWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 113
    :cond_0
    :try_start_1
    invoke-direct/range {p0 .. p7}, Lcom/android/server/pm/PackageDexOptimizer;->performDexOptLI(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;[Ljava/lang/String;ZLjava/lang/String;Lcom/android/server/pm/CompilerStats$PackageStats;I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .line 118
    if-eqz v0, :cond_1

    .line 119
    :try_start_2
    iget-object v3, p0, Lcom/android/server/pm/PackageDexOptimizer;->mDexoptWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_1
    monitor-exit v2

    .line 113
    return v1

    .line 117
    :catchall_0
    move-exception v1

    .line 118
    if-eqz v0, :cond_2

    .line 119
    :try_start_3
    iget-object v3, p0, Lcom/android/server/pm/PackageDexOptimizer;->mDexoptWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 117
    :cond_2
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 103
    .end local v0    # "useLock":Z
    :catchall_1
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method systemReady()V
    .locals 1

    .prologue
    .line 347
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mSystemReady:Z

    .line 346
    return-void
.end method
