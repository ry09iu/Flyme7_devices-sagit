.class public Lcom/android/server/am/ExtraActivityManagerService;
.super Ljava/lang/Object;
.source "ExtraActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ExtraActivityManagerService$1;,
        Lcom/android/server/am/ExtraActivityManagerService$CompatibleMessage;
    }
.end annotation


# static fields
.field private static final ACTION_TO_RUNTIME_PERMISSION:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final ACTIVITY_RESTRICTION_APPOP:I = 0x2

.field private static final ACTIVITY_RESTRICTION_NONE:I = 0x0

.field private static final ACTIVITY_RESTRICTION_PERMISSION:I = 0x1

.field private static final INCOMPATIBLE_ACTIVITIES:[Ljava/lang/String;

.field private static final INCOMPATIBLE_PACKAGES:[Ljava/lang/String;

.field static final SHOW_INCOMPATIBLE_ERROR:I = 0x1

.field private static TAG:Ljava/lang/String;

.field private static mLastStartActivityUid:I

.field private static mPerfService:Lcom/android/internal/app/IPerfShielder;

.field private static mSplashScreenServiceDelegate:Lcom/miui/server/SplashScreenServiceDelegate;

.field private static mSystemReady:Z

.field private static sAmInstance:Lcom/android/server/am/ActivityManagerService;

.field static final sHandler:Landroid/os/Handler;

.field private static sMainStack:Ljava/lang/reflect/Field;

.field private static sScheduleDestroyActivities:Ljava/lang/reflect/Method;

.field private static sScheduleDestroyAllActivities:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 104
    const-class v2, Lcom/android/server/am/ExtraActivityManagerService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/server/am/ExtraActivityManagerService;->TAG:Ljava/lang/String;

    .line 116
    :try_start_0
    const-class v2, Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v3, "mStackSupervisor"

    invoke-static {v2, v3}, Lmiui/util/ReflectionUtils;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Lcom/android/server/am/ExtraActivityManagerService;->sMainStack:Ljava/lang/reflect/Field;

    .line 117
    sget-object v2, Lcom/android/server/am/ExtraActivityManagerService;->sMainStack:Ljava/lang/reflect/Field;

    if-eqz v2, :cond_0

    .line 118
    const-class v2, Lcom/android/server/am/ActivityManagerService;

    .line 119
    const-string/jumbo v3, "scheduleDestroyAllActivities"

    .line 118
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    .line 119
    const-class v5, Lcom/android/server/am/ProcessRecord;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    .line 118
    invoke-static {v2, v3, v4}, Lmiui/util/ReflectionUtils;->findMethodBestMatch(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/android/server/am/ExtraActivityManagerService;->sScheduleDestroyAllActivities:Ljava/lang/reflect/Method;

    .line 120
    const/4 v2, 0x0

    sput-object v2, Lcom/android/server/am/ExtraActivityManagerService;->sScheduleDestroyActivities:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 340
    .local v0, "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 339
    sput-object v2, Lcom/android/server/am/ExtraActivityManagerService;->ACTION_TO_RUNTIME_PERMISSION:Landroid/util/ArrayMap;

    .line 342
    sget-object v2, Lcom/android/server/am/ExtraActivityManagerService;->ACTION_TO_RUNTIME_PERMISSION:Landroid/util/ArrayMap;

    const-string/jumbo v3, "android.media.action.IMAGE_CAPTURE"

    .line 343
    const-string/jumbo v4, "android.permission.CAMERA"

    .line 342
    invoke-virtual {v2, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    sget-object v2, Lcom/android/server/am/ExtraActivityManagerService;->ACTION_TO_RUNTIME_PERMISSION:Landroid/util/ArrayMap;

    const-string/jumbo v3, "android.media.action.VIDEO_CAPTURE"

    .line 345
    const-string/jumbo v4, "android.permission.CAMERA"

    .line 344
    invoke-virtual {v2, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    sget-object v2, Lcom/android/server/am/ExtraActivityManagerService;->ACTION_TO_RUNTIME_PERMISSION:Landroid/util/ArrayMap;

    const-string/jumbo v3, "android.intent.action.CALL"

    .line 347
    const-string/jumbo v4, "android.permission.CALL_PHONE"

    .line 346
    invoke-virtual {v2, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    new-instance v2, Lcom/android/server/am/ExtraActivityManagerService$1;

    invoke-direct {v2}, Lcom/android/server/am/ExtraActivityManagerService$1;-><init>()V

    sput-object v2, Lcom/android/server/am/ExtraActivityManagerService;->sHandler:Landroid/os/Handler;

    .line 469
    new-array v2, v9, [Ljava/lang/String;

    .line 470
    const-string/jumbo v3, "com.tencent.mobileqq.activity.QQLSActivity"

    aput-object v3, v2, v8

    .line 469
    sput-object v2, Lcom/android/server/am/ExtraActivityManagerService;->INCOMPATIBLE_ACTIVITIES:[Ljava/lang/String;

    .line 473
    new-array v2, v9, [Ljava/lang/String;

    .line 474
    const-string/jumbo v3, "com.tencent.mobileqq"

    aput-object v3, v2, v8

    .line 473
    sput-object v2, Lcom/android/server/am/ExtraActivityManagerService;->INCOMPATIBLE_PACKAGES:[Ljava/lang/String;

    .line 672
    sput-object v7, Lcom/android/server/am/ExtraActivityManagerService;->sAmInstance:Lcom/android/server/am/ActivityManagerService;

    .line 102
    return-void

    .line 122
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 125
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_1
    const-class v2, Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v3, "mMainStack"

    invoke-static {v2, v3}, Lmiui/util/ReflectionUtils;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Lcom/android/server/am/ExtraActivityManagerService;->sMainStack:Ljava/lang/reflect/Field;

    .line 126
    sget-object v2, Lcom/android/server/am/ExtraActivityManagerService;->sMainStack:Ljava/lang/reflect/Field;

    if-eqz v2, :cond_0

    .line 127
    const-class v2, Lcom/android/server/am/ActivityManagerService;

    .line 128
    const-string/jumbo v3, "scheduleDestroyActivities"

    .line 127
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Class;

    .line 128
    const-class v5, Lcom/android/server/am/ProcessRecord;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x2

    aput-object v5, v4, v6

    .line 127
    invoke-static {v2, v3, v4}, Lmiui/util/ReflectionUtils;->findMethodBestMatch(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/android/server/am/ExtraActivityManagerService;->sScheduleDestroyActivities:Ljava/lang/reflect/Method;

    .line 129
    const/4 v2, 0x0

    sput-object v2, Lcom/android/server/am/ExtraActivityManagerService;->sScheduleDestroyAllActivities:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 131
    :catch_1
    move-exception v1

    .local v1, "e1":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static activityIdle(Landroid/content/pm/ActivityInfo;)V
    .locals 2
    .param p0, "aInfo"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 865
    sget-boolean v0, Lcom/android/server/am/ExtraActivityManagerService;->mSystemReady:Z

    if-nez v0, :cond_0

    .line 866
    sget-object v0, Lcom/android/server/am/ExtraActivityManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "System was not ready,activityIdle failed."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    return-void

    .line 869
    :cond_0
    if-nez p0, :cond_1

    .line 870
    sget-object v0, Lcom/android/server/am/ExtraActivityManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "aInfo is null!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    return-void

    .line 873
    :cond_1
    sget-object v0, Lcom/android/server/am/ExtraActivityManagerService;->mSplashScreenServiceDelegate:Lcom/miui/server/SplashScreenServiceDelegate;

    if-eqz v0, :cond_2

    .line 874
    sget-object v0, Lcom/android/server/am/ExtraActivityManagerService;->mSplashScreenServiceDelegate:Lcom/miui/server/SplashScreenServiceDelegate;

    invoke-virtual {v0, p0}, Lcom/miui/server/SplashScreenServiceDelegate;->activityIdle(Landroid/content/pm/ActivityInfo;)V

    .line 864
    :cond_2
    return-void
.end method

.method static addActivityLaunchTime(Ljava/lang/String;Ljava/lang/String;JJZ)V
    .locals 10
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "activityName"    # Ljava/lang/String;
    .param p2, "launchStartTime"    # J
    .param p4, "launchEndTime"    # J
    .param p6, "fromHome"    # Z

    .prologue
    .line 1114
    sget-object v1, Lcom/android/server/am/ExtraActivityManagerService;->mPerfService:Lcom/android/internal/app/IPerfShielder;

    if-eqz v1, :cond_0

    .line 1116
    :try_start_0
    sget-object v1, Lcom/android/server/am/ExtraActivityManagerService;->mPerfService:Lcom/android/internal/app/IPerfShielder;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    move/from16 v8, p6

    invoke-interface/range {v1 .. v8}, Lcom/android/internal/app/IPerfShielder;->addActivityLaunchTime(Ljava/lang/String;Ljava/lang/String;JJZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1113
    :cond_0
    :goto_0
    return-void

    .line 1117
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public static adjustMediaButtonReceivers(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningAppProcessInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 155
    .local p1, "receivers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .local p2, "procs":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    if-gt v7, v8, :cond_1

    .line 156
    :cond_0
    return-void

    .line 160
    :cond_1
    invoke-static {p0}, Landroid/app/ExtraActivityManager;->getPackageNameListForRecentTasks(Landroid/content/Context;)Ljava/util/List;

    move-result-object v4

    .line 161
    .local v4, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v4, :cond_2

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 162
    :cond_2
    return-void

    .line 165
    :cond_3
    const/4 v0, 0x0

    .line 166
    .local v0, "headIdx":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    .line 167
    .local v6, "receiverSize":I
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "name$iterator":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 168
    .local v2, "name":Ljava/lang/String;
    move v1, v0

    .local v1, "i":I
    :goto_0
    if-ge v1, v6, :cond_4

    .line 169
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 170
    .local v5, "r":Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/server/am/ExtraActivityManagerService;->getPackageNameForReceiver(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 171
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 172
    invoke-interface {p1, v0, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 173
    add-int/lit8 v0, v0, 0x1

    .line 168
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 154
    .end local v1    # "i":I
    .end local v2    # "name":Ljava/lang/String;
    .end local v5    # "r":Ljava/lang/Object;
    :cond_6
    return-void
.end method

.method public static adjustMediaButtonReceivers(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p3, "action"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningAppProcessInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 139
    .local p1, "receivers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .local p2, "procs":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    const-string/jumbo v0, "android.intent.action.MEDIA_BUTTON"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    invoke-static {p0, p1, p2}, Lcom/android/server/am/ExtraActivityManagerService;->adjustMediaButtonReceivers(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V

    .line 138
    :cond_0
    return-void
.end method

.method public static checkRunningCompatibility(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Z)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "systemReady"    # Z

    .prologue
    const/4 v1, 0x1

    .line 646
    if-nez p2, :cond_0

    return v1

    .line 647
    :cond_0
    if-eqz p1, :cond_1

    iget v0, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    :cond_1
    return v1

    .line 648
    :cond_2
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/android/server/am/ExtraActivityManagerService;->checkRunningCompatibility(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static checkRunningCompatibility(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;IZ)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "caller"    # Landroid/app/IApplicationThread;
    .param p3, "service"    # Landroid/content/Intent;
    .param p4, "resolvedType"    # Ljava/lang/String;
    .param p5, "userId"    # I
    .param p6, "systemReady"    # Z

    .prologue
    .line 479
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-static/range {v0 .. v7}, Lcom/android/server/am/ExtraActivityManagerService;->checkRunningCompatibility(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;IZLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static checkRunningCompatibility(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;IZLjava/lang/String;)Z
    .locals 19
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "caller"    # Landroid/app/IApplicationThread;
    .param p3, "service"    # Landroid/content/Intent;
    .param p4, "resolvedType"    # Ljava/lang/String;
    .param p5, "userId"    # I
    .param p6, "systemReady"    # Z
    .param p7, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 484
    if-nez p6, :cond_0

    .line 485
    const/4 v3, 0x1

    return v3

    .line 488
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    .line 489
    const/16 v4, 0x400

    .line 488
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move/from16 v2, p5

    invoke-interface {v3, v0, v1, v4, v2}, Landroid/content/pm/IPackageManager;->resolveService(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v18

    .line 490
    .local v18, "rInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v18, :cond_1

    move-object/from16 v0, v18

    iget-object v7, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 492
    :goto_0
    if-eqz v7, :cond_2

    iget-object v3, v7, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    :goto_1
    move-object/from16 v0, p0

    move/from16 v1, p6

    invoke-static {v0, v3, v1}, Lcom/android/server/am/ExtraActivityManagerService;->checkRunningCompatibility(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Z)Z

    move-result v3

    if-nez v3, :cond_3

    .line 493
    const/4 v3, 0x0

    return v3

    .line 490
    :cond_1
    const/4 v7, 0x0

    .local v7, "sInfo":Landroid/content/pm/ServiceInfo;
    goto :goto_0

    .line 492
    .end local v7    # "sInfo":Landroid/content/pm/ServiceInfo;
    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 496
    :cond_3
    const/16 v8, 0x8

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p7

    move-object/from16 v6, p3

    move/from16 v9, p5

    invoke-static/range {v3 .. v9}, Lcom/android/server/am/ExtraActivityManagerService;->checkWakePath(Lcom/android/server/am/ActivityManagerService;Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Landroid/content/pm/ComponentInfo;II)Z

    move-result v3

    if-nez v3, :cond_4

    .line 497
    const/4 v3, 0x0

    return v3

    .line 500
    :cond_4
    if-eqz v7, :cond_7

    iget-object v3, v7, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    if-eqz v3, :cond_7

    .line 501
    const-string/jumbo v10, ""

    .line 502
    .local v10, "callerName":Ljava/lang/String;
    if-eqz p7, :cond_5

    .line 503
    move-object/from16 v10, p7

    .line 514
    :goto_2
    invoke-static {}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->getSingletonService()Lcom/miui/whetstone/server/WhetstoneActivityManagerService;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 515
    invoke-static {}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->getSingletonService()Lcom/miui/whetstone/server/WhetstoneActivityManagerService;

    move-result-object v8

    .line 516
    iget-object v9, v7, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 520
    iget-object v13, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 521
    iget-object v14, v7, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    .line 515
    const/4 v3, 0x0

    new-array v15, v3, [Ljava/lang/Object;

    .line 518
    const/4 v11, 0x2

    move/from16 v12, p5

    .line 515
    invoke-virtual/range {v8 .. v15}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->checkPackageState(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v3

    .line 521
    const/4 v4, 0x1

    .line 515
    if-eq v3, v4, :cond_8

    .line 522
    const-string/jumbo v3, "WhetstonePackageState"

    .line 523
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Permission denied by Whetstone, cannot start service from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 524
    iget-object v5, v7, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 523
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 524
    const-string/jumbo v5, "/"

    .line 523
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 524
    iget-object v5, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 523
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 524
    const-string/jumbo v5, " in "

    .line 523
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 524
    iget-object v5, v7, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    .line 523
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 525
    const-string/jumbo v5, ", caller: "

    .line 523
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 525
    const-string/jumbo v5, ", UserId: "

    .line 523
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 522
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    const/4 v3, 0x0

    return v3

    .line 505
    :cond_5
    monitor-enter p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 506
    invoke-virtual/range {p1 .. p2}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLocked(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v16

    .line 507
    .local v16, "callerApp":Lcom/android/server/am/ProcessRecord;
    if-eqz v16, :cond_6

    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_6

    .line 508
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_6
    :try_start_2
    monitor-exit p1

    .line 505
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_2

    .line 535
    .end local v10    # "callerName":Ljava/lang/String;
    .end local v16    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .end local v18    # "rInfo":Landroid/content/pm/ResolveInfo;
    :catch_0
    move-exception v17

    .line 538
    :cond_7
    :goto_3
    const/4 v3, 0x1

    return v3

    .line 505
    .restart local v10    # "callerName":Ljava/lang/String;
    .restart local v18    # "rInfo":Landroid/content/pm/ResolveInfo;
    :catchall_0
    move-exception v3

    monitor-exit p1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v3

    .line 530
    :cond_8
    sget-boolean v3, Lcom/miui/whetstone/WhetstonePackageState;->DEBUG:Z

    if-eqz v3, :cond_7

    .line 531
    const-string/jumbo v3, "WhetstonePackageState"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "start service from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v7, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 532
    iget-object v5, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 531
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 532
    const-string/jumbo v5, " in "

    .line 531
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 532
    iget-object v5, v7, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    .line 531
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 532
    const-string/jumbo v5, ", caller: "

    .line 531
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 532
    const-string/jumbo v5, ", UserId: "

    .line 531
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3
.end method

.method public static checkRunningCompatibility(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Landroid/app/IApplicationThread;Landroid/content/pm/ActivityInfo;Landroid/content/Intent;IZLjava/lang/String;)Z
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "caller"    # Landroid/app/IApplicationThread;
    .param p3, "info"    # Landroid/content/pm/ActivityInfo;
    .param p4, "intent"    # Landroid/content/Intent;
    .param p5, "userId"    # I
    .param p6, "systemReady"    # Z
    .param p7, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 543
    if-nez p3, :cond_0

    const/4 v1, 0x1

    return v1

    .line 544
    :cond_0
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    sget-object v1, Lcom/android/server/am/ExtraActivityManagerService;->INCOMPATIBLE_ACTIVITIES:[Ljava/lang/String;

    array-length v1, v1

    if-ge v10, v1, :cond_2

    .line 545
    sget-object v1, Lcom/android/server/am/ExtraActivityManagerService;->INCOMPATIBLE_ACTIVITIES:[Ljava/lang/String;

    aget-object v1, v1, v10

    iget-object v2, p3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/server/am/ExtraActivityManagerService;->INCOMPATIBLE_PACKAGES:[Ljava/lang/String;

    aget-object v1, v1, v10

    iget-object v2, p3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    return v1

    .line 544
    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 547
    :cond_2
    iget-object v1, p3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move/from16 v0, p6

    invoke-static {p0, v1, v0}, Lcom/android/server/am/ExtraActivityManagerService;->checkRunningCompatibility(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Z)Z

    move-result v1

    if-nez v1, :cond_3

    .line 548
    const/4 v1, 0x0

    return v1

    .line 551
    :cond_3
    const/4 v6, 0x1

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p7

    move-object v4, p4

    move-object v5, p3

    move/from16 v7, p5

    invoke-static/range {v1 .. v7}, Lcom/android/server/am/ExtraActivityManagerService;->checkWakePath(Lcom/android/server/am/ActivityManagerService;Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Landroid/content/pm/ComponentInfo;II)Z

    move-result v1

    if-nez v1, :cond_4

    .line 552
    const/4 v1, 0x0

    return v1

    .line 555
    :cond_4
    iget-object v1, p3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 556
    const-string/jumbo v3, ""

    .line 557
    .local v3, "callerName":Ljava/lang/String;
    monitor-enter p1

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 558
    invoke-virtual {p1, p2}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLocked(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v9

    .line 559
    .local v9, "callerApp":Lcom/android/server/am/ProcessRecord;
    if-eqz v9, :cond_5

    iget-object v1, v9, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_5

    .line 560
    iget-object v1, v9, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    monitor-exit p1

    .line 557
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 565
    invoke-static {}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->getSingletonService()Lcom/miui/whetstone/server/WhetstoneActivityManagerService;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 566
    invoke-static {}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->getSingletonService()Lcom/miui/whetstone/server/WhetstoneActivityManagerService;

    move-result-object v1

    .line 567
    iget-object v2, p3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 571
    iget-object v6, p3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 572
    iget-object v7, p3, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 566
    const/4 v4, 0x0

    new-array v8, v4, [Ljava/lang/Object;

    .line 569
    const/4 v4, 0x1

    move/from16 v5, p5

    .line 566
    invoke-virtual/range {v1 .. v8}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->checkPackageState(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v1

    .line 572
    const/4 v2, 0x1

    .line 566
    if-eq v1, v2, :cond_6

    .line 573
    const-string/jumbo v1, "WhetstonePackageState"

    .line 574
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Permission denied by Whetstone, cannot start activity from "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 575
    const-string/jumbo v4, "/"

    .line 574
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 575
    iget-object v4, p3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 574
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 575
    const-string/jumbo v4, " in "

    .line 574
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 575
    iget-object v4, p3, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 574
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 575
    const-string/jumbo v4, ", caller: "

    .line 574
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 576
    const-string/jumbo v4, ", UserId: "

    .line 574
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 573
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    const/4 v1, 0x0

    return v1

    .line 557
    .end local v9    # "callerApp":Lcom/android/server/am/ProcessRecord;
    :catchall_0
    move-exception v1

    monitor-exit p1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 581
    .restart local v9    # "callerApp":Lcom/android/server/am/ProcessRecord;
    :cond_6
    sget-boolean v1, Lcom/miui/whetstone/WhetstonePackageState;->DEBUG:Z

    if-eqz v1, :cond_7

    .line 582
    const-string/jumbo v1, "WhetstonePackageState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "start activity from "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 583
    const-string/jumbo v4, " in "

    .line 582
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 583
    iget-object v4, p3, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 582
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 583
    const-string/jumbo v4, ", caller: "

    .line 582
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 584
    const-string/jumbo v4, ", UserId: "

    .line 582
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    .end local v3    # "callerName":Ljava/lang/String;
    .end local v9    # "callerApp":Lcom/android/server/am/ProcessRecord;
    :cond_7
    const/4 v1, 0x1

    return v1
.end method

.method public static checkRunningCompatibility(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Landroid/app/IApplicationThread;Lcom/android/server/am/ContentProviderRecord;IZ)Z
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "caller"    # Landroid/app/IApplicationThread;
    .param p3, "record"    # Lcom/android/server/am/ContentProviderRecord;
    .param p4, "userId"    # I
    .param p5, "systemReady"    # Z

    .prologue
    .line 593
    if-nez p5, :cond_0

    .line 594
    const/4 v1, 0x1

    return v1

    .line 596
    :cond_0
    if-eqz p3, :cond_1

    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    if-nez v1, :cond_2

    .line 597
    :cond_1
    const/4 v1, 0x1

    return v1

    .line 600
    :cond_2
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 601
    .local v4, "intent":Landroid/content/Intent;
    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 603
    move-object/from16 v0, p3

    iget-object v5, v0, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    const/4 v3, 0x0

    const/4 v6, 0x4

    move-object v1, p1

    move-object/from16 v2, p2

    move/from16 v7, p4

    invoke-static/range {v1 .. v7}, Lcom/android/server/am/ExtraActivityManagerService;->checkWakePath(Lcom/android/server/am/ActivityManagerService;Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Landroid/content/pm/ComponentInfo;II)Z

    move-result v1

    if-nez v1, :cond_3

    .line 604
    const/4 v1, 0x0

    return v1

    .line 607
    :cond_3
    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 608
    const-string/jumbo v7, ""

    .line 610
    .local v7, "callerName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p2}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLocked(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v13

    .line 611
    .local v13, "callerApp":Lcom/android/server/am/ProcessRecord;
    if-eqz v13, :cond_4

    iget-object v1, v13, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_4

    .line 612
    iget-object v1, v13, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 616
    :cond_4
    invoke-static {}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->getSingletonService()Lcom/miui/whetstone/server/WhetstoneActivityManagerService;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 617
    invoke-static {}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->getSingletonService()Lcom/miui/whetstone/server/WhetstoneActivityManagerService;

    move-result-object v5

    .line 618
    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 622
    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v10

    .line 623
    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_5

    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 617
    :goto_0
    const/4 v1, 0x0

    new-array v12, v1, [Ljava/lang/Object;

    .line 620
    const/16 v8, 0x8

    move/from16 v9, p4

    .line 617
    invoke-virtual/range {v5 .. v12}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->checkPackageState(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v1

    .line 623
    const/4 v2, 0x1

    .line 617
    if-eq v1, v2, :cond_7

    .line 624
    const-string/jumbo v2, "WhetstonePackageState"

    .line 625
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Permission denied by Whetstone, cannot start contentProvider from "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 626
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 625
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 627
    const-string/jumbo v3, "/"

    .line 625
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 627
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    .line 625
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 627
    const-string/jumbo v3, " in "

    .line 625
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 628
    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_6

    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 625
    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 628
    const-string/jumbo v3, ", caller: "

    .line 625
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 629
    const-string/jumbo v3, ", UserId: "

    .line 625
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p4

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 624
    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    const/4 v1, 0x0

    return v1

    .line 623
    :cond_5
    const/4 v11, 0x0

    goto :goto_0

    .line 628
    :cond_6
    const/4 v1, 0x0

    goto :goto_1

    .line 634
    :cond_7
    sget-boolean v1, Lcom/miui/whetstone/WhetstonePackageState;->DEBUG:Z

    if-eqz v1, :cond_8

    .line 635
    const-string/jumbo v2, "WhetstonePackageState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "start contentProvider from "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 636
    const-string/jumbo v3, "/"

    .line 635
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 636
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    .line 635
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 636
    const-string/jumbo v3, " in "

    .line 635
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 637
    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_9

    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 635
    :goto_2
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 637
    const-string/jumbo v3, ", caller: "

    .line 635
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 638
    const-string/jumbo v3, ", UserId: "

    .line 635
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p4

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    .end local v7    # "callerName":Ljava/lang/String;
    .end local v13    # "callerApp":Lcom/android/server/am/ProcessRecord;
    :cond_8
    const/4 v1, 0x1

    return v1

    .line 637
    .restart local v7    # "callerName":Ljava/lang/String;
    .restart local v13    # "callerApp":Lcom/android/server/am/ProcessRecord;
    :cond_9
    const/4 v1, 0x0

    goto :goto_2
.end method

.method private static checkRunningCompatibility(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 669
    const/4 v0, 0x1

    return v0
.end method

.method private static checkStartActivityLocked(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;ILjava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/Intent;Ljava/lang/String;ZLandroid/os/Bundle;)Z
    .locals 22
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "callerApp"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "callingUid"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p5, "intent"    # Landroid/content/Intent;
    .param p6, "resolvedType"    # Ljava/lang/String;
    .param p7, "ignoreTargetSecurity"    # Z
    .param p8, "bOptions"    # Landroid/os/Bundle;

    .prologue
    .line 238
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v20

    .line 241
    .local v20, "startTime":J
    if-eqz p1, :cond_0

    .line 242
    move-object/from16 v0, p1

    iget v7, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    .line 243
    .local v7, "callingPid":I
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 p2, v0

    .line 253
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 255
    .local v16, "origId":J
    :try_start_0
    const-string/jumbo v4, "android.permission.START_ANY_ACTIVITY"

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v4, v7, v1}, Lcom/android/server/am/ActivityManagerService;->checkPermission(Ljava/lang/String;II)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v15

    .line 256
    .local v15, "startAnyPerm":I
    if-nez v15, :cond_2

    .line 257
    const/4 v4, 0x1

    .line 304
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 257
    return v4

    .line 245
    .end local v7    # "callingPid":I
    .end local v15    # "startAnyPerm":I
    .end local v16    # "origId":J
    :cond_0
    if-ltz p2, :cond_1

    .line 246
    const/4 v7, -0x1

    .restart local v7    # "callingPid":I
    goto :goto_0

    .line 248
    .end local v7    # "callingPid":I
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    .line 249
    .restart local v7    # "callingPid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    goto :goto_0

    .restart local v15    # "startAnyPerm":I
    .restart local v16    # "origId":J
    :cond_2
    move-object/from16 v4, p0

    move-object/from16 v5, p4

    move-object/from16 v6, p3

    move/from16 v8, p2

    move/from16 v9, p7

    .line 260
    :try_start_1
    invoke-static/range {v4 .. v9}, Lcom/android/server/am/ExtraActivityManagerService;->getComponentRestrictionForCallingPackage(Lcom/android/server/am/ActivityManagerService;Landroid/content/pm/ActivityInfo;Ljava/lang/String;IIZ)I

    move-result v11

    .line 263
    .local v11, "componentRestriction":I
    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 262
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p2

    invoke-static {v0, v4, v1, v7, v2}, Lcom/android/server/am/ExtraActivityManagerService;->getActionRestrictionForCallingPackage(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;Ljava/lang/String;II)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v10

    .line 264
    .local v10, "actionRestriction":I
    const/4 v4, 0x1

    if-eq v11, v4, :cond_3

    .line 265
    const/4 v4, 0x1

    if-ne v10, v4, :cond_4

    .line 266
    :cond_3
    const/4 v4, 0x0

    .line 304
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 266
    return v4

    .line 269
    :cond_4
    const/4 v4, 0x2

    if-ne v10, v4, :cond_5

    .line 270
    const/4 v4, 0x0

    .line 304
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 270
    return v4

    .line 271
    :cond_5
    const/4 v4, 0x2

    if-ne v11, v4, :cond_6

    .line 272
    const/4 v4, 0x0

    .line 304
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 272
    return v4

    .line 275
    :cond_6
    :try_start_2
    invoke-static/range {p8 .. p8}, Landroid/app/ActivityOptions;->fromBundle(Landroid/os/Bundle;)Landroid/app/ActivityOptions;

    move-result-object v14

    .line 276
    .local v14, "options":Landroid/app/ActivityOptions;
    if-eqz v14, :cond_7

    invoke-virtual {v14}, Landroid/app/ActivityOptions;->getLaunchTaskId()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_7

    .line 277
    const-string/jumbo v4, "android.permission.START_TASKS_FROM_RECENTS"

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v4, v7, v1}, Lcom/android/server/am/ActivityManagerService;->checkPermission(Ljava/lang/String;II)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v18

    .line 279
    .local v18, "startInTaskPerm":I
    if-eqz v18, :cond_7

    .line 280
    const/4 v4, 0x0

    .line 304
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 280
    return v4

    .line 284
    .end local v18    # "startInTaskPerm":I
    :cond_7
    :try_start_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService;->mIntentFirewall:Lcom/android/server/firewall/IntentFirewall;

    move-object/from16 v0, p4

    iget-object v9, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v5, p5

    move/from16 v6, p2

    move-object/from16 v8, p6

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/firewall/IntentFirewall;->checkStartActivity(Landroid/content/Intent;IILjava/lang/String;Landroid/content/pm/ApplicationInfo;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v4

    if-nez v4, :cond_8

    .line 285
    const/4 v4, 0x0

    .line 304
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 285
    return v4

    .line 288
    :cond_8
    :try_start_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v4, :cond_9

    .line 292
    :try_start_5
    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->cloneFilter()Landroid/content/Intent;

    move-result-object v19

    .line 293
    .local v19, "watchIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    .line 294
    move-object/from16 v0, p4

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 293
    move-object/from16 v0, v19

    invoke-interface {v4, v0, v5}, Landroid/app/IActivityController;->activityStarting(Landroid/content/Intent;Ljava/lang/String;)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v4

    if-nez v4, :cond_9

    .line 295
    const/4 v4, 0x0

    .line 304
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 295
    return v4

    .line 297
    .end local v19    # "watchIntent":Landroid/content/Intent;
    :catch_0
    move-exception v12

    .line 304
    :cond_9
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 307
    const-string/jumbo v4, "checkStartActivityLocked"

    move-wide/from16 v0, v20

    invoke-static {v0, v1, v4}, Lcom/android/server/am/ExtraActivityManagerService;->checkTime(JLjava/lang/String;)V

    .line 308
    const/4 v4, 0x1

    return v4

    .line 300
    .end local v10    # "actionRestriction":I
    .end local v11    # "componentRestriction":I
    .end local v14    # "options":Landroid/app/ActivityOptions;
    .end local v15    # "startAnyPerm":I
    :catch_1
    move-exception v13

    .line 301
    .local v13, "e":Ljava/lang/Exception;
    :try_start_6
    sget-object v4, Lcom/android/server/am/ExtraActivityManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "checkStartActivityLocked: An exception occured. "

    invoke-static {v4, v5, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 302
    const/4 v4, 0x0

    .line 304
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 302
    return v4

    .line 303
    .end local v13    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 304
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 303
    throw v4
.end method

.method static checkStartActivityPermission(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Landroid/app/IApplicationThread;Landroid/content/pm/ActivityInfo;Landroid/content/Intent;Ljava/lang/String;ZIZIILjava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;
    .locals 17
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "caller"    # Landroid/app/IApplicationThread;
    .param p3, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p4, "intent"    # Landroid/content/Intent;
    .param p5, "resolvedType"    # Ljava/lang/String;
    .param p6, "fromActivity"    # Z
    .param p7, "requestCode"    # I
    .param p8, "ignoreTargetSecurity"    # Z
    .param p9, "userId"    # I
    .param p10, "callingUid"    # I
    .param p11, "callingPackage"    # Ljava/lang/String;
    .param p12, "bOptions"    # Landroid/os/Bundle;

    .prologue
    .line 200
    if-eqz p3, :cond_3

    .line 201
    const/4 v2, 0x0

    .line 202
    .local v2, "callerApp":Lcom/android/server/am/ProcessRecord;
    const/4 v14, 0x0

    .line 203
    .local v14, "callerAppInfo":Landroid/content/pm/ApplicationInfo;
    const/4 v11, 0x0

    .line 204
    .local v11, "calleeAlreadyStarted":Z
    const/16 v16, 0x0

    .line 205
    .local v16, "havePermission":Z
    monitor-enter p1

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 206
    if-eqz p2, :cond_1

    .line 207
    invoke-virtual/range {p1 .. p2}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLocked(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 208
    .local v2, "callerApp":Lcom/android/server/am/ProcessRecord;
    if-nez v2, :cond_0

    monitor-exit p1

    .line 205
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 209
    return-object p4

    .line 211
    :cond_0
    :try_start_1
    iget-object v14, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .end local v2    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .end local v14    # "callerAppInfo":Landroid/content/pm/ApplicationInfo;
    :cond_1
    move-object/from16 v1, p1

    move/from16 v3, p10

    move-object/from16 v4, p11

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p8

    move-object/from16 v9, p12

    .line 214
    invoke-static/range {v1 .. v9}, Lcom/android/server/am/ExtraActivityManagerService;->checkStartActivityLocked(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;ILjava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/Intent;Ljava/lang/String;ZLandroid/os/Bundle;)Z

    move-result v16

    .line 215
    .local v16, "havePermission":Z
    if-eqz v16, :cond_2

    .line 217
    move-object/from16 v0, p3

    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p3

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    move-object/from16 v0, p3

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v0, p1

    invoke-static {v0, v1, v4, v5}, Lcom/android/server/am/ExtraActivityManagerService;->packageIsRunningLocked(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-eqz v1, :cond_2

    .line 218
    const/4 v11, 0x1

    :cond_2
    monitor-exit p1

    .line 205
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 223
    if-eqz v16, :cond_3

    .line 224
    const-string/jumbo v1, "security"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/security/SecurityManager;

    .line 225
    .local v3, "securityManager":Lmiui/security/SecurityManager;
    move-object/from16 v0, p3

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v4, p0

    move-object v5, v14

    move-object/from16 v6, p11

    move-object/from16 v8, p4

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v12, p9

    move/from16 v13, p10

    invoke-virtual/range {v3 .. v13}, Lmiui/security/SecurityManager;->getCheckIntent(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;ZIZII)Landroid/content/Intent;

    move-result-object v15

    .line 228
    .local v15, "checkIntent":Landroid/content/Intent;
    if-eqz v15, :cond_3

    .line 229
    move-object/from16 p4, v15

    .line 233
    .end local v3    # "securityManager":Lmiui/security/SecurityManager;
    .end local v11    # "calleeAlreadyStarted":Z
    .end local v15    # "checkIntent":Landroid/content/Intent;
    .end local v16    # "havePermission":Z
    :cond_3
    return-object p4

    .line 205
    .restart local v11    # "calleeAlreadyStarted":Z
    :catchall_0
    move-exception v1

    monitor-exit p1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private static checkTime(JLjava/lang/String;)V
    .locals 6
    .param p0, "startTime"    # J
    .param p2, "where"    # Ljava/lang/String;

    .prologue
    .line 970
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 971
    .local v0, "now":J
    sub-long v2, v0, p0

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 973
    sget-object v2, Lcom/android/server/am/ExtraActivityManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "MIUILOG-checkTime:Slow operation: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sub-long v4, v0, p0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "ms so far, now at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    :cond_0
    return-void
.end method

.method static checkWakePath(Lcom/android/server/am/ActivityManagerService;Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Landroid/content/pm/ComponentInfo;II)Z
    .locals 14
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "info"    # Landroid/content/pm/ComponentInfo;
    .param p5, "wakeType"    # I
    .param p6, "userId"    # I

    .prologue
    .line 913
    if-eqz p0, :cond_0

    if-nez p3, :cond_1

    .line 914
    :cond_0
    const/4 v2, 0x1

    return v2

    .line 913
    :cond_1
    if-eqz p4, :cond_0

    .line 917
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    .line 918
    .local v12, "startTime":J
    const/4 v11, 0x1

    .line 919
    .local v11, "ret":Z
    const-string/jumbo v5, ""

    .line 920
    .local v5, "callerPkg":Ljava/lang/String;
    if-eqz p1, :cond_5

    .line 921
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 922
    const-string/jumbo v2, "checkWakePath: synchronized (ams), get caller package info."

    invoke-static {v12, v13, v2}, Lcom/android/server/am/ExtraActivityManagerService;->checkTime(JLjava/lang/String;)V

    .line 923
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLocked(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v10

    .line 924
    .local v10, "callerApp":Lcom/android/server/am/ProcessRecord;
    if-eqz v10, :cond_2

    iget-object v2, v10, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_3

    .line 925
    :cond_2
    const/4 v2, 0x1

    monitor-exit p0

    .line 921
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 925
    return v2

    .line 927
    :cond_3
    :try_start_1
    iget-object v2, v10, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 921
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 938
    .end local v10    # "callerApp":Lcom/android/server/am/ProcessRecord;
    :goto_0
    const/4 v7, -0x1

    .line 939
    .local v7, "calleeUid":I
    move-object/from16 v0, p4

    iget-object v6, v0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    .line 940
    .local v6, "calleePkg":Ljava/lang/String;
    move-object/from16 v0, p4

    iget-object v4, v0, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    .line 941
    .local v4, "className":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 942
    .local v3, "action":Ljava/lang/String;
    move-object/from16 v0, p4

    iget-object v2, v0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_4

    .line 943
    move-object/from16 v0, p4

    iget-object v2, v0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 946
    :cond_4
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 947
    const/4 v2, 0x1

    return v2

    .line 921
    .end local v3    # "action":Ljava/lang/String;
    .end local v4    # "className":Ljava/lang/String;
    .end local v6    # "calleePkg":Ljava/lang/String;
    .end local v7    # "calleeUid":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v2

    .line 931
    :cond_5
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 932
    move-object/from16 v5, p2

    goto :goto_0

    .line 934
    :cond_6
    const-string/jumbo v5, "android"

    goto :goto_0

    .line 950
    .restart local v3    # "action":Ljava/lang/String;
    .restart local v4    # "className":Ljava/lang/String;
    .restart local v6    # "calleePkg":Ljava/lang/String;
    .restart local v7    # "calleeUid":I
    :cond_7
    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 951
    const/4 v2, 0x1

    return v2

    .line 954
    :cond_8
    if-ltz v7, :cond_a

    .line 955
    monitor-enter p0

    :try_start_2
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 956
    const-string/jumbo v2, "checkWakePath: synchronized (ams), callee package is running?"

    invoke-static {v12, v13, v2}, Lcom/android/server/am/ExtraActivityManagerService;->checkTime(JLjava/lang/String;)V

    .line 958
    move-object/from16 v0, p4

    iget-object v2, v0, Landroid/content/pm/ComponentInfo;->processName:Ljava/lang/String;

    invoke-static {p0, v6, v2, v7}, Lcom/android/server/am/ExtraActivityManagerService;->packageIsRunningLocked(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v2

    if-eqz v2, :cond_9

    .line 959
    const/4 v2, 0x1

    monitor-exit p0

    .line 955
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 959
    return v2

    :cond_9
    monitor-exit p0

    .line 955
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 964
    :cond_a
    invoke-static {}, Lmiui/security/WakePathChecker;->getInstance()Lmiui/security/WakePathChecker;

    move-result-object v2

    move/from16 v8, p5

    move/from16 v9, p6

    invoke-virtual/range {v2 .. v9}, Lmiui/security/WakePathChecker;->matchWakePathRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)Z

    move-result v2

    if-eqz v2, :cond_b

    const/4 v11, 0x0

    .line 965
    :goto_1
    const-string/jumbo v2, "checkWakePath"

    invoke-static {v12, v13, v2}, Lcom/android/server/am/ExtraActivityManagerService;->checkTime(JLjava/lang/String;)V

    .line 966
    return v11

    .line 955
    :catchall_1
    move-exception v2

    monitor-exit p0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v2

    .line 964
    :cond_b
    const/4 v11, 0x1

    goto :goto_1
.end method

.method public static closeCheckPriority()V
    .locals 2

    .prologue
    .line 1259
    invoke-static {}, Lcom/android/server/am/ExtraActivityManagerService;->getActivityManagerService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    .line 1260
    .local v0, "service":Lcom/android/server/am/ActivityManagerService;
    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1261
    invoke-static {v0}, Lcom/android/server/am/ActiveServicesInjector;->closeCheckPriority(Lcom/android/server/am/ActivityManagerService;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 1260
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1258
    return-void

    .line 1260
    :catchall_0
    move-exception v1

    monitor-exit v0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method static destroyActivity(Landroid/content/pm/ActivityInfo;)V
    .locals 2
    .param p0, "aInfo"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 894
    sget-boolean v0, Lcom/android/server/am/ExtraActivityManagerService;->mSystemReady:Z

    if-nez v0, :cond_0

    .line 895
    sget-object v0, Lcom/android/server/am/ExtraActivityManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "System was not ready,destroyActivity failed."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    return-void

    .line 898
    :cond_0
    if-nez p0, :cond_1

    .line 899
    sget-object v0, Lcom/android/server/am/ExtraActivityManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "aInfo is null!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    return-void

    .line 902
    :cond_1
    sget-object v0, Lcom/android/server/am/ExtraActivityManagerService;->mSplashScreenServiceDelegate:Lcom/miui/server/SplashScreenServiceDelegate;

    if-eqz v0, :cond_2

    .line 903
    sget-object v0, Lcom/android/server/am/ExtraActivityManagerService;->mSplashScreenServiceDelegate:Lcom/miui/server/SplashScreenServiceDelegate;

    invoke-virtual {v0, p0}, Lcom/miui/server/SplashScreenServiceDelegate;->destroyActivity(Landroid/content/pm/ActivityInfo;)V

    .line 893
    :cond_2
    return-void
.end method

.method private static ensureDeviceProvisioned(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    .line 827
    invoke-static {p0}, Lcom/android/server/am/ExtraActivityManagerService;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 828
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 829
    .local v2, "pm":Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v3, "com.android.provision"

    .line 830
    const-string/jumbo v4, "com.android.provision.activities.DefaultActivity"

    .line 829
    invoke-direct {v1, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 831
    .local v1, "name":Landroid/content/ComponentName;
    if-eqz v2, :cond_0

    .line 832
    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 833
    sget-object v3, Lcom/android/server/am/ExtraActivityManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "The device provisioned state is inconsistent,try to restore."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "device_provisioned"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 835
    invoke-virtual {v2, v1, v5, v5}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 837
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.MAIN"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 838
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 839
    const/high16 v3, 0x10000000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 840
    const-string/jumbo v3, "android.intent.category.HOME"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 841
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 826
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "name":Landroid/content/ComponentName;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    return-void
.end method

.method public static finishActivity(Lcom/android/server/am/ActivityManagerService;Landroid/os/IBinder;ILandroid/content/Intent;)Landroid/os/IBinder;
    .locals 4
    .param p0, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "resultCode"    # I
    .param p3, "resultData"    # Landroid/content/Intent;

    .prologue
    .line 180
    if-nez p1, :cond_1

    .line 181
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 182
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "security"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/security/SecurityManager;

    .line 183
    .local v0, "securityManager":Lmiui/security/SecurityManager;
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 184
    .local v1, "top":Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 185
    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lmiui/security/SecurityManager;->getApplicationAccessControlEnabled(Ljava/lang/String;)Z

    move-result v2

    .line 184
    if-eqz v2, :cond_0

    .line 186
    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lmiui/security/SecurityManager;->checkAccessControlPass(Ljava/lang/String;Landroid/content/Intent;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    monitor-exit p0

    .line 181
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 191
    .end local v0    # "securityManager":Lmiui/security/SecurityManager;
    .end local v1    # "top":Lcom/android/server/am/ActivityRecord;
    :cond_1
    return-object p1

    .line 187
    .restart local v0    # "securityManager":Lmiui/security/SecurityManager;
    .restart local v1    # "top":Lcom/android/server/am/ActivityRecord;
    :cond_2
    :try_start_1
    iget-object p1, v1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 181
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 187
    return-object p1

    .line 181
    .end local v0    # "securityManager":Lmiui/security/SecurityManager;
    .end local v1    # "top":Lcom/android/server/am/ActivityRecord;
    :catchall_0
    move-exception v2

    monitor-exit p0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method

.method public static finishBooting(Lcom/android/server/am/ActivityManagerService;)V
    .locals 2
    .param p0, "service"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    .line 440
    new-instance v0, Lmiui/drm/DrmBroadcast;

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lmiui/drm/DrmBroadcast;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lmiui/drm/DrmBroadcast;->broadcast()V

    .line 439
    return-void
.end method

.method static forceStopUserLocked(ILjava/lang/String;)V
    .locals 0
    .param p0, "userId"    # I
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 993
    invoke-static {p0}, Lmiui/securityspace/SecuritySpaceEcryptManager;->spaceEcryptfsUnmount(I)V

    .line 992
    return-void
.end method

.method private static getActionRestrictionForCallingPackage(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;Ljava/lang/String;II)I
    .locals 8
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingPid"    # I
    .param p4, "callingUid"    # I

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 359
    if-nez p1, :cond_0

    .line 360
    return v6

    .line 363
    :cond_0
    sget-object v4, Lcom/android/server/am/ExtraActivityManagerService;->ACTION_TO_RUNTIME_PERMISSION:Landroid/util/ArrayMap;

    invoke-virtual {v4, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 364
    .local v3, "permission":Ljava/lang/String;
    if-nez v3, :cond_1

    .line 365
    return v6

    .line 370
    :cond_1
    :try_start_0
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 371
    const/16 v5, 0x1000

    .line 370
    invoke-virtual {v4, p2, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 376
    .local v2, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-static {v4, v3}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 377
    return v6

    .line 372
    .end local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 373
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v6

    .line 380
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_2
    invoke-virtual {p0, v3, p3, p4}, Lcom/android/server/am/ActivityManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result v4

    if-ne v4, v7, :cond_3

    .line 382
    const/4 v4, 0x1

    return v4

    .line 385
    :cond_3
    invoke-static {v3}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v1

    .line 386
    .local v1, "opCode":I
    if-ne v1, v7, :cond_4

    .line 387
    return v6

    .line 390
    :cond_4
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/AppOpsService;

    invoke-virtual {v4, v1, p4, p2}, Lcom/android/server/AppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_5

    .line 392
    const/4 v4, 0x2

    return v4

    .line 395
    :cond_5
    return v6
.end method

.method private static getActivityManagerService()Lcom/android/server/am/ActivityManagerService;
    .locals 1

    .prologue
    .line 675
    sget-object v0, Lcom/android/server/am/ExtraActivityManagerService;->sAmInstance:Lcom/android/server/am/ActivityManagerService;

    if-nez v0, :cond_0

    .line 676
    const-string/jumbo v0, "activity"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityManagerService;

    sput-object v0, Lcom/android/server/am/ExtraActivityManagerService;->sAmInstance:Lcom/android/server/am/ActivityManagerService;

    .line 678
    :cond_0
    sget-object v0, Lcom/android/server/am/ExtraActivityManagerService;->sAmInstance:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method private static getComponentRestrictionForCallingPackage(Lcom/android/server/am/ActivityManagerService;Landroid/content/pm/ActivityInfo;Ljava/lang/String;IIZ)I
    .locals 9
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "activityInfo"    # Landroid/content/pm/ActivityInfo;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingPid"    # I
    .param p4, "callingUid"    # I
    .param p5, "ignoreTargetSecurity"    # Z

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 313
    if-nez p5, :cond_0

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    .line 314
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-boolean v5, p1, Landroid/content/pm/ActivityInfo;->exported:Z

    move-object v0, p0

    move v2, p3

    move v3, p4

    .line 313
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result v0

    if-ne v0, v8, :cond_0

    .line 316
    const/4 v0, 0x1

    return v0

    .line 319
    :cond_0
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 320
    return v7

    .line 323
    :cond_1
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    invoke-static {v0}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v6

    .line 324
    .local v6, "opCode":I
    if-ne v6, v8, :cond_2

    .line 325
    return v7

    .line 328
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/AppOpsService;

    invoke-virtual {v0, v6, p4, p2}, Lcom/android/server/AppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3

    .line 330
    if-nez p5, :cond_3

    .line 331
    const/4 v0, 0x2

    return v0

    .line 335
    :cond_3
    return v7
.end method

.method public static getConnProviderNamesLocked(Ljava/lang/String;I)Ljava/util/List;
    .locals 13
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1311
    invoke-static {}, Lcom/android/server/am/ExtraActivityManagerService;->getActivityManagerService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v12

    .line 1312
    .local v12, "service":Lcom/android/server/am/ActivityManagerService;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1313
    .local v11, "providerNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    monitor-enter v12

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1314
    iget-object v0, v12, Lcom/android/server/am/ActivityManagerService;->mProviderMap:Lcom/android/server/am/ProviderMap;

    if-nez v0, :cond_0

    .line 1315
    sget-object v0, Lcom/android/server/am/ExtraActivityManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "mProviderMap is null !!!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v12

    .line 1313
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1316
    return-object v11

    .line 1318
    :cond_0
    :try_start_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1319
    .local v6, "providers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ContentProviderRecord;>;"
    iget-object v0, v12, Lcom/android/server/am/ActivityManagerService;->mProviderMap:Lcom/android/server/am/ProviderMap;

    .line 1320
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v1, p0

    move v5, p1

    .line 1319
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ProviderMap;->collectPackageProvidersLocked(Ljava/lang/String;Ljava/util/Set;ZZILjava/util/ArrayList;)Z

    .line 1321
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "cpr$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/ContentProviderRecord;

    .line 1322
    .local v9, "cpr":Lcom/android/server/am/ContentProviderRecord;
    iget-object v0, v9, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "conn$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ContentProviderConnection;

    .line 1323
    .local v7, "conn":Lcom/android/server/am/ContentProviderConnection;
    if-eqz v7, :cond_2

    iget-object v0, v7, Lcom/android/server/am/ContentProviderConnection;->client:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_2

    .line 1324
    iget-object v0, v7, Lcom/android/server/am/ContentProviderConnection;->client:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 1325
    iget-object v0, v7, Lcom/android/server/am/ContentProviderConnection;->client:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1313
    .end local v6    # "providers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ContentProviderRecord;>;"
    .end local v7    # "conn":Lcom/android/server/am/ContentProviderConnection;
    .end local v8    # "conn$iterator":Ljava/util/Iterator;
    .end local v9    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .end local v10    # "cpr$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v0

    monitor-exit v12

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .restart local v6    # "providers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ContentProviderRecord;>;"
    .restart local v10    # "cpr$iterator":Ljava/util/Iterator;
    :cond_3
    monitor-exit v12

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1329
    return-object v11
.end method

.method public static getCurAdjByPid(I)I
    .locals 4
    .param p0, "pid"    # I

    .prologue
    .line 696
    invoke-static {}, Lcom/android/server/am/ExtraActivityManagerService;->getActivityManagerService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    .line 697
    .local v0, "amService":Lcom/android/server/am/ActivityManagerService;
    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v3

    .line 698
    :try_start_0
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v2, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 699
    .local v1, "processRecord":Lcom/android/server/am/ProcessRecord;
    if-eqz v1, :cond_0

    .line 700
    iget v2, v1, Lcom/android/server/am/ProcessRecord;->curAdj:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    return v2

    :cond_0
    monitor-exit v3

    .line 703
    const v2, 0x7fffffff

    return v2

    .line 697
    .end local v1    # "processRecord":Lcom/android/server/am/ProcessRecord;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static getCurSchedGroupByPid(I)I
    .locals 4
    .param p0, "pid"    # I

    .prologue
    .line 718
    invoke-static {}, Lcom/android/server/am/ExtraActivityManagerService;->getActivityManagerService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    .line 719
    .local v0, "amService":Lcom/android/server/am/ActivityManagerService;
    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v3

    .line 720
    :try_start_0
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v2, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 721
    .local v1, "processRecord":Lcom/android/server/am/ProcessRecord;
    if-eqz v1, :cond_0

    .line 722
    iget v2, v1, Lcom/android/server/am/ProcessRecord;->curSchedGroup:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    return v2

    :cond_0
    monitor-exit v3

    .line 725
    const/4 v2, -0x1

    return v2

    .line 719
    .end local v1    # "processRecord":Lcom/android/server/am/ProcessRecord;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static getCurrentUserId()I
    .locals 4

    .prologue
    .line 1031
    invoke-static {}, Lcom/android/server/am/ExtraActivityManagerService;->getActivityManagerService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    .line 1032
    .local v0, "amService":Lcom/android/server/am/ActivityManagerService;
    const-string/jumbo v2, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityManagerService;->checkCallingPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 1034
    const-string/jumbo v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityManagerService;->checkCallingPermission(Ljava/lang/String;)I

    move-result v2

    .line 1033
    if-eqz v2, :cond_0

    .line 1036
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Permission Denial: getCurrentUserId() from pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1037
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 1036
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1038
    const-string/jumbo v3, ", uid="

    .line 1036
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1038
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 1036
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1039
    const-string/jumbo v3, " requires "

    .line 1036
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1039
    const-string/jumbo v3, "android.permission.INTERACT_ACROSS_USERS"

    .line 1036
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1040
    .local v1, "msg":Ljava/lang/String;
    sget-object v2, Lcom/android/server/am/ExtraActivityManagerService;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    new-instance v2, Ljava/lang/SecurityException;

    invoke-direct {v2, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1043
    .end local v1    # "msg":Ljava/lang/String;
    :cond_0
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v2}, Lcom/android/server/am/UserController;->getCurrentOrTargetUserIdLocked()I

    move-result v2

    return v2
.end method

.method public static getExtraInstallFlags(I)I
    .locals 2
    .param p0, "pid"    # I

    .prologue
    .line 751
    const/4 v0, 0x0

    .line 753
    .local v0, "installFlags":I
    invoke-static {p0}, Lcom/android/server/am/ExtraActivityManagerService;->getCurSchedGroupByPid(I)I

    move-result v1

    if-nez v1, :cond_0

    .line 754
    const/high16 v0, -0x80000000

    .line 756
    :cond_0
    return v0
.end method

.method public static getMemoryTrimLevel()I
    .locals 3

    .prologue
    .line 1266
    invoke-static {}, Lcom/android/server/am/ExtraActivityManagerService;->getActivityManagerService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    .line 1268
    .local v0, "service":Lcom/android/server/am/ActivityManagerService;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->isIsolated(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1269
    new-instance v1, Ljava/lang/SecurityException;

    const-string/jumbo v2, "Isolated process not allowed to call getMemoryTrimLevel"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1272
    :cond_0
    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1273
    iget v1, v0, Lcom/android/server/am/ActivityManagerService;->mLastMemoryLevel:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 1272
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1273
    return v1

    .line 1272
    :catchall_0
    move-exception v1

    monitor-exit v0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public static getPackageNameByPid(I)Ljava/lang/String;
    .locals 5
    .param p0, "pid"    # I

    .prologue
    const/4 v4, 0x0

    .line 682
    invoke-static {}, Lcom/android/server/am/ExtraActivityManagerService;->getActivityManagerService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    .line 683
    .local v0, "amService":Lcom/android/server/am/ActivityManagerService;
    if-nez v0, :cond_0

    .line 684
    return-object v4

    .line 686
    :cond_0
    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v3

    .line 687
    :try_start_0
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v2, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 688
    .local v1, "processRecord":Lcom/android/server/am/ProcessRecord;
    if-eqz v1, :cond_1

    .line 689
    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    return-object v2

    :cond_1
    monitor-exit v3

    .line 692
    return-object v4

    .line 686
    .end local v1    # "processRecord":Lcom/android/server/am/ProcessRecord;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private static getPackageNameForReceiver(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .param p0, "receiver"    # Ljava/lang/Object;

    .prologue
    .line 420
    const/4 v0, 0x0

    .line 421
    .local v0, "pkgName":Ljava/lang/String;
    instance-of v2, p0, Lcom/android/server/am/BroadcastFilter;

    if-eqz v2, :cond_1

    .line 422
    check-cast p0, Lcom/android/server/am/BroadcastFilter;

    .end local p0    # "receiver":Ljava/lang/Object;
    iget-object v0, p0, Lcom/android/server/am/BroadcastFilter;->packageName:Ljava/lang/String;

    .line 430
    .end local v0    # "pkgName":Ljava/lang/String;
    .local v1, "rinfo":Landroid/content/pm/ResolveInfo;
    .restart local p0    # "receiver":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object v0

    .line 423
    .end local v1    # "rinfo":Landroid/content/pm/ResolveInfo;
    .restart local v0    # "pkgName":Ljava/lang/String;
    :cond_1
    instance-of v2, p0, Landroid/content/pm/ResolveInfo;

    if-eqz v2, :cond_0

    move-object v1, p0

    .line 424
    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 425
    .restart local v1    # "rinfo":Landroid/content/pm/ResolveInfo;
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_0

    .line 426
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .local v0, "pkgName":Ljava/lang/String;
    goto :goto_0
.end method

.method public static getProcStateByPid(I)I
    .locals 4
    .param p0, "pid"    # I

    .prologue
    .line 707
    invoke-static {}, Lcom/android/server/am/ExtraActivityManagerService;->getActivityManagerService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    .line 708
    .local v0, "amService":Lcom/android/server/am/ActivityManagerService;
    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v3

    .line 709
    :try_start_0
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v2, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 710
    .local v1, "processRecord":Lcom/android/server/am/ProcessRecord;
    if-eqz v1, :cond_0

    .line 711
    iget v2, v1, Lcom/android/server/am/ProcessRecord;->curProcState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    return v2

    :cond_0
    monitor-exit v3

    .line 714
    const/4 v2, -0x1

    return v2

    .line 708
    .end local v1    # "processRecord":Lcom/android/server/am/ProcessRecord;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static getRenderThreadTidByPid(I)I
    .locals 8
    .param p0, "pid"    # I

    .prologue
    const/4 v7, 0x0

    .line 731
    const-class v5, Lcom/android/server/am/ProcessRecord;

    const-string/jumbo v6, "renderThreadTid"

    invoke-static {v5, v6}, Lmiui/util/ReflectionUtils;->tryFindField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 732
    .local v3, "renderThreadTid":Ljava/lang/reflect/Field;
    if-nez v3, :cond_0

    .line 733
    return v7

    .line 735
    :cond_0
    invoke-static {}, Lcom/android/server/am/ExtraActivityManagerService;->getActivityManagerService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    .line 736
    .local v0, "amService":Lcom/android/server/am/ActivityManagerService;
    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v6

    .line 737
    :try_start_0
    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v5, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 738
    .local v2, "proc":Lcom/android/server/am/ProcessRecord;
    if-eqz v2, :cond_1

    .line 740
    :try_start_1
    invoke-virtual {v3, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    .local v4, "tid":I
    monitor-exit v6

    .line 741
    return v4

    .line 742
    .end local v4    # "tid":I
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    monitor-exit v6

    .line 743
    return v7

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    monitor-exit v6

    .line 747
    return v7

    .line 736
    .end local v2    # "proc":Lcom/android/server/am/ProcessRecord;
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method public static getRunningProcessInfos()Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .prologue
    const-wide/16 v14, 0x0

    .line 1197
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1198
    .local v7, "result":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1199
    .local v5, "pids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {}, Lcom/android/server/am/ExtraActivityManagerService;->getActivityManagerService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v8

    .line 1200
    .local v8, "service":Lcom/android/server/am/ActivityManagerService;
    const/4 v1, 0x0

    .line 1201
    .local v1, "bundle":Landroid/os/Bundle;
    monitor-enter v8

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1202
    iget-object v10, v8, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v10

    add-int/lit8 v4, v10, -0x1

    .local v4, "i":I
    move-object v2, v1

    .end local v1    # "bundle":Landroid/os/Bundle;
    .local v2, "bundle":Landroid/os/Bundle;
    :goto_0
    if-ltz v4, :cond_1

    .line 1203
    :try_start_1
    iget-object v10, v8, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ProcessRecord;

    .line 1204
    .local v6, "proc":Lcom/android/server/am/ProcessRecord;
    invoke-virtual {v6}, Lcom/android/server/am/ProcessRecord;->getSetAdjWithServices()I

    move-result v3

    .line 1205
    .local v3, "curAdj":I
    iget-object v10, v6, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v10, :cond_0

    const/16 v10, 0x1f4

    if-ge v3, v10, :cond_0

    .line 1206
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 1207
    .end local v2    # "bundle":Landroid/os/Bundle;
    .local v1, "bundle":Landroid/os/Bundle;
    :try_start_2
    const-string/jumbo v10, "pid"

    iget v11, v6, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v1, v10, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1208
    const-string/jumbo v10, "adj"

    invoke-virtual {v1, v10, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1209
    const-string/jumbo v10, "lastPss"

    iget-wide v12, v6, Lcom/android/server/am/ProcessRecord;->lastPss:J

    invoke-virtual {v1, v10, v12, v13}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1210
    const-string/jumbo v10, "lastPssTime"

    iget-wide v12, v6, Lcom/android/server/am/ProcessRecord;->lastPssTime:J

    invoke-virtual {v1, v10, v12, v13}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1211
    const-string/jumbo v10, "processName"

    iget-object v11, v6, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1212
    const-string/jumbo v10, "packageUid"

    iget-object v11, v6, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v10, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1213
    const-string/jumbo v10, "packageName"

    iget-object v11, v6, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1214
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1216
    :goto_1
    iget v10, v6, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1202
    add-int/lit8 v4, v4, -0x1

    move-object v2, v1

    .end local v1    # "bundle":Landroid/os/Bundle;
    .restart local v2    # "bundle":Landroid/os/Bundle;
    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 1205
    .end local v2    # "bundle":Landroid/os/Bundle;
    .restart local v1    # "bundle":Landroid/os/Bundle;
    goto :goto_1

    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v3    # "curAdj":I
    .end local v6    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v2    # "bundle":Landroid/os/Bundle;
    :cond_1
    monitor-exit v8

    .line 1201
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1219
    iget-object v11, v8, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    monitor-enter v11

    .line 1220
    :try_start_3
    iget-object v10, v8, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v10}, Lcom/android/internal/os/ProcessCpuTracker;->countStats()I

    move-result v0

    .line 1221
    .local v0, "N":I
    const/4 v4, 0x0

    :goto_2
    if-ge v4, v0, :cond_4

    .line 1222
    iget-object v10, v8, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v10, v4}, Lcom/android/internal/os/ProcessCpuTracker;->getStats(I)Lcom/android/internal/os/ProcessCpuTracker$Stats;

    move-result-object v9

    .line 1223
    .local v9, "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    iget-wide v12, v9, Lcom/android/internal/os/ProcessCpuTracker$Stats;->vsize:J

    cmp-long v10, v12, v14

    if-lez v10, :cond_2

    iget v10, v9, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v5, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result v10

    if-eqz v10, :cond_3

    :cond_2
    move-object v1, v2

    .line 1221
    .end local v2    # "bundle":Landroid/os/Bundle;
    .restart local v1    # "bundle":Landroid/os/Bundle;
    :goto_3
    add-int/lit8 v4, v4, 0x1

    move-object v2, v1

    .end local v1    # "bundle":Landroid/os/Bundle;
    .restart local v2    # "bundle":Landroid/os/Bundle;
    goto :goto_2

    .line 1201
    .end local v0    # "N":I
    .end local v2    # "bundle":Landroid/os/Bundle;
    .end local v4    # "i":I
    .end local v9    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    :catchall_0
    move-exception v10

    :goto_4
    monitor-exit v8

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v10

    .line 1224
    .restart local v0    # "N":I
    .restart local v2    # "bundle":Landroid/os/Bundle;
    .restart local v4    # "i":I
    .restart local v9    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    :cond_3
    :try_start_4
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1225
    .end local v2    # "bundle":Landroid/os/Bundle;
    .restart local v1    # "bundle":Landroid/os/Bundle;
    :try_start_5
    const-string/jumbo v10, "pid"

    iget v12, v9, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-virtual {v1, v10, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1226
    const-string/jumbo v10, "adj"

    const/16 v12, -0x3e8

    invoke-virtual {v1, v10, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1227
    const-string/jumbo v10, "lastPss"

    const-wide/16 v12, -0x1

    invoke-virtual {v1, v10, v12, v13}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1228
    const-string/jumbo v10, "lastPssTime"

    const-wide/16 v12, 0x0

    invoke-virtual {v1, v10, v12, v13}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1229
    const-string/jumbo v10, "processName"

    iget-object v12, v9, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    invoke-virtual {v1, v10, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1230
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_3

    .line 1219
    :catchall_1
    move-exception v10

    .end local v0    # "N":I
    .end local v9    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    :goto_5
    monitor-exit v11

    throw v10

    .end local v1    # "bundle":Landroid/os/Bundle;
    .restart local v0    # "N":I
    .restart local v2    # "bundle":Landroid/os/Bundle;
    :cond_4
    monitor-exit v11

    .line 1234
    return-object v7

    .line 1219
    .end local v0    # "N":I
    :catchall_2
    move-exception v10

    move-object v1, v2

    .end local v2    # "bundle":Landroid/os/Bundle;
    .restart local v1    # "bundle":Landroid/os/Bundle;
    goto :goto_5

    .line 1201
    .end local v1    # "bundle":Landroid/os/Bundle;
    .restart local v2    # "bundle":Landroid/os/Bundle;
    :catchall_3
    move-exception v10

    move-object v1, v2

    .end local v2    # "bundle":Landroid/os/Bundle;
    .restart local v1    # "bundle":Landroid/os/Bundle;
    goto :goto_4
.end method

.method public static getTaskIntentForToken(Landroid/os/IBinder;)Ljava/util/ArrayList;
    .locals 7
    .param p0, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 978
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityManagerService;

    .line 979
    .local v1, "ams":Lcom/android/server/am/ActivityManagerService;
    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 980
    invoke-static {p0}, Lcom/android/server/am/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 981
    .local v0, "activityRecord":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_1

    .line 982
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 983
    .local v2, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Intent;>;"
    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v5, v5, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "r$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 984
    .local v3, "r":Lcom/android/server/am/ActivityRecord;
    new-instance v5, Landroid/content/Intent;

    iget-object v6, v3, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 979
    .end local v0    # "activityRecord":Lcom/android/server/am/ActivityRecord;
    .end local v2    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Intent;>;"
    .end local v3    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v4    # "r$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v5

    monitor-exit v1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v5

    .restart local v0    # "activityRecord":Lcom/android/server/am/ActivityRecord;
    .restart local v2    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Intent;>;"
    .restart local v4    # "r$iterator":Ljava/util/Iterator;
    :cond_0
    monitor-exit v1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 986
    return-object v2

    .end local v2    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Intent;>;"
    .end local v4    # "r$iterator":Ljava/util/Iterator;
    :cond_1
    monitor-exit v1

    .line 979
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 989
    return-object v5
.end method

.method public static getTopRunningActivityInfo()Ljava/util/HashMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 1047
    invoke-static {}, Lcom/android/server/am/ExtraActivityManagerService;->getActivityManagerService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    .line 1048
    .local v3, "service":Lcom/android/server/am/ActivityManagerService;
    monitor-enter v3

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1049
    iget-object v4, v3, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 1050
    .local v0, "activityStack":Lcom/android/server/am/ActivityStack;
    if-eqz v0, :cond_0

    .line 1051
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .line 1052
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v2, :cond_0

    .line 1053
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1054
    .local v1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v4, "packageName"

    iget-object v5, v2, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1055
    const-string/jumbo v4, "token"

    iget-object v5, v2, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1056
    const-string/jumbo v4, "userId"

    iget v5, v2, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    .line 1048
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1057
    return-object v1

    .end local v1    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_0
    monitor-exit v3

    .line 1048
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1061
    return-object v5

    .line 1048
    .end local v0    # "activityStack":Lcom/android/server/am/ActivityStack;
    :catchall_0
    move-exception v4

    monitor-exit v3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v4
.end method

.method public static handleExtraConfigurationChangesForSystem(ILandroid/content/res/Configuration;)V
    .locals 1
    .param p0, "changes"    # I
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 803
    invoke-static {}, Landroid/content/res/MiuiResources;->isPreloadedCacheEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 804
    invoke-static {}, Lcom/android/server/AssetAtlasService;->disable()V

    .line 806
    :cond_0
    invoke-static {p0, p1}, Landroid/app/MiuiThemeHelper;->handleExtraConfigurationChangesForSystem(ILandroid/content/res/Configuration;)V

    .line 802
    return-void
.end method

.method static handleWindowManagerAndUserLru(Landroid/content/Context;IIILcom/android/server/wm/WindowManagerService;[II)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I
    .param p2, "userIdOrig"    # I
    .param p3, "oldUserId"    # I
    .param p4, "mWindowManager"    # Lcom/android/server/wm/WindowManagerService;
    .param p5, "mCurrentProfileIds"    # [I
    .param p6, "switchUserCallingUid"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 1004
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1005
    .local v1, "userIdInt":Ljava/lang/Integer;
    invoke-static {p2}, Lmiui/securityspace/SecuritySpaceEcryptManager;->needAirlockUser(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1006
    invoke-virtual {p4, p2, p5}, Lcom/android/server/wm/WindowManagerService;->setCurrentUserAirlock(I[I)V

    .line 1007
    const-string/jumbo v2, "ActivityManagerService"

    const-string/jumbo v3, "setCurrentUser - needAirLockUser."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1015
    const-string/jumbo v3, "second_user_id"

    const/16 v4, -0x2710

    .line 1014
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1016
    .local v0, "privacyUserId":I
    const-string/jumbo v2, "ActivityManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "privacyUserId :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " userId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " userIdOrig:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " oldUserId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    invoke-static {p6}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    const/16 v3, 0x3e8

    if-ne v2, v3, :cond_5

    .line 1018
    if-ne v0, p3, :cond_3

    if-nez p1, :cond_3

    .line 1022
    :cond_1
    const-string/jumbo v2, "ActivityManagerService"

    const-string/jumbo v3, "switch without lock"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    :goto_1
    return-void

    .line 1009
    .end local v0    # "privacyUserId":I
    :cond_2
    invoke-virtual {p4, p2, p5}, Lcom/android/server/wm/WindowManagerService;->setCurrentUser(I[I)V

    .line 1010
    invoke-static {p2}, Lmiui/securityspace/SecuritySpaceEcryptManager;->spaceNeedsEcryptfsMount(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1011
    invoke-static {p2, v3, v5}, Lmiui/securityspace/SecuritySpaceEcryptManager;->spaceEcryptfsMount(IILjava/lang/String;)I

    goto :goto_0

    .line 1019
    .restart local v0    # "privacyUserId":I
    :cond_3
    if-nez p3, :cond_4

    if-eq p1, v0, :cond_1

    .line 1020
    :cond_4
    invoke-static {p0, p3}, Lmiui/securityspace/CrossUserUtils;->isAirSpace(Landroid/content/Context;I)Z

    move-result v2

    .line 1018
    if-nez v2, :cond_1

    .line 1021
    invoke-static {p0, p1}, Lmiui/securityspace/CrossUserUtils;->isAirSpace(Landroid/content/Context;I)Z

    move-result v2

    .line 1017
    if-nez v2, :cond_1

    .line 1026
    :cond_5
    invoke-virtual {p4, v5}, Lcom/android/server/wm/WindowManagerService;->lockNow(Landroid/os/Bundle;)V

    goto :goto_1
.end method

.method public static hasForegroundActivities(I)Z
    .locals 4
    .param p0, "pid"    # I

    .prologue
    .line 760
    invoke-static {}, Lcom/android/server/am/ExtraActivityManagerService;->getActivityManagerService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    .line 761
    .local v0, "amService":Lcom/android/server/am/ActivityManagerService;
    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v3

    .line 762
    :try_start_0
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v2, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 763
    .local v1, "processRecord":Lcom/android/server/am/ProcessRecord;
    if-eqz v1, :cond_0

    .line 764
    iget-boolean v2, v1, Lcom/android/server/am/ProcessRecord;->foregroundActivities:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    return v2

    :cond_0
    monitor-exit v3

    .line 767
    const/4 v2, 0x0

    return v2

    .line 761
    .end local v1    # "processRecord":Lcom/android/server/am/ProcessRecord;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static hookStartActivity(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 1307
    invoke-static {p0, p1}, Lcom/miui/hybrid/hook/HookClient;->redirectStartActivity(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static init()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 434
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "sdcard"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/16 v1, 0x1ff

    invoke-static {v0, v1, v3, v3}, Lmiui/os/FileUtils;->mkdirs(Ljava/io/File;III)Z

    .line 435
    invoke-static {}, Lmiui/content/res/IconCustomizer;->checkModIconsTimestamp()V

    .line 436
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/am/ExtraActivityManagerService;->mSystemReady:Z

    .line 433
    return-void
.end method

.method static isAllowedStartActivity(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActivityStackSupervisor;Landroid/content/Intent;Ljava/lang/String;ILandroid/content/pm/ActivityInfo;)Z
    .locals 12
    .param p0, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "supervisor"    # Lcom/android/server/am/ActivityStackSupervisor;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "callingUid"    # I
    .param p5, "aInfo"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 1066
    invoke-static/range {p4 .. p4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v9

    const/16 v10, 0x3e8

    if-eq v9, v10, :cond_0

    .line 1067
    invoke-virtual {p2}, Landroid/content/Intent;->getMiuiFlags()I

    move-result v9

    and-int/lit8 v9, v9, 0x2

    if-eqz v9, :cond_1

    .line 1071
    :cond_0
    move-object/from16 v0, p5

    iget-object v9, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    sput v9, Lcom/android/server/am/ExtraActivityManagerService;->mLastStartActivityUid:I

    .line 1072
    const/4 v9, 0x1

    return v9

    .line 1068
    :cond_1
    invoke-static {p3}, Lcom/android/server/am/PendingIntentRecordInjector;->containsPendingIntent(Ljava/lang/String;)Z

    move-result v9

    .line 1066
    if-nez v9, :cond_0

    .line 1069
    move-object/from16 v0, p5

    iget-object v9, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v9}, Lcom/android/server/am/PendingIntentRecordInjector;->containsPendingIntent(Ljava/lang/String;)Z

    move-result v9

    .line 1066
    if-nez v9, :cond_0

    .line 1070
    sget v9, Lcom/android/server/am/ExtraActivityManagerService;->mLastStartActivityUid:I

    move/from16 v0, p4

    if-eq v0, v9, :cond_0

    .line 1075
    invoke-virtual {p1}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v8

    .line 1076
    .local v8, "stack":Lcom/android/server/am/ActivityStack;
    if-nez v8, :cond_2

    .line 1077
    const/4 v9, 0x1

    return v9

    .line 1079
    :cond_2
    invoke-virtual {v8}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v7

    .line 1080
    .local v7, "r":Lcom/android/server/am/ActivityRecord;
    if-nez v7, :cond_3

    .line 1081
    const/4 v9, 0x1

    return v9

    .line 1083
    :cond_3
    iget-object v9, v7, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v0, p4

    if-ne v0, v9, :cond_4

    .line 1084
    move-object/from16 v0, p5

    iget-object v9, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    sput v9, Lcom/android/server/am/ExtraActivityManagerService;->mLastStartActivityUid:I

    .line 1085
    const/4 v9, 0x1

    return v9

    .line 1087
    :cond_4
    iget-object v9, p0, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/AppOpsService;

    const/16 v10, 0x2725

    move/from16 v0, p4

    invoke-virtual {v9, v10, v0, p3}, Lcom/android/server/AppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result v9

    if-eqz v9, :cond_9

    .line 1089
    iget-object v9, p0, Lcom/android/server/am/ActivityManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v9}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v9

    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 1090
    .local v2, "NP":I
    const/4 v6, 0x0

    .local v6, "ip":I
    :goto_0
    if-ge v6, v2, :cond_8

    .line 1091
    iget-object v9, p0, Lcom/android/server/am/ActivityManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v9}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseArray;

    .line 1092
    .local v4, "apps":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 1093
    .local v1, "NA":I
    const/4 v5, 0x0

    .local v5, "ia":I
    :goto_1
    if-ge v5, v1, :cond_7

    .line 1094
    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    .line 1095
    .local v3, "app":Lcom/android/server/am/ProcessRecord;
    iget v9, v3, Lcom/android/server/am/ProcessRecord;->uid:I

    move/from16 v0, p4

    if-ne v9, v0, :cond_6

    .line 1096
    iget-boolean v9, v3, Lcom/android/server/am/ProcessRecord;->foregroundActivities:Z

    if-nez v9, :cond_5

    .line 1097
    iget v9, v3, Lcom/android/server/am/ProcessRecord;->curAdj:I

    const/16 v10, 0x64

    if-ne v9, v10, :cond_6

    .line 1098
    const-string/jumbo v9, "visible"

    iget-object v10, v3, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 1097
    if-eqz v9, :cond_6

    .line 1099
    iget-object v9, v3, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_6

    .line 1100
    iget v9, v7, Lcom/android/server/am/ActivityRecord;->launchedFromUid:I

    move/from16 v0, p4

    if-ne v0, v9, :cond_6

    .line 1101
    :cond_5
    move-object/from16 v0, p5

    iget-object v9, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    sput v9, Lcom/android/server/am/ExtraActivityManagerService;->mLastStartActivityUid:I

    .line 1102
    const/4 v9, 0x1

    return v9

    .line 1093
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1090
    .end local v3    # "app":Lcom/android/server/am/ProcessRecord;
    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1106
    .end local v1    # "NA":I
    .end local v4    # "apps":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    .end local v5    # "ia":I
    :cond_8
    sget-object v9, Lcom/android/server/am/ExtraActivityManagerService;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "MIUILOG- Permission Denied Activity : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " pkg : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " uid : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p4

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1107
    const-string/jumbo v11, " tuid : "

    .line 1106
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1107
    iget-object v11, v7, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1106
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1108
    const/4 v9, 0x0

    return v9

    .line 1110
    .end local v2    # "NP":I
    .end local v6    # "ip":I
    :cond_9
    const/4 v9, 0x1

    return v9
.end method

.method private static isDeviceProvisioned(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 823
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "device_provisioned"

    .line 822
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method static isUserSwitchable(I)Z
    .locals 1
    .param p0, "userId"    # I

    .prologue
    .line 997
    const/16 v0, 0x63

    if-ne p0, v0, :cond_0

    .line 998
    const/4 v0, 0x0

    return v0

    .line 1000
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static killUnusedApp(II)V
    .locals 7
    .param p0, "uid"    # I
    .param p1, "pid"    # I

    .prologue
    .line 1162
    invoke-static {}, Lcom/android/server/am/ExtraActivityManagerService;->getActivityManagerService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v2

    .line 1163
    .local v2, "service":Lcom/android/server/am/ActivityManagerService;
    monitor-enter v2

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1164
    iget-object v4, v2, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 1165
    iget-object v4, v2, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    .line 1166
    .local v0, "app":Lcom/android/server/am/ProcessRecord;
    if-nez v0, :cond_1

    .line 1164
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1169
    :cond_1
    iget v4, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne v4, p0, :cond_0

    iget v4, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    if-ne v4, p1, :cond_0

    .line 1170
    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v4, :cond_0

    iget-boolean v4, v0, Lcom/android/server/am/ProcessRecord;->crashing:Z

    if-nez v4, :cond_0

    iget-boolean v4, v0, Lcom/android/server/am/ProcessRecord;->notResponding:Z

    if-nez v4, :cond_0

    .line 1171
    iget v3, v0, Lcom/android/server/am/ProcessRecord;->setAdj:I

    .line 1172
    .local v3, "tempAdj":I
    const-string/jumbo v4, "PerfShielderService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "check  package : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "  uid : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " pid : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1173
    const-string/jumbo v6, " tempAdj : "

    .line 1172
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1175
    const/16 v4, 0xc8

    if-le v3, v4, :cond_2

    iget-boolean v4, v0, Lcom/android/server/am/ProcessRecord;->killedByAm:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_3

    .end local v0    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v3    # "tempAdj":I
    :cond_2
    :goto_1
    monitor-exit v2

    .line 1163
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1161
    return-void

    .line 1176
    .restart local v0    # "app":Lcom/android/server/am/ProcessRecord;
    .restart local v3    # "tempAdj":I
    :cond_3
    :try_start_1
    const-string/jumbo v4, "PerfShielderService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "kill app : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1177
    const-string/jumbo v6, "  uid : "

    .line 1176
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1177
    const-string/jumbo v6, " pid : "

    .line 1176
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1178
    const-string/jumbo v4, "User unused app kill it !!"

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1163
    .end local v0    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v1    # "i":I
    .end local v3    # "tempAdj":I
    :catchall_0
    move-exception v4

    monitor-exit v2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v4
.end method

.method static onSystemReady(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 810
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/server/am/ExtraActivityManagerService;->mSystemReady:Z

    .line 811
    new-instance v1, Lcom/miui/server/SplashScreenServiceDelegate;

    invoke-direct {v1, p0}, Lcom/miui/server/SplashScreenServiceDelegate;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/server/am/ExtraActivityManagerService;->mSplashScreenServiceDelegate:Lcom/miui/server/SplashScreenServiceDelegate;

    .line 812
    invoke-static {p0}, Lcom/miui/server/XSpaceManagerService;->init(Landroid/content/Context;)V

    .line 813
    const-string/jumbo v1, "perfshielder"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/app/IPerfShielder$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IPerfShielder;

    move-result-object v1

    sput-object v1, Lcom/android/server/am/ExtraActivityManagerService;->mPerfService:Lcom/android/internal/app/IPerfShielder;

    .line 815
    :try_start_0
    invoke-static {p0}, Lcom/android/server/am/ExtraActivityManagerService;->ensureDeviceProvisioned(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 809
    :goto_0
    return-void

    .line 816
    :catch_0
    move-exception v0

    .line 817
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/server/am/ExtraActivityManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "ensureDeviceProvisioned occurs Exception."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static packageIsRunningLocked(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 5
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "processName"    # Ljava/lang/String;
    .param p3, "uid"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1278
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    if-nez p2, :cond_1

    .line 1279
    :cond_0
    return v3

    .line 1278
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz p3, :cond_0

    .line 1282
    invoke-virtual {p0, p2, p3, v4}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordLocked(Ljava/lang/String;IZ)Lcom/android/server/am/ProcessRecord;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1283
    return v4

    .line 1286
    :cond_2
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_5

    .line 1287
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    .line 1288
    .local v0, "app":Lcom/android/server/am/ProcessRecord;
    if-nez v0, :cond_4

    .line 1286
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1292
    :cond_4
    iget v2, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne v2, p3, :cond_3

    .line 1293
    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v2, :cond_3

    iget-boolean v2, v0, Lcom/android/server/am/ProcessRecord;->crashing:Z

    if-nez v2, :cond_3

    iget-boolean v2, v0, Lcom/android/server/am/ProcessRecord;->notResponding:Z

    if-nez v2, :cond_3

    .line 1294
    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1295
    return v4

    .line 1300
    .end local v0    # "app":Lcom/android/server/am/ProcessRecord;
    :cond_5
    return v3
.end method

.method public static removeServicePriority(Lcom/android/internal/app/MiuiServicePriority;Z)V
    .locals 2
    .param p0, "servicePriority"    # Lcom/android/internal/app/MiuiServicePriority;
    .param p1, "inBlacklist"    # Z

    .prologue
    .line 1252
    invoke-static {}, Lcom/android/server/am/ExtraActivityManagerService;->getActivityManagerService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    .line 1253
    .local v0, "service":Lcom/android/server/am/ActivityManagerService;
    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1254
    invoke-static {v0, p0, p1}, Lcom/android/server/am/ActiveServicesInjector;->removeServicePriority(Lcom/android/server/am/ActivityManagerService;Lcom/android/internal/app/MiuiServicePriority;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 1253
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1251
    return-void

    .line 1253
    :catchall_0
    move-exception v1

    monitor-exit v0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method static reportAnr(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Lmiui/mqsas/sdk/event/AnrEvent;)V
    .locals 9
    .param p0, "proc"    # Lcom/android/server/am/ProcessRecord;
    .param p1, "activity"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "event"    # Lmiui/mqsas/sdk/event/AnrEvent;

    .prologue
    .line 1123
    invoke-virtual {p2}, Lmiui/mqsas/sdk/event/AnrEvent;->getBgAnr()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "com.android.systemui"

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1124
    :cond_0
    const-wide/16 v4, 0x0

    .line 1125
    .local v4, "duration":J
    invoke-virtual {p2}, Lmiui/mqsas/sdk/event/AnrEvent;->isInputAnr()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1126
    const-wide v4, 0x12a05f200L

    .line 1138
    :cond_1
    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v1, v4, v2

    if-nez v1, :cond_6

    .line 1139
    return-void

    .line 1127
    :cond_2
    invoke-virtual {p2}, Lmiui/mqsas/sdk/event/AnrEvent;->isBroadcastAnr()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1128
    const-wide v4, 0x2540be400L

    goto :goto_0

    .line 1129
    :cond_3
    invoke-virtual {p2}, Lmiui/mqsas/sdk/event/AnrEvent;->isServiceAnr()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1130
    iget-boolean v1, p0, Lcom/android/server/am/ProcessRecord;->execServicesFg:Z

    if-eqz v1, :cond_4

    .line 1131
    const-wide v4, 0x4a817c800L

    goto :goto_0

    .line 1133
    :cond_4
    const-wide v4, 0x2e90edd000L

    goto :goto_0

    .line 1135
    :cond_5
    invoke-virtual {p2}, Lmiui/mqsas/sdk/event/AnrEvent;->isProviderAnr()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1136
    const-wide v4, 0x4a817c800L

    goto :goto_0

    .line 1142
    :cond_6
    sget-object v1, Lcom/android/server/am/ExtraActivityManagerService;->mPerfService:Lcom/android/internal/app/IPerfShielder;

    if-eqz v1, :cond_7

    .line 1144
    :try_start_0
    sget-object v1, Lcom/android/server/am/ExtraActivityManagerService;->mPerfService:Lcom/android/internal/app/IPerfShielder;

    iget v2, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    if-nez p1, :cond_8

    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 1145
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {p2}, Lmiui/mqsas/sdk/event/AnrEvent;->getCpuInfo()Ljava/lang/String;

    move-result-object v8

    .line 1144
    invoke-interface/range {v1 .. v8}, Lcom/android/internal/app/IPerfShielder;->reportAnr(ILjava/lang/String;JJLjava/lang/String;)V

    .line 1122
    .end local v4    # "duration":J
    :cond_7
    :goto_2
    return-void

    .line 1144
    .restart local v4    # "duration":J
    :cond_8
    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1146
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_2
.end method

.method static requestSplashScreen(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)Landroid/content/Intent;
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "aInfo"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 848
    sget-boolean v0, Lcom/android/server/am/ExtraActivityManagerService;->mSystemReady:Z

    if-nez v0, :cond_0

    .line 849
    sget-object v0, Lcom/android/server/am/ExtraActivityManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "System was not ready,request splash failed."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    return-object p0

    .line 852
    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_2

    .line 853
    :cond_1
    sget-object v0, Lcom/android/server/am/ExtraActivityManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Intent or aInfo is null!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    return-object p0

    .line 856
    :cond_2
    sget-object v0, Lcom/android/server/am/ExtraActivityManagerService;->mSplashScreenServiceDelegate:Lcom/miui/server/SplashScreenServiceDelegate;

    if-eqz v0, :cond_3

    .line 857
    sget-object v0, Lcom/android/server/am/ExtraActivityManagerService;->mSplashScreenServiceDelegate:Lcom/miui/server/SplashScreenServiceDelegate;

    invoke-virtual {v0, p0, p1}, Lcom/miui/server/SplashScreenServiceDelegate;->requestSplashScreen(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)Landroid/content/Intent;

    move-result-object v0

    return-object v0

    .line 859
    :cond_3
    sget-object v0, Lcom/android/server/am/ExtraActivityManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "mSplashScreenServiceDelegate is null!"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    return-object p0
.end method

.method static resolveCheckIntent(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;Lcom/android/server/am/ActivityStackSupervisor;Landroid/app/ProfilerInfo;I)Landroid/content/pm/ActivityInfo;
    .locals 7
    .param p0, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "stack"    # Lcom/android/server/am/ActivityStackSupervisor;
    .param p3, "profilerInfo"    # Landroid/app/ProfilerInfo;
    .param p4, "userId"    # I

    .prologue
    const/4 v2, 0x0

    .line 401
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_3

    .line 402
    const/4 v6, 0x0

    .line 403
    .local v6, "transform":Z
    const-string/jumbo v0, "android.app.action.CHECK_ACCESS_CONTROL"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 404
    const-string/jumbo v0, "android.app.action.CHECK_ACCESS_CONTROL_PAD"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 403
    if-nez v0, :cond_0

    .line 405
    const-string/jumbo v0, "android.app.action.CHECK_ALLOW_START_ACTIVITY"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 403
    if-nez v0, :cond_0

    .line 406
    const-string/jumbo v0, "android.app.action.CHECK_ALLOW_START_ACTIVITY_PAD"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 403
    if-eqz v0, :cond_2

    .line 407
    :cond_0
    const/16 v0, 0x3e7

    if-ne p4, v0, :cond_1

    .line 408
    const/4 p4, 0x0

    .line 410
    :cond_1
    const/4 v6, 0x1

    .line 412
    :cond_2
    if-eqz v6, :cond_3

    .line 413
    const/4 v3, 0x0

    move-object v0, p2

    move-object v1, p1

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Ljava/lang/String;ILandroid/app/ProfilerInfo;I)Landroid/content/pm/ActivityInfo;

    move-result-object p0

    .line 416
    .end local v6    # "transform":Z
    :cond_3
    return-object p0
.end method

.method static resolveSplashIntent(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;Lcom/android/server/am/ActivityStackSupervisor;Landroid/app/ProfilerInfo;I)Landroid/content/pm/ActivityInfo;
    .locals 7
    .param p0, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "stack"    # Lcom/android/server/am/ActivityStackSupervisor;
    .param p3, "profilerInfo"    # Landroid/app/ProfilerInfo;
    .param p4, "userId"    # I

    .prologue
    const/4 v2, 0x0

    .line 880
    if-eqz p1, :cond_0

    .line 881
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    .line 882
    .local v6, "component":Landroid/content/ComponentName;
    if-eqz v6, :cond_0

    .line 883
    const-string/jumbo v0, "com.miui.systemAdSolution"

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 882
    if-eqz v0, :cond_0

    .line 885
    const-string/jumbo v0, "com.miui.systemAdSolution.splashscreen.SplashActivity"

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 882
    if-eqz v0, :cond_0

    .line 887
    const/4 v3, 0x0

    move-object v0, p2

    move-object v1, p1

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Ljava/lang/String;ILandroid/app/ProfilerInfo;I)Landroid/content/pm/ActivityInfo;

    move-result-object p0

    .line 890
    .end local v6    # "component":Landroid/content/ComponentName;
    :cond_0
    return-object p0
.end method

.method public static scheduleDestroyActivities(IZLjava/lang/String;)V
    .locals 9
    .param p0, "pid"    # I
    .param p1, "oomAdj"    # Z
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 785
    invoke-static {}, Lcom/android/server/am/ExtraActivityManagerService;->getActivityManagerService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    .line 786
    .local v0, "amService":Lcom/android/server/am/ActivityManagerService;
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v4

    .line 787
    :try_start_0
    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v3, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 789
    .local v2, "processRecord":Lcom/android/server/am/ProcessRecord;
    if-eqz v2, :cond_0

    .line 790
    :try_start_1
    sget-object v3, Lcom/android/server/am/ExtraActivityManagerService;->sScheduleDestroyAllActivities:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_1

    .line 791
    sget-object v3, Lcom/android/server/am/ExtraActivityManagerService;->sScheduleDestroyAllActivities:Ljava/lang/reflect/Method;

    sget-object v5, Lcom/android/server/am/ExtraActivityManagerService;->sMainStack:Ljava/lang/reflect/Field;

    invoke-virtual {v5, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    const/4 v7, 0x1

    aput-object p2, v6, v7

    invoke-virtual {v3, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v4

    .line 784
    return-void

    .line 792
    :cond_1
    :try_start_2
    sget-object v3, Lcom/android/server/am/ExtraActivityManagerService;->sScheduleDestroyActivities:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_0

    .line 793
    sget-object v3, Lcom/android/server/am/ExtraActivityManagerService;->sScheduleDestroyActivities:Ljava/lang/reflect/Method;

    sget-object v5, Lcom/android/server/am/ExtraActivityManagerService;->sMainStack:Ljava/lang/reflect/Field;

    invoke-virtual {v5, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v6, v8

    const/4 v7, 0x2

    aput-object p2, v6, v7

    invoke-virtual {v3, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 796
    :catch_0
    move-exception v1

    .line 797
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 786
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "processRecord":Lcom/android/server/am/ProcessRecord;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public static scheduleTrimMemory(II)V
    .locals 5
    .param p0, "pid"    # I
    .param p1, "level"    # I

    .prologue
    .line 771
    invoke-static {}, Lcom/android/server/am/ExtraActivityManagerService;->getActivityManagerService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    .line 772
    .local v0, "amService":Lcom/android/server/am/ActivityManagerService;
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v4

    .line 773
    :try_start_0
    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v3, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 774
    .local v2, "processRecord":Lcom/android/server/am/ProcessRecord;
    if-eqz v2, :cond_0

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    .line 776
    :try_start_1
    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v3, p1}, Landroid/app/IApplicationThread;->scheduleTrimMemory(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v4

    .line 770
    return-void

    .line 777
    :catch_0
    move-exception v1

    .line 778
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 772
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "processRecord":Lcom/android/server/am/ProcessRecord;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public static setForkedProcessGroup(IIILjava/lang/String;)V
    .locals 2
    .param p0, "puid"    # I
    .param p1, "ppid"    # I
    .param p2, "group"    # I
    .param p3, "processName"    # Ljava/lang/String;

    .prologue
    .line 1188
    sget-object v1, Lcom/android/server/am/ExtraActivityManagerService;->mPerfService:Lcom/android/internal/app/IPerfShielder;

    if-eqz v1, :cond_0

    .line 1190
    :try_start_0
    sget-object v1, Lcom/android/server/am/ExtraActivityManagerService;->mPerfService:Lcom/android/internal/app/IPerfShielder;

    invoke-interface {v1, p0, p1, p2, p3}, Lcom/android/internal/app/IPerfShielder;->setForkedProcessGroup(IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1187
    :cond_0
    :goto_0
    return-void

    .line 1191
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method static setSchedFgPid(I)V
    .locals 2
    .param p0, "pid"    # I

    .prologue
    .line 1153
    sget-object v1, Lcom/android/server/am/ExtraActivityManagerService;->mPerfService:Lcom/android/internal/app/IPerfShielder;

    if-eqz v1, :cond_0

    .line 1155
    :try_start_0
    sget-object v1, Lcom/android/server/am/ExtraActivityManagerService;->mPerfService:Lcom/android/internal/app/IPerfShielder;

    invoke-interface {v1, p0}, Lcom/android/internal/app/IPerfShielder;->setSchedFgPid(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1152
    :cond_0
    :goto_0
    return-void

    .line 1156
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public static setServicePriority(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/MiuiServicePriority;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1238
    .local p0, "servicePrioritys":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/MiuiServicePriority;>;"
    invoke-static {}, Lcom/android/server/am/ExtraActivityManagerService;->getActivityManagerService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    .line 1239
    .local v0, "service":Lcom/android/server/am/ActivityManagerService;
    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1240
    invoke-static {v0, p0}, Lcom/android/server/am/ActiveServicesInjector;->setServicePriority(Lcom/android/server/am/ActivityManagerService;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 1239
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1237
    return-void

    .line 1239
    :catchall_0
    move-exception v1

    monitor-exit v0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public static setServicePriority(Ljava/util/List;J)V
    .locals 3
    .param p1, "noProcDelayTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/MiuiServicePriority;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 1245
    .local p0, "servicePrioritys":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/MiuiServicePriority;>;"
    invoke-static {}, Lcom/android/server/am/ExtraActivityManagerService;->getActivityManagerService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    .line 1246
    .local v0, "service":Lcom/android/server/am/ActivityManagerService;
    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1247
    invoke-static {v0, p0, p1, p2}, Lcom/android/server/am/ActiveServicesInjector;->setServicePriority(Lcom/android/server/am/ActivityManagerService;Ljava/util/List;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 1246
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1244
    return-void

    .line 1246
    :catchall_0
    move-exception v1

    monitor-exit v0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method
