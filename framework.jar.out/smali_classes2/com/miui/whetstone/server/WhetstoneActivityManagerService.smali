.class public Lcom/miui/whetstone/server/WhetstoneActivityManagerService;
.super Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;
.source "WhetstoneActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/whetstone/server/WhetstoneActivityManagerService$1;,
        Lcom/miui/whetstone/server/WhetstoneActivityManagerService$PromoteLevelManagerHandler;
    }
.end annotation


# static fields
.field public static final APP_SERVICE_NAME:Ljava/lang/String; = "miui.whetstone"

.field public static final D:Z

.field private static final FROZEN_APP:I = 0x1

.field private static final MSG_SYSTEM_UPDATE_CURRENT_PROCESS_PSS:I = 0x3

.field private static final MSG_USER_CLEAR_DEAD_NATIVE_PROCESS:I = 0x2

.field private static final MSG_USER_REMOVE_PROMOTE_LEVEL:I = 0x1

.field private static final PER_USER_RANGE:I = 0x186a0

.field public static final PROMOTE_LEVEL_HIGH:I = 0x2

.field public static final PROMOTE_LEVEL_MIDDLE:I = 0x1

.field public static final PROMOTE_LEVEL_NORMAL:I = 0x0

.field public static final SERVICE:Ljava/lang/String; = "whetstone.activity"

.field private static final TAG:Ljava/lang/String; = "whetstone.activity"

.field private static mSelf:Lcom/miui/whetstone/server/WhetstoneActivityManagerService;


# instance fields
.field private PowerManagerServiceInjector:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private getPartialWakeLockHoldByUid:Ljava/lang/reflect/Method;

.field private mAM:Landroid/os/IBinder;

.field private mComponentManagerNative:Lcom/miui/whetstone/component/ComponentManagerNative;

.field private mContext:Landroid/content/Context;

.field private mDeviceIdleChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mExtraActivityManagerService:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private mGetConnProviderNames:Ljava/lang/reflect/Method;

.field private mHandler:Lcom/miui/whetstone/server/WhetstoneActivityManagerService$PromoteLevelManagerHandler;

.field private mPidsSelfLocked:Landroid/util/SparseArray;

.field private mPowerKeeperPolicy:Lcom/miui/whetstone/PowerKeeperPolicy;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mRemoveTask:Ljava/lang/reflect/Method;

.field private mRemoveTaskByIdLocked:Ljava/lang/reflect/Method;

.field private mScheduleDestroyActivities:Ljava/lang/reflect/Method;

.field private mSystemServiceClassLoader:Ljava/lang/ClassLoader;

.field private final mUidFrozenState:Landroid/util/SparseBooleanArray;


