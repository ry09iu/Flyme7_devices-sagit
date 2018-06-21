.class public Lmiui/security/WakePathChecker;
.super Ljava/lang/Object;
.source "WakePathChecker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/security/WakePathChecker$WakePathRuleData;
    }
.end annotation


# static fields
.field private static final CALL_LIST_LOG_MAP_MAX_SIZE:I = 0xc8

.field private static final GET_CONTENT_PROVIDER_RULE_INFOS_LIST_INDEX:I = 0x2

.field private static final RULE_INFOS_LIST_COUNT:I = 0x4

.field private static final SEND_BROADCAST_RULE_INFOS_LIST_INDEX:I = 0x1

.field private static final START_ACTIVITY_RULE_INFOS_LIST_INDEX:I = 0x0

.field private static final START_SERVICE_RULE_INFOS_LIST_INDEX:I = 0x3

.field private static final TAG:Ljava/lang/String;

.field public static final WAKEPATH_CONFIRM_DIALOG_WHITELIST_TYPE_CALLEE:I = 0x1

.field public static final WAKEPATH_CONFIRM_DIALOG_WHITELIST_TYPE_CALLER:I = 0x2

.field private static sInstance:Lmiui/security/WakePathChecker;


# instance fields
.field private mAppOpsService:Lcom/android/internal/app/IAppOpsService;

.field private mBindServiceCheckActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mCallListLogLocker:Ljava/lang/Object;

.field mCallListLogMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lmiui/security/WakePathRuleInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCallback:Lcom/android/internal/app/IWakePathCallback;

.field mLauncherPackageNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mTrackCallListLogEnabled:Z

.field private mUserWakePathRuleDataMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lmiui/security/WakePathChecker$WakePathRuleData;",
            ">;"
        }
    .end annotation
.end field

