.class public Lcom/android/server/am/ActiveServicesInjector;
.super Ljava/lang/Object;
.source "ActiveServicesInjector.java"


# static fields
.field private static final DEBUG_SERVICE:Z = false

.field private static final PROCESS_STATE_FOREGROUND_SERVICE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "ActiveServicesInjector"

.field static final sMayRestartProcessList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/am/ActiveServicesInjector;->sMayRestartProcessList:Ljava/util/ArrayList;

    .line 41
    sget-object v0, Lcom/android/server/am/ActiveServicesInjector;->sMayRestartProcessList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.android.incallui"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canRestartServiceLocked(Lcom/android/server/am/ServiceRecord;Lcom/android/server/am/ActivityManagerService;)Z
    .locals 11
    .param p0, "record"    # Lcom/android/server/am/ServiceRecord;
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v3, 0x0

    .line 45
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0, v1, p1}, Lcom/android/server/am/AutoStartManagerService;->canRestartServiceLocked(Ljava/lang/String;ILcom/android/server/am/ActivityManagerService;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 46
    return v9

    .line 50
    :cond_0
    invoke-static {}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->getSingletonService()Lcom/miui/whetstone/server/WhetstoneActivityManagerService;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 51
    invoke-static {}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->getSingletonService()Lcom/miui/whetstone/server/WhetstoneActivityManagerService;

    move-result-object v0

    .line 52
    iget-object v1, p0, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    .line 53
    const-string/jumbo v2, "Restart: AMS"

    .line 55
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    .line 56
    iget-object v5, p0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    .line 57
    :goto_0
    iget-object v6, p0, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    .line 51
    new-array v7, v10, [Ljava/lang/Object;

    .line 58
    iget-object v8, p0, Lcom/android/server/am/ServiceRecord;->intent:Landroid/content/Intent$FilterComparison;

    if-eqz v8, :cond_1

    iget-object v3, p0, Lcom/android/server/am/ServiceRecord;->intent:Landroid/content/Intent$FilterComparison;

    invoke-virtual {v3}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v3

    :cond_1
    aput-object v3, v7, v9

    .line 54
    const/4 v3, 0x2

    .line 51
    invoke-virtual/range {v0 .. v7}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->checkPackageState(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v0

    if-eq v0, v10, :cond_4

    .line 59
    const-string/jumbo v1, "WhetstonePackageState"

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Permission denied by Whetstone, cannot re-start service from "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 61
    iget-object v2, p0, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    .line 60
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 61
    const-string/jumbo v2, "/"

    .line 60
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 61
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 60
    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 62
    const-string/jumbo v2, " in "

    .line 60
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 62
    iget-object v2, p0, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    .line 60
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 62
    const-string/jumbo v2, ", UserId: "

    .line 60
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 62
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    .line 60
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 59
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    return v9

    .line 56
    :cond_2
    const-string/jumbo v5, ""

    goto :goto_0

    .line 61
    :cond_3
    const-string/jumbo v0, ""

    goto :goto_1

    .line 67
    :cond_4
    sget-boolean v0, Lcom/miui/whetstone/WhetstonePackageState;->DEBUG:Z

    if-eqz v0, :cond_5

    .line 68
    const-string/jumbo v1, "WhetstonePackageState"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "restart service from "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 69
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 68
    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 70
    const-string/jumbo v2, " in "

    .line 68
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 70
    iget-object v2, p0, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    .line 68
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 70
    const-string/jumbo v2, ", UserId: "

    .line 68
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 70
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    .line 68
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :cond_5
    return v10

    .line 69
    :cond_6
    const-string/jumbo v0, ""

    goto :goto_2
.end method

.method public static closeCheckPriority(Lcom/android/server/am/ActivityManagerService;)V
    .locals 1
    .param p0, "service"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    .line 102
    sget-object v0, Lcom/android/server/am/LowPriorityServiceHelper;->mInstance:Lcom/android/server/am/LowPriorityServiceHelper;

    invoke-virtual {v0}, Lcom/android/server/am/LowPriorityServiceHelper;->closeCheckPriority()V

    .line 101
    return-void
.end method

.method public static isServiceForeground(Lcom/android/server/am/ActivityManagerService;Landroid/content/ComponentName;I)Z
    .locals 6
    .param p0, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "callingUid"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 80
    sget-boolean v3, Lmiui/os/Build;->IS_CTS_BUILD:Z

    if-nez v3, :cond_0

    if-nez p1, :cond_1

    .line 81
    :cond_0
    return v1

    .line 83
    :cond_1
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/AppOpsService;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x2727

    invoke-virtual {v3, v5, p2, v4}, Lcom/android/server/AppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result v0

    .line 84
    .local v0, "mode":I
    if-nez v0, :cond_2

    :goto_0
    return v1

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method public static removeServiceLocked(ILandroid/util/SparseArray;Ljava/util/ArrayList;)V
    .locals 3
    .param p0, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/am/ActiveServices$ServiceMap;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ServiceRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 138
    .local p1, "serviceMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ActiveServices$ServiceMap;>;"
    .local p2, "mTmpCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ServiceRecord;>;"
    const/4 v2, -0x1

    if-ne p0, v2, :cond_0

    .line 139
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 140
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActiveServices$ServiceMap;

    invoke-static {v2, p2}, Lcom/android/server/am/ActiveServicesInjector;->removeServiceLocked(Lcom/android/server/am/ActiveServices$ServiceMap;Ljava/util/ArrayList;)V

    .line 139
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 143
    .end local v0    # "i":I
    :cond_0
    invoke-virtual {p1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActiveServices$ServiceMap;

    .line 144
    .local v1, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    if-eqz v1, :cond_1

    .line 145
    invoke-static {v1, p2}, Lcom/android/server/am/ActiveServicesInjector;->removeServiceLocked(Lcom/android/server/am/ActiveServices$ServiceMap;Ljava/util/ArrayList;)V

    .line 137
    .end local v1    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    :cond_1
    return-void
.end method

.method public static removeServiceLocked(Lcom/android/server/am/ActiveServices$ServiceMap;Ljava/util/ArrayList;)V
    .locals 3
    .param p0, "smap"    # Lcom/android/server/am/ActiveServices$ServiceMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/ActiveServices$ServiceMap;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ServiceRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 122
    .local p1, "mTmpCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ServiceRecord;>;"
    if-eqz p1, :cond_2

    .line 123
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 124
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ServiceRecord;

    .line 125
    .local v1, "service":Lcom/android/server/am/ServiceRecord;
    iget-object v2, p0, Lcom/android/server/am/ActiveServices$ServiceMap;->mDelayedStartList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 128
    :cond_0
    sget-object v2, Lcom/android/server/am/LowPriorityServiceHelper;->mInstance:Lcom/android/server/am/LowPriorityServiceHelper;

    invoke-virtual {v2, v1}, Lcom/android/server/am/LowPriorityServiceHelper;->forceRemoveServiceLocked(Lcom/android/server/am/ServiceRecord;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 123
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 121
    .end local v0    # "i":I
    .end local v1    # "service":Lcom/android/server/am/ServiceRecord;
    :cond_2
    return-void
.end method

.method public static removeServicePriority(Lcom/android/server/am/ActivityManagerService;Lcom/android/internal/app/MiuiServicePriority;Z)V
    .locals 1
    .param p0, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "servicePriority"    # Lcom/android/internal/app/MiuiServicePriority;
    .param p2, "inBlacklist"    # Z

    .prologue
    .line 98
    sget-object v0, Lcom/android/server/am/LowPriorityServiceHelper;->mInstance:Lcom/android/server/am/LowPriorityServiceHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/LowPriorityServiceHelper;->removeServicePriority(Lcom/android/internal/app/MiuiServicePriority;Z)V

    .line 97
    return-void
.end method

.method public static setServicePriority(Lcom/android/server/am/ActivityManagerService;Ljava/util/List;)V
    .locals 1
    .param p0, "service"    # Lcom/android/server/am/ActivityManagerService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/ActivityManagerService;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/MiuiServicePriority;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 88
    .local p1, "servicePrioritys":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/MiuiServicePriority;>;"
    sget-object v0, Lcom/android/server/am/LowPriorityServiceHelper;->mInstance:Lcom/android/server/am/LowPriorityServiceHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/am/LowPriorityServiceHelper;->setServicePriority(Ljava/util/List;)V

    .line 87
    return-void
.end method

.method public static setServicePriority(Lcom/android/server/am/ActivityManagerService;Ljava/util/List;J)V
    .locals 2
    .param p0, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "noProcDelayTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/ActivityManagerService;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/MiuiServicePriority;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 92
    .local p1, "servicePrioritys":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/MiuiServicePriority;>;"
    sget-object v0, Lcom/android/server/am/LowPriorityServiceHelper;->mInstance:Lcom/android/server/am/LowPriorityServiceHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/am/LowPriorityServiceHelper;->setServicePriority(Ljava/util/List;)V

    .line 93
    sget-object v0, Lcom/android/server/am/LowPriorityServiceHelper;->mInstance:Lcom/android/server/am/LowPriorityServiceHelper;

    invoke-virtual {v0, p2, p3}, Lcom/android/server/am/LowPriorityServiceHelper;->setNoProcDelayTime(J)V

    .line 91
    return-void
.end method

.method public static willRestartNow(Lcom/android/server/am/ProcessRecord;)Z
    .locals 3
    .param p0, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 111
    if-eqz p0, :cond_0

    iget v1, p0, Lcom/android/server/am/ProcessRecord;->curProcState:I

    if-ltz v1, :cond_0

    .line 112
    iget v1, p0, Lcom/android/server/am/ProcessRecord;->curProcState:I

    const/4 v2, 0x3

    if-gt v1, v2, :cond_0

    .line 113
    sget-object v1, Lcom/android/server/am/ActiveServicesInjector;->sMayRestartProcessList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 111
    if-eqz v1, :cond_0

    .line 114
    const/4 v0, 0x1

    .line 118
    .local v0, "isTopServiceApp":Z
    :goto_0
    return v0

    .line 116
    .end local v0    # "isTopServiceApp":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "isTopServiceApp":Z
    goto :goto_0
.end method

.method public static willRestartNow(Lcom/android/server/am/ServiceRecord;)Z
    .locals 2
    .param p0, "record"    # Lcom/android/server/am/ServiceRecord;

    .prologue
    .line 106
    sget-object v0, Lcom/android/server/am/ActiveServicesInjector;->sMayRestartProcessList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