# direct methods
.method static synthetic -get0(Lcom/miui/whetstone/server/WhetstoneActivityManagerService;)Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->PowerManagerServiceInjector:Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic -get1(Lcom/miui/whetstone/server/WhetstoneActivityManagerService;)Landroid/os/PowerManager;
    .locals 1

    iget-object v0, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic -set0(Lcom/miui/whetstone/server/WhetstoneActivityManagerService;Landroid/os/PowerManager;)Landroid/os/PowerManager;
    .locals 0

    iput-object p1, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mPowerManager:Landroid/os/PowerManager;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/miui/whetstone/server/WhetstoneActivityManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->handleClearDeadAppFromNative()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/miui/whetstone/server/WhetstoneActivityManagerService;Ljava/lang/String;I)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->releasePromoteLevelWithUserId(Ljava/lang/String;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 60
    const-string/jumbo v0, "whetstone.activity"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->D:Z

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 112
    invoke-direct/range {p0 .. p0}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;-><init>()V

    .line 81
    new-instance v12, Landroid/util/SparseBooleanArray;

    invoke-direct {v12}, Landroid/util/SparseBooleanArray;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mUidFrozenState:Landroid/util/SparseBooleanArray;

    .line 179
    new-instance v12, Lcom/miui/whetstone/server/WhetstoneActivityManagerService$1;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService$1;-><init>(Lcom/miui/whetstone/server/WhetstoneActivityManagerService;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mDeviceIdleChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 113
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mContext:Landroid/content/Context;

    .line 114
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mSystemServiceClassLoader:Ljava/lang/ClassLoader;

    .line 116
    :try_start_0
    const-string/jumbo v12, "com.android.server.am.ExtraActivityManagerService"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mSystemServiceClassLoader:Ljava/lang/ClassLoader;

    const/4 v14, 0x0

    invoke-static {v12, v14, v13}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mExtraActivityManagerService:Ljava/lang/Class;

    .line 117
    const-string/jumbo v12, "android.os.ServiceManager"

    .line 118
    const/4 v13, 0x0

    .line 117
    invoke-static {v12, v13}, Lmiui/util/ReflectionUtils;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v12

    .line 118
    const-string/jumbo v13, "getService"

    .line 117
    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Class;

    .line 118
    const-class v15, Ljava/lang/String;

    const/16 v16, 0x0

    aput-object v15, v14, v16

    .line 117
    invoke-static {v12, v13, v14}, Lmiui/util/ReflectionUtils;->findMethodExact(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v10

    .line 120
    .local v10, "getService":Ljava/lang/reflect/Method;
    const/4 v12, 0x1

    :try_start_1
    new-array v12, v12, [Ljava/lang/Object;

    const-string/jumbo v13, "activity"

    const/4 v14, 0x0

    aput-object v13, v12, v14

    const/4 v13, 0x0

    invoke-virtual {v10, v13, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/IBinder;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mAM:Landroid/os/IBinder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_4

    .line 126
    const/4 v9, 0x0

    .line 127
    .local v9, "field":Ljava/lang/reflect/Field;
    :try_start_2
    const-string/jumbo v12, "com.android.server.am.ActivityManagerService"

    .line 128
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mSystemServiceClassLoader:Ljava/lang/ClassLoader;

    .line 127
    invoke-static {v12, v13}, Lmiui/util/ReflectionUtils;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v12

    .line 128
    const-string/jumbo v13, "mPidsSelfLocked"

    .line 127
    invoke-static {v12, v13}, Lmiui/util/ReflectionUtils;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    .line 129
    .local v9, "field":Ljava/lang/reflect/Field;
    if-eqz v9, :cond_0

    .line 130
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mAM:Landroid/os/IBinder;

    invoke-virtual {v9, v12}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/SparseArray;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    .line 135
    invoke-direct/range {p0 .. p0}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->findRemoveTaskMethod()V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_4

    .line 150
    .end local v9    # "field":Ljava/lang/reflect/Field;
    .end local v10    # "getService":Ljava/lang/reflect/Method;
    :goto_0
    :try_start_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mExtraActivityManagerService:Ljava/lang/Class;

    invoke-static {v12}, Lcom/miui/whetstone/component/ComponentHelper;->init(Ljava/lang/Class;)V

    .line 152
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mExtraActivityManagerService:Ljava/lang/Class;

    .line 153
    const-string/jumbo v13, "scheduleDestroyActivities"

    .line 152
    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/Class;

    .line 153
    sget-object v15, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v16, 0x0

    aput-object v15, v14, v16

    sget-object v15, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/16 v16, 0x1

    aput-object v15, v14, v16

    const-class v15, Ljava/lang/String;

    const/16 v16, 0x2

    aput-object v15, v14, v16

    .line 152
    invoke-static {v12, v13, v14}, Lmiui/util/ReflectionUtils;->findMethodExact(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v12

    .line 151
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mScheduleDestroyActivities:Ljava/lang/reflect/Method;

    .line 154
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mScheduleDestroyActivities:Ljava/lang/reflect/Method;

    if-nez v12, :cond_1

    .line 155
    new-instance v12, Ljava/lang/RuntimeException;

    const-string/jumbo v13, "mScheduleDestroyActivities not found in AcivityManagerService"

    invoke-direct {v12, v13}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v12
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 160
    :catch_0
    move-exception v4

    .line 161
    .local v4, "e":Ljava/lang/Exception;
    const-string/jumbo v12, "whetstone.activity"

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_1
    invoke-static {}, Lcom/miui/whetstone/PowerKeeperPolicy;->getInstance()Lcom/miui/whetstone/PowerKeeperPolicy;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mPowerKeeperPolicy:Lcom/miui/whetstone/PowerKeeperPolicy;

    .line 165
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mPowerKeeperPolicy:Lcom/miui/whetstone/PowerKeeperPolicy;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v12, v13}, Lcom/miui/whetstone/PowerKeeperPolicy;->setContext(Landroid/content/Context;)V

    .line 166
    new-instance v12, Lcom/miui/whetstone/server/WhetstoneActivityManagerService$PromoteLevelManagerHandler;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->get()Lcom/android/internal/os/BackgroundThread;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/internal/os/BackgroundThread;->getLooper()Landroid/os/Looper;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v13}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService$PromoteLevelManagerHandler;-><init>(Lcom/miui/whetstone/server/WhetstoneActivityManagerService;Landroid/os/Looper;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mHandler:Lcom/miui/whetstone/server/WhetstoneActivityManagerService$PromoteLevelManagerHandler;

    .line 169
    :try_start_4
    const-class v12, Landroid/os/PowerManager;

    const-string/jumbo v13, "ACTION_DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v12, v13}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 170
    .local v11, "idleModeChange":Ljava/lang/String;
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2, v11}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 171
    .local v2, "deviceIdleFilter":Landroid/content/IntentFilter;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mDeviceIdleChangeReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mHandler:Lcom/miui/whetstone/server/WhetstoneActivityManagerService$PromoteLevelManagerHandler;

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v2, v14, v13}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7

    .line 175
    .end local v2    # "deviceIdleFilter":Landroid/content/IntentFilter;
    .end local v11    # "idleModeChange":Ljava/lang/String;
    :goto_2
    new-instance v12, Lcom/miui/whetstone/component/ComponentManagerNative;

    invoke-direct {v12}, Lcom/miui/whetstone/component/ComponentManagerNative;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mComponentManagerNative:Lcom/miui/whetstone/component/ComponentManagerNative;

    .line 176
    sput-object p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mSelf:Lcom/miui/whetstone/server/WhetstoneActivityManagerService;

    .line 112
    return-void

    .line 121
    .restart local v10    # "getService":Ljava/lang/reflect/Method;
    :catch_1
    move-exception v4

    .line 122
    .restart local v4    # "e":Ljava/lang/Exception;
    :try_start_5
    const-string/jumbo v12, "whetstone.activity"

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    new-instance v12, Ljava/lang/RuntimeException;

    const-string/jumbo v13, "Error: can not found AcivityManagerService"

    invoke-direct {v12, v13}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v12
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/lang/NoSuchFieldException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_4

    .line 136
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v10    # "getService":Ljava/lang/reflect/Method;
    :catch_2
    move-exception v6

    .line 137
    .local v6, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v12, "whetstone.activity"

    const-string/jumbo v13, "WhetstoneActivityManagerService"

    invoke-static {v12, v13, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 132
    .end local v6    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v9    # "field":Ljava/lang/reflect/Field;
    .restart local v10    # "getService":Ljava/lang/reflect/Method;
    :cond_0
    :try_start_6
    new-instance v12, Ljava/lang/RuntimeException;

    const-string/jumbo v13, "Error: mPidsSelfLocked not found in AcivityManagerService"

    invoke-direct {v12, v13}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v12
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/lang/NoSuchFieldException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_6} :catch_4

    .line 138
    .end local v9    # "field":Ljava/lang/reflect/Field;
    .end local v10    # "getService":Ljava/lang/reflect/Method;
    :catch_3
    move-exception v8

    .line 139
    .local v8, "e":Ljava/lang/NoSuchMethodException;
    const-string/jumbo v12, "whetstone.activity"

    const-string/jumbo v13, "WhetstoneActivityManagerService"

    invoke-static {v12, v13, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 144
    .end local v8    # "e":Ljava/lang/NoSuchMethodException;
    :catch_4
    move-exception v3

    .line 145
    .local v3, "e":Ljava/lang/ClassNotFoundException;
    const-string/jumbo v12, "whetstone.activity"

    const-string/jumbo v13, "WhetstoneActivityManagerService"

    invoke-static {v12, v13, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 142
    .end local v3    # "e":Ljava/lang/ClassNotFoundException;
    :catch_5
    move-exception v7

    .line 143
    .local v7, "e":Ljava/lang/NoSuchFieldException;
    const-string/jumbo v12, "whetstone.activity"

    const-string/jumbo v13, "WhetstoneActivityManagerService"

    invoke-static {v12, v13, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 140
    .end local v7    # "e":Ljava/lang/NoSuchFieldException;
    :catch_6
    move-exception v5

    .line 141
    .local v5, "e":Ljava/lang/IllegalAccessException;
    const-string/jumbo v12, "whetstone.activity"

    const-string/jumbo v13, "WhetstoneActivityManagerService"

    invoke-static {v12, v13, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 158
    .end local v5    # "e":Ljava/lang/IllegalAccessException;
    :cond_1
    :try_start_7
    const-string/jumbo v12, "com.android.server.power.PowerManagerServiceInjector"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mSystemServiceClassLoader:Ljava/lang/ClassLoader;

    const/4 v14, 0x0

    invoke-static {v12, v14, v13}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->PowerManagerServiceInjector:Ljava/lang/Class;

    .line 159
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->PowerManagerServiceInjector:Ljava/lang/Class;

    const-string/jumbo v13, "getPartialWakeLockHoldByUid"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Class;

    sget-object v15, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v16, 0x0

    aput-object v15, v14, v16

    invoke-static {v12, v13, v14}, Lmiui/util/ReflectionUtils;->findMethodExact(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->getPartialWakeLockHoldByUid:Ljava/lang/reflect/Method;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_1

    .line 172
    :catch_7
    move-exception v4

    .line 173
    .restart local v4    # "e":Ljava/lang/Exception;
    const-string/jumbo v12, "whetstone.activity"

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method private checkCallInterfacePermission()Z
    .locals 2

    .prologue
    .line 102
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 104
    .local v0, "callingUid":I
    const v1, 0x186a0

    rem-int/2addr v0, v1

    .line 106
    const/16 v1, 0x2710

    if-le v0, v1, :cond_0

    .line 107
    const/4 v1, 0x0

    return v1

    .line 109
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method private findRemoveTaskMethod()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 869
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-gt v4, v5, :cond_0

    .line 871
    :try_start_0
    const-class v4, Landroid/app/ActivityManager;

    const-string/jumbo v5, "removeTask"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x1

    aput-object v7, v6, v8

    invoke-static {v4, v5, v6}, Lmiui/util/ReflectionUtils;->findMethodExact(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mRemoveTask:Ljava/lang/reflect/Method;

    .line 872
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mRemoveTaskByIdLocked:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 921
    :goto_0
    iget-object v4, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mRemoveTask:Ljava/lang/reflect/Method;

    if-eqz v4, :cond_3

    .line 922
    iget-object v4, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mRemoveTask:Ljava/lang/reflect/Method;

    invoke-virtual {v4, v9}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 927
    :goto_1
    iget-object v4, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mRemoveTaskByIdLocked:Ljava/lang/reflect/Method;

    if-eqz v4, :cond_4

    .line 928
    iget-object v4, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mRemoveTaskByIdLocked:Ljava/lang/reflect/Method;

    invoke-virtual {v4, v9}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 868
    :goto_2
    return-void

    .line 873
    :catch_0
    move-exception v3

    .line 874
    .local v3, "e":Ljava/lang/NoSuchMethodException;
    const-string/jumbo v4, "whetstone.activity"

    const-string/jumbo v5, "WhetstoneActivityManagerService"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 877
    .end local v3    # "e":Ljava/lang/NoSuchMethodException;
    :cond_0
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-gt v4, v5, :cond_1

    .line 879
    :try_start_1
    const-class v4, Landroid/app/ActivityManager;

    const-string/jumbo v5, "removeTask"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-static {v4, v5, v6}, Lmiui/util/ReflectionUtils;->findMethodExact(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mRemoveTask:Ljava/lang/reflect/Method;

    .line 881
    const-string/jumbo v4, "com.android.server.am.ActivityManagerService"

    iget-object v5, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mSystemServiceClassLoader:Ljava/lang/ClassLoader;

    invoke-static {v4, v5}, Lmiui/util/ReflectionUtils;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v4

    .line 882
    const-string/jumbo v5, "removeTaskByIdLocked"

    .line 880
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    .line 882
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x1

    aput-object v7, v6, v8

    .line 880
    invoke-static {v4, v5, v6}, Lmiui/util/ReflectionUtils;->findMethodExact(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mRemoveTaskByIdLocked:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 883
    :catch_1
    move-exception v3

    .line 884
    .restart local v3    # "e":Ljava/lang/NoSuchMethodException;
    const-string/jumbo v4, "whetstone.activity"

    const-string/jumbo v5, "WhetstoneActivityManagerService"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 887
    .end local v3    # "e":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v2

    .line 888
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v4, "whetstone.activity"

    const-string/jumbo v5, "WhetstoneActivityManagerService"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 885
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v0

    .line 886
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    const-string/jumbo v4, "whetstone.activity"

    const-string/jumbo v5, "WhetstoneActivityManagerService"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 890
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :cond_1
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1a

    if-ge v4, v5, :cond_2

    .line 892
    :try_start_2
    const-class v4, Landroid/app/ActivityManager;

    const-string/jumbo v5, "removeTask"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-static {v4, v5, v6}, Lmiui/util/ReflectionUtils;->findMethodExact(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mRemoveTask:Ljava/lang/reflect/Method;

    .line 894
    const-string/jumbo v4, "com.android.server.am.ActivityManagerService"

    iget-object v5, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mSystemServiceClassLoader:Ljava/lang/ClassLoader;

    invoke-static {v4, v5}, Lmiui/util/ReflectionUtils;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v4

    .line 895
    const-string/jumbo v5, "removeTaskByIdLocked"

    .line 893
    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Class;

    .line 895
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x1

    aput-object v7, v6, v8

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x2

    aput-object v7, v6, v8

    .line 893
    invoke-static {v4, v5, v6}, Lmiui/util/ReflectionUtils;->findMethodExact(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mRemoveTaskByIdLocked:Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_5

    goto/16 :goto_0

    .line 896
    :catch_4
    move-exception v3

    .line 897
    .restart local v3    # "e":Ljava/lang/NoSuchMethodException;
    const-string/jumbo v4, "whetstone.activity"

    const-string/jumbo v5, "WhetstoneActivityManagerService"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 900
    .end local v3    # "e":Ljava/lang/NoSuchMethodException;
    :catch_5
    move-exception v2

    .line 901
    .restart local v2    # "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v4, "whetstone.activity"

    const-string/jumbo v5, "WhetstoneActivityManagerService"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 898
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :catch_6
    move-exception v0

    .line 899
    .restart local v0    # "e":Ljava/lang/ClassNotFoundException;
    const-string/jumbo v4, "whetstone.activity"

    const-string/jumbo v5, "WhetstoneActivityManagerService"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 905
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :cond_2
    :try_start_3
    const-class v4, Landroid/app/ActivityManager;

    const-string/jumbo v5, "removeTask"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-static {v4, v5, v6}, Lmiui/util/ReflectionUtils;->findMethodExact(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mRemoveTask:Ljava/lang/reflect/Method;

    .line 906
    iget-object v4, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mExtraActivityManagerService:Ljava/lang/Class;

    .line 907
    const-string/jumbo v5, "removeTaskByIdLocked"

    .line 906
    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Class;

    .line 907
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x1

    aput-object v7, v6, v8

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x2

    aput-object v7, v6, v8

    .line 906
    invoke-static {v4, v5, v6}, Lmiui/util/ReflectionUtils;->findMethodExact(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mRemoveTaskByIdLocked:Ljava/lang/reflect/Method;
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_8

    goto/16 :goto_0

    .line 908
    :catch_7
    move-exception v3

    .line 909
    .restart local v3    # "e":Ljava/lang/NoSuchMethodException;
    const-string/jumbo v4, "whetstone.activity"

    const-string/jumbo v5, "WhetstoneActivityManagerService"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 912
    .end local v3    # "e":Ljava/lang/NoSuchMethodException;
    :catch_8
    move-exception v1

    .line 913
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "whetstone.activity"

    const-string/jumbo v5, "WhetstoneActivityManagerService"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 910
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_9
    move-exception v2

    .line 911
    .restart local v2    # "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v4, "whetstone.activity"

    const-string/jumbo v5, "WhetstoneActivityManagerService"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 924
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :cond_3
    const-string/jumbo v4, "whetstone.activity"

    const-string/jumbo v5, "could not find removeTask"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 930
    :cond_4
    const-string/jumbo v4, "whetstone.activity"

    const-string/jumbo v5, "could not find removeTaskByIdLocked"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method private getProcessPidByPackageNameLocked(Ljava/lang/String;I)I
    .locals 15
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 248
    iget-object v12, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    move-result v6

    .line 250
    .local v6, "n":I
    :try_start_0
    const-string/jumbo v12, "com.android.server.am.ProcessRecord"

    .line 251
    iget-object v13, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mSystemServiceClassLoader:Ljava/lang/ClassLoader;

    const/4 v14, 0x0

    .line 250
    invoke-static {v12, v14, v13}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    .line 252
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    add-int/lit8 v4, v6, -0x1

    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_1

    .line 253
    iget-object v12, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v12, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    .line 254
    .local v9, "processRecord":Ljava/lang/Object;
    if-eqz v9, :cond_0

    .line 256
    const-string/jumbo v12, "processName"

    .line 255
    invoke-static {v1, v12}, Lmiui/util/ReflectionUtils;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 258
    .local v7, "name":Ljava/lang/String;
    const-string/jumbo v12, "userId"

    .line 257
    invoke-static {v1, v12}, Lmiui/util/ReflectionUtils;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    .line 259
    .local v10, "uId":Ljava/lang/Integer;
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    if-eqz v10, :cond_0

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v12

    move/from16 v0, p2

    if-ne v12, v0, :cond_0

    .line 261
    const-string/jumbo v12, "pid"

    .line 260
    invoke-static {v1, v12}, Lmiui/util/ReflectionUtils;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 262
    .local v8, "pid":Ljava/lang/Integer;
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v12

    return v12

    .line 252
    .end local v7    # "name":Ljava/lang/String;
    .end local v8    # "pid":Ljava/lang/Integer;
    .end local v10    # "uId":Ljava/lang/Integer;
    :cond_0
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 267
    .end local v9    # "processRecord":Ljava/lang/Object;
    :cond_1
    const/4 v2, 0x0

    .local v2, "count":I
    const/4 v11, -0x1

    .line 268
    .local v11, "value":I
    add-int/lit8 v4, v6, -0x1

    :goto_1
    if-ltz v4, :cond_3

    .line 269
    iget-object v12, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v12, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    .line 270
    .restart local v9    # "processRecord":Ljava/lang/Object;
    if-eqz v9, :cond_2

    .line 272
    const-string/jumbo v12, "info"

    .line 271
    invoke-static {v1, v12}, Lmiui/util/ReflectionUtils;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ApplicationInfo;

    .line 273
    .local v5, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v5, :cond_2

    .line 274
    iget-object v12, v5, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    if-eqz v12, :cond_2

    iget-object v12, v5, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 275
    add-int/lit8 v2, v2, 0x1

    .line 277
    const-string/jumbo v12, "pid"

    .line 276
    invoke-static {v1, v12}, Lmiui/util/ReflectionUtils;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 278
    .restart local v8    # "pid":Ljava/lang/Integer;
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    .line 268
    .end local v5    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v8    # "pid":Ljava/lang/Integer;
    :cond_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 283
    .end local v9    # "processRecord":Ljava/lang/Object;
    :cond_3
    const/4 v12, 0x1

    if-ne v2, v12, :cond_4

    .line 284
    return v11

    .line 286
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "count":I
    .end local v4    # "i":I
    .end local v11    # "value":I
    :catch_0
    move-exception v3

    .line 287
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v12, "whetstone.activity"

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_4
    const/4 v12, -0x1

    return v12
.end method

.method public static getSingletonService()Lcom/miui/whetstone/server/WhetstoneActivityManagerService;
    .locals 1

    .prologue
    .line 760
    sget-object v0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mSelf:Lcom/miui/whetstone/server/WhetstoneActivityManagerService;

    return-object v0
.end method

.method private handleClearDeadAppFromNative()V
    .locals 5

    .prologue
    .line 203
    :try_start_0
    const-string/jumbo v2, "com.android.server.am.ActivityManagerService"

    .line 204
    iget-object v3, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mSystemServiceClassLoader:Ljava/lang/ClassLoader;

    .line 203
    invoke-static {v2, v3}, Lmiui/util/ReflectionUtils;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    .line 204
    const-string/jumbo v3, "clearDeadAppFromNative"

    .line 203
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-static {v2, v3, v4}, Lmiui/util/ReflectionUtils;->findMethodExact(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 205
    .local v0, "clearMethod":Ljava/lang/reflect/Method;
    if-eqz v0, :cond_0

    .line 206
    iget-object v2, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mAM:Landroid/os/IBinder;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    .end local v0    # "clearMethod":Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    return-void

    .line 208
    :catch_0
    move-exception v1

    .line 210
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "whetstone.activity"

    const-string/jumbo v3, "handleClearDeadAppFromNative"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private releasePromoteLevelWithUserId(Ljava/lang/String;I)V
    .locals 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 339
    if-eqz p1, :cond_0

    .line 340
    invoke-static {p1}, Lcom/miui/whetstone/client/WhetstoneClientManager;->isSystemProtectImportantApp(Ljava/lang/String;)Z

    move-result v6

    .line 339
    if-eqz v6, :cond_1

    .line 340
    :cond_0
    return-void

    .line 341
    :cond_1
    iget-object v7, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v7

    .line 343
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->getProcessPidByPackageNameLocked(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 344
    .local v3, "pid":I
    const/4 v6, -0x1

    if-ne v3, v6, :cond_2

    monitor-exit v7

    return-void

    .line 345
    :cond_2
    :try_start_1
    iget-object v6, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 346
    .local v4, "processRecord":Ljava/lang/Object;
    if-eqz v4, :cond_3

    .line 347
    const-string/jumbo v6, "com.android.server.am.ProcessRecord"

    .line 348
    iget-object v8, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mSystemServiceClassLoader:Ljava/lang/ClassLoader;

    const/4 v9, 0x0

    .line 347
    invoke-static {v6, v9, v8}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 349
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v6, "com.android.server.am.ProcessList"

    .line 350
    iget-object v8, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mSystemServiceClassLoader:Ljava/lang/ClassLoader;

    const/4 v9, 0x0

    .line 349
    invoke-static {v6, v9, v8}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    .line 351
    .local v1, "clazz2":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v6, "UNKNOWN_ADJ"

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v6, v8}, Lmiui/util/ReflectionUtils;->getStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 352
    .local v5, "value3":Ljava/lang/Integer;
    const-string/jumbo v6, "maxAdj"

    invoke-static {v0, v6}, Lmiui/util/ReflectionUtils;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "clazz2":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "pid":I
    .end local v4    # "processRecord":Ljava/lang/Object;
    .end local v5    # "value3":Ljava/lang/Integer;
    :cond_3
    :goto_0
    monitor-exit v7

    .line 338
    return-void

    .line 354
    :catch_0
    move-exception v2

    .line 355
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v6, "whetstone.activity"

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 341
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6
.end method

.method private removeTaskByIdInternal(IZZ)Z
    .locals 8
    .param p1, "taskId"    # I
    .param p2, "killProcess"    # Z
    .param p3, "removeFromRecents"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 844
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-gt v2, v3, :cond_0

    .line 845
    invoke-direct {p0, p1, p2, v7}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->removeTaskByIdL(IZZ)Z

    move-result v2

    return v2

    .line 849
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mAM:Landroid/os/IBinder;

    check-cast v2, Landroid/app/IActivityManager;

    const-string/jumbo v3, "android.permission.REMOVE_TASKS"

    .line 850
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-static {v5}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v5

    .line 849
    invoke-interface {v2, v3, v4, v5}, Landroid/app/IActivityManager;->checkPermission(Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_1

    .line 853
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Permission Denial: removeTaskById from pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 854
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 853
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 855
    const-string/jumbo v3, ", uid="

    .line 853
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 855
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 853
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 856
    const-string/jumbo v3, " requires "

    .line 853
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 856
    const-string/jumbo v3, "android.permission.REMOVE_TASKS"

    .line 853
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 857
    .local v1, "msg":Ljava/lang/String;
    const-string/jumbo v2, "whetstone.activity"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 858
    return v6

    .line 860
    .end local v1    # "msg":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 861
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "whetstone.activity"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    return v6

    .line 864
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-direct {p0, p1, p2, v7}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->removeTaskByIdLocked(IZZ)Z

    move-result v2

    return v2
.end method

.method private removeTaskByIdL(IZZ)Z
    .locals 9
    .param p1, "taskId"    # I
    .param p2, "killProcess"    # Z
    .param p3, "removeFromRecents"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 800
    const/4 v2, 0x0

    .line 801
    .local v2, "res":Z
    iget-object v5, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 802
    .local v0, "am":Landroid/app/ActivityManager;
    iget-object v5, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mRemoveTask:Ljava/lang/reflect/Method;

    if-nez v5, :cond_0

    .line 803
    const-string/jumbo v3, "whetstone.activity"

    const-string/jumbo v5, "could not find removeTaskById L"

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    return v4

    .line 808
    :cond_0
    :try_start_0
    iget-object v5, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mRemoveTask:Ljava/lang/reflect/Method;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    if-eqz p2, :cond_1

    :goto_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v7, 0x1

    aput-object v3, v6, v7

    invoke-virtual {v5, v0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 813
    .local v2, "res":Z
    return v2

    .local v2, "res":Z
    :cond_1
    move v3, v4

    .line 808
    goto :goto_0

    .line 809
    :catch_0
    move-exception v1

    .line 810
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "whetstone.activity"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    return v4
.end method

.method private removeTaskByIdLocked(IZZ)Z
    .locals 11
    .param p1, "taskId"    # I
    .param p2, "killProcess"    # Z
    .param p3, "removeFromRecents"    # Z

    .prologue
    const/4 v10, 0x0

    .line 817
    const/4 v1, 0x0

    .line 818
    .local v1, "res":Z
    iget-object v4, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mRemoveTaskByIdLocked:Ljava/lang/reflect/Method;

    if-nez v4, :cond_0

    .line 819
    const-string/jumbo v4, "whetstone.activity"

    const-string/jumbo v5, "could not find removeTaskById M"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    return v10

    .line 822
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 824
    .local v2, "orig":J
    :try_start_0
    iget-object v5, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mAM:Landroid/os/IBinder;

    monitor-enter v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 825
    :try_start_1
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x17

    if-gt v4, v6, :cond_1

    .line 826
    iget-object v4, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mRemoveTaskByIdLocked:Ljava/lang/reflect/Method;

    iget-object v6, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mAM:Landroid/os/IBinder;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v7, v9

    invoke-virtual {v4, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .local v1, "res":Z
    :goto_0
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 837
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 839
    return v1

    .line 827
    .local v1, "res":Z
    :cond_1
    :try_start_3
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1a

    if-ge v4, v6, :cond_2

    .line 828
    iget-object v4, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mRemoveTaskByIdLocked:Ljava/lang/reflect/Method;

    iget-object v6, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mAM:Landroid/os/IBinder;

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v7, v9

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const/4 v9, 0x2

    aput-object v8, v7, v9

    invoke-virtual {v4, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .local v1, "res":Z
    goto :goto_0

    .line 830
    .local v1, "res":Z
    :cond_2
    iget-object v4, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mRemoveTaskByIdLocked:Ljava/lang/reflect/Method;

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v6, v8

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const/4 v8, 0x2

    aput-object v7, v6, v8

    const/4 v7, 0x0

    invoke-virtual {v4, v7, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v1

    .local v1, "res":Z
    goto :goto_0

    .line 824
    .local v1, "res":Z
    :catchall_0
    move-exception v4

    :try_start_4
    monitor-exit v5

    throw v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 833
    .end local v1    # "res":Z
    :catch_0
    move-exception v0

    .line 834
    .local v0, "e":Ljava/lang/Exception;
    :try_start_5
    const-string/jumbo v4, "whetstone.activity"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 837
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 835
    return v10

    .line 836
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v4

    .line 837
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 836
    throw v4
.end method

.method private updateCurrentProcessPss(IJ)V
    .locals 4
    .param p1, "pid"    # I
    .param p2, "pss"    # J

    .prologue
    .line 702
    iget-object v1, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mHandler:Lcom/miui/whetstone/server/WhetstoneActivityManagerService$PromoteLevelManagerHandler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService$PromoteLevelManagerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 703
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 704
    long-to-int v1, p2

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 705
    iget-object v1, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mHandler:Lcom/miui/whetstone/server/WhetstoneActivityManagerService$PromoteLevelManagerHandler;

    invoke-virtual {v1, v0}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService$PromoteLevelManagerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 701
    return-void
.end method


# virtual methods
.method public addAppToServiceControlWhitelist(Ljava/util/List;)V
    .locals 0
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
    .line 665
    .local p1, "listPkg":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/miui/whetstone/process/WtServiceControlEntry;->addAppToServiceControlWhitelist(Ljava/util/List;)V

    .line 664
    return-void
.end method

.method public bindWhetstoneService(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "client"    # Landroid/os/IBinder;

    .prologue
    .line 645
    iget-object v0, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/miui/whetstone/IWhetstoneClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/whetstone/IWhetstoneClient;

    move-result-object v1

    invoke-static {v0, v1, p0}, Lcom/miui/whetstone/client/WhetstoneClientManager;->init(Landroid/content/Context;Lcom/miui/whetstone/IWhetstoneClient;Lcom/miui/whetstone/server/WhetstoneActivityManagerService;)V

    .line 644
    return-void
.end method

.method public checkApplicationsMemoryThreshold(Ljava/lang/String;IJ)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "threshold"    # J

    .prologue
    .line 710
    invoke-static {p1, p2, p3, p4}, Lcom/miui/whetstone/client/WhetstoneClientManager;->checkApplicationsMemoryThreshold(Ljava/lang/String;IJ)V

    .line 711
    const-wide/16 v0, 0x400

    div-long v0, p3, v0

    invoke-direct {p0, p2, v0, v1}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->updateCurrentProcessPss(IJ)V

    .line 709
    return-void
.end method

.method public checkIfPackageIsLocked(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 692
    invoke-static {p1}, Lcom/miui/whetstone/client/WhetstoneClientManager;->checkIfPackageIsLocked(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public checkIfPackageIsLockedWithUserId(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 698
    invoke-static {p1, p2}, Lcom/miui/whetstone/client/WhetstoneClientManager;->checkIfPackageIsLocked(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public varargs checkPackageState(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 16
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "caller"    # Ljava/lang/String;
    .param p3, "callerType"    # I
    .param p4, "userId"    # I
    .param p5, "componentName"    # Ljava/lang/String;
    .param p6, "processName"    # Ljava/lang/String;
    .param p7, "additionalArgs"    # [Ljava/lang/Object;

    .prologue
    .line 764
    const/4 v15, 0x1

    .line 765
    .local v15, "res":I
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->getComponentManager()Lcom/miui/whetstone/IComponentManager;

    move-result-object v1

    .line 766
    .local v1, "componentManager":Lcom/miui/whetstone/IComponentManager;
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 767
    .local v10, "additional":Landroid/os/Bundle;
    move-object/from16 v0, p7

    array-length v2, v0

    if-lez v2, :cond_0

    .line 769
    const/4 v2, 0x0

    :try_start_0
    aget-object v14, p7, v2

    check-cast v14, Landroid/content/Intent;

    .line 770
    .local v14, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "intent"

    invoke-virtual {v10, v2, v14}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 776
    .end local v14    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 779
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v9

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    .line 778
    invoke-interface/range {v1 .. v10}, Lcom/miui/whetstone/IComponentManager;->handleComponentStartV1(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;IILandroid/os/Bundle;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v15

    .line 791
    :cond_1
    :goto_1
    return v15

    .line 771
    :catch_0
    move-exception v12

    .line 772
    .local v12, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v2, "WhetstonePackageState"

    invoke-static {v12}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 780
    .end local v12    # "e":Ljava/lang/ClassCastException;
    :catch_1
    move-exception v11

    .line 781
    .local v11, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "WhetstonePackageState"

    invoke-static {v11}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    :try_start_2
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v9

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    .line 784
    invoke-interface/range {v1 .. v9}, Lcom/miui/whetstone/IComponentManager;->handleComponentStart(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;II)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v15

    goto :goto_1

    .line 786
    :catch_2
    move-exception v13

    .line 787
    .local v13, "e1":Landroid/os/RemoteException;
    const-string/jumbo v2, "WhetstonePackageState"

    invoke-static {v11}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public clearDeadAppFromNative()V
    .locals 4

    .prologue
    .line 216
    iget-object v1, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mHandler:Lcom/miui/whetstone/server/WhetstoneActivityManagerService$PromoteLevelManagerHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService$PromoteLevelManagerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 217
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mHandler:Lcom/miui/whetstone/server/WhetstoneActivityManagerService$PromoteLevelManagerHandler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v0, v2, v3}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService$PromoteLevelManagerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 215
    return-void
.end method

.method public distoryActivity(I)Z
    .locals 8
    .param p1, "pid"    # I

    .prologue
    .line 584
    const/4 v3, 0x0

    .line 585
    .local v3, "ret":Z
    iget-object v4, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mScheduleDestroyActivities:Ljava/lang/reflect/Method;

    if-eqz v4, :cond_0

    .line 587
    :try_start_0
    iget-object v4, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mScheduleDestroyActivities:Ljava/lang/reflect/Method;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    const-string/jumbo v6, "whetstone"

    const/4 v7, 0x2

    aput-object v6, v5, v7

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 588
    const/4 v3, 0x1

    .line 597
    :cond_0
    :goto_0
    return v3

    .line 593
    :catch_0
    move-exception v2

    .line 594
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string/jumbo v4, "whetstone.activity"

    const-string/jumbo v5, "distoryActivity"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 591
    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v0

    .line 592
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string/jumbo v4, "whetstone.activity"

    const-string/jumbo v5, "distoryActivity"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 589
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v1

    .line 590
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v4, "whetstone.activity"

    const-string/jumbo v5, "distoryActivity"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 715
    iget-object v1, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.DUMP"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 717
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Permission Denial: can\'t dump whetstone.activity service from from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 718
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 717
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 719
    const-string/jumbo v2, ", uid="

    .line 717
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 719
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 717
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 720
    return-void

    .line 723
    :cond_0
    invoke-virtual {p0}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->getPowerKeeperPolicy()Lcom/miui/whetstone/PowerKeeperPolicy;

    move-result-object v0

    .line 724
    .local v0, "p":Lcom/miui/whetstone/PowerKeeperPolicy;
    if-eqz v0, :cond_1

    .line 725
    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/whetstone/PowerKeeperPolicy;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 714
    :cond_1
    return-void
.end method

.method public getAndroidCachedEmptyProcessMemory()J
    .locals 2

    .prologue
    .line 660
    invoke-static {}, Lcom/miui/whetstone/client/WhetstoneClientManager;->getEmptyProcTotalMemoryInfo()J

    move-result-wide v0

    return-wide v0
.end method

.method public getBackgroundAPPS()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 507
    const/4 v0, 0x0

    return-object v0
.end method

.method public getComponentManagerNative()Lcom/miui/whetstone/IComponentManager;
    .locals 1

    .prologue
    .line 796
    iget-object v0, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mComponentManagerNative:Lcom/miui/whetstone/component/ComponentManagerNative;

    return-object v0
.end method

.method public getConnProviderNames(Ljava/lang/String;ILjava/util/List;)Z
    .locals 16
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 941
    .local p3, "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v9, 0x0

    .line 942
    .local v9, "result":Z
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mExtraActivityManagerService:Ljava/lang/Class;

    if-eqz v11, :cond_4

    .line 944
    const/4 v10, 0x0

    .line 945
    .local v10, "serProviders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mGetConnProviderNames:Ljava/lang/reflect/Method;

    if-nez v11, :cond_0

    .line 947
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mExtraActivityManagerService:Ljava/lang/Class;

    const-string/jumbo v12, "getConnProviderNamesLocked"

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Class;

    const-class v14, Ljava/lang/String;

    const/4 v15, 0x0

    aput-object v14, v13, v15

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v15, 0x1

    aput-object v14, v13, v15

    invoke-static {v11, v12, v13}, Lmiui/util/ReflectionUtils;->findMethodExact(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    .line 946
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mGetConnProviderNames:Ljava/lang/reflect/Method;

    .line 949
    :cond_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mGetConnProviderNames:Ljava/lang/reflect/Method;

    if-eqz v11, :cond_1

    .line 950
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mGetConnProviderNames:Ljava/lang/reflect/Method;

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object p1, v12, v13

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x1

    aput-object v13, v12, v14

    const/4 v13, 0x0

    invoke-virtual {v11, v13, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Ljava/util/List;

    move-object v10, v0

    .line 952
    .end local v10    # "serProviders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    if-eqz v10, :cond_6

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_6

    .line 953
    const/4 v9, 0x1

    .line 954
    if-eqz p3, :cond_5

    .line 955
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_3

    .line 956
    invoke-interface/range {p3 .. p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "name$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 957
    .local v5, "name":Ljava/lang/String;
    invoke-interface {v10, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 958
    const/4 v9, 0x0

    .line 963
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "name$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->clear()V

    .line 964
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "provName$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 965
    .local v7, "provName":Ljava/lang/String;
    move-object/from16 v0, p3

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 972
    .end local v7    # "provName":Ljava/lang/String;
    .end local v8    # "provName$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v2

    .line 973
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v11, "whetstone.activity"

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :cond_4
    :goto_1
    return v9

    .line 968
    :cond_5
    return v9

    .line 969
    :cond_6
    if-eqz p3, :cond_4

    .line 970
    :try_start_1
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->clear()V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 974
    :catch_1
    move-exception v3

    .line 975
    .local v3, "e":Ljava/lang/NoSuchMethodException;
    const-string/jumbo v11, "whetstone.activity"

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 978
    .end local v3    # "e":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v4

    .line 979
    .local v4, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string/jumbo v11, "whetstone.activity"

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 976
    .end local v4    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_3
    move-exception v1

    .line 977
    .local v1, "e":Ljava/lang/IllegalAccessException;
    const-string/jumbo v11, "whetstone.activity"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getPackageNamebyPid(I)Ljava/lang/String;
    .locals 12
    .param p1, "pid"    # I

    .prologue
    .line 222
    const/4 v6, 0x0

    .line 223
    .local v6, "packageName":Ljava/lang/String;
    iget-object v9, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v9

    .line 224
    :try_start_0
    iget-object v8, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v8, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 225
    .local v7, "processRecord":Ljava/lang/Object;
    if-eqz v7, :cond_0

    .line 227
    const/4 v0, 0x0

    .line 228
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_1
    const-string/jumbo v8, "com.android.server.am.ProcessRecord"

    iget-object v10, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mSystemServiceClassLoader:Ljava/lang/ClassLoader;

    const/4 v11, 0x0

    invoke-static {v8, v11, v10}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 229
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v8, "info"

    invoke-static {v0, v8}, Lmiui/util/ReflectionUtils;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ApplicationInfo;

    .line 230
    .local v5, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v5, :cond_0

    .line 231
    iget-object v6, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v6    # "packageName":Ljava/lang/String;
    :cond_0
    :goto_0
    monitor-exit v9

    .line 244
    return-object v6

    .line 239
    .restart local v6    # "packageName":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 240
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    :try_start_2
    const-string/jumbo v8, "whetstone.activity"

    const-string/jumbo v10, "getPackageNamebyPid"

    invoke-static {v8, v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 223
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    .end local v7    # "processRecord":Ljava/lang/Object;
    :catchall_0
    move-exception v8

    monitor-exit v9

    throw v8

    .line 237
    .restart local v7    # "processRecord":Ljava/lang/Object;
    :catch_1
    move-exception v4

    .line 238
    .local v4, "e":Ljava/lang/NoSuchFieldException;
    :try_start_3
    const-string/jumbo v8, "whetstone.activity"

    const-string/jumbo v10, "getPackageNamebyPid"

    invoke-static {v8, v10, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 235
    .end local v4    # "e":Ljava/lang/NoSuchFieldException;
    :catch_2
    move-exception v2

    .line 236
    .local v2, "e":Ljava/lang/IllegalAccessException;
    const-string/jumbo v8, "whetstone.activity"

    const-string/jumbo v10, "getPackageNamebyPid"

    invoke-static {v8, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 233
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v3

    .line 234
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v8, "whetstone.activity"

    const-string/jumbo v10, "getPackageNamebyPid"

    invoke-static {v8, v10, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public getPartialWakeLockHoldByUid(I)I
    .locals 10
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 731
    const/4 v3, 0x0

    .line 732
    .local v3, "ret":I
    iget-object v5, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->getPartialWakeLockHoldByUid:Ljava/lang/reflect/Method;

    if-nez v5, :cond_0

    .line 733
    const-string/jumbo v5, "whetstone.activity"

    const-string/jumbo v6, "whetstone.activity getPartialWakeLockHoldByUid == null"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    const/4 v5, -0x1

    return v5

    .line 737
    :cond_0
    :try_start_0
    iget-object v5, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->getPartialWakeLockHoldByUid:Ljava/lang/reflect/Method;

    iget-object v6, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->PowerManagerServiceInjector:Ljava/lang/Class;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-virtual {v5, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 738
    .local v4, "wakeLockCnt":Ljava/lang/Integer;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 739
    :cond_1
    const-string/jumbo v5, "whetstone.activity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "whetstone.activity ret = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 747
    .end local v4    # "wakeLockCnt":Ljava/lang/Integer;
    :goto_0
    return v3

    .line 744
    :catch_0
    move-exception v2

    .line 745
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string/jumbo v5, "whetstone.activity"

    const-string/jumbo v6, "getPartialWakeLockHoldByUid"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 742
    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v0

    .line 743
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string/jumbo v5, "whetstone.activity"

    const-string/jumbo v6, "getPartialWakeLockHoldByUid"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 740
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v1

    .line 741
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v5, "whetstone.activity"

    const-string/jumbo v6, "getPartialWakeLockHoldByUid"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public bridge synthetic getPowerKeeperPolicy()Lcom/miui/whetstone/IPowerKeeperPolicy;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 196
    invoke-virtual {p0}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->getPowerKeeperPolicy()Lcom/miui/whetstone/PowerKeeperPolicy;

    move-result-object v0

    return-object v0
.end method

.method public getPowerKeeperPolicy()Lcom/miui/whetstone/PowerKeeperPolicy;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mPowerKeeperPolicy:Lcom/miui/whetstone/PowerKeeperPolicy;

    return-object v0
.end method

.method public getProcessReceiverState(I)Z
    .locals 13
    .param p1, "pid"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 535
    const/4 v0, -0x1

    .line 536
    .local v0, "ProcStat":I
    iget-object v6, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mExtraActivityManagerService:Ljava/lang/Class;

    if-eqz v6, :cond_0

    .line 538
    :try_start_0
    iget-object v6, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mExtraActivityManagerService:Ljava/lang/Class;

    const-string/jumbo v9, "getProcStateByPid"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-static {v6, v9, v10}, Lmiui/util/ReflectionUtils;->findMethodExact(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 539
    .local v5, "getProcStateByPid":Ljava/lang/reflect/Method;
    if-eqz v5, :cond_0

    .line 540
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v6, v10

    const/4 v9, 0x0

    invoke-virtual {v5, v9, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 552
    .end local v5    # "getProcStateByPid":Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    const/16 v6, 0xb

    if-ne v0, v6, :cond_1

    move v6, v7

    :goto_1
    return v6

    .line 548
    :catch_0
    move-exception v4

    .line 549
    .local v4, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string/jumbo v6, "whetstone.activity"

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 546
    .end local v4    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v1

    .line 547
    .local v1, "e":Ljava/lang/IllegalAccessException;
    const-string/jumbo v6, "whetstone.activity"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 544
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v3

    .line 545
    .local v3, "e":Ljava/lang/NoSuchMethodException;
    const-string/jumbo v6, "whetstone.activity"

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 542
    .end local v3    # "e":Ljava/lang/NoSuchMethodException;
    :catch_3
    move-exception v2

    .line 543
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v6, "whetstone.activity"

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :cond_1
    move v6, v8

    .line 552
    goto :goto_1
.end method

.method public getSystemPid()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 650
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    return v0
.end method

.method public getUidFrozenState(I)Z
    .locals 3
    .param p1, "uid"    # I

    .prologue
    const/4 v1, 0x0

    .line 609
    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 610
    :cond_0
    iget-object v1, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mUidFrozenState:Landroid/util/SparseBooleanArray;

    monitor-enter v1

    .line 611
    :try_start_0
    iget-object v0, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mUidFrozenState:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 610
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public isAlarmAllowedLocked(III)Z
    .locals 3
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "type"    # I

    .prologue
    .line 616
    sget-boolean v0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->D:Z

    if-eqz v0, :cond_0

    .line 617
    const-string/jumbo v0, "whetstone.activity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isAlarmAllowedLocked() for pid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " uid= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", type ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    :cond_0
    invoke-virtual {p0}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->getPowerKeeperPolicy()Lcom/miui/whetstone/PowerKeeperPolicy;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/whetstone/PowerKeeperPolicy;->isAlarmAllowedLocked(III)Z

    move-result v0

    if-nez v0, :cond_2

    .line 620
    sget-boolean v0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->D:Z

    if-eqz v0, :cond_1

    .line 621
    const-string/jumbo v0, "whetstone.activity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Alarm restrict for pid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", uid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 622
    const-string/jumbo v2, ", type = "

    .line 621
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 626
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public isBroadcastAllowedLocked(IILjava/lang/String;)Z
    .locals 3
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "type"    # Ljava/lang/String;

    .prologue
    .line 630
    sget-boolean v0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->D:Z

    if-eqz v0, :cond_0

    .line 631
    const-string/jumbo v0, "whetstone.activity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isBroadcastAllowedLocked() for pid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " uid= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", type ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    :cond_0
    invoke-virtual {p0}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->getPowerKeeperPolicy()Lcom/miui/whetstone/PowerKeeperPolicy;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/whetstone/PowerKeeperPolicy;->isBroadcastAllowedLocked(IILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 634
    sget-boolean v0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->D:Z

    if-eqz v0, :cond_1

    .line 635
    const-string/jumbo v0, "whetstone.activity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Broadcast restrict for pid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", uid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 636
    const-string/jumbo v2, ", type = "

    .line 635
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 640
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public isProcessExecutingServices(I)Z
    .locals 13
    .param p1, "pid"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 557
    const/4 v4, 0x0

    .line 558
    .local v4, "executingServicesN":I
    iget-object v6, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mExtraActivityManagerService:Ljava/lang/Class;

    if-eqz v6, :cond_0

    .line 560
    :try_start_0
    iget-object v6, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mExtraActivityManagerService:Ljava/lang/Class;

    const-string/jumbo v9, "getExecutingServicesSize"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-static {v6, v9, v10}, Lmiui/util/ReflectionUtils;->findMethodExact(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 561
    .local v5, "getExecutingServicesSize":Ljava/lang/reflect/Method;
    if-eqz v5, :cond_0

    .line 562
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v6, v10

    const/4 v9, 0x0

    invoke-virtual {v5, v9, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 574
    .end local v5    # "getExecutingServicesSize":Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    if-lez v4, :cond_1

    move v6, v7

    :goto_1
    return v6

    .line 570
    :catch_0
    move-exception v3

    .line 571
    .local v3, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string/jumbo v6, "whetstone.activity"

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 568
    .end local v3    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v0

    .line 569
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string/jumbo v6, "whetstone.activity"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 566
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v2

    .line 567
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    const-string/jumbo v6, "whetstone.activity"

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 564
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    :catch_3
    move-exception v1

    .line 565
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v6, "whetstone.activity"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :cond_1
    move v6, v8

    .line 574
    goto :goto_1
.end method

.method public promoteApplicationLevel(II)V
    .locals 18
    .param p1, "level"    # I
    .param p2, "timeoutMills"    # I

    .prologue
    .line 363
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 364
    .local v2, "callPid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 365
    .local v3, "callUid":I
    const/4 v12, -0x1

    .line 366
    .local v12, "tempLevel":I
    packed-switch p1, :pswitch_data_0

    .line 379
    :goto_0
    const/4 v14, -0x1

    if-ne v12, v14, :cond_0

    .line 380
    return-void

    .line 368
    :pswitch_0
    const/16 v14, 0x20

    invoke-static {v14, v2, v3}, Lcom/miui/whetstone/WhetstoneManager;->checkPermissionLevel(III)I

    move-result v12

    goto :goto_0

    .line 371
    :pswitch_1
    const/16 v14, 0x40

    invoke-static {v14, v2, v3}, Lcom/miui/whetstone/WhetstoneManager;->checkPermissionLevel(III)I

    move-result v12

    goto :goto_0

    .line 374
    :pswitch_2
    const/16 v14, 0x80

    invoke-static {v14, v2, v3}, Lcom/miui/whetstone/WhetstoneManager;->checkPermissionLevel(III)I

    move-result v12

    goto :goto_0

    .line 383
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v15

    .line 385
    if-gtz v2, :cond_1

    monitor-exit v15

    return-void

    .line 386
    :cond_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v14, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    .line 387
    .local v11, "processRecord":Ljava/lang/Object;
    if-eqz v11, :cond_6

    .line 388
    const-string/jumbo v14, "com.android.server.am.ProcessRecord"

    .line 389
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mSystemServiceClassLoader:Ljava/lang/ClassLoader;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    .line 388
    move/from16 v0, v17

    move-object/from16 v1, v16

    invoke-static {v14, v0, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v4

    .line 390
    .local v4, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v14, "com.android.server.am.ProcessList"

    .line 391
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mSystemServiceClassLoader:Ljava/lang/ClassLoader;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    .line 390
    move/from16 v0, v17

    move-object/from16 v1, v16

    invoke-static {v14, v0, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v5

    .line 392
    .local v5, "clazz2":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v14, "maxAdj"

    invoke-static {v4, v14}, Lmiui/util/ReflectionUtils;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    .line 394
    .local v13, "value":Ljava/lang/Integer;
    const-string/jumbo v14, "HEAVY_WEIGHT_APP_ADJ"

    sget-object v16, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 393
    move-object/from16 v0, v16

    invoke-static {v5, v14, v0}, Lmiui/util/ReflectionUtils;->getStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    .line 396
    .local v10, "normal_adj":Ljava/lang/Integer;
    const-string/jumbo v14, "PERCEPTIBLE_APP_ADJ"

    sget-object v16, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 395
    move-object/from16 v0, v16

    invoke-static {v5, v14, v0}, Lmiui/util/ReflectionUtils;->getStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 398
    .local v8, "middle_adj":Ljava/lang/Integer;
    const-string/jumbo v14, "VISIBLE_APP_ADJ"

    sget-object v16, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 397
    move-object/from16 v0, v16

    invoke-static {v5, v14, v0}, Lmiui/util/ReflectionUtils;->getStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 399
    .local v7, "high_adj":Ljava/lang/Integer;
    if-nez v12, :cond_3

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v16

    move/from16 v0, v16

    if-le v14, v0, :cond_3

    .line 400
    const-string/jumbo v14, "maxAdj"

    invoke-static {v4, v14}, Lmiui/util/ReflectionUtils;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v14

    invoke-virtual {v14, v11, v10}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v4    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "clazz2":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "high_adj":Ljava/lang/Integer;
    .end local v8    # "middle_adj":Ljava/lang/Integer;
    .end local v10    # "normal_adj":Ljava/lang/Integer;
    .end local v11    # "processRecord":Ljava/lang/Object;
    .end local v13    # "value":Ljava/lang/Integer;
    :goto_1
    monitor-exit v15

    .line 415
    if-lez p2, :cond_2

    .line 416
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mHandler:Lcom/miui/whetstone/server/WhetstoneActivityManagerService$PromoteLevelManagerHandler;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService$PromoteLevelManagerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    .line 362
    .local v9, "msg":Landroid/os/Message;
    const/4 v14, 0x0

    .line 417
    iput-object v14, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 418
    iput v2, v9, Landroid/os/Message;->arg1:I

    .line 419
    iput v3, v9, Landroid/os/Message;->arg2:I

    .line 420
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mHandler:Lcom/miui/whetstone/server/WhetstoneActivityManagerService$PromoteLevelManagerHandler;

    move/from16 v0, p2

    int-to-long v0, v0

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v14, v9, v0, v1}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService$PromoteLevelManagerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 361
    .end local v9    # "msg":Landroid/os/Message;
    :cond_2
    return-void

    .line 401
    .restart local v4    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v5    # "clazz2":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v7    # "high_adj":Ljava/lang/Integer;
    .restart local v8    # "middle_adj":Ljava/lang/Integer;
    .restart local v10    # "normal_adj":Ljava/lang/Integer;
    .restart local v11    # "processRecord":Ljava/lang/Object;
    .restart local v13    # "value":Ljava/lang/Integer;
    :cond_3
    const/4 v14, 0x1

    if-ne v12, v14, :cond_4

    :try_start_1
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v16

    move/from16 v0, v16

    if-le v14, v0, :cond_4

    .line 402
    const-string/jumbo v14, "maxAdj"

    invoke-static {v4, v14}, Lmiui/util/ReflectionUtils;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v14

    invoke-virtual {v14, v11, v8}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 411
    .end local v4    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "clazz2":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "high_adj":Ljava/lang/Integer;
    .end local v8    # "middle_adj":Ljava/lang/Integer;
    .end local v10    # "normal_adj":Ljava/lang/Integer;
    .end local v11    # "processRecord":Ljava/lang/Object;
    .end local v13    # "value":Ljava/lang/Integer;
    :catch_0
    move-exception v6

    .line 412
    .local v6, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v14, "whetstone.activity"

    invoke-static {v6}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 383
    .end local v6    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v14

    monitor-exit v15

    throw v14

    .line 403
    .restart local v4    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v5    # "clazz2":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v7    # "high_adj":Ljava/lang/Integer;
    .restart local v8    # "middle_adj":Ljava/lang/Integer;
    .restart local v10    # "normal_adj":Ljava/lang/Integer;
    .restart local v11    # "processRecord":Ljava/lang/Object;
    .restart local v13    # "value":Ljava/lang/Integer;
    :cond_4
    const/4 v14, 0x2

    if-ne v12, v14, :cond_5

    :try_start_3
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v16

    move/from16 v0, v16

    if-le v14, v0, :cond_5

    .line 404
    const-string/jumbo v14, "maxAdj"

    invoke-static {v4, v14}, Lmiui/util/ReflectionUtils;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v14

    invoke-virtual {v14, v11, v7}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :cond_5
    monitor-exit v15

    .line 406
    return-void

    .end local v4    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "clazz2":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "high_adj":Ljava/lang/Integer;
    .end local v8    # "middle_adj":Ljava/lang/Integer;
    .end local v10    # "normal_adj":Ljava/lang/Integer;
    .end local v13    # "value":Ljava/lang/Integer;
    :cond_6
    monitor-exit v15

    .line 409
    return-void

    .line 366
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public putUidFrozenState(II)Z
    .locals 4
    .param p1, "uid"    # I
    .param p2, "state"    # I

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 601
    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    .line 602
    :cond_0
    iget-object v2, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mUidFrozenState:Landroid/util/SparseBooleanArray;

    monitor-enter v2

    .line 603
    :try_start_0
    iget-object v3, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mUidFrozenState:Landroid/util/SparseBooleanArray;

    if-ne v1, p2, :cond_1

    move v0, v1

    :cond_1
    invoke-virtual {v3, p1, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 605
    return v1

    .line 602
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public releaseApplicationPromoteLevel()V
    .locals 14

    .prologue
    .line 426
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 427
    .local v0, "callPid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 429
    .local v1, "callUid":I
    const/16 v10, 0x10

    .line 428
    invoke-static {v10, v0, v1}, Lcom/miui/whetstone/WhetstoneManager;->checkIfHaveTheCallFunctionPermission(III)Z

    move-result v10

    if-nez v10, :cond_0

    .line 429
    return-void

    .line 431
    :cond_0
    iget-object v11, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v11

    .line 433
    if-gtz v0, :cond_1

    monitor-exit v11

    return-void

    .line 434
    :cond_1
    :try_start_0
    iget-object v10, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v10, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 435
    .local v6, "processRecord":Ljava/lang/Object;
    if-eqz v6, :cond_4

    .line 436
    const-string/jumbo v10, "com.android.server.am.ProcessRecord"

    .line 437
    iget-object v12, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mSystemServiceClassLoader:Ljava/lang/ClassLoader;

    const/4 v13, 0x0

    .line 436
    invoke-static {v10, v13, v12}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    .line 438
    .local v2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v10, "com.android.server.am.ProcessList"

    .line 439
    iget-object v12, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mSystemServiceClassLoader:Ljava/lang/ClassLoader;

    const/4 v13, 0x0

    .line 438
    invoke-static {v10, v13, v12}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    .line 440
    .local v3, "clazz2":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v10, "processName"

    invoke-static {v2, v10}, Lmiui/util/ReflectionUtils;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 441
    .local v5, "processName":Ljava/lang/String;
    invoke-static {v5}, Lcom/miui/whetstone/client/WhetstoneClientManager;->isSystemProtectImportantApp(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v10

    if-eqz v10, :cond_2

    monitor-exit v11

    return-void

    .line 443
    :cond_2
    :try_start_1
    const-string/jumbo v10, "maxAdj"

    invoke-static {v2, v10}, Lmiui/util/ReflectionUtils;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 445
    .local v7, "value":Ljava/lang/Integer;
    const-string/jumbo v10, "HEAVY_WEIGHT_APP_ADJ"

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 444
    invoke-static {v3, v10, v12}, Lmiui/util/ReflectionUtils;->getStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 446
    .local v8, "value2":Ljava/lang/Integer;
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-gt v10, v12, :cond_3

    .line 448
    const-string/jumbo v10, "UNKNOWN_ADJ"

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 447
    invoke-static {v3, v10, v12}, Lmiui/util/ReflectionUtils;->getStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 449
    .local v9, "value3":Ljava/lang/Integer;
    const-string/jumbo v10, "maxAdj"

    invoke-static {v2, v10}, Lmiui/util/ReflectionUtils;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v10

    invoke-virtual {v10, v6, v9}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 451
    .end local v9    # "value3":Ljava/lang/Integer;
    :cond_3
    const/4 v10, 0x0

    invoke-static {v5, v10}, Lcom/miui/whetstone/client/WhetstoneClientManager;->updatePackageLockedStatus(Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "clazz2":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "processName":Ljava/lang/String;
    .end local v6    # "processRecord":Ljava/lang/Object;
    .end local v7    # "value":Ljava/lang/Integer;
    .end local v8    # "value2":Ljava/lang/Integer;
    :cond_4
    :goto_0
    monitor-exit v11

    .line 425
    return-void

    .line 453
    :catch_0
    move-exception v4

    .line 454
    .local v4, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v10, "whetstone.activity"

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 431
    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v10

    monitor-exit v11

    throw v10
.end method

.method public removeAppFromServiceControlWhitelist(Ljava/lang/String;)V
    .locals 0
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 670
    invoke-static {p1}, Lcom/miui/whetstone/process/WtServiceControlEntry;->removeAppFromServiceControlWhitelist(Ljava/lang/String;)V

    .line 669
    return-void
.end method

.method public removeTaskById(IZ)Z
    .locals 1
    .param p1, "taskId"    # I
    .param p2, "killProcess"    # Z

    .prologue
    .line 936
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->removeTaskByIdInternal(IZZ)Z

    move-result v0

    return v0
.end method

.method public scheduleStopService(Ljava/lang/String;Landroid/content/ComponentName;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 579
    const/4 v0, 0x0

    return v0
.end method

.method public scheduleTrimMemory(II)Z
    .locals 12
    .param p1, "pid"    # I
    .param p2, "level"    # I

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 512
    iget-object v5, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mExtraActivityManagerService:Ljava/lang/Class;

    if-eqz v5, :cond_0

    .line 514
    :try_start_0
    iget-object v5, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mExtraActivityManagerService:Ljava/lang/Class;

    .line 515
    const-string/jumbo v6, "scheduleTrimMemory"

    .line 514
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Class;

    .line 515
    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v9, 0x0

    aput-object v8, v7, v9

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v9, 0x1

    aput-object v8, v7, v9

    .line 514
    invoke-static {v5, v6, v7}, Lmiui/util/ReflectionUtils;->findMethodExact(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 516
    .local v4, "scheduleTrimMemory":Ljava/lang/reflect/Method;
    if-eqz v4, :cond_0

    .line 517
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 518
    return v11

    .line 526
    .end local v4    # "scheduleTrimMemory":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v3

    .line 527
    .local v3, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string/jumbo v5, "whetstone.activity"

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    .end local v3    # "e":Ljava/lang/reflect/InvocationTargetException;
    :cond_0
    :goto_0
    return v10

    .line 524
    :catch_1
    move-exception v0

    .line 525
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string/jumbo v5, "whetstone.activity"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 522
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v2

    .line 523
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    const-string/jumbo v5, "whetstone.activity"

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 520
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    :catch_3
    move-exception v1

    .line 521
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v5, "whetstone.activity"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setPerformanceComponents([Landroid/content/ComponentName;)Z
    .locals 1
    .param p1, "name"    # [Landroid/content/ComponentName;

    .prologue
    .line 655
    invoke-static {p1}, Lcom/miui/whetstone/client/WhetstoneClientManager;->setComponment([Landroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method public updateApplicationByLockedState(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "locked"    # Z

    .prologue
    .line 295
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->updateApplicationByLockedStateWithUserId(Ljava/lang/String;ZI)V

    .line 294
    return-void
.end method

.method public updateApplicationByLockedStateWithUserId(Ljava/lang/String;ZI)V
    .locals 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "locked"    # Z
    .param p3, "userId"    # I

    .prologue
    .line 300
    invoke-direct {p0}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->checkCallInterfacePermission()Z

    move-result v8

    if-nez v8, :cond_0

    .line 301
    return-void

    .line 303
    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 304
    :cond_1
    invoke-static {p1}, Lcom/miui/whetstone/client/WhetstoneClientManager;->isSystemProtectImportantApp(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 305
    invoke-static {p1, p2, p3}, Lcom/miui/whetstone/client/WhetstoneClientManager;->updatePackageLockedStatus(Ljava/lang/String;ZI)V

    .line 306
    return-void

    .line 308
    :cond_2
    iget-object v9, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v9

    .line 310
    :try_start_0
    invoke-direct {p0, p1, p3}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->getProcessPidByPackageNameLocked(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 311
    .local v3, "pid":I
    const/4 v8, -0x1

    if-ne v3, v8, :cond_3

    monitor-exit v9

    return-void

    .line 312
    :cond_3
    :try_start_1
    iget-object v8, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v8, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 313
    .local v4, "processRecord":Ljava/lang/Object;
    if-eqz v4, :cond_4

    .line 314
    const-string/jumbo v8, "com.android.server.am.ProcessRecord"

    .line 315
    iget-object v10, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mSystemServiceClassLoader:Ljava/lang/ClassLoader;

    const/4 v11, 0x0

    .line 314
    invoke-static {v8, v11, v10}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 316
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v8, "com.android.server.am.ProcessList"

    .line 317
    iget-object v10, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mSystemServiceClassLoader:Ljava/lang/ClassLoader;

    const/4 v11, 0x0

    .line 316
    invoke-static {v8, v11, v10}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    .line 318
    .local v1, "clazz2":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v8, "maxAdj"

    invoke-static {v0, v8}, Lmiui/util/ReflectionUtils;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 320
    .local v5, "value":Ljava/lang/Integer;
    const-string/jumbo v8, "HEAVY_WEIGHT_APP_ADJ"

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 319
    invoke-static {v1, v8, v10}, Lmiui/util/ReflectionUtils;->getStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 321
    .local v6, "value2":Ljava/lang/Integer;
    if-eqz p2, :cond_5

    .line 322
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-le v8, v10, :cond_4

    .line 323
    const-string/jumbo v8, "maxAdj"

    invoke-static {v0, v8}, Lmiui/util/ReflectionUtils;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    invoke-virtual {v8, v4, v6}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 331
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "clazz2":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "value":Ljava/lang/Integer;
    .end local v6    # "value2":Ljava/lang/Integer;
    :cond_4
    :goto_0
    invoke-static {p1, p2, p3}, Lcom/miui/whetstone/client/WhetstoneClientManager;->updatePackageLockedStatus(Ljava/lang/String;ZI)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v3    # "pid":I
    .end local v4    # "processRecord":Ljava/lang/Object;
    :goto_1
    monitor-exit v9

    .line 299
    return-void

    .line 327
    .restart local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v1    # "clazz2":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v3    # "pid":I
    .restart local v4    # "processRecord":Ljava/lang/Object;
    .restart local v5    # "value":Ljava/lang/Integer;
    .restart local v6    # "value2":Ljava/lang/Integer;
    :cond_5
    :try_start_2
    const-string/jumbo v8, "UNKNOWN_ADJ"

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 326
    invoke-static {v1, v8, v10}, Lmiui/util/ReflectionUtils;->getStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 328
    .local v7, "value3":Ljava/lang/Integer;
    const-string/jumbo v8, "maxAdj"

    invoke-static {v0, v8}, Lmiui/util/ReflectionUtils;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    invoke-virtual {v8, v4, v7}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 332
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "clazz2":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "pid":I
    .end local v4    # "processRecord":Ljava/lang/Object;
    .end local v5    # "value":Ljava/lang/Integer;
    .end local v6    # "value2":Ljava/lang/Integer;
    .end local v7    # "value3":Ljava/lang/Integer;
    :catch_0
    move-exception v2

    .line 333
    .local v2, "e":Ljava/lang/Exception;
    :try_start_3
    const-string/jumbo v8, "whetstone.activity"

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 308
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    monitor-exit v9

    throw v8
.end method

.method public updateApplicationsMemoryThreshold(Ljava/util/List;)V
    .locals 0
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
    .line 674
    .local p1, "thresholds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/miui/whetstone/client/WhetstoneClientManager;->updateApplicationsMemoryThreshold(Ljava/util/List;)V

    .line 673
    return-void
.end method

.method public updateFrameworkCommonConfig(Ljava/lang/String;)V
    .locals 1
    .param p1, "json"    # Ljava/lang/String;

    .prologue
    .line 752
    sget-object v0, Lcom/miui/whetstone/client/WhetstoneClientManager;->mSetting:Lcom/miui/whetstone/strategy/WhetstoneSystemSetting;

    invoke-virtual {v0, p1}, Lcom/miui/whetstone/strategy/WhetstoneSystemSetting;->updateFrameworkCommonConfig(Ljava/lang/String;)V

    .line 751
    return-void
.end method

.method public updateUserLockedAppList(Ljava/util/List;)V
    .locals 1
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
    .line 679
    .local p1, "thresholds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->checkCallInterfacePermission()Z

    move-result v0

    if-nez v0, :cond_0

    .line 680
    return-void

    .line 682
    :cond_0
    invoke-static {p1}, Lcom/miui/whetstone/client/WhetstoneClientManager;->updateUserLockedAppList(Ljava/util/List;)V

    .line 678
    return-void
.end method

.method public updateUserLockedAppListWithUserId(Ljava/util/List;I)V
    .locals 0
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
    .line 687
    .local p1, "thresholds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1, p2}, Lcom/miui/whetstone/client/WhetstoneClientManager;->updateUserLockedAppList(Ljava/util/List;I)V

    .line 686
    return-void
.end method