.field private mWakePathCallerWhiteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mWakePathConfirmDialogCallerWhitelist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mWakePathConfirmDialogWhitelist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -wrap0(Lmiui/security/WakePathChecker;Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Lmiui/security/WakePathChecker;->updateLauncherPackageNames(Landroid/content/Context;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lmiui/security/WakePathChecker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/security/WakePathChecker;->TAG:Ljava/lang/String;

    .line 36
    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lmiui/security/WakePathChecker;->mCallListLogLocker:Ljava/lang/Object;

    .line 70
    sget-boolean v2, Lmiui/os/Build;->IS_STABLE_VERSION:Z

    if-nez v2, :cond_0

    sget-boolean v2, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v2, :cond_2

    :cond_0
    :goto_0
    iput-boolean v1, p0, Lmiui/security/WakePathChecker;->mTrackCallListLogEnabled:Z

    .line 71
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lmiui/security/WakePathChecker;->mUserWakePathRuleDataMap:Ljava/util/Map;

    .line 72
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lmiui/security/WakePathChecker;->mWakePathConfirmDialogWhitelist:Ljava/util/List;

    .line 73
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lmiui/security/WakePathChecker;->mWakePathCallerWhiteList:Ljava/util/List;

    .line 74
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lmiui/security/WakePathChecker;->mWakePathConfirmDialogCallerWhitelist:Ljava/util/List;

    .line 75
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lmiui/security/WakePathChecker;->mBindServiceCheckActions:Ljava/util/List;

    .line 76
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lmiui/security/WakePathChecker;->mLauncherPackageNames:Ljava/util/List;

    .line 80
    iget-boolean v1, p0, Lmiui/security/WakePathChecker;->mTrackCallListLogEnabled:Z

    if-eqz v1, :cond_1

    .line 81
    new-instance v1, Ljava/util/HashMap;

    const/16 v2, 0xc8

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lmiui/security/WakePathChecker;->mCallListLogMap:Ljava/util/Map;

    .line 83
    :cond_1
    iget-object v1, p0, Lmiui/security/WakePathChecker;->mWakePathConfirmDialogWhitelist:Ljava/util/List;

    const-string/jumbo v2, "com.mfashiongallery.express"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    iget-object v1, p0, Lmiui/security/WakePathChecker;->mWakePathConfirmDialogWhitelist:Ljava/util/List;

    const-string/jumbo v2, "com.mi.dlabs.vr.thor"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    iget-object v1, p0, Lmiui/security/WakePathChecker;->mWakePathCallerWhiteList:Ljava/util/List;

    const-string/jumbo v2, "com.miui.home"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    iget-object v1, p0, Lmiui/security/WakePathChecker;->mWakePathCallerWhiteList:Ljava/util/List;

    const-string/jumbo v2, "com.miui.securitycenter"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    iget-object v1, p0, Lmiui/security/WakePathChecker;->mBindServiceCheckActions:Ljava/util/List;

    const-string/jumbo v2, "miui.action.CAMERA_EMPTY_SERVICE"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    const-string/jumbo v1, "appops"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 92
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    move-result-object v1

    iput-object v1, p0, Lmiui/security/WakePathChecker;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    .line 79
    return-void

    .line 70
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static declared-synchronized getInstance()Lmiui/security/WakePathChecker;
    .locals 2

    .prologue
    const-class v1, Lmiui/security/WakePathChecker;

    monitor-enter v1

    .line 96
    :try_start_0
    sget-object v0, Lmiui/security/WakePathChecker;->sInstance:Lmiui/security/WakePathChecker;

    if-nez v0, :cond_0

    .line 97
    new-instance v0, Lmiui/security/WakePathChecker;

    invoke-direct {v0}, Lmiui/security/WakePathChecker;-><init>()V

    sput-object v0, Lmiui/security/WakePathChecker;->sInstance:Lmiui/security/WakePathChecker;

    .line 100
    :cond_0
    sget-object v0, Lmiui/security/WakePathChecker;->sInstance:Lmiui/security/WakePathChecker;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getWakePathRuleDataByUser(I)Lmiui/security/WakePathChecker$WakePathRuleData;
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 122
    invoke-static {p1}, Lmiui/securityspace/XSpaceUserHandle;->isXSpaceUserId(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 123
    :cond_0
    const/4 p1, 0x0

    .line 126
    :cond_1
    iget-object v2, p0, Lmiui/security/WakePathChecker;->mUserWakePathRuleDataMap:Ljava/util/Map;

    monitor-enter v2

    .line 127
    :try_start_0
    iget-object v1, p0, Lmiui/security/WakePathChecker;->mUserWakePathRuleDataMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/security/WakePathChecker$WakePathRuleData;

    .line 128
    .local v0, "wakePathRuleData":Lmiui/security/WakePathChecker$WakePathRuleData;
    if-nez v0, :cond_2

    .line 129
    new-instance v0, Lmiui/security/WakePathChecker$WakePathRuleData;

    .end local v0    # "wakePathRuleData":Lmiui/security/WakePathChecker$WakePathRuleData;
    invoke-direct {v0, p0}, Lmiui/security/WakePathChecker$WakePathRuleData;-><init>(Lmiui/security/WakePathChecker;)V

    .line 130
    .restart local v0    # "wakePathRuleData":Lmiui/security/WakePathChecker$WakePathRuleData;
    iget-object v1, p0, Lmiui/security/WakePathChecker;->mUserWakePathRuleDataMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit v2

    .line 133
    return-object v0

    .line 126
    .end local v0    # "wakePathRuleData":Lmiui/security/WakePathChecker$WakePathRuleData;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private trackCallListInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 12
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "caller"    # Ljava/lang/String;
    .param p4, "callee"    # Ljava/lang/String;
    .param p5, "wakeType"    # I

    .prologue
    .line 370
    iget-object v11, p0, Lmiui/security/WakePathChecker;->mCallListLogLocker:Ljava/lang/Object;

    monitor-enter v11

    .line 371
    :try_start_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 372
    :cond_0
    sget-object v2, Lmiui/security/WakePathChecker;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "MIUILOG-WAKEPATH trackCallListInfo: invalid parameter caller="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " callee="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v11

    .line 373
    return-void

    .line 375
    :cond_1
    :try_start_1
    iget-object v2, p0, Lmiui/security/WakePathChecker;->mCallListLogMap:Ljava/util/Map;

    if-eqz v2, :cond_4

    .line 377
    iget-object v2, p0, Lmiui/security/WakePathChecker;->mCallListLogMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    const/16 v3, 0xc8

    if-lt v2, v3, :cond_2

    monitor-exit v11

    .line 378
    return-void

    .line 382
    :cond_2
    :try_start_2
    invoke-static/range {p1 .. p4}, Lmiui/security/WakePathRuleInfo;->getHashCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 383
    .local v9, "hashCode":I
    if-nez v9, :cond_3

    .line 384
    sget-object v2, Lmiui/security/WakePathChecker;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "MIUILOG-WAKEPATH trackCallListInfo: hashCode == 0,(action ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " className="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 385
    const-string/jumbo v4, " caller="

    .line 384
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 385
    const-string/jumbo v4, " callee="

    .line 384
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 385
    const-string/jumbo v4, " wakeType="

    .line 384
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 385
    const-string/jumbo v4, ")"

    .line 384
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v11

    .line 386
    return-void

    .line 389
    :cond_3
    :try_start_3
    iget-object v2, p0, Lmiui/security/WakePathChecker;->mCallListLogMap:Ljava/util/Map;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lmiui/security/WakePathRuleInfo;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 390
    .local v10, "wakePathRuleInfo":Lmiui/security/WakePathRuleInfo;
    if-nez v10, :cond_4

    .line 392
    :try_start_4
    new-instance v1, Lmiui/security/WakePathRuleInfo;

    const/4 v7, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    invoke-direct/range {v1 .. v7}, Lmiui/security/WakePathRuleInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 396
    .end local v10    # "wakePathRuleInfo":Lmiui/security/WakePathRuleInfo;
    .local v1, "wakePathRuleInfo":Lmiui/security/WakePathRuleInfo;
    :goto_0
    if-eqz v1, :cond_4

    .line 397
    :try_start_5
    iget-object v2, p0, Lmiui/security/WakePathChecker;->mCallListLogMap:Ljava/util/Map;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .end local v1    # "wakePathRuleInfo":Lmiui/security/WakePathRuleInfo;
    .end local v9    # "hashCode":I
    :cond_4
    monitor-exit v11

    .line 368
    return-void

    .line 393
    .restart local v9    # "hashCode":I
    .restart local v10    # "wakePathRuleInfo":Lmiui/security/WakePathRuleInfo;
    :catch_0
    move-exception v8

    .line 394
    .local v8, "e":Ljava/lang/Exception;
    :try_start_6
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object v1, v10

    .end local v10    # "wakePathRuleInfo":Lmiui/security/WakePathRuleInfo;
    .restart local v1    # "wakePathRuleInfo":Lmiui/security/WakePathRuleInfo;
    goto :goto_0

    .line 370
    .end local v1    # "wakePathRuleInfo":Lmiui/security/WakePathRuleInfo;
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v9    # "hashCode":I
    :catchall_0
    move-exception v2

    monitor-exit v11

    throw v2
.end method

.method private updateLauncherPackageNames(Landroid/content/Context;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 453
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 455
    .local v5, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v9, "android.intent.action.MAIN"

    invoke-direct {v1, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 456
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v9, "android.intent.category.HOME"

    invoke-virtual {v1, v9}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 459
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 460
    .local v4, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v9, 0x0

    invoke-virtual {v4, v1, v9}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    .line 462
    .local v6, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "ri$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 463
    .local v7, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v9, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 464
    sget-object v9, Lmiui/security/WakePathChecker;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "updateLauncherPackageNames ="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 466
    .end local v4    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v6    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v7    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v8    # "ri$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v0

    .line 467
    .local v0, "e":Ljava/lang/Exception;
    sget-object v9, Lmiui/security/WakePathChecker;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "updateLauncherPackageNames"

    invoke-static {v9, v10, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 470
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    iget-object v10, p0, Lmiui/security/WakePathChecker;->mLauncherPackageNames:Ljava/util/List;

    monitor-enter v10

    .line 471
    :try_start_1
    iget-object v9, p0, Lmiui/security/WakePathChecker;->mLauncherPackageNames:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->clear()V

    .line 472
    if-eqz v5, :cond_1

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_1

    .line 473
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "name$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 474
    .local v2, "name":Ljava/lang/String;
    iget-object v9, p0, Lmiui/security/WakePathChecker;->mLauncherPackageNames:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 470
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "name$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v9

    monitor-exit v10

    throw v9

    :cond_1
    monitor-exit v10

    .line 452
    return-void
.end method

.method private wakeTypeToRuleInfosListIndex(I)I
    .locals 2
    .param p1, "wakeType"    # I

    .prologue
    .line 108
    const/4 v0, -0x1

    .line 109
    .local v0, "ret":I
    const/16 v1, 0x8

    if-ne p1, v1, :cond_1

    .line 110
    const/4 v0, 0x3

    .line 118
    :cond_0
    :goto_0
    return v0

    .line 111
    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    .line 112
    const/4 v0, 0x0

    goto :goto_0

    .line 113
    :cond_2
    const/4 v1, 0x4

    if-ne p1, v1, :cond_3

    .line 114
    const/4 v0, 0x2

    goto :goto_0

    .line 115
    :cond_3
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 116
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public checkAllowStartActivity(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 6
    .param p1, "callerPkgName"    # Ljava/lang/String;
    .param p2, "calleePkgName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 409
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 410
    :cond_0
    return v4

    .line 413
    :cond_1
    iget-object v3, p0, Lmiui/security/WakePathChecker;->mWakePathConfirmDialogWhitelist:Ljava/util/List;

    monitor-enter v3

    .line 414
    :try_start_0
    iget-object v2, p0, Lmiui/security/WakePathChecker;->mWakePathConfirmDialogWhitelist:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_2

    monitor-exit v3

    .line 415
    return v4

    :cond_2
    monitor-exit v3

    .line 419
    iget-object v3, p0, Lmiui/security/WakePathChecker;->mLauncherPackageNames:Ljava/util/List;

    monitor-enter v3

    .line 420
    :try_start_1
    iget-object v2, p0, Lmiui/security/WakePathChecker;->mLauncherPackageNames:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v2

    if-eqz v2, :cond_3

    monitor-exit v3

    .line 421
    return v4

    .line 413
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_3
    monitor-exit v3

    .line 425
    iget-object v3, p0, Lmiui/security/WakePathChecker;->mWakePathConfirmDialogCallerWhitelist:Ljava/util/List;

    monitor-enter v3

    .line 426
    :try_start_2
    iget-object v2, p0, Lmiui/security/WakePathChecker;->mWakePathConfirmDialogCallerWhitelist:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v2

    if-eqz v2, :cond_4

    monitor-exit v3

    .line 427
    return v4

    .line 419
    :catchall_1
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_4
    monitor-exit v3

    .line 431
    invoke-direct {p0, p3}, Lmiui/security/WakePathChecker;->getWakePathRuleDataByUser(I)Lmiui/security/WakePathChecker$WakePathRuleData;

    move-result-object v1

    .line 432
    .local v1, "wakePathRuleData":Lmiui/security/WakePathChecker$WakePathRuleData;
    monitor-enter v1

    .line 434
    :try_start_3
    iget-object v2, v1, Lmiui/security/WakePathChecker$WakePathRuleData;->mWakePathWhiteList:Ljava/util/List;

    if-eqz v2, :cond_5

    iget-object v2, v1, Lmiui/security/WakePathChecker$WakePathRuleData;->mWakePathWhiteList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 435
    iget-object v2, v1, Lmiui/security/WakePathChecker$WakePathRuleData;->mWakePathWhiteList:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-result v2

    if-eqz v2, :cond_5

    monitor-exit v1

    .line 436
    return v4

    .line 425
    .end local v1    # "wakePathRuleData":Lmiui/security/WakePathChecker$WakePathRuleData;
    :catchall_2
    move-exception v2

    monitor-exit v3

    throw v2

    .line 440
    .restart local v1    # "wakePathRuleData":Lmiui/security/WakePathChecker$WakePathRuleData;
    :cond_5
    :try_start_4
    iget-object v2, v1, Lmiui/security/WakePathChecker$WakePathRuleData;->mAllowedStartActivityRulesMap:Ljava/util/Map;

    if-eqz v2, :cond_6

    .line 441
    iget-object v2, v1, Lmiui/security/WakePathChecker$WakePathRuleData;->mAllowedStartActivityRulesMap:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 442
    .local v0, "callerPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_6

    .line 443
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-result v2

    if-eqz v2, :cond_6

    monitor-exit v1

    .line 444
    return v4

    .end local v0    # "callerPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_6
    monitor-exit v1

    .line 449
    return v5

    .line 432
    :catchall_3
    move-exception v2

    monitor-exit v1

    throw v2
.end method

.method public checkBroadcastWakePath(Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ResolveInfo;I)Z
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "caller"    # Ljava/lang/String;
    .param p3, "callerAppInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p4, "info"    # Landroid/content/pm/ResolveInfo;
    .param p5, "userId"    # I

    .prologue
    const/4 v8, 0x1

    .line 246
    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 247
    :cond_0
    return v8

    .line 250
    :cond_1
    const-string/jumbo v4, ""

    .line 251
    .local v4, "callee":Ljava/lang/String;
    const-string/jumbo v1, ""

    .line 252
    .local v1, "action":Ljava/lang/String;
    const-string/jumbo v2, ""

    .line 253
    .local v2, "className":Ljava/lang/String;
    const/4 v5, -0x1

    .line 254
    .local v5, "calleeUid":I
    if-eqz p1, :cond_2

    .line 255
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 256
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 257
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 258
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 262
    :cond_2
    if-eqz p4, :cond_4

    iget-object v0, p4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_4

    .line 263
    iget-object v0, p4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_3

    .line 264
    iget-object v0, p4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 265
    iget-object v0, p4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 267
    :cond_3
    iget-object v0, p4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 270
    :cond_4
    invoke-static {v4, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 271
    return v8

    .line 274
    :cond_5
    const/4 v6, 0x2

    move-object v0, p0

    move-object v3, p2

    move v7, p5

    invoke-virtual/range {v0 .. v7}, Lmiui/security/WakePathChecker;->matchWakePathRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_6
    move v0, v8

    goto :goto_0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 8
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 490
    if-nez p1, :cond_0

    .line 491
    return-void

    .line 494
    :cond_0
    const-string/jumbo v5, "========================================WAKEPATH DUMP BEGIN========================================"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 496
    :try_start_0
    iget-object v6, p0, Lmiui/security/WakePathChecker;->mUserWakePathRuleDataMap:Ljava/util/Map;

    monitor-enter v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 497
    :try_start_1
    iget-object v5, p0, Lmiui/security/WakePathChecker;->mUserWakePathRuleDataMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    if-lez v5, :cond_4

    .line 498
    iget-object v5, p0, Lmiui/security/WakePathChecker;->mUserWakePathRuleDataMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "userId$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 499
    .local v3, "userId":Ljava/lang/Integer;
    iget-object v5, p0, Lmiui/security/WakePathChecker;->mUserWakePathRuleDataMap:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/security/WakePathChecker$WakePathRuleData;

    .line 500
    .local v2, "ruleData":Lmiui/security/WakePathChecker$WakePathRuleData;
    const-string/jumbo v5, "----------------------------------------"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 501
    if-eqz v2, :cond_1

    .line 504
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "userId="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 505
    iget-object v5, v2, Lmiui/security/WakePathChecker$WakePathRuleData;->mWakePathWhiteList:Ljava/util/List;

    if-eqz v5, :cond_2

    .line 506
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "whitelist="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, v2, Lmiui/security/WakePathChecker$WakePathRuleData;->mWakePathWhiteList:Ljava/util/List;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 511
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    const/4 v5, 0x4

    if-ge v1, v5, :cond_1

    .line 512
    iget-object v5, v2, Lmiui/security/WakePathChecker$WakePathRuleData;->mWakePathRuleInfosList:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_3

    .line 513
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "rule info index="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, " size=0"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 511
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 508
    .end local v1    # "i":I
    :cond_2
    const-string/jumbo v5, "whitelist is null."

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 496
    .end local v2    # "ruleData":Lmiui/security/WakePathChecker$WakePathRuleData;
    .end local v3    # "userId":Ljava/lang/Integer;
    .end local v4    # "userId$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v5

    :try_start_2
    monitor-exit v6

    throw v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 521
    :catch_0
    move-exception v0

    .line 522
    .local v0, "e":Ljava/lang/Exception;
    sget-object v5, Lmiui/security/WakePathChecker;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "dump"

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 524
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3
    const-string/jumbo v5, "========================================WAKEPATH DUMP END========================================"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 489
    return-void

    .line 515
    .restart local v1    # "i":I
    .restart local v2    # "ruleData":Lmiui/security/WakePathChecker$WakePathRuleData;
    .restart local v3    # "userId":Ljava/lang/Integer;
    .restart local v4    # "userId$iterator":Ljava/util/Iterator;
    :cond_3
    :try_start_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "rule info index="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, " size="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v5, v2, Lmiui/security/WakePathChecker$WakePathRuleData;->mWakePathRuleInfosList:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .end local v1    # "i":I
    .end local v2    # "ruleData":Lmiui/security/WakePathChecker$WakePathRuleData;
    .end local v3    # "userId":Ljava/lang/Integer;
    .end local v4    # "userId$iterator":Ljava/util/Iterator;
    :cond_4
    :try_start_4
    monitor-exit v6
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_3
.end method

.method public getWakePathCallListLog()Landroid/content/pm/ParceledListSlice;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 225
    const/4 v0, 0x0

    .line 226
    .local v0, "ret":Ljava/util/List;, "Ljava/util/List<Lmiui/security/WakePathRuleInfo;>;"
    iget-boolean v2, p0, Lmiui/security/WakePathChecker;->mTrackCallListLogEnabled:Z

    if-eqz v2, :cond_1

    .line 227
    iget-object v3, p0, Lmiui/security/WakePathChecker;->mCallListLogLocker:Ljava/lang/Object;

    monitor-enter v3

    .line 228
    :try_start_0
    iget-object v2, p0, Lmiui/security/WakePathChecker;->mCallListLogMap:Ljava/util/Map;

    if-eqz v2, :cond_0

    .line 229
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lmiui/security/WakePathChecker;->mCallListLogMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    .end local v0    # "ret":Ljava/util/List;, "Ljava/util/List<Lmiui/security/WakePathRuleInfo;>;"
    .local v1, "ret":Ljava/util/List;, "Ljava/util/List<Lmiui/security/WakePathRuleInfo;>;"
    :try_start_1
    iget-object v2, p0, Lmiui/security/WakePathChecker;->mCallListLogMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    .end local v1    # "ret":Ljava/util/List;, "Ljava/util/List<Lmiui/security/WakePathRuleInfo;>;"
    :cond_0
    monitor-exit v3

    .line 234
    :cond_1
    if-nez v0, :cond_2

    .line 235
    return-object v4

    .line 227
    .restart local v0    # "ret":Ljava/util/List;, "Ljava/util/List<Lmiui/security/WakePathRuleInfo;>;"
    :catchall_0
    move-exception v2

    .end local v0    # "ret":Ljava/util/List;, "Ljava/util/List<Lmiui/security/WakePathRuleInfo;>;"
    :goto_0
    monitor-exit v3

    throw v2

    .line 237
    :cond_2
    new-instance v2, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v2, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v2

    .line 227
    .restart local v1    # "ret":Ljava/util/List;, "Ljava/util/List<Lmiui/security/WakePathRuleInfo;>;"
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "ret":Ljava/util/List;, "Ljava/util/List<Lmiui/security/WakePathRuleInfo;>;"
    .local v0, "ret":Ljava/util/List;, "Ljava/util/List<Lmiui/security/WakePathRuleInfo;>;"
    goto :goto_0
.end method

.method public init(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lmiui/security/WakePathChecker;->updateLauncherPackageNames(Landroid/content/Context;)V

    .line 103
    return-void
.end method

.method public matchWakePathRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)Z
    .locals 20
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "caller"    # Ljava/lang/String;
    .param p4, "callee"    # Ljava/lang/String;
    .param p5, "calleeUid"    # I
    .param p6, "wakeType"    # I
    .param p7, "userId"    # I

    .prologue
    .line 283
    const/16 v19, 0x0

    .line 286
    .local v19, "wakePathRuleInfos":Ljava/util/List;, "Ljava/util/List<Lmiui/security/WakePathRuleInfo;>;"
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lmiui/security/WakePathChecker;->mTrackCallListLogEnabled:Z

    if-eqz v5, :cond_0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move/from16 v9, p6

    .line 287
    invoke-direct/range {v4 .. v9}, Lmiui/security/WakePathChecker;->trackCallListInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 290
    :cond_0
    move-object/from16 v0, p0

    move/from16 v1, p7

    invoke-direct {v0, v1}, Lmiui/security/WakePathChecker;->getWakePathRuleDataByUser(I)Lmiui/security/WakePathChecker$WakePathRuleData;

    move-result-object v18

    .line 291
    .local v18, "wakePathRuleData":Lmiui/security/WakePathChecker$WakePathRuleData;
    monitor-enter v18

    .line 293
    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lmiui/security/WakePathChecker;->mWakePathCallerWhiteList:Ljava/util/List;

    move-object/from16 v0, p3

    invoke-interface {v5, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 294
    move-object/from16 v0, v18

    iget-object v5, v0, Lmiui/security/WakePathChecker$WakePathRuleData;->mWakePathWhiteList:Ljava/util/List;

    if-eqz v5, :cond_3

    .line 295
    move-object/from16 v0, v18

    iget-object v5, v0, Lmiui/security/WakePathChecker$WakePathRuleData;->mWakePathWhiteList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_3

    .line 296
    move-object/from16 v0, v18

    iget-object v5, v0, Lmiui/security/WakePathChecker$WakePathRuleData;->mWakePathWhiteList:Ljava/util/List;

    move-object/from16 v0, p4

    invoke-interface {v5, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    .line 293
    if-eqz v5, :cond_3

    .line 297
    :cond_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lmiui/security/WakePathChecker;->mCallback:Lcom/android/internal/app/IWakePathCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_2

    .line 299
    :try_start_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lmiui/security/WakePathChecker;->mCallback:Lcom/android/internal/app/IWakePathCallback;

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move/from16 v2, p6

    move/from16 v3, p7

    invoke-interface {v5, v0, v1, v2, v3}, Lcom/android/internal/app/IWakePathCallback;->onAllowCall(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 304
    :cond_2
    :goto_0
    const/4 v5, 0x0

    monitor-exit v18

    return v5

    .line 300
    :catch_0
    move-exception v12

    .line 301
    .local v12, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v12}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 291
    .end local v12    # "e":Landroid/os/RemoteException;
    .end local v19    # "wakePathRuleInfos":Ljava/util/List;, "Ljava/util/List<Lmiui/security/WakePathRuleInfo;>;"
    :catchall_0
    move-exception v5

    monitor-exit v18

    throw v5

    .line 307
    .restart local v19    # "wakePathRuleInfos":Ljava/util/List;, "Ljava/util/List<Lmiui/security/WakePathRuleInfo;>;"
    :cond_3
    const/16 v5, 0x8

    move/from16 v0, p6

    if-ne v0, v5, :cond_4

    .line 308
    if-lez p5, :cond_4

    if-eqz p4, :cond_4

    .line 309
    :try_start_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lmiui/security/WakePathChecker;->mBindServiceCheckActions:Ljava/util/List;

    move-object/from16 v0, p1

    invoke-interface {v5, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    .line 307
    if-eqz v5, :cond_4

    .line 310
    sget-boolean v5, Lmiui/os/Build;->IS_CTS_BUILD:Z

    if-eqz v5, :cond_6

    .line 329
    :cond_4
    :goto_1
    move-object/from16 v0, p0

    move/from16 v1, p6

    invoke-direct {v0, v1}, Lmiui/security/WakePathChecker;->wakeTypeToRuleInfosListIndex(I)I

    move-result v15

    .line 330
    .local v15, "index":I
    if-ltz v15, :cond_5

    const/4 v5, 0x4

    if-lt v15, v5, :cond_8

    .line 331
    :cond_5
    sget-object v5, Lmiui/security/WakePathChecker;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "MIUILOG-WAKEPATH invalid parameter"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 332
    const/4 v5, 0x0

    monitor-exit v18

    return v5

    .line 311
    .end local v15    # "index":I
    :cond_6
    :try_start_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lmiui/security/WakePathChecker;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    if-eqz v5, :cond_4

    .line 312
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-wide v10

    .line 314
    .local v10, "callingIdentity":J
    :try_start_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lmiui/security/WakePathChecker;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    const/16 v6, 0x2718

    move/from16 v0, p5

    move-object/from16 v1, p4

    invoke-interface {v5, v6, v0, v1}, Lcom/android/internal/app/IAppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result v16

    .line 315
    .local v16, "mode":I
    if-eqz v16, :cond_7

    .line 316
    sget-object v5, Lmiui/security/WakePathChecker;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "MIUILOG-AutoStart, BindService Reject userId= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p7

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 317
    const-string/jumbo v7, " caller= "

    .line 316
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 317
    const-string/jumbo v7, " callee= "

    .line 316
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p4

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 317
    const-string/jumbo v7, " classname="

    .line 316
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 318
    const-string/jumbo v7, " action="

    .line 316
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 318
    const-string/jumbo v7, " wakeType="

    .line 316
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 324
    :try_start_6
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 319
    const/4 v5, 0x1

    monitor-exit v18

    return v5

    .line 324
    :cond_7
    :try_start_7
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_1

    .line 321
    .end local v16    # "mode":I
    :catch_1
    move-exception v13

    .line 322
    .local v13, "e":Ljava/lang/Exception;
    :try_start_8
    sget-object v5, Lmiui/security/WakePathChecker;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "checkOperation"

    invoke-static {v5, v6, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 324
    :try_start_9
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_1

    .line 323
    .end local v13    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v5

    .line 324
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 323
    throw v5

    .line 334
    .end local v10    # "callingIdentity":J
    .restart local v15    # "index":I
    :cond_8
    move-object/from16 v0, v18

    iget-object v5, v0, Lmiui/security/WakePathChecker$WakePathRuleData;->mWakePathRuleInfosList:Ljava/util/List;

    invoke-interface {v5, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/util/List;

    move-object/from16 v19, v0

    .line 336
    .local v19, "wakePathRuleInfos":Ljava/util/List;, "Ljava/util/List<Lmiui/security/WakePathRuleInfo;>;"
    if-eqz v19, :cond_9

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result v5

    if-nez v5, :cond_a

    .line 337
    :cond_9
    const/4 v5, 0x0

    monitor-exit v18

    return v5

    .line 339
    :cond_a
    :try_start_a
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v17

    .line 340
    .local v17, "size":I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_2
    move/from16 v0, v17

    if-ge v14, v0, :cond_d

    .line 341
    move-object/from16 v0, v19

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/security/WakePathRuleInfo;

    .local v4, "info":Lmiui/security/WakePathRuleInfo;
    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move/from16 v9, p6

    .line 342
    invoke-virtual/range {v4 .. v9}, Lmiui/security/WakePathRuleInfo;->equals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 343
    move-object/from16 v0, p0

    iget-object v5, v0, Lmiui/security/WakePathChecker;->mCallback:Lcom/android/internal/app/IWakePathCallback;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    if-eqz v5, :cond_b

    .line 345
    :try_start_b
    move-object/from16 v0, p0

    iget-object v5, v0, Lmiui/security/WakePathChecker;->mCallback:Lcom/android/internal/app/IWakePathCallback;

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move/from16 v2, p6

    move/from16 v3, p7

    invoke-interface {v5, v0, v1, v2, v3}, Lcom/android/internal/app/IWakePathCallback;->onRejectCall(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 350
    :cond_b
    :goto_3
    :try_start_c
    sget-object v5, Lmiui/security/WakePathChecker;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "MIUILOG-WAKEPATH: call was rejected by wakepath. userId= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p7

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 351
    const-string/jumbo v7, " caller= "

    .line 350
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 351
    const-string/jumbo v7, " callee= "

    .line 350
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p4

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 351
    const-string/jumbo v7, " classname="

    .line 350
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 352
    const-string/jumbo v7, " action="

    .line 350
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 352
    const-string/jumbo v7, " wakeType="

    .line 350
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 353
    const/4 v5, 0x1

    monitor-exit v18

    return v5

    .line 346
    :catch_2
    move-exception v12

    .line 347
    .restart local v12    # "e":Landroid/os/RemoteException;
    :try_start_d
    invoke-virtual {v12}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_3

    .line 340
    .end local v12    # "e":Landroid/os/RemoteException;
    :cond_c
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_2

    .line 357
    .end local v4    # "info":Lmiui/security/WakePathRuleInfo;
    :cond_d
    move-object/from16 v0, p0

    iget-object v5, v0, Lmiui/security/WakePathChecker;->mCallback:Lcom/android/internal/app/IWakePathCallback;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    if-eqz v5, :cond_e

    .line 359
    :try_start_e
    move-object/from16 v0, p0

    iget-object v5, v0, Lmiui/security/WakePathChecker;->mCallback:Lcom/android/internal/app/IWakePathCallback;

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move/from16 v2, p6

    move/from16 v3, p7

    invoke-interface {v5, v0, v1, v2, v3}, Lcom/android/internal/app/IWakePathCallback;->onAllowCall(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_3
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    :cond_e
    :goto_4
    monitor-exit v18

    .line 365
    const/4 v5, 0x0

    return v5

    .line 360
    :catch_3
    move-exception v12

    .line 361
    .restart local v12    # "e":Landroid/os/RemoteException;
    :try_start_f
    invoke-virtual {v12}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto :goto_4
.end method

.method public onPackageAdded(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 481
    new-instance v0, Lmiui/security/WakePathChecker$1;

    invoke-direct {v0, p0, p1}, Lmiui/security/WakePathChecker$1;-><init>(Lmiui/security/WakePathChecker;Landroid/content/Context;)V

    invoke-virtual {v0}, Lmiui/security/WakePathChecker$1;->start()V

    .line 480
    return-void
.end method

.method public pushWakePathConfirmDialogWhiteList(ILjava/util/List;)V
    .locals 2
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 176
    .local p2, "whiteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 177
    :cond_0
    return-void

    .line 179
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 180
    iget-object v1, p0, Lmiui/security/WakePathChecker;->mWakePathConfirmDialogWhitelist:Ljava/util/List;

    monitor-enter v1

    .line 181
    :try_start_0
    iget-object v0, p0, Lmiui/security/WakePathChecker;->mWakePathConfirmDialogWhitelist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 182
    iget-object v0, p0, Lmiui/security/WakePathChecker;->mWakePathConfirmDialogWhitelist:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    .line 175
    :cond_2
    return-void

    .line 180
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 184
    :cond_3
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 185
    iget-object v1, p0, Lmiui/security/WakePathChecker;->mWakePathConfirmDialogCallerWhitelist:Ljava/util/List;

    monitor-enter v1

    .line 186
    :try_start_1
    iget-object v0, p0, Lmiui/security/WakePathChecker;->mWakePathConfirmDialogCallerWhitelist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 187
    iget-object v0, p0, Lmiui/security/WakePathChecker;->mWakePathConfirmDialogCallerWhitelist:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 185
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public pushWakePathRuleInfos(ILjava/util/List;I)V
    .locals 9
    .param p1, "wakeType"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lmiui/security/WakePathRuleInfo;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p2, "infos":Ljava/util/List;, "Ljava/util/List<Lmiui/security/WakePathRuleInfo;>;"
    const/4 v5, 0x0

    .line 137
    sget-object v6, Lmiui/security/WakePathChecker;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "MIUILOG-WAKEPATH pushWakePathRuleInfos: wakeType="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " userId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 138
    const-string/jumbo v8, " size="

    .line 137
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 138
    if-nez p2, :cond_1

    .line 137
    :goto_0
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-direct {p0, p3}, Lmiui/security/WakePathChecker;->getWakePathRuleDataByUser(I)Lmiui/security/WakePathChecker$WakePathRuleData;

    move-result-object v4

    .line 140
    .local v4, "wakePathRuleData":Lmiui/security/WakePathChecker$WakePathRuleData;
    monitor-enter v4

    .line 141
    const/16 v5, 0x11

    if-ne p1, v5, :cond_2

    .line 142
    :try_start_0
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, v4, Lmiui/security/WakePathChecker$WakePathRuleData;->mAllowedStartActivityRulesMap:Ljava/util/Map;

    .line 145
    if-eqz p2, :cond_3

    .line 146
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_3

    .line 147
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/security/WakePathRuleInfo;

    .line 148
    .local v2, "info":Lmiui/security/WakePathRuleInfo;
    iget-object v5, v4, Lmiui/security/WakePathChecker$WakePathRuleData;->mAllowedStartActivityRulesMap:Ljava/util/Map;

    invoke-virtual {v2}, Lmiui/security/WakePathRuleInfo;->getCalleeExpress()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 149
    .local v3, "pkgNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v3, :cond_0

    .line 150
    new-instance v3, Ljava/util/ArrayList;

    .end local v3    # "pkgNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 151
    .restart local v3    # "pkgNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v5, v4, Lmiui/security/WakePathChecker$WakePathRuleData;->mAllowedStartActivityRulesMap:Ljava/util/Map;

    invoke-virtual {v2}, Lmiui/security/WakePathRuleInfo;->getCalleeExpress()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    :cond_0
    invoke-virtual {v2}, Lmiui/security/WakePathRuleInfo;->getCallerExpress()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 138
    .end local v0    # "i":I
    .end local v2    # "info":Lmiui/security/WakePathRuleInfo;
    .end local v3    # "pkgNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "wakePathRuleData":Lmiui/security/WakePathChecker$WakePathRuleData;
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    goto :goto_0

    .line 157
    .restart local v4    # "wakePathRuleData":Lmiui/security/WakePathChecker$WakePathRuleData;
    :cond_2
    :try_start_1
    invoke-direct {p0, p1}, Lmiui/security/WakePathChecker;->wakeTypeToRuleInfosListIndex(I)I

    move-result v1

    .line 158
    .local v1, "index":I
    if-ltz v1, :cond_3

    const/4 v5, 0x4

    if-ge v1, v5, :cond_3

    .line 159
    iget-object v5, v4, Lmiui/security/WakePathChecker$WakePathRuleData;->mWakePathRuleInfosList:Ljava/util/List;

    invoke-interface {v5, v1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v1    # "index":I
    :cond_3
    monitor-exit v4

    .line 136
    return-void

    .line 140
    :catchall_0
    move-exception v5

    monitor-exit v4

    throw v5
.end method

.method public pushWakePathWhiteList(Ljava/util/List;I)V
    .locals 4
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 166
    .local p1, "wakePathWhiteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v2, Lmiui/security/WakePathChecker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "MIUILOG-WAKEPATH pushWakePathWhiteList: userId="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 167
    const-string/jumbo v3, " size="

    .line 166
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 167
    if-nez p1, :cond_0

    const/4 v1, 0x0

    .line 166
    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    invoke-direct {p0, p2}, Lmiui/security/WakePathChecker;->getWakePathRuleDataByUser(I)Lmiui/security/WakePathChecker$WakePathRuleData;

    move-result-object v0

    .line 170
    .local v0, "wakePathRuleData":Lmiui/security/WakePathChecker$WakePathRuleData;
    monitor-enter v0

    .line 171
    :try_start_0
    iput-object p1, v0, Lmiui/security/WakePathChecker$WakePathRuleData;->mWakePathWhiteList:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 165
    return-void

    .line 167
    .end local v0    # "wakePathRuleData":Lmiui/security/WakePathChecker$WakePathRuleData;
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_0

    .line 170
    .restart local v0    # "wakePathRuleData":Lmiui/security/WakePathChecker$WakePathRuleData;
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public registerWakePathCallback(Lcom/android/internal/app/IWakePathCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/internal/app/IWakePathCallback;

    .prologue
    .line 405
    iput-object p1, p0, Lmiui/security/WakePathChecker;->mCallback:Lcom/android/internal/app/IWakePathCallback;

    .line 404
    return-void
.end method

.method public removeWakePathData(I)V
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 193
    sget-object v1, Lmiui/security/WakePathChecker;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "MIUILOG-WAKEPATH removeWakePathData: userId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    if-eqz p1, :cond_0

    invoke-static {p1}, Lmiui/securityspace/XSpaceUserHandle;->isXSpaceUserId(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 196
    :cond_0
    return-void

    .line 199
    :cond_1
    iget-object v2, p0, Lmiui/security/WakePathChecker;->mUserWakePathRuleDataMap:Ljava/util/Map;

    monitor-enter v2

    .line 200
    :try_start_0
    iget-object v1, p0, Lmiui/security/WakePathChecker;->mUserWakePathRuleDataMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/security/WakePathChecker$WakePathRuleData;

    .line 201
    .local v0, "wakePathRuleData":Lmiui/security/WakePathChecker$WakePathRuleData;
    if-eqz v0, :cond_2

    .line 202
    iget-object v1, p0, Lmiui/security/WakePathChecker;->mUserWakePathRuleDataMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit v2

    .line 192
    return-void

    .line 199
    .end local v0    # "wakePathRuleData":Lmiui/security/WakePathChecker$WakePathRuleData;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public setTrackWakePathCallListLogEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 209
    if-eqz p1, :cond_0

    .line 210
    return-void

    .line 213
    :cond_0
    iput-boolean p1, p0, Lmiui/security/WakePathChecker;->mTrackCallListLogEnabled:Z

    .line 214
    iget-boolean v0, p0, Lmiui/security/WakePathChecker;->mTrackCallListLogEnabled:Z

    if-nez v0, :cond_2

    .line 215
    iget-object v1, p0, Lmiui/security/WakePathChecker;->mCallListLogLocker:Ljava/lang/Object;

    monitor-enter v1

    .line 216
    :try_start_0
    iget-object v0, p0, Lmiui/security/WakePathChecker;->mCallListLogMap:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 217
    iget-object v0, p0, Lmiui/security/WakePathChecker;->mCallListLogMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 218
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/security/WakePathChecker;->mCallListLogMap:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v1

    .line 207
    :cond_2
    return-void

    .line 215
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
