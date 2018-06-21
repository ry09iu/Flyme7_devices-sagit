.class Lcom/android/server/am/ActivityManagerServiceInjector;
.super Ljava/lang/Object;
.source "ActivityManagerServiceInjector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;,
        Lcom/android/server/am/ActivityManagerServiceInjector$SettingObserver;
    }
.end annotation


# static fields
.field public static final BOOST_DURATION:J = 0xbb8L

.field private static final BOOST_TAG:Ljava/lang/String; = "Boost"

.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "ActivityManagerServiceInjector"

.field private static enableAdjDowngrade:Z = false

.field protected static enableTaskIsolation:Z = false

.field static mProtectedProcessList:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mResizeWhiteList:Ljava/util/HashSet; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mipushCaller:Ljava/lang/String; = "com.xiaomi.xmsf"

.field private static final mipushServiceName:Ljava/lang/String; = "com.xiaomi.mipush.sdk.PushMessageHandler"

.field private static final sPackageList:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sPackageList"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sSettingObserver:Lcom/android/server/am/ActivityManagerServiceInjector$SettingObserver;

.field private static sSwitchUserCallingUid:I

.field private static skipVerifyList:[Ljava/lang/String;


# direct methods
.method static synthetic -get0()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/android/server/am/ActivityManagerServiceInjector;->sPackageList:Ljava/util/List;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 104
    const-string/jumbo v0, "persist.sys.task_isolation"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 103
    sput-boolean v0, Lcom/android/server/am/ActivityManagerServiceInjector;->enableTaskIsolation:Z

    .line 106
    const-string/jumbo v0, "persist.sys.adj_downgrade"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 105
    sput-boolean v0, Lcom/android/server/am/ActivityManagerServiceInjector;->enableAdjDowngrade:Z

    .line 107
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "com.tencent.mm"

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.tencent.mobileqq"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/server/am/ActivityManagerServiceInjector;->skipVerifyList:[Ljava/lang/String;

    .line 109
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/am/ActivityManagerServiceInjector;->mResizeWhiteList:Ljava/util/HashSet;

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/am/ActivityManagerServiceInjector;->sPackageList:Ljava/util/List;

    .line 309
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/am/ActivityManagerServiceInjector;->mProtectedProcessList:Ljava/util/ArrayList;

    .line 311
    sget-object v0, Lcom/android/server/am/ActivityManagerServiceInjector;->mProtectedProcessList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.android.phone"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adjustThreadGroup(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;)V
    .locals 2
    .param p0, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p1, "top"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 959
    sget-boolean v0, Lcom/android/server/am/ActivityManagerServiceInjector;->enableTaskIsolation:Z

    if-eqz v0, :cond_0

    .line 960
    if-eqz p0, :cond_0

    iget v0, p0, Lcom/android/server/am/ProcessRecord;->curSchedGroup:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 961
    if-eq p0, p1, :cond_0

    iget v0, p0, Lcom/android/server/am/ProcessRecord;->curRawAdj:I

    if-ltz v0, :cond_0

    .line 962
    const/16 v0, 0x9

    iput v0, p0, Lcom/android/server/am/ProcessRecord;->curSchedGroup:I

    .line 958
    :cond_0
    return-void
.end method

.method public static attachProcessStartReason(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "processName"    # Ljava/lang/String;
    .param p1, "hostingType"    # Ljava/lang/String;
    .param p2, "hostingNameStr"    # Ljava/lang/String;

    .prologue
    .line 802
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 803
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 804
    const-string/jumbo v1, " #for# "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 805
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 806
    if-eqz p2, :cond_0

    .line 807
    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 808
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 810
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static broadcastIntentLocked(Lcom/android/server/am/ActivityManagerService;ZZLcom/android/server/am/BroadcastRecord;)Z
    .locals 1
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "parallel"    # Z
    .param p2, "replacePending"    # Z
    .param p3, "record"    # Lcom/android/server/am/BroadcastRecord;

    .prologue
    .line 1094
    invoke-static {p0}, Lcom/android/server/am/ActivityManagerServiceInjector;->getMiuiBroadcastManager(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/MiuiBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/am/MiuiBroadcastManager;->broadcastIntentLocked(ZZLcom/android/server/am/BroadcastRecord;)Z

    move-result v0

    return v0
.end method

.method static broadcastQueueByFlag(Lcom/android/server/am/ActivityManagerService;I)Lcom/android/server/am/BroadcastQueue;
    .locals 1
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "flags"    # I

    .prologue
    .line 1100
    invoke-static {p0}, Lcom/android/server/am/ActivityManagerServiceInjector;->getMiuiBroadcastManager(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/MiuiBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/am/MiuiBroadcastManager;->broadcastQueueByFlag(I)Lcom/android/server/am/BroadcastQueue;

    move-result-object v0

    return-object v0
.end method

.method static broadcastVRAppFC(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 280
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "miui.intent.vr.apperror"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 281
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.mi.dlabs.vr"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 282
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 279
    return-void
.end method

.method public static checkGMSInstall(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;)Z
    .locals 5
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "r"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 358
    if-eqz p1, :cond_0

    .line 359
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 360
    .local v1, "serviceProcess":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 361
    .local v0, "ar":Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 362
    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    .line 363
    .local v2, "topProcess":Ljava/lang/String;
    const-string/jumbo v3, "com.google"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 364
    const-string/jumbo v3, "com.android.provision"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 363
    if-eqz v3, :cond_0

    .line 365
    const-string/jumbo v3, "ActivityManagerServiceInjector"

    const-string/jumbo v4, "delay gms service timeout"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    const/4 v3, 0x1

    return v3

    .line 370
    .end local v0    # "ar":Lcom/android/server/am/ActivityRecord;
    .end local v1    # "serviceProcess":Ljava/lang/String;
    .end local v2    # "topProcess":Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    return v3
.end method

.method public static checkMemForServiceRestart(Lcom/android/server/am/ServiceRecord;Lcom/android/server/am/ActivityManagerService;)Z
    .locals 3
    .param p0, "r"    # Lcom/android/server/am/ServiceRecord;
    .param p1, "ams"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    .line 999
    sget-boolean v0, Lcom/android/server/am/ActivityManagerServiceInjector;->enableAdjDowngrade:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/am/ServiceRecord;->createdFromFg:Z

    if-eqz v0, :cond_1

    .line 1004
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 1000
    :cond_1
    iget v0, p1, Lcom/android/server/am/ActivityManagerService;->mLastMemoryLevel:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1001
    const-string/jumbo v0, "ActivityManagerServiceInjector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "don\'t allow bg service restart under lowmem: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    const/4 v0, 0x0

    return v0
.end method

.method public static checkServiceAccess(Landroid/content/Intent;II)Z
    .locals 3
    .param p0, "service"    # Landroid/content/Intent;
    .param p1, "callingUid"    # I
    .param p2, "userId"    # I

    .prologue
    const/4 v2, 0x0

    .line 1009
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1010
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.media.IMediaScannerService"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1009
    if-eqz v0, :cond_0

    .line 1011
    invoke-static {p1}, Lmiui/securityspace/XSpaceUserHandle;->isUidBelongtoXSpace(I)Z

    move-result v0

    .line 1009
    if-eqz v0, :cond_0

    .line 1012
    if-nez p2, :cond_0

    .line 1013
    const/4 v0, 0x1

    return v0

    .line 1015
    :cond_0
    return v2
.end method

.method public static checkUserForServiceBind(Landroid/content/Intent;I)I
    .locals 2
    .param p0, "service"    # Landroid/content/Intent;
    .param p1, "userId"    # I

    .prologue
    .line 1019
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1020
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.media.IMediaScannerService"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1019
    if-eqz v0, :cond_0

    .line 1021
    const/16 v0, 0x3e7

    if-ne p1, v0, :cond_0

    .line 1022
    const/4 p1, 0x0

    .line 1024
    :cond_0
    return p1
.end method

.method public static clearDeadAppFromNative(Lcom/android/server/am/ActivityManagerService;Ljava/util/ArrayList;Ljava/lang/Thread;Lcom/android/internal/os/ProcessCpuTracker;)V
    .locals 10
    .param p0, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "processCpuThread"    # Ljava/lang/Thread;
    .param p3, "processCpuTracker"    # Lcom/android/internal/os/ProcessCpuTracker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/ActivityManagerService;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;",
            "Ljava/lang/Thread;",
            "Lcom/android/internal/os/ProcessCpuTracker;",
            ")V"
        }
    .end annotation

    .prologue
    .line 335
    .local p1, "lruProcess":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    .line 336
    .local v4, "procMemsMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 337
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_0

    .line 338
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    .line 339
    .local v3, "proc":Lcom/android/server/am/ProcessRecord;
    iget v6, v3, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v4, v6, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 337
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .end local v3    # "proc":Lcom/android/server/am/ProcessRecord;
    :cond_0
    monitor-exit p0

    .line 336
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 342
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerService;->updateCpuStatsNow()V

    .line 343
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->getForegroundApplicationUid()I

    move-result v1

    .line 344
    .local v1, "foregroundUid":I
    monitor-enter p2

    .line 345
    :try_start_1
    invoke-virtual {p3}, Lcom/android/internal/os/ProcessCpuTracker;->countStats()I

    move-result v0

    .line 346
    .local v0, "N":I
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_2

    .line 347
    invoke-virtual {p3, v2}, Lcom/android/internal/os/ProcessCpuTracker;->getStats(I)Lcom/android/internal/os/ProcessCpuTracker$Stats;

    move-result-object v5

    .line 348
    .local v5, "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    iget-wide v6, v5, Lcom/android/internal/os/ProcessCpuTracker$Stats;->vsize:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_1

    iget v6, v5, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v6

    if-gez v6, :cond_1

    iget v6, v5, Lcom/android/internal/os/ProcessCpuTracker$Stats;->uid:I

    const/16 v7, 0x2710

    if-le v6, v7, :cond_1

    iget v6, v5, Lcom/android/internal/os/ProcessCpuTracker$Stats;->uid:I

    if-eq v1, v6, :cond_1

    .line 349
    iget v6, v5, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-static {v6}, Landroid/os/Process;->killProcess(I)V

    .line 350
    const-string/jumbo v6, "ActivityManagerServiceInjector"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "kill the native dead app pid = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v5, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " name = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v5, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 346
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 336
    .end local v0    # "N":I
    .end local v1    # "foregroundUid":I
    .end local v2    # "i":I
    .end local v5    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    :catchall_0
    move-exception v6

    monitor-exit p0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v6

    .restart local v0    # "N":I
    .restart local v1    # "foregroundUid":I
    .restart local v2    # "i":I
    :cond_2
    monitor-exit p2

    .line 354
    return-void

    .line 344
    .end local v0    # "N":I
    :catchall_1
    move-exception v6

    monitor-exit p2

    throw v6
.end method

.method public static computeAdjForLowmem(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityManagerService;JI)I
    .locals 4
    .param p0, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p1, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "leastServiceIdle"    # J
    .param p4, "adj"    # I

    .prologue
    .line 981
    sget-boolean v0, Lcom/android/server/am/ActivityManagerServiceInjector;->enableAdjDowngrade:Z

    if-eqz v0, :cond_1

    .line 982
    iget v0, p1, Lcom/android/server/am/ActivityManagerService;->mLastMemoryLevel:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 983
    const-string/jumbo v0, "fg-service"

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 984
    return p4

    .line 986
    :cond_0
    const/16 v0, 0x1f4

    if-ge p4, v0, :cond_1

    .line 987
    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, p2, v0

    if-eqz v0, :cond_2

    const-wide/32 v0, 0x927c0

    cmp-long v0, p2, v0

    if-lez v0, :cond_2

    .line 989
    :goto_0
    const/16 p4, 0x1f4

    .line 990
    const-string/jumbo v0, "ActivityManagerServiceInjector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "downgrade: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 991
    const-string/jumbo v2, " from "

    .line 990
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 991
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 990
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 991
    const-string/jumbo v2, " to A service"

    .line 990
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    :cond_1
    return p4

    .line 988
    :cond_2
    const-string/jumbo v0, "provider"

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 987
    if-eqz v0, :cond_1

    goto :goto_0
.end method

.method static computeGids(I[I)[I
    .locals 4
    .param p0, "userId"    # I
    .param p1, "gids"    # [I

    .prologue
    const/4 v1, 0x0

    .line 398
    sget-boolean v2, Lcom/miui/server/XSpaceManagerService;->sIsXSpaceCreated:Z

    if-eqz v2, :cond_0

    if-nez p1, :cond_1

    .line 399
    :cond_0
    return-object p1

    .line 401
    :cond_1
    invoke-static {p0}, Lmiui/securityspace/XSpaceUserHandle;->isXSpaceUserId(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 402
    array-length v2, p1

    :goto_0
    if-ge v1, v2, :cond_2

    aget v0, p1, v1

    .line 403
    .local v0, "gid":I
    sget v3, Lmiui/securityspace/XSpaceUserHandle;->XSPACE_SHARED_USER_GID:I

    if-ne v0, v3, :cond_3

    .line 404
    sget v1, Lmiui/securityspace/XSpaceUserHandle;->OWNER_SHARED_USER_GID:I

    invoke-static {p1, v1}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object p1

    .line 416
    .end local v0    # "gid":I
    :cond_2
    :goto_1
    return-object p1

    .line 402
    .restart local v0    # "gid":I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 408
    .end local v0    # "gid":I
    :cond_4
    if-nez p0, :cond_2

    .line 409
    array-length v2, p1

    :goto_2
    if-ge v1, v2, :cond_2

    aget v0, p1, v1

    .line 410
    .restart local v0    # "gid":I
    sget v3, Lmiui/securityspace/XSpaceUserHandle;->OWNER_SHARED_USER_GID:I

    if-ne v0, v3, :cond_5

    .line 411
    sget v1, Lmiui/securityspace/XSpaceUserHandle;->XSPACE_SHARED_USER_GID:I

    invoke-static {p1, v1}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object p1

    goto :goto_1

    .line 409
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method static doBoost(Lcom/android/server/am/ProcessRecord;)V
    .locals 3
    .param p0, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    const/4 v1, 0x2

    .line 1169
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->curSchedGroup:I

    if-eq v0, v1, :cond_0

    .line 1170
    iput v1, p0, Lcom/android/server/am/ProcessRecord;->curSchedGroup:I

    .line 1171
    const-string/jumbo v0, "Boost"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Process is boosted to top app, processName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1172
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 1171
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1172
    const-string/jumbo v2, "."

    .line 1171
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1168
    :cond_0
    return-void
.end method

.method static dumpAppTrace(Lcom/android/server/am/ActivityManagerService;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 21
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "appPid"    # I
    .param p2, "processName"    # Ljava/lang/String;
    .param p3, "appName"    # Ljava/lang/String;
    .param p4, "msg"    # Ljava/lang/String;

    .prologue
    .line 868
    const-string/jumbo v16, "dalvik.vm.stack-trace-file"

    const/16 v17, 0x0

    invoke-static/range {v16 .. v17}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 869
    .local v14, "tracesPath":Ljava/lang/String;
    if-eqz v14, :cond_0

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v16

    if-nez v16, :cond_1

    .line 870
    :cond_0
    return-void

    .line 872
    :cond_1
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v10

    .line 873
    .local v10, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    .line 875
    :try_start_0
    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 876
    .local v13, "tracesFile":Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v12

    .line 877
    .local v12, "tracesDir":Ljava/io/File;
    new-instance v15, Ljava/io/File;

    const-string/jumbo v16, "_tmp_"

    move-object/from16 v0, v16

    invoke-direct {v15, v12, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 879
    .local v15, "tracesTmp":Ljava/io/File;
    :try_start_1
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v16

    if-nez v16, :cond_2

    .line 880
    invoke-virtual {v12}, Ljava/io/File;->mkdirs()Z

    .line 881
    invoke-virtual {v12}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/os/SELinux;->restorecon(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result v16

    if-nez v16, :cond_2

    .line 946
    invoke-static {v10}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 882
    return-void

    .line 885
    :cond_2
    :try_start_2
    invoke-virtual {v12}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x1fd

    const/16 v18, -0x1

    const/16 v19, -0x1

    invoke-static/range {v16 .. v19}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 887
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v16

    if-eqz v16, :cond_3

    .line 888
    invoke-virtual {v15}, Ljava/io/File;->delete()Z

    .line 889
    invoke-virtual {v13, v15}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 891
    :cond_3
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 892
    .local v11, "sb":Ljava/lang/StringBuilder;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Landroid/os/AnrMonitor;->toCalendarTime(J)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, "\n"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 893
    const-string/jumbo v16, "pid : "

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, "\n"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 894
    const-string/jumbo v16, "pkgName : "

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, "\n"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 895
    const-string/jumbo v16, "processName : "

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, "\n"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 896
    move-object/from16 v0, p4

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 897
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v13}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 898
    .local v5, "fos":Ljava/io/FileOutputStream;
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->getBytes()[B

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 899
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 900
    invoke-virtual {v13}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x1b6

    const/16 v18, -0x1

    const/16 v19, -0x1

    invoke-static/range {v16 .. v19}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 906
    if-eqz p1, :cond_4

    .line 907
    :try_start_3
    new-instance v9, Lcom/android/server/am/ActivityManagerServiceInjector$2;

    const/16 v16, 0x8

    move/from16 v0, v16

    invoke-direct {v9, v14, v0}, Lcom/android/server/am/ActivityManagerServiceInjector$2;-><init>(Ljava/lang/String;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 914
    .local v9, "observer":Landroid/os/FileObserver;
    :try_start_4
    invoke-virtual {v9}, Landroid/os/FileObserver;->startWatching()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 916
    :try_start_5
    monitor-enter v9
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 917
    const/16 v16, 0x3

    :try_start_6
    move/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v1}, Landroid/os/Process;->sendSignal(II)V

    .line 918
    const-wide/16 v16, 0x1f4

    move-wide/from16 v0, v16

    invoke-virtual {v9, v0, v1}, Landroid/os/FileObserver;->wait(J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    monitor-exit v9
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 923
    :goto_0
    :try_start_8
    invoke-virtual {v9}, Landroid/os/FileObserver;->stopWatching()V

    .line 927
    .end local v9    # "observer":Landroid/os/FileObserver;
    :cond_4
    const/4 v7, 0x0

    .line 928
    .local v7, "lastTracesFile":Ljava/io/File;
    const/4 v2, 0x0

    .line 929
    .local v2, "curTracesFile":Ljava/io/File;
    const/4 v6, 0x5

    .end local v2    # "curTracesFile":Ljava/io/File;
    .end local v7    # "lastTracesFile":Ljava/io/File;
    .local v6, "i":I
    :goto_1
    if-ltz v6, :cond_7

    .line 930
    sget-object v16, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v17, "slow_app_%s_%02d.txt"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object p3, v18, v19

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    const/16 v20, 0x1

    aput-object v19, v18, v20

    invoke-static/range {v16 .. v18}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 931
    .local v8, "name":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v12, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 932
    .local v2, "curTracesFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v16

    if-eqz v16, :cond_5

    .line 933
    if-eqz v7, :cond_6

    .line 934
    invoke-virtual {v2, v7}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 939
    :cond_5
    :goto_2
    move-object v7, v2

    .line 929
    .local v7, "lastTracesFile":Ljava/io/File;
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 901
    .end local v2    # "curTracesFile":Ljava/io/File;
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .end local v6    # "i":I
    .end local v7    # "lastTracesFile":Ljava/io/File;
    .end local v8    # "name":Ljava/lang/String;
    .end local v11    # "sb":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v3

    .line 902
    .local v3, "e":Ljava/io/IOException;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Unable to dump app traces file: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v0, v3}, Landroid/os/AnrMonitor;->logDumpTrace(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 946
    invoke-static {v10}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 903
    return-void

    .line 916
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "observer":Landroid/os/FileObserver;
    .restart local v11    # "sb":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v16

    :try_start_9
    monitor-exit v9

    throw v16
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 920
    :catch_1
    move-exception v4

    .local v4, "e":Ljava/lang/InterruptedException;
    goto :goto_0

    .line 922
    .end local v4    # "e":Ljava/lang/InterruptedException;
    :catchall_1
    move-exception v16

    .line 923
    :try_start_a
    invoke-virtual {v9}, Landroid/os/FileObserver;->stopWatching()V

    .line 922
    throw v16
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 945
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .end local v9    # "observer":Landroid/os/FileObserver;
    .end local v11    # "sb":Ljava/lang/StringBuilder;
    .end local v12    # "tracesDir":Ljava/io/File;
    .end local v13    # "tracesFile":Ljava/io/File;
    .end local v15    # "tracesTmp":Ljava/io/File;
    :catchall_2
    move-exception v16

    .line 946
    invoke-static {v10}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 945
    throw v16

    .line 936
    .restart local v2    # "curTracesFile":Ljava/io/File;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "i":I
    .restart local v8    # "name":Ljava/lang/String;
    .restart local v11    # "sb":Ljava/lang/StringBuilder;
    .restart local v12    # "tracesDir":Ljava/io/File;
    .restart local v13    # "tracesFile":Ljava/io/File;
    .restart local v15    # "tracesTmp":Ljava/io/File;
    :cond_6
    :try_start_b
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_2

    .line 941
    .end local v2    # "curTracesFile":Ljava/io/File;
    .end local v8    # "name":Ljava/lang/String;
    :cond_7
    invoke-virtual {v13, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 942
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v16

    if-eqz v16, :cond_8

    .line 943
    invoke-virtual {v15, v13}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 946
    :cond_8
    invoke-static {v10}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 867
    return-void
.end method

.method static finishActivity(Lcom/android/server/am/ActivityManagerService;Landroid/os/IBinder;ILandroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "resultCode"    # I
    .param p3, "resultData"    # Landroid/content/Intent;

    .prologue
    .line 271
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/am/ExtraActivityManagerService;->finishActivity(Lcom/android/server/am/ActivityManagerService;Landroid/os/IBinder;ILandroid/content/Intent;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method static finishBooting(Lcom/android/server/am/ActivityManagerService;)V
    .locals 1
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    .line 260
    invoke-static {p0}, Lcom/android/server/am/ExtraActivityManagerService;->finishBooting(Lcom/android/server/am/ActivityManagerService;)V

    .line 261
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerServiceInjector;->sendFinishBootingBroadcast(Landroid/content/Context;)V

    .line 259
    return-void
.end method

.method public static finishSilentAnr(Lcom/android/server/am/ProcessRecord;)Z
    .locals 4
    .param p0, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    const/4 v3, 0x1

    .line 1045
    sget-boolean v0, Lmiui/os/Build;->IS_STABLE_VERSION:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->isInterestingToUserLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1052
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 1046
    :cond_1
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    sget v1, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v0, v1, :cond_0

    .line 1047
    const-string/jumbo v0, "ActivityManagerServiceInjector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "finish silent ANR: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    iput-boolean v3, p0, Lcom/android/server/am/ProcessRecord;->notResponding:Z

    .line 1049
    const-string/jumbo v0, "bg anr"

    invoke-virtual {p0, v0, v3}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    .line 1050
    return v3
.end method

.method static forceStopUserLocked(ILjava/lang/String;)V
    .locals 0
    .param p0, "userId"    # I
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 386
    invoke-static {p0, p1}, Lcom/android/server/am/ExtraActivityManagerService;->forceStopUserLocked(ILjava/lang/String;)V

    .line 385
    return-void
.end method

.method public static getAppStartMode(ILjava/lang/String;ILjava/lang/String;)I
    .locals 1
    .param p0, "uid"    # I
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "defMode"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 374
    invoke-static {}, Lcom/miui/whetstone/client/WhetstoneClientManager;->AppBGIdleFeatureIsEnable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 375
    return p2

    .line 378
    :cond_0
    if-eqz p3, :cond_2

    const-string/jumbo v0, "com.xiaomi.xmsf"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 379
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 378
    if-eqz v0, :cond_2

    .line 380
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 382
    :cond_2
    invoke-static {p0}, Lcom/miui/whetstone/client/WhetstoneClientManager;->getAppBGIdleLevel(I)I

    move-result v0

    return v0
.end method

.method static getCallingUidPackage(Lcom/android/server/am/ActivityManagerService;Landroid/os/IBinder;)Ljava/lang/String;
    .locals 6
    .param p0, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    const/4 v5, 0x0

    .line 238
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerService;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/server/am/ActivityStack;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    .line 239
    .local v3, "r":Lcom/android/server/am/ActivityRecord;
    if-nez v3, :cond_0

    return-object v5

    .line 240
    :cond_0
    iget v0, v3, Lcom/android/server/am/ActivityRecord;->launchedFromUid:I

    .line 243
    .local v0, "callingUid":I
    if-lez v0, :cond_1

    .line 245
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    invoke-interface {v4, v0}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    .line 246
    .local v2, "packages":[Ljava/lang/String;
    if-eqz v2, :cond_1

    array-length v4, v2

    if-lez v4, :cond_1

    .line 247
    const/4 v4, 0x0

    aget-object v4, v2, v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 249
    .end local v2    # "packages":[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 252
    :cond_1
    return-object v5
.end method

.method static getExtraQueueSize()I
    .locals 1

    .prologue
    .line 1079
    invoke-static {}, Lcom/android/server/am/MiuiBroadcastManager;->getExtraQueueSize()I

    move-result v0

    return v0
.end method

.method static getMiuiActivityController()Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;
    .locals 1

    .prologue
    .line 502
    invoke-static {}, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;->getInstance()Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;

    move-result-object v0

    return-object v0
.end method

.method static getMiuiBroadcastManager(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/MiuiBroadcastManager;
    .locals 1
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    .line 1084
    invoke-static {p0}, Lcom/android/server/am/MiuiBroadcastManager;->getInstance(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/MiuiBroadcastManager;

    move-result-object v0

    return-object v0
.end method

.method static handleExtraConfigurationChangesForSystem(ILandroid/content/res/Configuration;)V
    .locals 0
    .param p0, "changes"    # I
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 256
    invoke-static {p0, p1}, Lcom/android/server/am/ExtraActivityManagerService;->handleExtraConfigurationChangesForSystem(ILandroid/content/res/Configuration;)V

    .line 255
    return-void
.end method

.method static handleWindowManagerAndUserLru(Landroid/content/Context;IIILcom/android/server/wm/WindowManagerService;[I)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I
    .param p2, "userIdOrig"    # I
    .param p3, "oldUserId"    # I
    .param p4, "mWindowManager"    # Lcom/android/server/wm/WindowManagerService;
    .param p5, "mCurrentProfileIds"    # [I

    .prologue
    .line 394
    sget v6, Lcom/android/server/am/ActivityManagerServiceInjector;->sSwitchUserCallingUid:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v6}, Lcom/android/server/am/ExtraActivityManagerService;->handleWindowManagerAndUserLru(Landroid/content/Context;IIILcom/android/server/wm/WindowManagerService;[II)V

    .line 393
    return-void
.end method

.method static ignoreXSpaceUser(Landroid/content/Context;I)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .prologue
    const/4 v2, 0x0

    .line 1110
    invoke-static {p1}, Lmiui/securityspace/XSpaceUserHandle;->isXSpaceUserId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1111
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1112
    const-string/jumbo v1, "xspace_enabled"

    .line 1111
    invoke-static {v0, v1, v2}, Landroid/provider/MiuiSettings$Secure;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1116
    :cond_0
    return v2

    .line 1113
    :cond_1
    const-string/jumbo v0, "ActivityManagerServiceInjector"

    const-string/jumbo v1, "There is no XSpace app, shouldn\'t start XSpace user"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    const/4 v0, 0x1

    return v0
.end method

.method static inResizeWhiteList(Ljava/lang/String;)Z
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1130
    sget-object v1, Lcom/android/server/am/ActivityManagerServiceInjector;->mResizeWhiteList:Ljava/util/HashSet;

    monitor-enter v1

    .line 1131
    :try_start_0
    sget-object v0, Lcom/android/server/am/ActivityManagerServiceInjector;->mResizeWhiteList:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 1130
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static final init(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 197
    sget v0, Lmiui/R$style;->Theme_Light:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->setTheme(I)V

    .line 198
    invoke-static {}, Lcom/android/server/am/ExtraActivityManagerService;->init()V

    .line 196
    return-void
.end method

.method static initExtraQuqueIfNeed(Lcom/android/server/am/ActivityManagerService;I)Z
    .locals 1
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "startIndex"    # I

    .prologue
    .line 1089
    invoke-static {p0}, Lcom/android/server/am/ActivityManagerServiceInjector;->getMiuiBroadcastManager(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/MiuiBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/am/MiuiBroadcastManager;->initExtraQuqueIfNeed(I)Z

    move-result v0

    return v0
.end method

.method static initSettingObserver(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 175
    new-instance v0, Lcom/android/server/am/ActivityManagerServiceInjector$SettingObserver;

    invoke-static {}, Lcom/android/server/MiuiFgThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/ActivityManagerServiceInjector$SettingObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    sput-object v0, Lcom/android/server/am/ActivityManagerServiceInjector;->sSettingObserver:Lcom/android/server/am/ActivityManagerServiceInjector$SettingObserver;

    .line 176
    sget-object v0, Lcom/android/server/am/ActivityManagerServiceInjector;->sSettingObserver:Lcom/android/server/am/ActivityManagerServiceInjector$SettingObserver;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerServiceInjector$SettingObserver;->observe()V

    .line 174
    return-void
.end method

.method static isBoostNeeded(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p0, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p1, "hostingType"    # Ljava/lang/String;
    .param p2, "hostingName"    # Ljava/lang/String;

    .prologue
    .line 1155
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->callerPackage:Ljava/lang/String;

    .line 1157
    .local v0, "callerPackage":Ljava/lang/String;
    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/android/server/am/ActivityManagerServiceInjector;->isSystemPackage(Ljava/lang/String;I)Z

    move-result v2

    .line 1158
    .local v2, "isSystem":Z
    const-string/jumbo v3, "service"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1159
    const-string/jumbo v3, "com.xiaomi.mipush.sdk.PushMessageHandler"

    invoke-virtual {p2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    .line 1158
    if-eqz v3, :cond_0

    .line 1160
    const-string/jumbo v3, "com.xiaomi.xmsf"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 1158
    if-eqz v3, :cond_0

    .line 1160
    move v1, v2

    .line 1161
    :goto_0
    const-string/jumbo v3, "Boost"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "hostingType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", hostingName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1162
    const-string/jumbo v5, ", callerPackage="

    .line 1161
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1162
    const-string/jumbo v5, ", isSystem="

    .line 1161
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1163
    const-string/jumbo v5, ", isBoostNeeded="

    .line 1161
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1163
    const-string/jumbo v5, "."

    .line 1161
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1164
    return v1

    .line 1158
    :cond_0
    const/4 v1, 0x0

    .local v1, "isNeeded":Z
    goto :goto_0
.end method

.method static isExtraQueueEnabled()Z
    .locals 1

    .prologue
    .line 1075
    invoke-static {}, Lcom/android/server/am/MiuiBroadcastManager;->isExtraQueueEnabled()Z

    move-result v0

    return v0
.end method

.method static isFgBroadcastQueue(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/BroadcastQueue;)Z
    .locals 1
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "queue"    # Lcom/android/server/am/BroadcastQueue;

    .prologue
    .line 1105
    invoke-static {p0}, Lcom/android/server/am/ActivityManagerServiceInjector;->getMiuiBroadcastManager(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/MiuiBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/am/MiuiBroadcastManager;->isFgBroadcastQueue(Lcom/android/server/am/BroadcastQueue;)Z

    move-result v0

    return v0
.end method

.method static isGetTasksOpAllowed(Lcom/android/server/AppOpsService;Ljava/lang/String;II)Z
    .locals 3
    .param p0, "opsService"    # Lcom/android/server/AppOpsService;
    .param p1, "caller"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I

    .prologue
    const/4 v1, 0x0

    .line 487
    sget-boolean v2, Lmiui/os/Build;->IS_CTS_BUILD:Z

    if-nez v2, :cond_0

    const-string/jumbo v2, "getRunningAppProcesses"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 490
    invoke-static {p2}, Lcom/android/server/am/ExtraActivityManagerService;->getPackageNameByPid(I)Ljava/lang/String;

    move-result-object v0

    .line 491
    .local v0, "packageName":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 492
    return v1

    .line 488
    .end local v0    # "packageName":Ljava/lang/String;
    :cond_0
    return v1

    .line 494
    .restart local v0    # "packageName":Ljava/lang/String;
    :cond_1
    const/16 v2, 0x2723

    invoke-virtual {p0, v2, p3, v0}, Lcom/android/server/AppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method static isProcStateBackground(I)Z
    .locals 3
    .param p0, "procState"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 951
    invoke-static {}, Lcom/miui/whetstone/client/WhetstoneClientManager;->AppBGIdleFeatureIsEnable()Z

    move-result v2

    if-nez v2, :cond_1

    .line 952
    const/16 v2, 0x8

    if-lt p0, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    .line 954
    :cond_1
    const/4 v2, 0x4

    if-le p0, v2, :cond_2

    :goto_1
    return v0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method static isProcessNameInList(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 3
    .param p0, "processName"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 180
    sget-object v1, Lcom/android/server/am/ActivityManagerServiceInjector;->sSettingObserver:Lcom/android/server/am/ActivityManagerServiceInjector$SettingObserver;

    if-nez v1, :cond_0

    .line 181
    invoke-static {p1}, Lcom/android/server/am/ActivityManagerServiceInjector;->initSettingObserver(Landroid/content/Context;)V

    .line 185
    :cond_0
    sget-object v2, Lcom/android/server/am/ActivityManagerServiceInjector;->sPackageList:Ljava/util/List;

    monitor-enter v2

    .line 186
    :try_start_0
    sget-object v1, Lcom/android/server/am/ActivityManagerServiceInjector;->sPackageList:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .local v0, "inList":Z
    monitor-exit v2

    .line 189
    if-eqz v0, :cond_1

    .line 190
    const-string/jumbo v1, "ActivityManagerServiceInjector"

    const-string/jumbo v2, "processName in list"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :cond_1
    return v0

    .line 185
    .end local v0    # "inList":Z
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method static isSpecialBroadcast(ILjava/lang/String;)Z
    .locals 2
    .param p0, "callingUid"    # I
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 740
    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x7d0

    if-ne v0, v1, :cond_1

    .line 741
    const-string/jumbo v0, "miui.intent.action.SWITCH_ON_MIUILOGS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 742
    const-string/jumbo v0, "miui.intent.action.SWITCH_OFF_MIUILOGS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 741
    if-nez v0, :cond_0

    .line 743
    const-string/jumbo v0, "miui.intent.action.REVERT_MIUILOG_SWITCHES"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 741
    if-eqz v0, :cond_1

    .line 744
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 747
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method static isStartWithBackupRestriction(Landroid/content/Context;Ljava/lang/String;Lcom/android/server/am/ProcessRecord;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "backupPkgName"    # Ljava/lang/String;
    .param p2, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    const/4 v1, 0x0

    .line 304
    iget-object v2, p2, Lcom/android/server/am/ProcessRecord;->instrumentationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_1

    .line 305
    iget-object v0, p2, Lcom/android/server/am/ProcessRecord;->instrumentationInfo:Landroid/content/pm/ApplicationInfo;

    .line 306
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    :goto_0
    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {p0, v2}, Lmiui/app/backup/BackupManager;->isSysAppForBackup(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    :goto_1
    return v1

    .line 305
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_1
    iget-object v0, p2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    goto :goto_0

    .line 306
    .restart local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_2
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public static isSystemPackage(Ljava/lang/String;I)Z
    .locals 7
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "userId"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1138
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, p0, v6, p1}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1139
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v0, :cond_0

    return v3

    .line 1140
    :cond_0
    iget v2, v0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1141
    .local v2, "flags":I
    and-int/lit8 v5, v2, 0x1

    if-nez v5, :cond_1

    .line 1142
    and-int/lit16 v5, v2, 0x80

    if-eqz v5, :cond_2

    .line 1141
    :cond_1
    :goto_0
    return v3

    :cond_2
    move v3, v4

    .line 1142
    goto :goto_0

    .line 1143
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "flags":I
    :catch_0
    move-exception v1

    .line 1144
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1146
    return v3
.end method

.method static isUserSwitchable(I)Z
    .locals 1
    .param p0, "userId"    # I

    .prologue
    .line 390
    invoke-static {p0}, Lcom/android/server/am/ExtraActivityManagerService;->isUserSwitchable(I)Z

    move-result v0

    return v0
.end method

.method static isVRMode(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 275
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 276
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string/jumbo v3, "vr_mode"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method static final killNativePackageProcesses(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 203
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    const/high16 v4, 0x10000000

    const/4 v5, 0x0

    invoke-interface {v3, p1, v4, v5}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I

    move-result v2

    .line 204
    .local v2, "uid":I
    const-string/jumbo v3, "security"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/security/SecurityManager;

    .line 205
    .local v1, "sm":Lmiui/security/SecurityManager;
    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 206
    invoke-virtual {v1, v2, p1}, Lmiui/security/SecurityManager;->killNativePackageProcesses(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    .end local v1    # "sm":Lmiui/security/SecurityManager;
    .end local v2    # "uid":I
    :cond_0
    :goto_0
    return-void

    .line 207
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method static markAmsReady()V
    .locals 4

    .prologue
    .line 1056
    invoke-static {}, Lmiui/mqsas/sdk/BootEventManager;->getInstance()Lmiui/mqsas/sdk/BootEventManager;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lmiui/mqsas/sdk/BootEventManager;->setAmsReady(J)V

    .line 1055
    return-void
.end method

.method static markPrebootAppCount(I)V
    .locals 1
    .param p0, "count"    # I

    .prologue
    .line 1070
    invoke-static {}, Lmiui/mqsas/sdk/BootEventManager;->getInstance()Lmiui/mqsas/sdk/BootEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmiui/mqsas/sdk/BootEventManager;->setPrebootAppCount(I)V

    .line 1069
    return-void
.end method

.method static markUIReady()V
    .locals 3

    .prologue
    .line 1060
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1061
    .local v0, "bootCompleteTime":J
    invoke-static {}, Lmiui/mqsas/sdk/BootEventManager;->getInstance()Lmiui/mqsas/sdk/BootEventManager;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lmiui/mqsas/sdk/BootEventManager;->setUIReady(J)V

    .line 1062
    invoke-static {}, Lmiui/mqsas/sdk/BootEventManager;->getInstance()Lmiui/mqsas/sdk/BootEventManager;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lmiui/mqsas/sdk/BootEventManager;->setBootComplete(J)V

    .line 1059
    return-void
.end method

.method public static onANR(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Landroid/app/ApplicationErrorReport$CrashInfo;Ljava/lang/String;)V
    .locals 11
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "process"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "activity"    # Lcom/android/server/am/ActivityRecord;
    .param p3, "parent"    # Lcom/android/server/am/ActivityRecord;
    .param p4, "subject"    # Ljava/lang/String;
    .param p5, "report"    # Ljava/lang/String;
    .param p6, "logFile"    # Ljava/io/File;
    .param p7, "crashInfo"    # Landroid/app/ApplicationErrorReport$CrashInfo;
    .param p8, "headline"    # Ljava/lang/String;

    .prologue
    .line 756
    const-string/jumbo v1, "anr"

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-static/range {v0 .. v10}, Lcom/android/server/am/ActivityManagerServiceInjector;->reportANR(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Landroid/app/ApplicationErrorReport$CrashInfo;Ljava/lang/String;)V

    .line 754
    return-void
.end method

.method static declared-synchronized parseDumpArgs(Lcom/android/server/am/ActivityManagerService;[Ljava/lang/String;I)Z
    .locals 16
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "args"    # [Ljava/lang/String;
    .param p2, "startIndex"    # I

    .prologue
    const-class v13, Lcom/android/server/am/ActivityManagerServiceInjector;

    monitor-enter v13

    .line 828
    :try_start_0
    aget-object v5, p1, p2

    .line 829
    .local v5, "cmd":Ljava/lang/String;
    const-string/jumbo v12, "dump-app-trace"

    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v12

    if-eqz v12, :cond_3

    .line 831
    :try_start_1
    sget-boolean v12, Landroid/os/AnrMonitor;->DBG:Z

    if-eqz v12, :cond_0

    .line 832
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "startIndex "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v14, " cmd : "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v14, 0x0

    invoke-static {v12, v14}, Landroid/os/AnrMonitor;->logDumpTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 833
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    move-object/from16 v0, p1

    array-length v12, v0

    if-ge v7, v12, :cond_0

    .line 834
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "args["

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v14, "] "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    aget-object v14, p1, v7

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v14, 0x0

    invoke-static {v12, v14}, Landroid/os/AnrMonitor;->logDumpTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 833
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 837
    .end local v7    # "i":I
    :cond_0
    move-object/from16 v0, p1

    array-length v12, v0

    move/from16 v0, p2

    if-ge v0, v12, :cond_2

    .line 838
    add-int/lit8 p2, p2, 0x1

    .line 839
    aget-object v5, p1, p2

    .line 840
    const-string/jumbo v12, ","

    invoke-virtual {v5, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 841
    .local v4, "arr":[Ljava/lang/String;
    sget-boolean v12, Landroid/os/AnrMonitor;->DBG:Z

    if-eqz v12, :cond_1

    .line 842
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "dump-app-trace cmd : "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v14, 0x0

    invoke-static {v12, v14}, Landroid/os/AnrMonitor;->logDumpTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 843
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_1
    array-length v12, v4

    if-ge v7, v12, :cond_1

    .line 844
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "arr["

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v14, "] "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    aget-object v14, v4, v7

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v14, 0x0

    invoke-static {v12, v14}, Landroid/os/AnrMonitor;->logDumpTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 843
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 847
    .end local v7    # "i":I
    :cond_1
    if-eqz v4, :cond_2

    array-length v12, v4

    const/4 v14, 0x4

    if-ne v12, v14, :cond_2

    .line 848
    const/4 v12, 0x0

    aget-object v12, v4, v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 849
    .local v3, "appPid":I
    const/4 v12, 0x1

    aget-object v9, v4, v12

    .line 850
    .local v9, "processName":Ljava/lang/String;
    const/4 v12, 0x2

    aget-object v2, v4, v12

    .line 851
    .local v2, "appName":Ljava/lang/String;
    const/4 v12, 0x3

    aget-object v8, v4, v12

    .line 852
    .local v8, "msg":Ljava/lang/String;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 853
    .local v10, "start":J
    move-object/from16 v0, p0

    invoke-static {v0, v3, v9, v2, v8}, Lcom/android/server/am/ActivityManagerServiceInjector;->dumpAppTrace(Lcom/android/server/am/ActivityManagerService;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 855
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "dump "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v14, " trace took "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    sub-long/2addr v14, v10

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 856
    const-string/jumbo v14, "ms"

    .line 855
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 856
    const/4 v14, 0x0

    .line 854
    invoke-static {v12, v14}, Landroid/os/AnrMonitor;->logDumpTrace(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 862
    .end local v2    # "appName":Ljava/lang/String;
    .end local v3    # "appPid":I
    .end local v4    # "arr":[Ljava/lang/String;
    .end local v8    # "msg":Ljava/lang/String;
    .end local v9    # "processName":Ljava/lang/String;
    .end local v10    # "start":J
    :cond_2
    :goto_2
    const/4 v12, 0x1

    monitor-exit v13

    return v12

    .line 859
    :catch_0
    move-exception v6

    .line 860
    .local v6, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v12, "parseDumpArgs failed!"

    invoke-static {v12, v6}, Landroid/os/AnrMonitor;->logDumpTrace(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .end local v5    # "cmd":Ljava/lang/String;
    .end local v6    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v12

    monitor-exit v13

    throw v12

    .line 864
    .restart local v5    # "cmd":Ljava/lang/String;
    :cond_3
    const/4 v12, 0x0

    monitor-exit v13

    return v12
.end method

.method public static processInitBefore(Ljava/lang/String;)Z
    .locals 2
    .param p0, "processName"    # Ljava/lang/String;

    .prologue
    .line 315
    const/4 v0, 0x1

    .line 316
    .local v0, "hasInit":Z
    if-eqz p0, :cond_0

    .line 317
    sget-object v1, Lcom/android/server/am/ActivityManagerServiceInjector;->mProtectedProcessList:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    .line 319
    :cond_0
    :goto_0
    return v0

    .line 317
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static reportANR(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Landroid/app/ApplicationErrorReport$CrashInfo;Ljava/lang/String;)V
    .locals 6
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "eventType"    # Ljava/lang/String;
    .param p2, "process"    # Lcom/android/server/am/ProcessRecord;
    .param p3, "processName"    # Ljava/lang/String;
    .param p4, "activity"    # Lcom/android/server/am/ActivityRecord;
    .param p5, "parent"    # Lcom/android/server/am/ActivityRecord;
    .param p6, "subject"    # Ljava/lang/String;
    .param p7, "report"    # Ljava/lang/String;
    .param p8, "logFile"    # Ljava/io/File;
    .param p9, "crashInfo"    # Landroid/app/ApplicationErrorReport$CrashInfo;
    .param p10, "headline"    # Ljava/lang/String;

    .prologue
    .line 767
    const/4 v0, 0x0

    .line 768
    .local v0, "bgAnr":Z
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 769
    const-string/jumbo v4, "anr_show_background"

    const/4 v5, 0x0

    .line 768
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_4

    const/4 v2, 0x1

    .line 770
    .local v2, "showBackground":Z
    :goto_0
    if-nez v2, :cond_0

    invoke-virtual {p2}, Lcom/android/server/am/ProcessRecord;->isInterestingToUserLocked()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 773
    :cond_0
    :goto_1
    new-instance v1, Lmiui/mqsas/sdk/event/AnrEvent;

    invoke-direct {v1}, Lmiui/mqsas/sdk/event/AnrEvent;-><init>()V

    .line 774
    .local v1, "event":Lmiui/mqsas/sdk/event/AnrEvent;
    iget v3, p2, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v1, v3}, Lmiui/mqsas/sdk/event/AnrEvent;->setPid(I)V

    .line 775
    invoke-virtual {v1, p3}, Lmiui/mqsas/sdk/event/AnrEvent;->setProcessName(Ljava/lang/String;)V

    .line 776
    const-string/jumbo v3, "system"

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, p2, Lcom/android/server/am/ProcessRecord;->uid:I

    const/16 v4, 0x3e8

    if-eq v3, v4, :cond_1

    .line 777
    iget-object v3, p2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 776
    .end local p3    # "processName":Ljava/lang/String;
    :cond_1
    invoke-virtual {v1, p3}, Lmiui/mqsas/sdk/event/AnrEvent;->setPackageName(Ljava/lang/String;)V

    .line 778
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lmiui/mqsas/sdk/event/AnrEvent;->setTimeStamp(J)V

    .line 779
    invoke-virtual {v1, p7}, Lmiui/mqsas/sdk/event/AnrEvent;->setReason(Ljava/lang/String;)V

    .line 780
    invoke-virtual {v1, p6}, Lmiui/mqsas/sdk/event/AnrEvent;->setCpuInfo(Ljava/lang/String;)V

    .line 781
    invoke-virtual {v1, v0}, Lmiui/mqsas/sdk/event/AnrEvent;->setBgAnr(Z)V

    .line 782
    if-eqz p4, :cond_2

    .line 783
    iget-object v3, p4, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lmiui/mqsas/sdk/event/AnrEvent;->setTargetActivity(Ljava/lang/String;)V

    .line 785
    :cond_2
    if-eqz p5, :cond_3

    .line 786
    invoke-virtual {p5}, Lcom/android/server/am/ActivityRecord;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lmiui/mqsas/sdk/event/AnrEvent;->setParent(Ljava/lang/String;)V

    .line 789
    :cond_3
    invoke-static {}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getInstance()Lmiui/mqsas/sdk/MQSEventManagerDelegate;

    move-result-object v3

    invoke-virtual {v3, v1}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->reportAnrEvent(Lmiui/mqsas/sdk/event/AnrEvent;)V

    .line 790
    invoke-static {p2, p4, v1}, Lcom/android/server/am/ExtraActivityManagerService;->reportAnr(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Lmiui/mqsas/sdk/event/AnrEvent;)V

    .line 765
    return-void

    .line 768
    .end local v1    # "event":Lmiui/mqsas/sdk/event/AnrEvent;
    .end local v2    # "showBackground":Z
    .restart local p3    # "processName":Ljava/lang/String;
    :cond_4
    const/4 v2, 0x0

    goto :goto_0

    .line 770
    .restart local v2    # "showBackground":Z
    :cond_5
    iget v3, p2, Lcom/android/server/am/ProcessRecord;->pid:I

    sget v4, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v3, v4, :cond_0

    .line 771
    const/4 v0, 0x1

    goto :goto_1
.end method

.method static reportBootEvent()V
    .locals 0

    .prologue
    .line 1066
    invoke-static {}, Lmiui/mqsas/sdk/BootEventManager;->getInstance()Lmiui/mqsas/sdk/BootEventManager;

    invoke-static {}, Lmiui/mqsas/sdk/BootEventManager;->reportBootEvent()V

    .line 1065
    return-void
.end method

.method public static restartDiedAppOrNot(Lcom/android/server/am/ProcessRecord;ZZ)Z
    .locals 8
    .param p0, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p1, "isHomeApp"    # Z
    .param p2, "allowRestart"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 460
    invoke-static {}, Lcom/miui/whetstone/process/WtServiceControlEntry;->isServiceControlEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 462
    return p2

    .line 464
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x1b7740

    sub-long v0, v2, v4

    .line 465
    .local v0, "oldTime":J
    if-nez p1, :cond_1

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-static {v2}, Lcom/miui/whetstone/process/WtServiceControlEntry;->isAppInServiceControlWhitelist(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 467
    :cond_1
    return v7

    .line 468
    :cond_2
    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->killedByAm:Z

    if-nez v2, :cond_3

    .line 469
    iget v2, p0, Lcom/android/server/am/ProcessRecord;->curProcState:I

    const/16 v3, 0xa

    if-le v2, v3, :cond_3

    .line 470
    iget-wide v2, p0, Lcom/android/server/am/ProcessRecord;->lastActivityTime:J

    cmp-long v2, v2, v0

    if-gez v2, :cond_3

    .line 471
    iget v2, p0, Lcom/android/server/am/ProcessRecord;->curAdj:I

    const/16 v3, 0x1f4

    if-le v2, v3, :cond_3

    .line 473
    const-string/jumbo v2, "ActivityManagerInjector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " is a long inactive service(millionsecond) "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/server/am/ProcessRecord;->lastActivityTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " with adj "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/am/ProcessRecord;->curAdj:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",do not allow restart"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    return v6

    .line 475
    :cond_3
    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->killedByAm:Z

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/android/server/am/ProcessRecord;->curAdj:I

    const/16 v3, 0x384

    if-lt v2, v3, :cond_4

    iget v2, p0, Lcom/android/server/am/ProcessRecord;->curProcState:I

    const/16 v3, 0xe

    if-lt v2, v3, :cond_4

    .line 477
    const-string/jumbo v2, "ActivityManagerInjector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " is killed by AMS with adj "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/am/ProcessRecord;->curAdj:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ,do not allow restart"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    return v6

    .line 481
    :cond_4
    return v7
.end method

.method public static restartDiedAppOrNot(Lcom/android/server/am/ProcessRecord;ZZZ)Z
    .locals 1
    .param p0, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p1, "isHomeApp"    # Z
    .param p2, "allowRestart"    # Z
    .param p3, "fromBinderDied"    # Z

    .prologue
    .line 452
    if-eqz p3, :cond_0

    .line 453
    invoke-static {p0, p1, p2}, Lcom/android/server/am/ActivityManagerServiceInjector;->restartDiedAppOrNot(Lcom/android/server/am/ProcessRecord;ZZ)Z

    move-result v0

    return v0

    .line 455
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method static saveAnrInfoBeforeDumpTrace(Lcom/android/server/am/ActivityManagerService;Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Ljava/util/ArrayList;Landroid/util/SparseArray;[Ljava/lang/String;)V
    .locals 10
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "oriInfo"    # Ljava/lang/StringBuilder;
    .param p2, "extraInfo"    # Ljava/lang/String;
    .param p3, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p6, "nativeProcs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/ActivityManagerService;",
            "Ljava/lang/StringBuilder;",
            "Ljava/lang/String;",
            "Lcom/android/server/am/ProcessRecord;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Boolean;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 816
    .local p4, "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p5, "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    const/4 v8, 0x0

    .line 817
    .local v8, "bgAnr":Z
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 818
    const-string/jumbo v1, "anr_show_background"

    const/4 v2, 0x0

    .line 817
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v9, 0x1

    .line 819
    .local v9, "showBackground":Z
    :goto_0
    if-nez v9, :cond_0

    invoke-virtual {p3}, Lcom/android/server/am/ProcessRecord;->isInterestingToUserLocked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 822
    :cond_0
    :goto_1
    iget-object v2, p3, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v3, p3, Lcom/android/server/am/ProcessRecord;->pid:I

    .line 823
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerService;->isUserAMonkey()Z

    move-result v7

    move-object v0, p1

    move-object v1, p2

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    .line 822
    invoke-static/range {v0 .. v8}, Landroid/os/AnrMonitor;->dumpAnrInfo(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;Landroid/util/SparseArray;[Ljava/lang/String;ZZ)Ljava/io/File;

    .line 815
    return-void

    .line 817
    .end local v9    # "showBackground":Z
    :cond_1
    const/4 v9, 0x0

    goto :goto_0

    .line 819
    .restart local v9    # "showBackground":Z
    :cond_2
    iget v0, p3, Lcom/android/server/am/ProcessRecord;->pid:I

    sget v1, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v0, v1, :cond_0

    .line 820
    const/4 v8, 0x1

    goto :goto_1
.end method

.method public static sendFinishBootingBroadcast(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 265
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "miui.intent.action.FINISH_BOOTING"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 266
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 267
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 264
    return-void
.end method

.method public static setForkedProcessGroup(IIILjava/lang/String;)V
    .locals 2
    .param p0, "puid"    # I
    .param p1, "ppid"    # I
    .param p2, "pgroup"    # I
    .param p3, "processName"    # Ljava/lang/String;

    .prologue
    .line 969
    sget-boolean v1, Lcom/android/server/am/ActivityManagerServiceInjector;->enableTaskIsolation:Z

    if-eqz v1, :cond_2

    .line 970
    const/4 v0, 0x0

    .line 971
    .local v0, "group":I
    const/4 v1, 0x5

    if-eq p2, v1, :cond_0

    const/4 v1, -0x1

    if-ne p2, v1, :cond_3

    .line 973
    :cond_0
    :goto_0
    const/16 v0, 0x9

    .line 975
    :cond_1
    invoke-static {p0, p1, v0, p3}, Lcom/android/server/am/ExtraActivityManagerService;->setForkedProcessGroup(IIILjava/lang/String;)V

    .line 968
    .end local v0    # "group":I
    :cond_2
    return-void

    .line 972
    .restart local v0    # "group":I
    :cond_3
    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    goto :goto_0
.end method

.method public static setProcessInitState(Ljava/lang/String;)Z
    .locals 3
    .param p0, "processName"    # Ljava/lang/String;

    .prologue
    .line 323
    if-eqz p0, :cond_0

    sget-object v0, Lcom/android/server/am/ActivityManagerServiceInjector;->mProtectedProcessList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 324
    sget-object v0, Lcom/android/server/am/ActivityManagerServiceInjector;->mProtectedProcessList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 325
    const-string/jumbo v0, "ActivityManagerServiceInjector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Remove:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 326
    const-string/jumbo v2, " in mProtectedProcessList"

    .line 325
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    const/4 v0, 0x1

    return v0

    .line 329
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static setResizeWhiteList(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1121
    .local p0, "whiteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    .line 1122
    sget-object v1, Lcom/android/server/am/ActivityManagerServiceInjector;->mResizeWhiteList:Ljava/util/HashSet;

    monitor-enter v1

    .line 1123
    :try_start_0
    sget-object v0, Lcom/android/server/am/ActivityManagerServiceInjector;->mResizeWhiteList:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 1124
    sget-object v0, Lcom/android/server/am/ActivityManagerServiceInjector;->mResizeWhiteList:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 1120
    :cond_0
    return-void

    .line 1122
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static setSwitchUserCallingUid(I)V
    .locals 0
    .param p0, "uid"    # I

    .prologue
    .line 498
    sput p0, Lcom/android/server/am/ActivityManagerServiceInjector;->sSwitchUserCallingUid:I

    .line 497
    return-void
.end method

.method static shouldAddPersistApp(Landroid/content/pm/ApplicationInfo;)Z
    .locals 3
    .param p0, "info"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 732
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v1, "com.securespaces.android.ssm.service"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v0, :cond_1

    .line 736
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 733
    :cond_1
    const-string/jumbo v0, "ActivityManagerServiceInjector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "persist app : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "should not add to start"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    const/4 v0, 0x0

    return v0
.end method

.method static showAppCrashDialog(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/AppErrorDialog$Data;)Z
    .locals 7
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "data"    # Lcom/android/server/am/AppErrorDialog$Data;

    .prologue
    const/4 v6, 0x1

    .line 217
    iget-object v2, p1, Lcom/android/server/am/AppErrorDialog$Data;->proc:Lcom/android/server/am/ProcessRecord;

    .line 218
    .local v2, "proc":Lcom/android/server/am/ProcessRecord;
    iget-object v3, p1, Lcom/android/server/am/AppErrorDialog$Data;->result:Lcom/android/server/am/AppErrorResult;

    .line 219
    .local v3, "res":Lcom/android/server/am/AppErrorResult;
    iget-object v0, p1, Lcom/android/server/am/AppErrorDialog$Data;->crash:Landroid/app/ApplicationErrorReport$CrashInfo;

    .line 221
    .local v0, "crashInfo":Landroid/app/ApplicationErrorReport$CrashInfo;
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v4, v5, v0, v6}, Lmiui/util/ErrorReport;->sendExceptionReport(Landroid/content/Context;Ljava/lang/String;Landroid/app/ApplicationErrorReport$CrashInfo;I)V

    .line 224
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/provider/MiuiSettings$Secure;->isForceCloseDialogEnabled(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 225
    new-instance v1, Lcom/android/server/am/AppErrorDialog;

    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4, p0, p1}, Lcom/android/server/am/AppErrorDialog;-><init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/AppErrorDialog$Data;)V

    .line 227
    .local v1, "d":Landroid/app/Dialog;
    iput-object v1, v2, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    .line 234
    .end local v1    # "d":Landroid/app/Dialog;
    :goto_0
    return v6

    .line 232
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/server/am/AppErrorResult;->set(I)V

    goto :goto_0
.end method

.method static showMiuiAppCrashDialog(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/AppErrorDialog$Data;Landroid/content/Context;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/AppErrorResult;)V
    .locals 3
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "data"    # Lcom/android/server/am/AppErrorDialog$Data;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "proc"    # Lcom/android/server/am/ProcessRecord;
    .param p4, "res"    # Lcom/android/server/am/AppErrorResult;

    .prologue
    .line 288
    invoke-static {p2}, Lcom/android/server/am/ActivityManagerServiceInjector;->isVRMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 289
    invoke-static {p2}, Lcom/android/server/am/ActivityManagerServiceInjector;->broadcastVRAppFC(Landroid/content/Context;)V

    .line 290
    return-void

    .line 293
    :cond_0
    invoke-static {p0, p1}, Lcom/android/server/am/ActivityManagerServiceInjector;->showAppCrashDialog(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/AppErrorDialog$Data;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 294
    new-instance v0, Lcom/android/server/am/AppErrorDialog$Data;

    invoke-direct {v0}, Lcom/android/server/am/AppErrorDialog$Data;-><init>()V

    .line 295
    .local v0, "Dialogdata":Lcom/android/server/am/AppErrorDialog$Data;
    iput-object p4, v0, Lcom/android/server/am/AppErrorDialog$Data;->result:Lcom/android/server/am/AppErrorResult;

    .line 296
    iput-object p3, v0, Lcom/android/server/am/AppErrorDialog$Data;->proc:Lcom/android/server/am/ProcessRecord;

    .line 297
    new-instance v1, Lcom/android/server/am/AppErrorDialog;

    invoke-direct {v1, p2, p0, v0}, Lcom/android/server/am/AppErrorDialog;-><init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/AppErrorDialog$Data;)V

    .line 299
    .local v1, "d":Landroid/app/Dialog;
    iput-object v1, p3, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    .line 287
    .end local v0    # "Dialogdata":Lcom/android/server/am/AppErrorDialog$Data;
    .end local v1    # "d":Landroid/app/Dialog;
    :cond_1
    return-void
.end method

.method static showSwitchingDialog(Lcom/android/server/am/ActivityManagerService;ILandroid/os/Handler;)Z
    .locals 2
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "mTargetUserId"    # I
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 420
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Lcom/android/server/am/ActivityManagerServiceInjector;->setSwitchUserCallingUid(I)V

    .line 421
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {v1}, Lcom/android/server/am/ExtraActivityManagerService;->getPackageNameByPid(I)Ljava/lang/String;

    move-result-object v0

    .line 422
    .local v0, "pkgName":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string/jumbo v1, "com.android.systemui"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "com.android.keyguard"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 423
    :cond_0
    const/4 v1, 0x0

    return v1

    .line 425
    :cond_1
    new-instance v1, Lcom/android/server/am/ActivityManagerServiceInjector$1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/am/ActivityManagerServiceInjector$1;-><init>(Lcom/android/server/am/ActivityManagerService;I)V

    invoke-virtual {p2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 438
    const/4 v1, 0x1

    return v1
.end method

.method public static verifyForegroundService(Lcom/android/server/am/ServiceRecord;Landroid/app/Notification;)V
    .locals 5
    .param p0, "r"    # Lcom/android/server/am/ServiceRecord;
    .param p1, "notification"    # Landroid/app/Notification;

    .prologue
    const/4 v4, 0x1

    .line 1028
    sget-boolean v2, Lcom/android/server/am/ActivityManagerServiceInjector;->enableAdjDowngrade:Z

    if-eqz v2, :cond_3

    .line 1029
    const/4 v1, 0x1

    .line 1030
    .local v1, "shouldVerify":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Lcom/android/server/am/ActivityManagerServiceInjector;->skipVerifyList:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 1031
    iget-object v2, p0, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    sget-object v3, Lcom/android/server/am/ActivityManagerServiceInjector;->skipVerifyList:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1032
    const/4 v1, 0x0

    .line 1036
    :cond_0
    iget-object v2, p1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    if-nez v2, :cond_2

    if-eqz v1, :cond_2

    .line 1027
    .end local v0    # "i":I
    .end local v1    # "shouldVerify":Z
    :goto_1
    return-void

    .line 1030
    .restart local v0    # "i":I
    .restart local v1    # "shouldVerify":Z
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1037
    :cond_2
    iput-boolean v4, p0, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    goto :goto_1

    .line 1041
    .end local v0    # "i":I
    .end local v1    # "shouldVerify":Z
    :cond_3
    iput-boolean v4, p0, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    goto :goto_1
.end method
