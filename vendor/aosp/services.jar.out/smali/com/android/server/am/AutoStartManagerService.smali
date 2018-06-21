.class public Lcom/android/server/am/AutoStartManagerService;
.super Ljava/lang/Object;
.source "AutoStartManagerService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AutoStartManagerService"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canRestartServiceLocked(Ljava/lang/String;ILcom/android/server/am/ActivityManagerService;)Z
    .locals 5
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "uid"    # I
    .param p2, "service"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    const/4 v4, 0x0

    .line 74
    iget-object v1, p2, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/AppOpsService;

    const/16 v2, 0x2718

    invoke-virtual {v1, v2, p1, p0}, Lcom/android/server/AppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result v0

    .line 75
    .local v0, "mode":I
    if-nez v0, :cond_0

    .line 76
    const/4 v1, 0x1

    return v1

    .line 78
    :cond_0
    const-string/jumbo v1, "AutoStartManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "MIUILOG- Reject RestartService packageName :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " uid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    return v4
.end method

.method public static isAllowStartService(Landroid/content/Context;Landroid/content/Intent;I)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "userId"    # I

    .prologue
    const/4 v6, 0x1

    .line 24
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 25
    .local v3, "packageName":Ljava/lang/String;
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    .line 26
    .local v2, "packageManager":Landroid/content/pm/IPackageManager;
    const/4 v5, 0x0

    invoke-interface {v2, v3, v5, p2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 27
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v0, :cond_0

    .line 28
    return v6

    .line 30
    :cond_0
    iget v4, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 31
    .local v4, "uid":I
    invoke-static {p0, p1, p2, v4}, Lcom/android/server/am/AutoStartManagerService;->isAllowStartService(Landroid/content/Context;Landroid/content/Intent;II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    return v5

    .line 32
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "packageManager":Landroid/content/pm/IPackageManager;
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "uid":I
    :catch_0
    move-exception v1

    .line 33
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 35
    return v6
.end method

.method public static isAllowStartService(Landroid/content/Context;Landroid/content/Intent;II)Z
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "userId"    # I
    .param p3, "uid"    # I

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 40
    :try_start_0
    const-string/jumbo v7, "appops"

    invoke-virtual {p0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    .line 41
    .local v1, "aom":Landroid/app/AppOpsManager;
    if-nez v1, :cond_0

    .line 42
    return v11

    .line 44
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x2718

    invoke-virtual {v1, v8, p3, v7}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v3

    .line 45
    .local v3, "mode":I
    if-nez v3, :cond_1

    .line 46
    return v11

    .line 49
    :cond_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityManagerService;

    .line 50
    .local v0, "ams":Lcom/android/server/am/ActivityManagerService;
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v7

    const/4 v8, 0x0

    const/16 v9, 0x400

    invoke-interface {v7, p1, v8, v9, p2}, Landroid/content/pm/IPackageManager;->resolveService(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v5

    .line 52
    .local v5, "rInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v5, :cond_2

    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 53
    :goto_0
    if-nez v6, :cond_3

    .line 54
    return v11

    .line 52
    :cond_2
    const/4 v6, 0x0

    .local v6, "sInfo":Landroid/content/pm/ServiceInfo;
    goto :goto_0

    .line 56
    .end local v6    # "sInfo":Landroid/content/pm/ServiceInfo;
    :cond_3
    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v7, v7, 0x1

    if-nez v7, :cond_4

    .line 57
    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static {p0, v7, v8}, Lmiui/content/pm/PreloadedAppPolicy;->isProtectedDataApp(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v7

    .line 56
    if-eqz v7, :cond_5

    .line 58
    :cond_4
    return v11

    .line 60
    :cond_5
    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 61
    iget-object v7, v6, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v0, v7, p3, v8}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordLocked(Ljava/lang/String;IZ)Lcom/android/server/am/ProcessRecord;

    move-result-object v4

    .line 62
    .local v4, "processRecord":Lcom/android/server/am/ProcessRecord;
    if-nez v4, :cond_6

    .line 63
    const-string/jumbo v7, "AutoStartManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "MIUILOG- Reject service :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " userId : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " uid : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    .line 60
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 64
    return v10

    :cond_6
    monitor-exit v0

    .line 60
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 70
    .end local v0    # "ams":Lcom/android/server/am/ActivityManagerService;
    .end local v1    # "aom":Landroid/app/AppOpsManager;
    .end local v3    # "mode":I
    .end local v4    # "processRecord":Lcom/android/server/am/ProcessRecord;
    .end local v5    # "rInfo":Landroid/content/pm/ResolveInfo;
    :goto_1
    return v11

    .line 60
    .restart local v0    # "ams":Lcom/android/server/am/ActivityManagerService;
    .restart local v1    # "aom":Landroid/app/AppOpsManager;
    .restart local v3    # "mode":I
    .restart local v5    # "rInfo":Landroid/content/pm/ResolveInfo;
    :catchall_0
    move-exception v7

    monitor-exit v0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 67
    .end local v0    # "ams":Lcom/android/server/am/ActivityManagerService;
    .end local v1    # "aom":Landroid/app/AppOpsManager;
    .end local v3    # "mode":I
    .end local v5    # "rInfo":Landroid/content/pm/ResolveInfo;
    :catch_0
    move-exception v2

    .line 68
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
