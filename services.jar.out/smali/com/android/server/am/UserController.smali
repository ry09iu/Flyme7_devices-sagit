.class final Lcom/android/server/am/UserController;
.super Ljava/lang/Object;
.source "UserController.java"


# static fields
.field static final MAX_RUNNING_USERS:I = 0x3

.field private static final TAG:Ljava/lang/String;

.field static final USER_STOP_RETRY_DELAY:I = 0x4e20

.field static final USER_SWITCH_TIMEOUT:I = 0x7d0


# instance fields
.field private volatile mCurWaitingUserSwitchCallbacks:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentProfileIds:[I

.field private mCurrentUserId:I

.field private final mHandler:Landroid/os/Handler;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private final mService:Lcom/android/server/am/ActivityManagerService;

.field private mStartedUserArray:[I

.field private final mStartedUsers:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mService"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/am/UserState;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetUserId:I

.field private final mUserLru:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mUserManager:Lcom/android/server/pm/UserManagerService;

.field private mUserManagerInternal:Landroid/os/UserManagerInternal;

.field private final mUserProfileGroupIdsSelfLocked:Landroid/util/SparseIntArray;

.field private final mUserSwitchObservers:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/app/IUserSwitchObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/am/UserController;)Landroid/util/ArraySet;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/UserController;->mCurWaitingUserSwitchCallbacks:Landroid/util/ArraySet;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/am/UserController;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/am/UserController;)Lcom/android/server/am/ActivityManagerService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/am/UserController;)Lcom/android/server/pm/UserManagerService;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/am/UserController;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/am/UserController;Lcom/android/server/am/UserState;)V
    .locals 0
    .param p1, "uss"    # Lcom/android/server/am/UserState;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/am/UserController;->finishUserUnlockedCompleted(Lcom/android/server/am/UserState;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 108
    const-string/jumbo v0, "ActivityManager"

    sput-object v0, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    .line 107
    return-void
.end method

.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 3
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    const/4 v2, 0x0

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    iput v2, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    .line 130
    const/16 v1, -0x2710

    iput v1, p0, Lcom/android/server/am/UserController;->mTargetUserId:I

    .line 136
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    .line 141
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    .line 146
    const/4 v1, 0x1

    new-array v1, v1, [I

    aput v2, v1, v2

    iput-object v1, p0, Lcom/android/server/am/UserController;->mStartedUserArray:[I

    .line 150
    new-array v1, v2, [I

    iput-object v1, p0, Lcom/android/server/am/UserController;->mCurrentProfileIds:[I

    .line 155
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIdsSelfLocked:Landroid/util/SparseIntArray;

    .line 161
    new-instance v1, Landroid/os/RemoteCallbackList;

    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 160
    iput-object v1, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    .line 175
    iput-object p1, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 176
    iget-object v1, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iput-object v1, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    .line 178
    new-instance v0, Lcom/android/server/am/UserState;

    sget-object v1, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-direct {v0, v1}, Lcom/android/server/am/UserState;-><init>(Landroid/os/UserHandle;)V

    .line 179
    .local v0, "uss":Lcom/android/server/am/UserState;
    iget-object v1, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 180
    iget-object v1, p0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/am/UserController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 182
    invoke-direct {p0}, Lcom/android/server/am/UserController;->updateStartedUserArrayLocked()V

    .line 174
    return-void
.end method

.method private finishUserBoot(Lcom/android/server/am/UserState;)V
    .locals 1
    .param p1, "uss"    # Lcom/android/server/am/UserState;

    .prologue
    .line 232
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/am/UserController;->finishUserBoot(Lcom/android/server/am/UserState;Landroid/content/IIntentReceiver;)V

    .line 231
    return-void
.end method

.method private finishUserBoot(Lcom/android/server/am/UserState;Landroid/content/IIntentReceiver;)V
    .locals 23
    .param p1, "uss"    # Lcom/android/server/am/UserState;
    .param p2, "resultTo"    # Landroid/content/IIntentReceiver;

    .prologue
    .line 236
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v18

    .line 238
    .local v18, "userId":I
    sget-object v2, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Finishing user boot "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v22, v0

    monitor-enter v22

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 241
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    move-object/from16 v0, p1

    if-eq v2, v0, :cond_0

    monitor-exit v22

    .line 239
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 241
    return-void

    .line 247
    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Lcom/android/server/am/UserState;->setState(II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 248
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/UserController;->getUserManagerInternal()Landroid/os/UserManagerInternal;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/server/am/UserState;->state:I

    move/from16 v0, v18

    invoke-virtual {v2, v0, v3}, Landroid/os/UserManagerInternal;->setUserState(II)V

    .line 250
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v6, 0x3e8

    div-long/2addr v2, v6

    long-to-int v0, v2

    move/from16 v21, v0

    .line 251
    .local v21, "uptimeSeconds":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "framework_locked_boot_completed"

    move/from16 v0, v21

    invoke-static {v2, v3, v0}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 254
    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.LOCKED_BOOT_COMPLETED"

    const/4 v3, 0x0

    invoke-direct {v5, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 255
    .local v5, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "android.intent.extra.user_handle"

    move/from16 v0, v18

    invoke-virtual {v5, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 256
    const/high16 v2, 0x9000000

    invoke-virtual {v5, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 258
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 259
    const/4 v3, 0x1

    new-array v11, v3, [Ljava/lang/String;

    const-string/jumbo v3, "android.permission.RECEIVE_BOOT_COMPLETED"

    const/4 v4, 0x0

    aput-object v3, v11, v4

    .line 260
    sget v16, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    .line 258
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 260
    const/4 v12, -0x1

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v17, 0x3e8

    move-object/from16 v7, p2

    .line 258
    invoke-virtual/range {v2 .. v18}, Lcom/android/server/am/ActivityManagerService;->broadcastIntentLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIII)I

    .line 267
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v21    # "uptimeSeconds":I
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/UserController;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v2

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/android/server/pm/UserManagerService;->isManagedProfile(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 268
    invoke-static/range {v18 .. v18}, Lmiui/securityspace/XSpaceUserHandle;->isXSpaceUserId(I)Z

    move-result v2

    .line 267
    if-eqz v2, :cond_5

    .line 270
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/UserController;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v2

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/android/server/pm/UserManagerService;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v19

    .line 271
    .local v19, "parent":Landroid/content/pm/UserInfo;
    if-eqz v19, :cond_3

    .line 272
    move-object/from16 v0, v19

    iget v2, v0, Landroid/content/pm/UserInfo;->id:I

    const/4 v3, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/am/UserController;->isUserRunningLocked(II)Z

    move-result v2

    .line 271
    if-eqz v2, :cond_3

    .line 273
    sget-object v2, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "User "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " (parent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    iget v4, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 274
    const-string/jumbo v4, "): attempting unlock because parent is unlocked"

    .line 273
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/am/UserController;->maybeUnlockUser(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v19    # "parent":Landroid/content/pm/UserInfo;
    :goto_0
    monitor-exit v22

    .line 239
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 235
    return-void

    .line 277
    .restart local v19    # "parent":Landroid/content/pm/UserInfo;
    :cond_3
    if-nez v19, :cond_4

    :try_start_2
    const-string/jumbo v20, "<null>"

    .line 278
    .local v20, "parentId":Ljava/lang/String;
    :goto_1
    sget-object v2, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "User "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " (parent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 279
    const-string/jumbo v4, "): delaying unlock because parent is locked"

    .line 278
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 239
    .end local v19    # "parent":Landroid/content/pm/UserInfo;
    .end local v20    # "parentId":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v22

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v2

    .line 277
    .restart local v19    # "parent":Landroid/content/pm/UserInfo;
    :cond_4
    :try_start_3
    move-object/from16 v0, v19

    iget v2, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    .restart local v20    # "parentId":Ljava/lang/String;
    goto :goto_1

    .line 282
    .end local v19    # "parent":Landroid/content/pm/UserInfo;
    .end local v20    # "parentId":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/am/UserController;->maybeUnlockUser(I)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method private finishUserUnlockedCompleted(Lcom/android/server/am/UserState;)V
    .locals 39
    .param p1, "uss"    # Lcom/android/server/am/UserState;

    .prologue
    .line 394
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v18

    .line 395
    .local v18, "userId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v38, v0

    monitor-enter v38

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 397
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    move-object/from16 v0, p1

    if-eq v2, v0, :cond_0

    monitor-exit v38

    .line 395
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 397
    return-void

    .line 398
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v37

    .line 399
    .local v37, "userInfo":Landroid/content/pm/UserInfo;
    if-nez v37, :cond_1

    monitor-exit v38

    .line 395
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 400
    return-void

    .line 404
    :cond_1
    :try_start_2
    invoke-static/range {v18 .. v18}, Landroid/os/storage/StorageManager;->isUserKeyUnlocked(I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    if-nez v2, :cond_2

    monitor-exit v38

    .line 395
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 404
    return-void

    .line 407
    :cond_2
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/UserController;->mUserManager:Lcom/android/server/pm/UserManagerService;

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/android/server/pm/UserManagerService;->onUserLoggedIn(I)V

    .line 411
    invoke-virtual/range {v37 .. v37}, Landroid/content/pm/UserInfo;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_3

    const/16 v2, 0x63

    move/from16 v0, v18

    if-eq v0, v2, :cond_3

    .line 412
    if-eqz v18, :cond_3

    .line 413
    sget-object v2, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Initializing user #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.USER_INITIALIZE"

    invoke-direct {v5, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 415
    .local v5, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v5, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 416
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 417
    new-instance v7, Lcom/android/server/am/UserController$2;

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v7, v0, v1}, Lcom/android/server/am/UserController$2;-><init>(Lcom/android/server/am/UserController;Landroid/content/pm/UserInfo;)V

    .line 426
    sget v16, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    .line 416
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 425
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, -0x1

    .line 426
    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v17, 0x3e8

    .line 416
    invoke-virtual/range {v2 .. v18}, Lcom/android/server/am/ActivityManagerService;->broadcastIntentLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIII)I

    .line 430
    .end local v5    # "intent":Landroid/content/Intent;
    :cond_3
    sget-object v2, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Sending BOOT_COMPLETE user #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v6, 0x3e8

    div-long/2addr v2, v6

    long-to-int v0, v2

    move/from16 v36, v0

    .line 432
    .local v36, "uptimeSeconds":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "framework_boot_completed"

    move/from16 v0, v36

    invoke-static {v2, v3, v0}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 433
    new-instance v22, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.BOOT_COMPLETED"

    const/4 v3, 0x0

    move-object/from16 v0, v22

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 434
    .local v22, "bootIntent":Landroid/content/Intent;
    const-string/jumbo v2, "android.intent.extra.user_handle"

    move-object/from16 v0, v22

    move/from16 v1, v18

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 435
    const/high16 v2, 0x9000000

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 437
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v19, v0

    .line 438
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v28, v0

    const-string/jumbo v2, "android.permission.RECEIVE_BOOT_COMPLETED"

    const/4 v3, 0x0

    aput-object v2, v28, v3

    .line 439
    sget v33, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    .line 437
    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    .line 439
    const/16 v29, -0x1

    const/16 v30, 0x0

    const/16 v31, 0x1

    const/16 v32, 0x0

    const/16 v34, 0x3e8

    move/from16 v35, v18

    .line 437
    invoke-virtual/range {v19 .. v35}, Lcom/android/server/am/ActivityManagerService;->broadcastIntentLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIII)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v38

    .line 395
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 393
    return-void

    .line 395
    .end local v22    # "bootIntent":Landroid/content/Intent;
    .end local v36    # "uptimeSeconds":I
    .end local v37    # "userInfo":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v2

    monitor-exit v38

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method

.method private finishUserUnlocking(Lcom/android/server/am/UserState;)V
    .locals 5
    .param p1, "uss"    # Lcom/android/server/am/UserState;

    .prologue
    .line 292
    iget-object v2, p1, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 293
    .local v1, "userId":I
    const/4 v0, 0x0

    .line 294
    .local v0, "proceedWithUnlock":Z
    iget-object v3, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 296
    iget-object v2, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    iget-object v4, p1, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    if-eq v2, p1, :cond_0

    monitor-exit v3

    .line 294
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 296
    return-void

    .line 299
    :cond_0
    :try_start_1
    invoke-static {v1}, Landroid/os/storage/StorageManager;->isUserKeyUnlocked(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    monitor-exit v3

    .line 294
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 299
    return-void

    .line 301
    :cond_1
    const/4 v2, 0x1

    const/4 v4, 0x2

    :try_start_2
    invoke-virtual {p1, v2, v4}, Lcom/android/server/am/UserState;->setState(II)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 302
    invoke-direct {p0}, Lcom/android/server/am/UserController;->getUserManagerInternal()Landroid/os/UserManagerInternal;

    move-result-object v2

    iget v4, p1, Lcom/android/server/am/UserState;->state:I

    invoke-virtual {v2, v1, v4}, Landroid/os/UserManagerInternal;->setUserState(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 303
    const/4 v0, 0x1

    :cond_2
    monitor-exit v3

    .line 294
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 307
    if-eqz v0, :cond_3

    .line 308
    iget-object v2, p1, Lcom/android/server/am/UserState;->mUnlockProgress:Lcom/android/internal/util/ProgressReporter;

    invoke-virtual {v2}, Lcom/android/internal/util/ProgressReporter;->start()V

    .line 311
    iget-object v2, p1, Lcom/android/server/am/UserState;->mUnlockProgress:Lcom/android/internal/util/ProgressReporter;

    .line 312
    iget-object v3, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v4, #android:string@android_start_title#t

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 311
    const/4 v4, 0x5

    invoke-virtual {v2, v4, v3}, Lcom/android/internal/util/ProgressReporter;->setProgress(ILjava/lang/CharSequence;)V

    .line 313
    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/pm/UserManagerService;->onBeforeUnlockUser(I)V

    .line 314
    iget-object v2, p1, Lcom/android/server/am/UserState;->mUnlockProgress:Lcom/android/internal/util/ProgressReporter;

    const/16 v3, 0x14

    invoke-virtual {v2, v3}, Lcom/android/internal/util/ProgressReporter;->setProgress(I)V

    .line 318
    iget-object v2, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3d

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 291
    :cond_3
    return-void

    .line 294
    :catchall_0
    move-exception v2

    monitor-exit v3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method

.method private forceStopUserLocked(ILjava/lang/String;)V
    .locals 18
    .param p1, "userId"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 729
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move/from16 v9, p1

    move-object/from16 v10, p2

    invoke-virtual/range {v1 .. v10}, Lcom/android/server/am/ActivityManagerService;->forceStopPackageLocked(Ljava/lang/String;IZZZZZILjava/lang/String;)Z

    .line 731
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.USER_STOPPED"

    invoke-direct {v4, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 732
    .local v4, "intent":Landroid/content/Intent;
    const/high16 v1, 0x50000000

    invoke-virtual {v4, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 734
    const-string/jumbo v1, "android.intent.extra.user_handle"

    move/from16 v0, p1

    invoke-virtual {v4, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 735
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 737
    sget v15, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    .line 735
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 736
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, -0x1

    .line 737
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x3e8

    const/16 v17, -0x1

    .line 735
    invoke-virtual/range {v1 .. v17}, Lcom/android/server/am/ActivityManagerService;->broadcastIntentLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIII)I

    .line 739
    invoke-static/range {p1 .. p1}, Lmiui/securityspace/SecuritySpaceEcryptManager;->spaceEcryptfsUnmount(I)V

    .line 728
    return-void
.end method

.method private getMountService()Landroid/os/storage/IMountService;
    .locals 1

    .prologue
    .line 805
    const-string/jumbo v0, "mount"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v0

    return-object v0
.end method

.method private getUserManager()Lcom/android/server/pm/UserManagerService;
    .locals 3

    .prologue
    .line 796
    iget-object v1, p0, Lcom/android/server/am/UserController;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 797
    .local v1, "userManager":Lcom/android/server/pm/UserManagerService;
    if-nez v1, :cond_0

    .line 798
    const-string/jumbo v2, "user"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 799
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/IUserManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IUserManager;

    move-result-object v1

    .end local v1    # "userManager":Lcom/android/server/pm/UserManagerService;
    check-cast v1, Lcom/android/server/pm/UserManagerService;

    iput-object v1, p0, Lcom/android/server/am/UserController;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 801
    .end local v0    # "b":Landroid/os/IBinder;
    .restart local v1    # "userManager":Lcom/android/server/pm/UserManagerService;
    :cond_0
    return-object v1
.end method

.method private getUserManagerInternal()Landroid/os/UserManagerInternal;
    .locals 1

    .prologue
    .line 1649
    iget-object v0, p0, Lcom/android/server/am/UserController;->mUserManagerInternal:Landroid/os/UserManagerInternal;

    if-nez v0, :cond_0

    .line 1650
    const-class v0, Landroid/os/UserManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManagerInternal;

    iput-object v0, p0, Lcom/android/server/am/UserController;->mUserManagerInternal:Landroid/os/UserManagerInternal;

    .line 1652
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/UserController;->mUserManagerInternal:Landroid/os/UserManagerInternal;

    return-object v0
.end method

.method private getUsersToStopLocked(I)[I
    .locals 13
    .param p1, "userId"    # I

    .prologue
    const/16 v12, -0x2710

    .line 703
    iget-object v9, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v5

    .line 704
    .local v5, "startedUsersSize":I
    new-instance v7, Landroid/util/IntArray;

    invoke-direct {v7}, Landroid/util/IntArray;-><init>()V

    .line 705
    .local v7, "userIds":Landroid/util/IntArray;
    invoke-virtual {v7, p1}, Landroid/util/IntArray;->add(I)V

    .line 706
    iget-object v10, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIdsSelfLocked:Landroid/util/SparseIntArray;

    monitor-enter v10

    .line 707
    :try_start_0
    iget-object v9, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIdsSelfLocked:Landroid/util/SparseIntArray;

    .line 708
    const/16 v11, -0x2710

    .line 707
    invoke-virtual {v9, p1, v11}, Landroid/util/SparseIntArray;->get(II)I

    move-result v6

    .line 709
    .local v6, "userGroupId":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v5, :cond_5

    .line 710
    iget-object v9, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v9, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/UserState;

    .line 711
    .local v8, "uss":Lcom/android/server/am/UserState;
    iget-object v9, v8, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v9}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    .line 713
    .local v4, "startedUserId":I
    iget-object v9, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIdsSelfLocked:Landroid/util/SparseIntArray;

    .line 714
    const/16 v11, -0x2710

    .line 713
    invoke-virtual {v9, v4, v11}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    .line 715
    .local v3, "startedUserGroupId":I
    if-eq v6, v12, :cond_2

    .line 716
    if-ne v6, v3, :cond_1

    const/4 v1, 0x1

    .line 718
    .local v1, "sameGroup":Z
    :goto_1
    if-ne v4, p1, :cond_3

    const/4 v2, 0x1

    .line 719
    .local v2, "sameUserId":Z
    :goto_2
    if-eqz v1, :cond_0

    if-eqz v2, :cond_4

    .line 709
    :cond_0
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 716
    .end local v1    # "sameGroup":Z
    .end local v2    # "sameUserId":Z
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "sameGroup":Z
    goto :goto_1

    .line 715
    .end local v1    # "sameGroup":Z
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "sameGroup":Z
    goto :goto_1

    .line 718
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "sameUserId":Z
    goto :goto_2

    .line 722
    :cond_4
    invoke-virtual {v7, v4}, Landroid/util/IntArray;->add(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .line 706
    .end local v0    # "i":I
    .end local v1    # "sameGroup":Z
    .end local v2    # "sameUserId":Z
    .end local v3    # "startedUserGroupId":I
    .end local v4    # "startedUserId":I
    .end local v6    # "userGroupId":I
    .end local v8    # "uss":Lcom/android/server/am/UserState;
    :catchall_0
    move-exception v9

    monitor-exit v10

    throw v9

    .restart local v0    # "i":I
    .restart local v6    # "userGroupId":I
    :cond_5
    monitor-exit v10

    .line 725
    invoke-virtual {v7}, Landroid/util/IntArray;->toArray()[I

    move-result-object v9

    return-object v9
.end method

.method private isCurrentUserLocked(I)Z
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 1566
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->getCurrentOrTargetUserIdLocked()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static notifyFinished(ILandroid/os/IProgressListener;)V
    .locals 2
    .param p0, "userId"    # I
    .param p1, "listener"    # Landroid/os/IProgressListener;

    .prologue
    .line 1070
    if-nez p1, :cond_0

    return-void

    .line 1072
    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p1, p0, v1}, Landroid/os/IProgressListener;->onFinished(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1069
    :goto_0
    return-void

    .line 1073
    :catch_0
    move-exception v0

    .local v0, "ignored":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private stopBackgroundUsersIfEnforced(I)V
    .locals 5
    .param p1, "oldUserId"    # I

    .prologue
    .line 1163
    if-nez p1, :cond_0

    .line 1164
    return-void

    .line 1167
    :cond_0
    const-string/jumbo v1, "no_run_in_background"

    invoke-virtual {p0, v1, p1}, Lcom/android/server/am/UserController;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v0

    .line 1169
    .local v0, "disallowRunInBg":Z
    if-nez v0, :cond_1

    .line 1170
    return-void

    .line 1172
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1173
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_MU:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "stopBackgroundUsersIfEnforced stopping "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1174
    const-string/jumbo v4, " and related users"

    .line 1173
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1175
    :cond_2
    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, p1, v1, v3}, Lcom/android/server/am/UserController;->stopUsersLocked(IZLandroid/app/IStopUserCallback;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 1172
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1161
    return-void

    .line 1172
    :catchall_0
    move-exception v1

    monitor-exit v2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private stopGuestOrEphemeralUserIfBackground()V
    .locals 9

    .prologue
    .line 746
    iget-object v6, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v6

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 747
    iget-object v5, p0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 748
    .local v1, "num":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_4

    .line 749
    iget-object v5, p0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 750
    .local v2, "oldUserId":Ljava/lang/Integer;
    iget-object v5, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/UserState;

    .line 751
    .local v3, "oldUss":Lcom/android/server/am/UserState;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget v7, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    if-ne v5, v7, :cond_1

    .line 748
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 752
    :cond_1
    iget v5, v3, Lcom/android/server/am/UserState;->state:I

    const/4 v7, 0x4

    if-eq v5, v7, :cond_0

    .line 753
    iget v5, v3, Lcom/android/server/am/UserState;->state:I

    const/4 v7, 0x5

    if-eq v5, v7, :cond_0

    .line 756
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    .line 757
    .local v4, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isEphemeral()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 758
    const-class v5, Landroid/os/UserManagerInternal;

    invoke-static {v5}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserManagerInternal;

    .line 759
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 758
    invoke-virtual {v5, v7}, Landroid/os/UserManagerInternal;->onEphemeralUserStop(I)V

    .line 761
    :cond_2
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isEphemeral()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 763
    :cond_3
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct {p0, v5, v7, v8}, Lcom/android/server/am/UserController;->stopUsersLocked(IZLandroid/app/IStopUserCallback;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v2    # "oldUserId":Ljava/lang/Integer;
    .end local v3    # "oldUss":Lcom/android/server/am/UserState;
    .end local v4    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_4
    monitor-exit v6

    .line 746
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 745
    return-void

    .line 746
    .end local v0    # "i":I
    .end local v1    # "num":I
    :catchall_0
    move-exception v5

    monitor-exit v6

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v5
.end method

.method private stopSingleUserLocked(ILandroid/app/IStopUserCallback;)V
    .locals 10
    .param p1, "userId"    # I
    .param p2, "callback"    # Landroid/app/IStopUserCallback;

    .prologue
    const/4 v9, 0x4

    .line 499
    sget-boolean v6, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_MU:Z

    if-eqz v6, :cond_0

    sget-object v6, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "stopSingleUserLocked userId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    :cond_0
    iget-object v6, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v6, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/UserState;

    .line 501
    .local v5, "uss":Lcom/android/server/am/UserState;
    if-nez v5, :cond_2

    .line 504
    if-eqz p2, :cond_1

    .line 505
    iget-object v6, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/android/server/am/UserController$3;

    invoke-direct {v7, p0, p2, p1}, Lcom/android/server/am/UserController$3;-><init>(Lcom/android/server/am/UserController;Landroid/app/IStopUserCallback;I)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 515
    :cond_1
    return-void

    .line 518
    :cond_2
    if-eqz p2, :cond_3

    .line 519
    iget-object v6, v5, Lcom/android/server/am/UserState;->mStopCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v6, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 522
    :cond_3
    iget v6, v5, Lcom/android/server/am/UserState;->state:I

    if-eq v6, v9, :cond_4

    .line 523
    iget v6, v5, Lcom/android/server/am/UserState;->state:I

    const/4 v7, 0x5

    if-eq v6, v7, :cond_4

    .line 524
    invoke-virtual {v5, v9}, Lcom/android/server/am/UserState;->setState(I)V

    .line 525
    invoke-direct {p0}, Lcom/android/server/am/UserController;->getUserManagerInternal()Landroid/os/UserManagerInternal;

    move-result-object v6

    iget v7, v5, Lcom/android/server/am/UserState;->state:I

    invoke-virtual {v6, p1, v7}, Landroid/os/UserManagerInternal;->setUserState(II)V

    .line 526
    invoke-direct {p0}, Lcom/android/server/am/UserController;->updateStartedUserArrayLocked()V

    .line 528
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 533
    .local v0, "ident":J
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v6, "android.intent.action.USER_STOPPING"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 534
    .local v2, "stoppingIntent":Landroid/content/Intent;
    const/high16 v6, 0x40000000    # 2.0f

    invoke-virtual {v2, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 535
    const-string/jumbo v6, "android.intent.extra.user_handle"

    invoke-virtual {v2, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 536
    const-string/jumbo v6, "android.intent.extra.SHUTDOWN_USERSPACE_ONLY"

    const/4 v7, 0x1

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 583
    new-instance v3, Lcom/android/server/am/UserController$1StoppingReceiver;

    invoke-direct {v3, p0, p1, v5}, Lcom/android/server/am/UserController$1StoppingReceiver;-><init>(Lcom/android/server/am/UserController;ILcom/android/server/am/UserState;)V

    .line 586
    .local v3, "stoppingReceiver":Lcom/android/server/am/UserController$1StoppingReceiver;
    new-instance v4, Lcom/android/server/am/UserController$4;

    invoke-direct {v4, p0, v2, v3}, Lcom/android/server/am/UserController$4;-><init>(Lcom/android/server/am/UserController;Landroid/content/Intent;Lcom/android/server/am/UserController$1StoppingReceiver;)V

    .line 598
    .local v4, "userStoppingBroadcastRunnable":Ljava/lang/Runnable;
    iput-object v4, v3, Lcom/android/server/am/UserController$1StoppingReceiver;->broadcastRunnable:Ljava/lang/Runnable;

    .line 601
    iget-object v6, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6, p1}, Lcom/android/server/am/ActivityManagerService;->clearBroadcastQueueForUserLocked(I)Z

    .line 603
    invoke-interface {v4}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 606
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 498
    .end local v0    # "ident":J
    .end local v2    # "stoppingIntent":Landroid/content/Intent;
    .end local v3    # "stoppingReceiver":Lcom/android/server/am/UserController$1StoppingReceiver;
    .end local v4    # "userStoppingBroadcastRunnable":Ljava/lang/Runnable;
    :cond_4
    return-void

    .line 605
    .restart local v0    # "ident":J
    :catchall_0
    move-exception v6

    .line 606
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 605
    throw v6
.end method

.method private stopUsersLocked(IZLandroid/app/IStopUserCallback;)I
    .locals 8
    .param p1, "userId"    # I
    .param p2, "force"    # Z
    .param p3, "callback"    # Landroid/app/IStopUserCallback;

    .prologue
    const/4 v6, 0x0

    .line 468
    if-nez p1, :cond_0

    .line 469
    const/4 v4, -0x3

    return v4

    .line 471
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/am/UserController;->isCurrentUserLocked(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 472
    const/4 v4, -0x2

    return v4

    .line 474
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/am/UserController;->getUsersToStopLocked(I)[I

    move-result-object v3

    .line 476
    .local v3, "usersToStop":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_6

    .line 477
    aget v1, v3, v0

    .line 478
    .local v1, "relatedUserId":I
    if-eqz v1, :cond_2

    invoke-direct {p0, v1}, Lcom/android/server/am/UserController;->isCurrentUserLocked(I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 479
    :cond_2
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_MU:Z

    if-eqz v4, :cond_3

    sget-object v4, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "stopUsersLocked cannot stop related user "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    :cond_3
    if-eqz p2, :cond_4

    .line 483
    sget-object v4, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    .line 484
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Force stop user "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, ". Related users will not be stopped"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 483
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    invoke-direct {p0, p1, p3}, Lcom/android/server/am/UserController;->stopSingleUserLocked(ILandroid/app/IStopUserCallback;)V

    .line 486
    return v6

    .line 488
    :cond_4
    const/4 v4, -0x4

    return v4

    .line 476
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 491
    .end local v1    # "relatedUserId":I
    :cond_6
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_MU:Z

    if-eqz v4, :cond_7

    sget-object v4, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "stopUsersLocked usersToStop="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    :cond_7
    array-length v7, v3

    move v5, v6

    :goto_1
    if-ge v5, v7, :cond_9

    aget v2, v3, v5

    .line 493
    .local v2, "userIdToStop":I
    if-ne v2, p1, :cond_8

    move-object v4, p3

    :goto_2
    invoke-direct {p0, v2, v4}, Lcom/android/server/am/UserController;->stopSingleUserLocked(ILandroid/app/IStopUserCallback;)V

    .line 492
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_1

    .line 493
    :cond_8
    const/4 v4, 0x0

    goto :goto_2

    .line 495
    .end local v2    # "userIdToStop":I
    :cond_9
    return v6
.end method

.method private updateCurrentProfileIdsLocked()V
    .locals 9

    .prologue
    const/4 v7, 0x0

    .line 1463
    invoke-direct {p0}, Lcom/android/server/am/UserController;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v5

    iget v6, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    invoke-virtual {v5, v6, v7}, Lcom/android/server/pm/UserManagerService;->getProfiles(IZ)Ljava/util/List;

    move-result-object v2

    .line 1465
    .local v2, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    new-array v0, v5, [I

    .line 1466
    .local v0, "currentProfileIds":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, v0

    if-ge v1, v5, :cond_0

    .line 1467
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    iget v5, v5, Landroid/content/pm/UserInfo;->id:I

    aput v5, v0, v1

    .line 1466
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1469
    :cond_0
    iput-object v0, p0, Lcom/android/server/am/UserController;->mCurrentProfileIds:[I

    .line 1471
    iget-object v6, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIdsSelfLocked:Landroid/util/SparseIntArray;

    monitor-enter v6

    .line 1472
    :try_start_0
    iget-object v5, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIdsSelfLocked:Landroid/util/SparseIntArray;

    invoke-virtual {v5}, Landroid/util/SparseIntArray;->clear()V

    .line 1473
    invoke-direct {p0}, Lcom/android/server/am/UserController;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Lcom/android/server/pm/UserManagerService;->getUsers(Z)Ljava/util/List;

    move-result-object v4

    .line 1474
    .local v4, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/4 v1, 0x0

    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 1475
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 1476
    .local v3, "user":Landroid/content/pm/UserInfo;
    iget v5, v3, Landroid/content/pm/UserInfo;->profileGroupId:I

    const/16 v7, -0x2710

    if-eq v5, v7, :cond_1

    .line 1477
    iget-object v5, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIdsSelfLocked:Landroid/util/SparseIntArray;

    iget v7, v3, Landroid/content/pm/UserInfo;->id:I

    iget v8, v3, Landroid/content/pm/UserInfo;->profileGroupId:I

    invoke-virtual {v5, v7, v8}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1474
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v3    # "user":Landroid/content/pm/UserInfo;
    :cond_2
    monitor-exit v6

    .line 1462
    return-void

    .line 1471
    .end local v4    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method private updateStartedUserArrayLocked()V
    .locals 8

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x4

    .line 1426
    const/4 v1, 0x0

    .line 1427
    .local v1, "num":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 1428
    iget-object v4, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/UserState;

    .line 1430
    .local v3, "uss":Lcom/android/server/am/UserState;
    iget v4, v3, Lcom/android/server/am/UserState;->state:I

    if-eq v4, v6, :cond_0

    .line 1431
    iget v4, v3, Lcom/android/server/am/UserState;->state:I

    if-eq v4, v7, :cond_0

    .line 1432
    add-int/lit8 v1, v1, 0x1

    .line 1427
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1435
    .end local v3    # "uss":Lcom/android/server/am/UserState;
    :cond_1
    new-array v4, v1, [I

    iput-object v4, p0, Lcom/android/server/am/UserController;->mStartedUserArray:[I

    .line 1436
    const/4 v1, 0x0

    .line 1437
    const/4 v0, 0x0

    :goto_1
    iget-object v4, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 1438
    iget-object v4, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/UserState;

    .line 1439
    .restart local v3    # "uss":Lcom/android/server/am/UserState;
    iget v4, v3, Lcom/android/server/am/UserState;->state:I

    if-eq v4, v6, :cond_2

    .line 1440
    iget v4, v3, Lcom/android/server/am/UserState;->state:I

    if-eq v4, v7, :cond_2

    .line 1441
    iget-object v4, p0, Lcom/android/server/am/UserController;->mStartedUserArray:[I

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "num":I
    .local v2, "num":I
    iget-object v5, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    aput v5, v4, v1

    move v1, v2

    .line 1437
    .end local v2    # "num":I
    .restart local v1    # "num":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1425
    .end local v3    # "uss":Lcom/android/server/am/UserState;
    :cond_3
    return-void
.end method


# virtual methods
.method continueUserSwitch(Lcom/android/server/am/UserState;II)V
    .locals 5
    .param p1, "uss"    # Lcom/android/server/am/UserState;
    .param p2, "oldUserId"    # I
    .param p3, "newUserId"    # I

    .prologue
    const/16 v4, 0x38

    const/4 v3, 0x0

    .line 1241
    sget-object v0, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Continue user switch oldUser #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", newUser #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1242
    iget-object v1, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1243
    iget-object v0, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->stopFreezingScreen()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 1242
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1245
    iput-boolean v3, p1, Lcom/android/server/am/UserState;->switching:Z

    .line 1246
    iget-object v0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1247
    iget-object v0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4, p3, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1249
    invoke-direct {p0}, Lcom/android/server/am/UserController;->stopGuestOrEphemeralUserIfBackground()V

    .line 1250
    invoke-direct {p0, p2}, Lcom/android/server/am/UserController;->stopBackgroundUsersIfEnforced(I)V

    .line 1240
    return-void

    .line 1242
    :catchall_0
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method dispatchForegroundProfileChanged(I)V
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 1138
    iget-object v3, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 1139
    .local v2, "observerCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 1141
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/app/IUserSwitchObserver;

    invoke-interface {v3, p1}, Landroid/app/IUserSwitchObserver;->onForegroundProfileSwitch(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1139
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1146
    :cond_0
    iget-object v3, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1137
    return-void

    .line 1142
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method dispatchUserSwitch(Lcom/android/server/am/UserState;II)V
    .locals 11
    .param p1, "uss"    # Lcom/android/server/am/UserState;
    .param p2, "oldUserId"    # I
    .param p3, "newUserId"    # I

    .prologue
    .line 1188
    sget-object v1, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Dispatch onUserSwitching oldUser #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " newUser #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1189
    iget-object v1, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v10

    .line 1190
    .local v10, "observerCount":I
    if-lez v10, :cond_0

    .line 1191
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 1192
    .local v2, "curWaitingUserSwitchCallbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1193
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/server/am/UserState;->switching:Z

    .line 1194
    iput-object v2, p0, Lcom/android/server/am/UserController;->mCurWaitingUserSwitchCallbacks:Landroid/util/ArraySet;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    .line 1192
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1196
    new-instance v4, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v4, v10}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 1197
    .local v4, "waitingCallbacksCount":Ljava/util/concurrent/atomic/AtomicInteger;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v9, v10, :cond_1

    .line 1200
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "#"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, " "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5, v9}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1201
    .local v3, "name":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1202
    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    monitor-exit v5

    .line 1201
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1204
    new-instance v0, Lcom/android/server/am/UserController$7;

    move-object v1, p0

    move-object v5, p1

    move v6, p2

    move v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/server/am/UserController$7;-><init>(Lcom/android/server/am/UserController;Landroid/util/ArraySet;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/android/server/am/UserState;II)V

    .line 1221
    .local v0, "callback":Landroid/os/IRemoteCallback;
    iget-object v1, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v9}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Landroid/app/IUserSwitchObserver;

    invoke-interface {v1, p3, v0}, Landroid/app/IUserSwitchObserver;->onUserSwitching(ILandroid/os/IRemoteCallback;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1197
    .end local v0    # "callback":Landroid/os/IRemoteCallback;
    .end local v3    # "name":Ljava/lang/String;
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1192
    .end local v4    # "waitingCallbacksCount":Ljava/util/concurrent/atomic/AtomicInteger;
    .end local v9    # "i":I
    :catchall_0
    move-exception v1

    monitor-exit v5

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 1201
    .restart local v3    # "name":Ljava/lang/String;
    .restart local v4    # "waitingCallbacksCount":Ljava/util/concurrent/atomic/AtomicInteger;
    .restart local v9    # "i":I
    :catchall_1
    move-exception v1

    :try_start_4
    monitor-exit v5

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1222
    .end local v3    # "name":Ljava/lang/String;
    :catch_0
    move-exception v8

    .local v8, "e":Landroid/os/RemoteException;
    goto :goto_1

    .line 1226
    .end local v2    # "curWaitingUserSwitchCallbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v4    # "waitingCallbacksCount":Ljava/util/concurrent/atomic/AtomicInteger;
    .end local v8    # "e":Landroid/os/RemoteException;
    .end local v9    # "i":I
    :cond_0
    iget-object v5, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    :try_start_5
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1227
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/UserController;->sendContinueUserSwitchLocked(Lcom/android/server/am/UserState;II)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    monitor-exit v5

    .line 1226
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1230
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1187
    return-void

    .line 1226
    :catchall_2
    move-exception v1

    monitor-exit v5

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method dispatchUserSwitchComplete(I)V
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 1151
    iget-object v3, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 1152
    .local v2, "observerCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 1154
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/app/IUserSwitchObserver;

    invoke-interface {v3, p1}, Landroid/app/IUserSwitchObserver;->onUserSwitchComplete(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1152
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1158
    :cond_0
    iget-object v3, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1150
    return-void

    .line 1155
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method dump(Ljava/io/PrintWriter;Z)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "dumpAll"    # Z

    .prologue
    .line 1656
    const-string/jumbo v2, "  mStartedUsers:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1657
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 1658
    iget-object v2, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/UserState;

    .line 1659
    .local v1, "uss":Lcom/android/server/am/UserState;
    const-string/jumbo v2, "    User #"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 1660
    const-string/jumbo v2, ": "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2, p1}, Lcom/android/server/am/UserState;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 1657
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1662
    .end local v1    # "uss":Lcom/android/server/am/UserState;
    :cond_0
    const-string/jumbo v2, "  mStartedUserArray: ["

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1663
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/android/server/am/UserController;->mStartedUserArray:[I

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 1664
    if-lez v0, :cond_1

    const-string/jumbo v2, ", "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1665
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/UserController;->mStartedUserArray:[I

    aget v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 1663
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1667
    :cond_2
    const-string/jumbo v2, "]"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1668
    const-string/jumbo v2, "  mUserLru: ["

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1669
    const/4 v0, 0x0

    :goto_2
    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 1670
    if-lez v0, :cond_3

    const-string/jumbo v2, ", "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1671
    :cond_3
    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 1669
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1673
    :cond_4
    const-string/jumbo v2, "]"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1674
    if-eqz p2, :cond_5

    .line 1675
    const-string/jumbo v2, "  mStartedUserArray: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/UserController;->mStartedUserArray:[I

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1677
    :cond_5
    iget-object v3, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIdsSelfLocked:Landroid/util/SparseIntArray;

    monitor-enter v3

    .line 1678
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIdsSelfLocked:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-lez v2, :cond_6

    .line 1679
    const-string/jumbo v2, "  mUserProfileGroupIds:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1680
    const/4 v0, 0x0

    :goto_3
    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIdsSelfLocked:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_6

    .line 1681
    const-string/jumbo v2, "    User #"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1682
    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIdsSelfLocked:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 1683
    const-string/jumbo v2, " -> profile #"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1684
    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIdsSelfLocked:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1680
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_6
    monitor-exit v3

    .line 1655
    return-void

    .line 1677
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method exists(I)Z
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 1587
    invoke-direct {p0}, Lcom/android/server/am/UserController;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    return v0
.end method

.method finishUserStopped(Lcom/android/server/am/UserState;)V
    .locals 8
    .param p1, "uss"    # Lcom/android/server/am/UserState;

    .prologue
    .line 654
    iget-object v5, p1, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    .line 657
    .local v4, "userId":I
    iget-object v6, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v6

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 658
    new-instance v0, Ljava/util/ArrayList;

    iget-object v5, p1, Lcom/android/server/am/UserState;->mStopCallbacks:Ljava/util/ArrayList;

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 659
    .local v0, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/IStopUserCallback;>;"
    iget-object v5, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    if-eq v5, p1, :cond_0

    .line 660
    const/4 v3, 0x0

    .local v3, "stopped":Z
    :goto_0
    monitor-exit v6

    .line 657
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 678
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 680
    if-eqz v3, :cond_2

    :try_start_1
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/IStopUserCallback;

    invoke-interface {v5, v4}, Landroid/app/IStopUserCallback;->userStopped(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 678
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 661
    .end local v2    # "i":I
    .end local v3    # "stopped":Z
    :cond_0
    :try_start_2
    iget v5, p1, Lcom/android/server/am/UserState;->state:I

    const/4 v7, 0x5

    if-eq v5, v7, :cond_1

    .line 662
    const/4 v3, 0x0

    .restart local v3    # "stopped":Z
    goto :goto_0

    .line 664
    .end local v3    # "stopped":Z
    :cond_1
    const/4 v3, 0x1

    .line 666
    .restart local v3    # "stopped":Z
    iget-object v5, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->remove(I)V

    .line 667
    invoke-direct {p0}, Lcom/android/server/am/UserController;->getUserManagerInternal()Landroid/os/UserManagerInternal;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/os/UserManagerInternal;->removeUserState(I)V

    .line 668
    iget-object v5, p0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 669
    invoke-direct {p0}, Lcom/android/server/am/UserController;->updateStartedUserArrayLocked()V

    .line 671
    iget-object v5, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5, v4}, Lcom/android/server/am/ActivityManagerService;->onUserStoppedLocked(I)V

    .line 674
    const-string/jumbo v5, "finish user"

    invoke-direct {p0, v4, v5}, Lcom/android/server/am/UserController;->forceStopUserLocked(ILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 657
    .end local v0    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/IStopUserCallback;>;"
    .end local v3    # "stopped":Z
    :catchall_0
    move-exception v5

    monitor-exit v6

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v5

    .line 681
    .restart local v0    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/IStopUserCallback;>;"
    .restart local v2    # "i":I
    .restart local v3    # "stopped":Z
    :cond_2
    :try_start_3
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/IStopUserCallback;

    invoke-interface {v5, v4}, Landroid/app/IStopUserCallback;->userStopAborted(I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 682
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_2

    .line 686
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_3
    if-eqz v3, :cond_4

    .line 687
    iget-object v5, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v5, v4}, Lcom/android/server/SystemServiceManager;->cleanupUser(I)V

    .line 688
    iget-object v6, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v6

    :try_start_4
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 689
    iget-object v5, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v5, v4}, Lcom/android/server/am/ActivityStackSupervisor;->removeUserLocked(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit v6

    .line 688
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 692
    invoke-virtual {p0, v4}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isEphemeral()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 693
    iget-object v5, p0, Lcom/android/server/am/UserController;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v5, v4}, Lcom/android/server/pm/UserManagerService;->removeUser(I)Z

    .line 653
    :cond_4
    return-void

    .line 688
    :catchall_1
    move-exception v5

    monitor-exit v6

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v5
.end method

.method finishUserStopping(ILcom/android/server/am/UserState;)V
    .locals 20
    .param p1, "userId"    # I
    .param p2, "uss"    # Lcom/android/server/am/UserState;

    .prologue
    .line 613
    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v5, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 615
    .local v5, "shutdownIntent":Landroid/content/Intent;
    new-instance v7, Lcom/android/server/am/UserController$5;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v7, v0, v1}, Lcom/android/server/am/UserController$5;-><init>(Lcom/android/server/am/UserController;Lcom/android/server/am/UserState;)V

    .line 628
    .local v7, "shutdownReceiver":Landroid/content/IIntentReceiver;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 629
    move-object/from16 v0, p2

    iget v2, v0, Lcom/android/server/am/UserState;->state:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x4

    if-eq v2, v4, :cond_0

    monitor-exit v3

    .line 628
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 631
    return-void

    .line 633
    :cond_0
    const/4 v2, 0x5

    :try_start_1
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/android/server/am/UserState;->setState(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    .line 628
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 635
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/UserController;->getUserManagerInternal()Landroid/os/UserManagerInternal;

    move-result-object v2

    move-object/from16 v0, p2

    iget v3, v0, Lcom/android/server/am/UserState;->state:I

    move/from16 v0, p1

    invoke-virtual {v2, v0, v3}, Landroid/os/UserManagerInternal;->setUserState(II)V

    .line 637
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    .line 639
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 638
    const/16 v4, 0x4007

    .line 637
    move/from16 v0, p1

    invoke-virtual {v2, v4, v3, v0}, Lcom/android/server/am/BatteryStatsService;->noteEvent(ILjava/lang/String;I)V

    .line 640
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/android/server/SystemServiceManager;->stopUser(I)V

    .line 642
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v19, v0

    monitor-enter v19

    :try_start_2
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 643
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 649
    sget v16, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    .line 643
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 646
    const/4 v6, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 648
    const/4 v12, -0x1

    .line 649
    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v17, 0x3e8

    move/from16 v18, p1

    .line 643
    invoke-virtual/range {v2 .. v18}, Lcom/android/server/am/ActivityManagerService;->broadcastIntentLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIII)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v19

    .line 642
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 611
    return-void

    .line 628
    :catchall_0
    move-exception v2

    monitor-exit v3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v2

    .line 642
    :catchall_1
    move-exception v2

    monitor-exit v19

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method

.method finishUserSwitch(Lcom/android/server/am/UserState;)V
    .locals 2
    .param p1, "uss"    # Lcom/android/server/am/UserState;

    .prologue
    .line 186
    iget-object v1, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 187
    invoke-direct {p0, p1}, Lcom/android/server/am/UserController;->finishUserBoot(Lcom/android/server/am/UserState;)V

    .line 189
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->startProfilesLocked()V

    .line 190
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/server/am/UserController;->stopRunningUsersLocked(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 186
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 185
    return-void

    .line 186
    :catchall_0
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method finishUserUnlocked(Lcom/android/server/am/UserState;)V
    .locals 39
    .param p1, "uss"    # Lcom/android/server/am/UserState;

    .prologue
    .line 328
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v18

    .line 329
    .local v18, "userId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v38, v0

    monitor-enter v38

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 331
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    move-object/from16 v0, p1

    if-eq v2, v0, :cond_0

    monitor-exit v38

    .line 329
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 331
    return-void

    .line 334
    :cond_0
    :try_start_1
    invoke-static/range {v18 .. v18}, Landroid/os/storage/StorageManager;->isUserKeyUnlocked(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    monitor-exit v38

    .line 329
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 334
    return-void

    .line 336
    :cond_1
    const/4 v2, 0x2

    const/4 v3, 0x3

    :try_start_2
    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Lcom/android/server/am/UserState;->setState(II)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 337
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/UserController;->getUserManagerInternal()Landroid/os/UserManagerInternal;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/server/am/UserState;->state:I

    move/from16 v0, v18

    invoke-virtual {v2, v0, v3}, Landroid/os/UserManagerInternal;->setUserState(II)V

    .line 338
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/am/UserState;->mUnlockProgress:Lcom/android/internal/util/ProgressReporter;

    invoke-virtual {v2}, Lcom/android/internal/util/ProgressReporter;->finish()V

    .line 341
    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.USER_UNLOCKED"

    invoke-direct {v5, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 342
    .local v5, "unlockedIntent":Landroid/content/Intent;
    const-string/jumbo v2, "android.intent.extra.user_handle"

    move/from16 v0, v18

    invoke-virtual {v5, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 344
    const/high16 v2, 0x50000000

    .line 343
    invoke-virtual {v5, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 345
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 346
    sget v16, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    .line 345
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 346
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x3e8

    .line 345
    invoke-virtual/range {v2 .. v18}, Lcom/android/server/am/ActivityManagerService;->broadcastIntentLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIII)I

    .line 349
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 350
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/UserController;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v2

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/android/server/pm/UserManagerService;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v37

    .line 351
    .local v37, "parent":Landroid/content/pm/UserInfo;
    if-eqz v37, :cond_2

    .line 352
    new-instance v22, Landroid/content/Intent;

    .line 353
    const-string/jumbo v2, "android.intent.action.MANAGED_PROFILE_UNLOCKED"

    .line 352
    move-object/from16 v0, v22

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 354
    .local v22, "profileUnlockedIntent":Landroid/content/Intent;
    const-string/jumbo v2, "android.intent.extra.USER"

    invoke-static/range {v18 .. v18}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 356
    const/high16 v2, 0x50000000

    .line 355
    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 358
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v19, v0

    .line 360
    sget v33, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    .line 361
    move-object/from16 v0, v37

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v35, v0

    .line 358
    const/16 v20, 0x0

    const/16 v21, 0x0

    .line 359
    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, -0x1

    .line 360
    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v34, 0x3e8

    .line 358
    invoke-virtual/range {v19 .. v35}, Lcom/android/server/am/ActivityManagerService;->broadcastIntentLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIII)I

    .line 368
    .end local v22    # "profileUnlockedIntent":Landroid/content/Intent;
    .end local v37    # "parent":Landroid/content/pm/UserInfo;
    :cond_2
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v36

    .line 369
    .local v36, "info":Landroid/content/pm/UserInfo;
    move-object/from16 v0, v36

    iget-object v2, v0, Landroid/content/pm/UserInfo;->lastLoggedInFingerprint:Ljava/lang/String;

    sget-object v3, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 374
    invoke-virtual/range {v36 .. v36}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 375
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/android/server/am/UserState;->tokenProvided:Z

    if-eqz v2, :cond_4

    .line 376
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/UserController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v20, 0x0

    .line 380
    .local v20, "quiet":Z
    :goto_0
    new-instance v15, Lcom/android/server/am/UserController$1;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v17, v0

    const/16 v19, 0x0

    move-object/from16 v16, p0

    move-object/from16 v21, p1

    invoke-direct/range {v15 .. v21}, Lcom/android/server/am/UserController$1;-><init>(Lcom/android/server/am/UserController;Lcom/android/server/am/ActivityManagerService;ILcom/android/internal/util/ProgressReporter;ZLcom/android/server/am/UserState;)V

    invoke-virtual {v15}, Lcom/android/server/am/UserController$1;->sendNext()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v5    # "unlockedIntent":Landroid/content/Intent;
    .end local v20    # "quiet":Z
    .end local v36    # "info":Landroid/content/pm/UserInfo;
    :cond_3
    :goto_1
    monitor-exit v38

    .line 329
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 327
    return-void

    .line 375
    .restart local v5    # "unlockedIntent":Landroid/content/Intent;
    .restart local v36    # "info":Landroid/content/pm/UserInfo;
    :cond_4
    const/16 v20, 0x1

    .restart local v20    # "quiet":Z
    goto :goto_0

    .line 376
    .end local v20    # "quiet":Z
    :cond_5
    const/16 v20, 0x1

    .restart local v20    # "quiet":Z
    goto :goto_0

    .line 378
    .end local v20    # "quiet":Z
    :cond_6
    const/16 v20, 0x0

    .restart local v20    # "quiet":Z
    goto :goto_0

    .line 387
    .end local v20    # "quiet":Z
    :cond_7
    :try_start_3
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/UserController;->finishUserUnlockedCompleted(Lcom/android/server/am/UserState;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 329
    .end local v5    # "unlockedIntent":Landroid/content/Intent;
    .end local v36    # "info":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v2

    monitor-exit v38

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method

.method getCurrentOrTargetUserIdLocked()I
    .locals 2

    .prologue
    .line 1558
    iget v0, p0, Lcom/android/server/am/UserController;->mTargetUserId:I

    const/16 v1, -0x2710

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/am/UserController;->mTargetUserId:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    goto :goto_0
.end method

.method getCurrentProfileIdsLocked()[I
    .locals 1

    .prologue
    .line 1623
    iget-object v0, p0, Lcom/android/server/am/UserController;->mCurrentProfileIds:[I

    return-object v0
.end method

.method getCurrentUser()Landroid/content/pm/UserInfo;
    .locals 3

    .prologue
    .line 1536
    iget-object v1, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v2, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityManagerService;->checkCallingPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 1538
    iget-object v1, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityManagerService;->checkCallingPermission(Ljava/lang/String;)I

    move-result v1

    .line 1537
    if-eqz v1, :cond_0

    .line 1540
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Permission Denial: getCurrentUser() from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1541
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 1540
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1542
    const-string/jumbo v2, ", uid="

    .line 1540
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1542
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1540
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1543
    const-string/jumbo v2, " requires "

    .line 1540
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1543
    const-string/jumbo v2, "android.permission.INTERACT_ACROSS_USERS"

    .line 1540
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1544
    .local v0, "msg":Ljava/lang/String;
    sget-object v1, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1545
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1547
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1548
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->getCurrentUserLocked()Landroid/content/pm/UserInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v2

    .line 1547
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1548
    return-object v1

    .line 1547
    :catchall_0
    move-exception v1

    monitor-exit v2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method getCurrentUserIdLocked()I
    .locals 1

    .prologue
    .line 1562
    iget v0, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    return v0
.end method

.method getCurrentUserLocked()Landroid/content/pm/UserInfo;
    .locals 3

    .prologue
    .line 1553
    iget v1, p0, Lcom/android/server/am/UserController;->mTargetUserId:I

    const/16 v2, -0x2710

    if-eq v1, v2, :cond_0

    iget v0, p0, Lcom/android/server/am/UserController;->mTargetUserId:I

    .line 1554
    .local v0, "userId":I
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    return-object v1

    .line 1553
    .end local v0    # "userId":I
    :cond_0
    iget v0, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    goto :goto_0
.end method

.method getProfileIds(I)Ljava/util/Set;
    .locals 6
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1595
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 1596
    .local v3, "userIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Lcom/android/server/am/UserController;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v4

    .line 1597
    const/4 v5, 0x0

    .line 1596
    invoke-virtual {v4, p1, v5}, Lcom/android/server/pm/UserManagerService;->getProfiles(IZ)Ljava/util/List;

    move-result-object v0

    .line 1598
    .local v0, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "user$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 1599
    .local v1, "user":Landroid/content/pm/UserInfo;
    iget v4, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1601
    .end local v1    # "user":Landroid/content/pm/UserInfo;
    :cond_0
    return-object v3
.end method

.method getStartedUserArrayLocked()[I
    .locals 1

    .prologue
    .line 1484
    iget-object v0, p0, Lcom/android/server/am/UserController;->mStartedUserArray:[I

    return-object v0
.end method

.method getStartedUserStateLocked(I)Lcom/android/server/am/UserState;
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 1418
    iget-object v0, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/UserState;

    return-object v0
.end method

.method getUserIds()[I
    .locals 1

    .prologue
    .line 1583
    invoke-direct {p0}, Lcom/android/server/am/UserController;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v0

    return-object v0
.end method

.method getUserInfo(I)Landroid/content/pm/UserInfo;
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 1579
    invoke-direct {p0}, Lcom/android/server/am/UserController;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method getUsers()[I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1574
    invoke-direct {p0}, Lcom/android/server/am/UserController;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    .line 1575
    .local v0, "ums":Lcom/android/server/pm/UserManagerService;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [I

    aput v2, v1, v2

    goto :goto_0
.end method

.method handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I
    .locals 12
    .param p1, "callingPid"    # I
    .param p2, "callingUid"    # I
    .param p3, "userId"    # I
    .param p4, "allowAll"    # Z
    .param p5, "allowMode"    # I
    .param p6, "name"    # Ljava/lang/String;
    .param p7, "callerPackage"    # Ljava/lang/String;

    .prologue
    .line 1315
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    .line 1316
    .local v9, "callingUserId":I
    if-ne v9, p3, :cond_0

    .line 1317
    return p3

    .line 1326
    :cond_0
    invoke-virtual {p0, p3}, Lcom/android/server/am/UserController;->unsafeConvertIncomingUserLocked(I)I

    move-result v11

    .line 1328
    .local v11, "targetUserId":I
    if-eqz p2, :cond_1

    const/16 v1, 0x3e8

    if-eq p2, v1, :cond_1

    .line 1330
    iget-object v1, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 1331
    const/4 v5, -0x1

    const/4 v6, 0x1

    move v3, p1

    move v4, p2

    .line 1330
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result v1

    if-nez v1, :cond_2

    .line 1333
    const/4 v7, 0x1

    .line 1351
    :goto_0
    if-nez v7, :cond_1

    .line 1352
    const/4 v1, -0x3

    if-ne p3, v1, :cond_7

    .line 1355
    move v11, v9

    .line 1380
    :cond_1
    if-nez p4, :cond_a

    if-gez v11, :cond_a

    .line 1381
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 1382
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Call does not support special user #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1381
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1334
    :cond_2
    const/4 v1, 0x2

    move/from16 v0, p5

    if-ne v0, v1, :cond_3

    .line 1336
    const/4 v7, 0x0

    .local v7, "allow":Z
    goto :goto_0

    .line 1337
    .end local v7    # "allow":Z
    :cond_3
    iget-object v1, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v2, "android.permission.INTERACT_ACROSS_USERS"

    .line 1338
    const/4 v5, -0x1

    const/4 v6, 0x1

    move v3, p1

    move v4, p2

    .line 1337
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result v1

    if-eqz v1, :cond_4

    .line 1340
    const/4 v7, 0x0

    .restart local v7    # "allow":Z
    goto :goto_0

    .line 1341
    .end local v7    # "allow":Z
    :cond_4
    if-nez p5, :cond_5

    .line 1343
    const/4 v7, 0x1

    .restart local v7    # "allow":Z
    goto :goto_0

    .line 1344
    .end local v7    # "allow":Z
    :cond_5
    const/4 v1, 0x1

    move/from16 v0, p5

    if-ne v0, v1, :cond_6

    .line 1347
    invoke-virtual {p0, v9, v11}, Lcom/android/server/am/UserController;->isSameProfileGroup(II)Z

    move-result v7

    .local v7, "allow":Z
    goto :goto_0

    .line 1349
    .end local v7    # "allow":Z
    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unknown mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1357
    :cond_7
    new-instance v8, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v8, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1358
    .local v8, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "Permission Denial: "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1359
    move-object/from16 v0, p6

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1360
    if-eqz p7, :cond_8

    .line 1361
    const-string/jumbo v1, " from "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1362
    move-object/from16 v0, p7

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1364
    :cond_8
    const-string/jumbo v1, " asks to run as user "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1365
    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1366
    const-string/jumbo v1, " but is calling from user "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1367
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1368
    const-string/jumbo v1, "; this requires "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1369
    const-string/jumbo v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1370
    const/4 v1, 0x2

    move/from16 v0, p5

    if-eq v0, v1, :cond_9

    .line 1371
    const-string/jumbo v1, " or "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1372
    const-string/jumbo v1, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1374
    :cond_9
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1375
    .local v10, "msg":Ljava/lang/String;
    sget-object v1, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    invoke-static {v1, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1376
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v10}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1385
    .end local v8    # "builder":Ljava/lang/StringBuilder;
    .end local v10    # "msg":Ljava/lang/String;
    :cond_a
    const/16 v1, 0x7d0

    if-ne p2, v1, :cond_b

    if-ltz v11, :cond_b

    .line 1386
    const-string/jumbo v1, "no_debugging_features"

    invoke-virtual {p0, v1, v11}, Lcom/android/server/am/UserController;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1387
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Shell does not have permission to access user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1388
    const-string/jumbo v3, "\n "

    .line 1387
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1388
    const/4 v3, 0x3

    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    .line 1387
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1391
    :cond_b
    return v11
.end method

.method hasStartedUserState(I)Z
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 1422
    iget-object v0, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method hasUserRestriction(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "restriction"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 1591
    invoke-direct {p0}, Lcom/android/server/am/UserController;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method isCurrentProfileLocked(I)Z
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 1619
    iget-object v0, p0, Lcom/android/server/am/UserController;->mCurrentProfileIds:[I

    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v0

    return v0
.end method

.method isLockScreenDisabled(I)Z
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 1645
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v0

    return v0
.end method

.method isSameProfileGroup(II)Z
    .locals 8
    .param p1, "callingUserId"    # I
    .param p2, "targetUserId"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v7, -0x2710

    .line 1605
    if-ne p1, p2, :cond_0

    .line 1606
    return v2

    .line 1608
    :cond_0
    iget-object v4, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIdsSelfLocked:Landroid/util/SparseIntArray;

    monitor-enter v4

    .line 1609
    :try_start_0
    iget-object v5, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIdsSelfLocked:Landroid/util/SparseIntArray;

    .line 1610
    const/16 v6, -0x2710

    .line 1609
    invoke-virtual {v5, p1, v6}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 1611
    .local v0, "callingProfile":I
    iget-object v5, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIdsSelfLocked:Landroid/util/SparseIntArray;

    .line 1612
    const/16 v6, -0x2710

    .line 1611
    invoke-virtual {v5, p2, v6}, Landroid/util/SparseIntArray;->get(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 1613
    .local v1, "targetProfile":I
    if-eq v0, v7, :cond_2

    .line 1614
    if-ne v0, v1, :cond_1

    :goto_0
    monitor-exit v4

    .line 1613
    return v2

    :cond_1
    move v2, v3

    .line 1614
    goto :goto_0

    :cond_2
    move v2, v3

    .line 1613
    goto :goto_0

    .line 1608
    .end local v0    # "callingProfile":I
    .end local v1    # "targetProfile":I
    :catchall_0
    move-exception v2

    monitor-exit v4

    throw v2
.end method

.method isUserRunningLocked(II)Z
    .locals 4
    .param p1, "userId"    # I
    .param p2, "flags"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1497
    invoke-virtual {p0, p1}, Lcom/android/server/am/UserController;->getStartedUserStateLocked(I)Lcom/android/server/am/UserState;

    move-result-object v0

    .line 1498
    .local v0, "state":Lcom/android/server/am/UserState;
    if-nez v0, :cond_0

    .line 1499
    return v2

    .line 1501
    :cond_0
    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_1

    .line 1502
    return v3

    .line 1504
    :cond_1
    and-int/lit8 v1, p2, 0x2

    if-eqz v1, :cond_2

    .line 1505
    iget v1, v0, Lcom/android/server/am/UserState;->state:I

    packed-switch v1, :pswitch_data_0

    .line 1510
    return v2

    .line 1508
    :pswitch_0
    return v3

    .line 1513
    :cond_2
    and-int/lit8 v1, p2, 0x8

    if-eqz v1, :cond_3

    .line 1514
    iget v1, v0, Lcom/android/server/am/UserState;->state:I

    packed-switch v1, :pswitch_data_1

    .line 1519
    return v2

    .line 1517
    :pswitch_1
    return v3

    .line 1522
    :cond_3
    and-int/lit8 v1, p2, 0x4

    if-eqz v1, :cond_4

    .line 1523
    iget v1, v0, Lcom/android/server/am/UserState;->state:I

    packed-switch v1, :pswitch_data_2

    .line 1527
    return v2

    .line 1525
    :pswitch_2
    return v3

    .line 1532
    :cond_4
    return v3

    .line 1505
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 1514
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 1523
    :pswitch_data_2
    .packed-switch 0x3
        :pswitch_2
    .end packed-switch
.end method

.method isUserStoppingOrShuttingDownLocked(I)Z
    .locals 5
    .param p1, "userId"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1488
    invoke-virtual {p0, p1}, Lcom/android/server/am/UserController;->getStartedUserStateLocked(I)Lcom/android/server/am/UserState;

    move-result-object v0

    .line 1489
    .local v0, "state":Lcom/android/server/am/UserState;
    if-nez v0, :cond_0

    .line 1490
    return v2

    .line 1492
    :cond_0
    iget v3, v0, Lcom/android/server/am/UserState;->state:I

    const/4 v4, 0x4

    if-eq v3, v4, :cond_1

    .line 1493
    iget v3, v0, Lcom/android/server/am/UserState;->state:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_2

    .line 1492
    :cond_1
    :goto_0
    return v1

    :cond_2
    move v1, v2

    .line 1493
    goto :goto_0
.end method

.method maybeUnlockUser(I)Z
    .locals 1
    .param p1, "userId"    # I

    .prologue
    const/4 v0, 0x0

    .line 1066
    invoke-virtual {p0, p1, v0, v0, v0}, Lcom/android/server/am/UserController;->unlockUserCleared(I[B[BLandroid/os/IProgressListener;)Z

    move-result v0

    return v0
.end method

.method moveUserToForegroundLocked(Lcom/android/server/am/UserState;II)V
    .locals 3
    .param p1, "uss"    # Lcom/android/server/am/UserState;
    .param p2, "oldUserId"    # I
    .param p3, "newUserId"    # I

    .prologue
    .line 1254
    iget-object v1, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1, p3, p1}, Lcom/android/server/am/ActivityStackSupervisor;->switchUserLocked(ILcom/android/server/am/UserState;)Z

    move-result v0

    .line 1255
    .local v0, "homeInFront":Z
    if-eqz v0, :cond_0

    .line 1256
    iget-object v1, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v2, "moveUserToForeground"

    invoke-virtual {v1, p3, v2}, Lcom/android/server/am/ActivityManagerService;->startHomeActivityLocked(ILjava/lang/String;)Z

    .line 1260
    :goto_0
    invoke-static {p3}, Lcom/android/server/am/EventLogTags;->writeAmSwitchUser(I)V

    .line 1261
    invoke-virtual {p0, p2, p3}, Lcom/android/server/am/UserController;->sendUserSwitchBroadcastsLocked(II)V

    .line 1253
    return-void

    .line 1258
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    goto :goto_0
.end method

.method onSystemReady()V
    .locals 0

    .prologue
    .line 1454
    invoke-direct {p0}, Lcom/android/server/am/UserController;->updateCurrentProfileIdsLocked()V

    .line 1453
    return-void
.end method

.method registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    .locals 3
    .param p1, "observer"    # Landroid/app/IUserSwitchObserver;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 1400
    const-string/jumbo v1, "Observer name cannot be null"

    invoke-static {p2, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1401
    iget-object v1, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityManagerService;->checkCallingPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 1403
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Permission Denial: registerUserSwitchObserver() from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1404
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 1403
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1405
    const-string/jumbo v2, ", uid="

    .line 1403
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1405
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1403
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1406
    const-string/jumbo v2, " requires "

    .line 1403
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1406
    const-string/jumbo v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 1403
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1407
    .local v0, "msg":Ljava/lang/String;
    sget-object v1, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1408
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1410
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1, p2}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    .line 1399
    return-void
.end method

.method sendBootCompletedLocked(Landroid/content/IIntentReceiver;)V
    .locals 3
    .param p1, "resultTo"    # Landroid/content/IIntentReceiver;

    .prologue
    .line 1447
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 1448
    iget-object v2, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/UserState;

    .line 1449
    .local v1, "uss":Lcom/android/server/am/UserState;
    invoke-direct {p0, v1, p1}, Lcom/android/server/am/UserController;->finishUserBoot(Lcom/android/server/am/UserState;Landroid/content/IIntentReceiver;)V

    .line 1447
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1446
    .end local v1    # "uss":Lcom/android/server/am/UserState;
    :cond_0
    return-void
.end method

.method sendContinueUserSwitchLocked(Lcom/android/server/am/UserState;II)V
    .locals 3
    .param p1, "uss"    # Lcom/android/server/am/UserState;
    .param p2, "oldUserId"    # I
    .param p3, "newUserId"    # I

    .prologue
    .line 1234
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/UserController;->mCurWaitingUserSwitchCallbacks:Landroid/util/ArraySet;

    .line 1235
    iget-object v0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1236
    iget-object v0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x23

    invoke-virtual {v1, v2, p2, p3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1233
    return-void
.end method

.method sendUserSwitchBroadcastsLocked(II)V
    .locals 41
    .param p1, "oldUserId"    # I
    .param p2, "newUserId"    # I

    .prologue
    .line 1265
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v38

    .line 1268
    .local v38, "ident":J
    if-ltz p1, :cond_0

    .line 1270
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/UserController;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v2

    const/4 v3, 0x0

    move/from16 v0, p1

    invoke-virtual {v2, v0, v3}, Lcom/android/server/pm/UserManagerService;->getProfiles(IZ)Ljava/util/List;

    move-result-object v40

    .line 1271
    .local v40, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface/range {v40 .. v40}, Ljava/util/List;->size()I

    move-result v36

    .line 1272
    .local v36, "count":I
    const/16 v37, 0x0

    .local v37, "i":I
    :goto_0
    move/from16 v0, v37

    move/from16 v1, v36

    if-ge v0, v1, :cond_0

    .line 1273
    move-object/from16 v0, v40

    move/from16 v1, v37

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    iget v0, v2, Landroid/content/pm/UserInfo;->id:I

    move/from16 v18, v0

    .line 1274
    .local v18, "profileUserId":I
    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.USER_BACKGROUND"

    invoke-direct {v5, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1275
    .local v5, "intent":Landroid/content/Intent;
    const/high16 v2, 0x50000000

    invoke-virtual {v5, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1277
    const-string/jumbo v2, "android.intent.extra.user_handle"

    move/from16 v0, v18

    invoke-virtual {v5, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1278
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 1280
    sget v16, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    .line 1278
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1279
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, -0x1

    .line 1280
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x3e8

    .line 1278
    invoke-virtual/range {v2 .. v18}, Lcom/android/server/am/ActivityManagerService;->broadcastIntentLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIII)I

    .line 1272
    add-int/lit8 v37, v37, 0x1

    goto :goto_0

    .line 1283
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v18    # "profileUserId":I
    .end local v36    # "count":I
    .end local v37    # "i":I
    .end local v40    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_0
    if-ltz p2, :cond_2

    .line 1285
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/UserController;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v2

    const/4 v3, 0x0

    move/from16 v0, p2

    invoke-virtual {v2, v0, v3}, Lcom/android/server/pm/UserManagerService;->getProfiles(IZ)Ljava/util/List;

    move-result-object v40

    .line 1286
    .restart local v40    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface/range {v40 .. v40}, Ljava/util/List;->size()I

    move-result v36

    .line 1287
    .restart local v36    # "count":I
    const/16 v37, 0x0

    .restart local v37    # "i":I
    :goto_1
    move/from16 v0, v37

    move/from16 v1, v36

    if-ge v0, v1, :cond_1

    .line 1288
    move-object/from16 v0, v40

    move/from16 v1, v37

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    iget v0, v2, Landroid/content/pm/UserInfo;->id:I

    move/from16 v18, v0

    .line 1289
    .restart local v18    # "profileUserId":I
    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.USER_FOREGROUND"

    invoke-direct {v5, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1290
    .restart local v5    # "intent":Landroid/content/Intent;
    const/high16 v2, 0x50000000

    invoke-virtual {v5, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1292
    const-string/jumbo v2, "android.intent.extra.user_handle"

    move/from16 v0, v18

    invoke-virtual {v5, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1293
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 1295
    sget v16, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    .line 1293
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1294
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, -0x1

    .line 1295
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x3e8

    .line 1293
    invoke-virtual/range {v2 .. v18}, Lcom/android/server/am/ActivityManagerService;->broadcastIntentLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIII)I

    .line 1287
    add-int/lit8 v37, v37, 0x1

    goto :goto_1

    .line 1297
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v18    # "profileUserId":I
    :cond_1
    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.USER_SWITCHED"

    invoke-direct {v5, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1298
    .restart local v5    # "intent":Landroid/content/Intent;
    const/high16 v2, 0x50000000

    invoke-virtual {v5, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1300
    const-string/jumbo v2, "android.intent.extra.user_handle"

    move/from16 v0, p2

    invoke-virtual {v5, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1301
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v19, v0

    .line 1303
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v28, v0

    const-string/jumbo v2, "android.permission.MANAGE_USERS"

    const/4 v3, 0x0

    aput-object v2, v28, v3

    .line 1304
    sget v33, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    .line 1301
    const/16 v20, 0x0

    const/16 v21, 0x0

    .line 1302
    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    .line 1304
    const/16 v29, -0x1

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v34, 0x3e8

    .line 1305
    const/16 v35, -0x1

    move-object/from16 v22, v5

    .line 1301
    invoke-virtual/range {v19 .. v35}, Lcom/android/server/am/ActivityManagerService;->broadcastIntentLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1308
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v36    # "count":I
    .end local v37    # "i":I
    .end local v40    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_2
    invoke-static/range {v38 .. v39}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1264
    return-void

    .line 1307
    :catchall_0
    move-exception v2

    .line 1308
    invoke-static/range {v38 .. v39}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1307
    throw v2
.end method

.method setTargetUserIdLocked(I)I
    .locals 0
    .param p1, "targetUserId"    # I

    .prologue
    .line 1570
    iput p1, p0, Lcom/android/server/am/UserController;->mTargetUserId:I

    return p1
.end method

.method shouldConfirmCredentials(I)Z
    .locals 4
    .param p1, "userId"    # I

    .prologue
    const/4 v1, 0x0

    .line 1631
    iget-object v2, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1632
    iget-object v3, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    if-nez v3, :cond_0

    monitor-exit v2

    .line 1631
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1633
    return v1

    :cond_0
    monitor-exit v2

    .line 1631
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1636
    iget-object v2, p0, Lcom/android/server/am/UserController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1637
    return v1

    .line 1631
    :catchall_0
    move-exception v1

    monitor-exit v2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 1639
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 1640
    const-string/jumbo v3, "keyguard"

    .line 1639
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 1641
    .local v0, "km":Landroid/app/KeyguardManager;
    invoke-virtual {v0, p1}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0, p1}, Landroid/app/KeyguardManager;->isDeviceSecure(I)Z

    move-result v1

    :cond_2
    return v1
.end method

.method showUserSwitchDialog(Landroid/util/Pair;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair",
            "<",
            "Landroid/content/pm/UserInfo;",
            "Landroid/content/pm/UserInfo;",
            ">;)V"
        }
    .end annotation

    .prologue

    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/UserController;->startFlymeUser(Landroid/util/Pair;)V

    return-void

    .local p1, "fromToUserPair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;>;"
    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/content/pm/UserInfo;

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/UserController;->startUser(IZ)Z

    return-void
.end method

.method startProfilesLocked()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    sget-boolean v6, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_MU:Z

    if-eqz v6, :cond_0

    sget-object v6, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    const-string v7, "startProfilesLocked"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/android/server/am/UserController;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v6

    iget v7, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    invoke-virtual {v6, v7, v8}, Lcom/android/server/pm/UserManagerService;->getProfiles(IZ)Ljava/util/List;

    move-result-object v1

    .local v1, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    .local v2, "profilesToStart":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "user$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .local v4, "user":Landroid/content/pm/UserInfo;
    iget v6, v4, Landroid/content/pm/UserInfo;->flags:I

    and-int/lit8 v6, v6, 0x10

    const/16 v7, 0x10

    if-ne v6, v7, :cond_1

    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    iget v7, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    if-eq v6, v7, :cond_1

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isQuietModeEnabled()Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iget v7, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v6, v7}, Lcom/android/server/am/ActivityManagerServiceInjector;->ignoreXSpaceUser(Landroid/content/Context;I)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v4    # "user":Landroid/content/pm/UserInfo;
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "profilesToStartSize":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v3, :cond_3

    const/4 v6, 0x2

    if-ge v0, v6, :cond_3

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    iget v6, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v6, v8}, Lcom/android/server/am/UserController;->startUser(IZ)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    if-ge v0, v3, :cond_4

    sget-object v6, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    const-string v7, "More profiles than MAX_RUNNING_USERS"

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void
.end method

.method startUser(IZ)Z
    .locals 36
    .param p1, "userId"    # I
    .param p2, "foreground"    # Z

    .prologue
    move/from16 v6, p1

    .local v6, "userIdOrig":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v5, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityManagerService;->checkCallingPermission(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Permission Denial: switchUser() from pid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " requires "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .local v29, "msg":Ljava/lang/String;
    sget-object v4, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    move-object/from16 v0, v29

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/lang/SecurityException;

    move-object/from16 v0, v29

    invoke-direct {v4, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .end local v29    # "msg":Ljava/lang/String;
    :cond_0
    sget-object v4, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Starting userid:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " fg:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v26

    .local v26, "ident":J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v35, v0

    monitor-enter v35
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/am/UserController;->mCurrentUserId:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .local v7, "oldUserId":I
    move/from16 v0, p1

    if-ne v7, v0, :cond_1

    :try_start_2
    monitor-exit v35

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v4, 0x1

    invoke-static/range {v26 .. v27}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    :cond_1
    :try_start_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const-string v5, "startUser"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v4, v8, v9, v5, v10}, Lcom/android/server/am/ActivityStackSupervisor;->setLockTaskModeLocked(Lcom/android/server/am/TaskRecord;ILjava/lang/String;Z)V

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v32

    .local v32, "userInfo":Landroid/content/pm/UserInfo;
    if-nez v32, :cond_2

    sget-object v4, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No user info for user #"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v35

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const/4 v4, 0x0

    invoke-static/range {v26 .. v27}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    :cond_2
    if-eqz p2, :cond_3

    :try_start_5
    invoke-virtual/range {v32 .. v32}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v4

    if-eqz v4, :cond_3

    sget-object v4, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot switch to User #"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ": not a full user"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    monitor-exit v35

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    const/4 v4, 0x0

    invoke-static/range {v26 .. v27}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    :cond_3
    if-eqz p2, :cond_4

    :try_start_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const v5, #android:anim@screen_user_exit#t

    const v8, #android:anim@screen_user_enter#t

    invoke-virtual {v4, v5, v8}, Lcom/android/server/wm/WindowManagerService;->startFreezingScreen(II)V

    :cond_4
    const/16 v30, 0x0

    .local v30, "needStart":Z
    invoke-static/range {p1 .. p1}, Lmiui/securityspace/SecuritySpaceEcryptManager;->needAirlockUser(I)Z

    move-result v4

    if-eqz v4, :cond_6

    if-nez p2, :cond_5

    sget-object v4, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot start user "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " in the background: user-authentication is required"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    monitor-exit v35

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    const/4 v4, 0x0

    invoke-static/range {v26 .. v27}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    :cond_5
    const/16 p1, 0x63

    :cond_6
    const/16 v4, 0x63

    move/from16 v0, p1

    if-ne v0, v4, :cond_f

    const/16 v28, 0x1

    .local v28, "isUserAirlock":Z
    :goto_0
    :try_start_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_7

    new-instance v33, Lcom/android/server/am/UserState;

    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    move-object/from16 v0, v33

    invoke-direct {v0, v4}, Lcom/android/server/am/UserState;-><init>(Landroid/os/UserHandle;)V

    .local v33, "userState":Lcom/android/server/am/UserState;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    move/from16 v0, p1

    move-object/from16 v1, v33

    invoke-virtual {v4, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/UserController;->getUserManagerInternal()Landroid/os/UserManagerInternal;

    move-result-object v4

    move-object/from16 v0, v33

    iget v5, v0, Lcom/android/server/am/UserState;->state:I

    move/from16 v0, p1

    invoke-virtual {v4, v0, v5}, Landroid/os/UserManagerInternal;->setUserState(II)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/UserController;->updateStartedUserArrayLocked()V

    const/16 v30, 0x1

    .end local v33    # "userState":Lcom/android/server/am/UserState;
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/android/server/am/UserState;

    .local v34, "uss":Lcom/android/server/am/UserState;
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    .local v31, "userIdInt":Ljava/lang/Integer;
    const/16 v4, 0x63

    move/from16 v0, p1

    if-eq v0, v4, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    if-eqz p2, :cond_10

    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/UserController;->mCurrentUserId:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->updateUserConfigurationLocked()V

    const/16 v4, -0x2710

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/am/UserController;->mTargetUserId:I

    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/UserController;->updateCurrentProfileIdsLocked()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v5, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    goto :goto_flyme_0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/am/UserController;->mCurrentProfileIds:[I

    move/from16 v5, p1

    invoke-static/range {v4 .. v9}, Lcom/android/server/am/ActivityManagerServiceInjector;->handleWindowManagerAndUserLru(Landroid/content/Context;IIILcom/android/server/wm/WindowManagerService;[I)V

    :goto_1

    :goto_flyme_0

    move-object/from16 v0, v34

    iget v4, v0, Lcom/android/server/am/UserState;->state:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_12

    move-object/from16 v0, v34

    iget v4, v0, Lcom/android/server/am/UserState;->lastState:I

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Lcom/android/server/am/UserState;->setState(I)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/UserController;->getUserManagerInternal()Landroid/os/UserManagerInternal;

    move-result-object v4

    move-object/from16 v0, v34

    iget v5, v0, Lcom/android/server/am/UserState;->state:I

    move/from16 v0, p1

    invoke-virtual {v4, v0, v5}, Landroid/os/UserManagerInternal;->setUserState(II)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/UserController;->updateStartedUserArrayLocked()V

    const/16 v30, 0x1

    :cond_9
    :goto_2
    move-object/from16 v0, v34

    iget v4, v0, Lcom/android/server/am/UserState;->state:I

    if-nez v4, :cond_a

    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/UserController;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/server/pm/UserManagerService;->onBeforeStartUser(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v8, 0x2a

    const/4 v9, 0x0

    move/from16 v0, p1

    invoke-virtual {v5, v8, v0, v9}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_a
    if-eqz p2, :cond_b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v8, 0x2b

    move/from16 v0, p1

    invoke-virtual {v5, v8, v0, v7}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x22

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x24

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v8, 0x22

    move/from16 v0, p1

    move-object/from16 v1, v34

    invoke-virtual {v5, v8, v7, v0, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v8, 0x24

    move/from16 v0, p1

    move-object/from16 v1, v34

    invoke-virtual {v5, v8, v7, v0, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    const-wide/16 v8, 0x7d0

    invoke-virtual {v4, v5, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_b
    if-eqz v30, :cond_c

    if-eqz v28, :cond_13

    :cond_c
    :goto_3
    if-eqz p2, :cond_14

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move/from16 v2, p1

    invoke-virtual {v0, v1, v7, v2}, Lcom/android/server/am/UserController;->moveUserToForegroundLocked(Lcom/android/server/am/UserState;II)V

    :goto_4
    if-eqz v30, :cond_d

    if-eqz v28, :cond_15

    :cond_d
    :goto_5
    const/16 v4, 0x63

    if-ne v7, v4, :cond_e

    const/16 v4, 0x63

    const/4 v5, 0x1

    const/4 v8, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v8}, Lcom/android/server/am/UserController;->stopUser(IZLandroid/app/IStopUserCallback;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :cond_e
    :try_start_a
    monitor-exit v35

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    invoke-static/range {v26 .. v27}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v4, 0x1

    return v4

    .end local v28    # "isUserAirlock":Z
    .end local v31    # "userIdInt":Ljava/lang/Integer;
    .end local v34    # "uss":Lcom/android/server/am/UserState;
    :cond_f
    const/16 v28, 0x0

    .restart local v28    # "isUserAirlock":Z
    goto/16 :goto_0

    .restart local v31    # "userIdInt":Ljava/lang/Integer;
    .restart local v34    # "uss":Lcom/android/server/am/UserState;
    :cond_10
    :try_start_b
    invoke-static {v6}, Lmiui/securityspace/SecuritySpaceEcryptManager;->spaceNeedsEcryptfsMount(I)Z

    move-result v4

    if-eqz v4, :cond_11

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v6, v4, v5}, Lmiui/securityspace/SecuritySpaceEcryptManager;->spaceEcryptfsMount(IILjava/lang/String;)I

    :cond_11
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    .local v25, "currentUserIdInt":Ljava/lang/Integer;
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/UserController;->updateCurrentProfileIdsLocked()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/UserController;->mCurrentProfileIds:[I

    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowManagerService;->setCurrentProfileIds([I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_1

    .end local v7    # "oldUserId":I
    .end local v25    # "currentUserIdInt":Ljava/lang/Integer;
    .end local v28    # "isUserAirlock":Z
    .end local v30    # "needStart":Z
    .end local v31    # "userIdInt":Ljava/lang/Integer;
    .end local v32    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v34    # "uss":Lcom/android/server/am/UserState;
    :catchall_0
    move-exception v4

    :try_start_c
    monitor-exit v35

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v4
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :catchall_1
    move-exception v4

    invoke-static/range {v26 .. v27}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .restart local v7    # "oldUserId":I
    .restart local v28    # "isUserAirlock":Z
    .restart local v30    # "needStart":Z
    .restart local v31    # "userIdInt":Ljava/lang/Integer;
    .restart local v32    # "userInfo":Landroid/content/pm/UserInfo;
    .restart local v34    # "uss":Lcom/android/server/am/UserState;
    :cond_12
    :try_start_d
    move-object/from16 v0, v34

    iget v4, v0, Lcom/android/server/am/UserState;->state:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_9

    const/4 v4, 0x0

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Lcom/android/server/am/UserState;->setState(I)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/UserController;->getUserManagerInternal()Landroid/os/UserManagerInternal;

    move-result-object v4

    move-object/from16 v0, v34

    iget v5, v0, Lcom/android/server/am/UserState;->state:I

    move/from16 v0, p1

    invoke-virtual {v4, v0, v5}, Landroid/os/UserManagerInternal;->setUserState(II)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/UserController;->updateStartedUserArrayLocked()V

    const/16 v30, 0x1

    goto/16 :goto_2

    :cond_13
    new-instance v11, Landroid/content/Intent;

    const-string v4, "android.intent.action.USER_STARTED"

    invoke-direct {v11, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v11, "intent":Landroid/content/Intent;
    const/high16 v4, 0x50000000

    invoke-virtual {v11, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v4, "android.intent.extra.user_handle"

    move/from16 v0, p1

    invoke-virtual {v11, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    sget v22, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, -0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v23, 0x3e8

    move/from16 v24, p1

    invoke-virtual/range {v8 .. v24}, Lcom/android/server/am/ActivityManagerService;->broadcastIntentLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIII)I

    goto/16 :goto_3

    .end local v11    # "intent":Landroid/content/Intent;
    :cond_14
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    move-object/from16 v0, v34

    invoke-direct {v4, v0}, Lcom/android/server/am/UserController;->finishUserBoot(Lcom/android/server/am/UserState;)V

    goto/16 :goto_4

    :cond_15
    new-instance v11, Landroid/content/Intent;

    const-string v4, "android.intent.action.USER_STARTING"

    invoke-direct {v11, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v11    # "intent":Landroid/content/Intent;
    const/high16 v4, 0x40000000    # 2.0f

    invoke-virtual {v11, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v4, "android.intent.extra.user_handle"

    move/from16 v0, p1

    invoke-virtual {v11, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    new-instance v13, Lcom/android/server/am/UserController$6;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/android/server/am/UserController$6;-><init>(Lcom/android/server/am/UserController;)V

    const/4 v4, 0x1

    new-array v0, v4, [Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v4, "android.permission.INTERACT_ACROSS_USERS"

    const/4 v5, 0x0

    aput-object v4, v17, v5

    sget v22, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v18, -0x1

    const/16 v19, 0x0

    const/16 v20, 0x1

    const/16 v21, 0x0

    const/16 v23, 0x3e8

    const/16 v24, -0x1

    invoke-virtual/range {v8 .. v24}, Lcom/android/server/am/ActivityManagerService;->broadcastIntentLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIII)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_5
.end method

.method startUserInForeground(ILandroid/app/Dialog;)Z
    .locals 2
    .param p1, "userId"    # I
    .param p2, "dlg"    # Landroid/app/Dialog;

    .prologue
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/am/UserController;->startUser(IZ)Z

    move-result v0

    .local v0, "result":Z
    invoke-virtual {p2}, Landroid/app/Dialog;->dismiss()V

    return v0
.end method

.method stopRunningUsersLocked(I)V
    .locals 8
    .param p1, "maxRunningUsers"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "num":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-le v1, p1, :cond_7

    iget-object v4, p0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_7

    iget-object v4, p0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .local v2, "oldUserId":Ljava/lang/Integer;
    iget-object v4, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/UserState;

    .local v3, "oldUss":Lcom/android/server/am/UserState;
    if-nez v3, :cond_0

    iget-object v4, p0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    iget v4, v3, Lcom/android/server/am/UserState;->state:I

    const/4 v5, 0x4

    if-eq v4, v5, :cond_1

    iget v4, v3, Lcom/android/server/am/UserState;->state:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_2

    :cond_1
    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget v5, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    if-ne v4, v5, :cond_5

    :cond_3
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Landroid/content/pm/UserInfo;->isSystemOnly(I)Z

    move-result v4

    if-eqz v4, :cond_4

    add-int/lit8 v1, v1, -0x1

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v4, v6, v7}, Lcom/android/server/am/UserController;->stopUsersLocked(IZLandroid/app/IStopUserCallback;)I

    move-result v4

    if-eqz v4, :cond_6

    add-int/lit8 v1, v1, -0x1

    :cond_6
    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v2    # "oldUserId":Ljava/lang/Integer;
    .end local v3    # "oldUss":Lcom/android/server/am/UserState;
    :cond_7
    return-void
.end method

.method stopUser(IZLandroid/app/IStopUserCallback;)I
    .locals 4
    .param p1, "userId"    # I
    .param p2, "force"    # Z
    .param p3, "callback"    # Landroid/app/IStopUserCallback;

    .prologue
    iget-object v1, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityManagerService;->checkCallingPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission Denial: switchUser() from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " requires "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "msg":Ljava/lang/String;
    sget-object v1, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    if-ltz p1, :cond_1

    if-nez p1, :cond_2

    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t stop system user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    iget-object v1, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v2, "no_debugging_features"

    invoke-virtual {v1, v2, p1}, Lcom/android/server/am/ActivityManagerService;->enforceShellRestriction(Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/UserController;->stopUsersLocked(IZLandroid/app/IStopUserCallback;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method timeoutUserSwitch(Lcom/android/server/am/UserState;II)V
    .locals 4
    .param p1, "uss"    # Lcom/android/server/am/UserState;
    .param p2, "oldUserId"    # I
    .param p3, "newUserId"    # I

    .prologue
    iget-object v1, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    sget-object v0, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User switch timeout: from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Observers that didn\'t send results: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/UserController;->mCurWaitingUserSwitchCallbacks:Landroid/util/ArraySet;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/UserController;->sendContinueUserSwitchLocked(Lcom/android/server/am/UserState;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method unlockUser(I[B[BLandroid/os/IProgressListener;)Z
    .locals 5
    .param p1, "userId"    # I
    .param p2, "token"    # [B
    .param p3, "secret"    # [B
    .param p4, "listener"    # Landroid/os/IProgressListener;

    .prologue
    iget-object v3, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v4, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityManagerService;->checkCallingPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Permission Denial: unlockUser() from pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " requires "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .local v2, "msg":Ljava/lang/String;
    sget-object v3, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/SecurityException;

    invoke-direct {v3, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .end local v2    # "msg":Ljava/lang/String;
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .local v0, "binderToken":J
    :try_start_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/am/UserController;->unlockUserCleared(I[B[BLandroid/os/IProgressListener;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method unlockUserCleared(I[B[BLandroid/os/IProgressListener;)Z
    .locals 16
    .param p1, "userId"    # I
    .param p2, "token"    # [B
    .param p3, "secret"    # [B
    .param p4, "listener"    # Landroid/os/IProgressListener;

    .prologue
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v13

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    invoke-static/range {p1 .. p1}, Landroid/os/storage/StorageManager;->isUserKeyUnlocked(I)Z

    move-result v12

    if-nez v12, :cond_0

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v10

    .local v10, "userInfo":Landroid/content/pm/UserInfo;
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/UserController;->getMountService()Landroid/os/storage/IMountService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .local v6, "mountService":Landroid/os/storage/IMountService;
    :try_start_1
    iget v12, v10, Landroid/content/pm/UserInfo;->serialNumber:I

    move/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-interface {v6, v0, v12, v1, v2}, Landroid/os/storage/IMountService;->unlockUserKey(II[B[B)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v6    # "mountService":Landroid/os/storage/IMountService;
    .end local v10    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_0
    :try_start_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/UserState;

    .local v11, "uss":Lcom/android/server/am/UserState;
    if-nez v11, :cond_1

    move/from16 v0, p1

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Lcom/android/server/am/UserController;->notifyFinished(ILandroid/os/IProgressListener;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v12, 0x0

    monitor-exit v13

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v12

    .end local v11    # "uss":Lcom/android/server/am/UserState;
    .restart local v6    # "mountService":Landroid/os/storage/IMountService;
    .restart local v10    # "userInfo":Landroid/content/pm/UserInfo;
    :catch_0
    move-exception v4

    .local v4, "e":Ljava/lang/Exception;
    :try_start_3
    sget-object v12, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Failed to unlock: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v12, 0x0

    monitor-exit v13

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v12

    .end local v4    # "e":Ljava/lang/Exception;
    .end local v6    # "mountService":Landroid/os/storage/IMountService;
    .end local v10    # "userInfo":Landroid/content/pm/UserInfo;
    .restart local v11    # "uss":Lcom/android/server/am/UserState;
    :cond_1
    :try_start_4
    iget-object v12, v11, Lcom/android/server/am/UserState;->mUnlockProgress:Lcom/android/internal/util/ProgressReporter;

    move-object/from16 v0, p4

    invoke-virtual {v12, v0}, Lcom/android/internal/util/ProgressReporter;->addListener(Landroid/os/IProgressListener;)V

    if-eqz p2, :cond_3

    const/4 v12, 0x1

    :goto_0
    iput-boolean v12, v11, Lcom/android/server/am/UserState;->tokenProvided:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v13

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/server/am/UserController;->finishUserUnlocking(Lcom/android/server/am/UserState;)V

    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .local v3, "childProfilesToUnlock":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v13

    :try_start_5
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    move-result v12

    if-ge v5, v12, :cond_4

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v12, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    .local v9, "testUserId":I
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/UserController;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v12

    invoke-virtual {v12, v9}, Lcom/android/server/pm/UserManagerService;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v7

    .local v7, "parent":Landroid/content/pm/UserInfo;
    if-eqz v7, :cond_2

    iget v12, v7, Landroid/content/pm/UserInfo;->id:I

    move/from16 v0, p1

    if-ne v12, v0, :cond_2

    move/from16 v0, p1

    if-eq v9, v0, :cond_2

    sget-object v12, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "User "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " (parent "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "): attempting unlock because parent was just unlocked"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v3, v12}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .end local v3    # "childProfilesToUnlock":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    .end local v5    # "i":I
    .end local v7    # "parent":Landroid/content/pm/UserInfo;
    .end local v9    # "testUserId":I
    :cond_3
    const/4 v12, 0x0

    goto :goto_0

    .end local v11    # "uss":Lcom/android/server/am/UserState;
    :catchall_0
    move-exception v12

    monitor-exit v13

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v12

    .restart local v3    # "childProfilesToUnlock":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    .restart local v5    # "i":I
    .restart local v11    # "uss":Lcom/android/server/am/UserState;
    :cond_4
    monitor-exit v13

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v8

    .local v8, "size":I
    const/4 v5, 0x0

    :goto_2
    if-ge v5, v8, :cond_5

    invoke-virtual {v3, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/server/am/UserController;->maybeUnlockUser(I)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .end local v5    # "i":I
    .end local v8    # "size":I
    :catchall_1
    move-exception v12

    monitor-exit v13

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v12

    .restart local v5    # "i":I
    .restart local v8    # "size":I
    :cond_5
    const/4 v12, 0x1

    return v12
.end method

.method unregisterUserSwitchObserver(Landroid/app/IUserSwitchObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/app/IUserSwitchObserver;

    .prologue
    iget-object v0, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    return-void
.end method

.method unsafeConvertIncomingUserLocked(I)I
    .locals 1
    .param p1, "userId"    # I

    .prologue
    const/4 v0, -0x2

    if-eq p1, v0, :cond_0

    const/4 v0, -0x3

    if-ne p1, v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->getCurrentUserIdLocked()I

    move-result p1

    .end local p1    # "userId":I
    :cond_1
    return p1
.end method

.method private startFlymeUser(Landroid/util/Pair;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair",
            "<",
            "Landroid/content/pm/UserInfo;",
            "Landroid/content/pm/UserInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1134
    .local p1, "fromToUserPair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;>;"
    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/content/pm/UserInfo;

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/UserController;->startUser(IZ)Z

    .line 1133
    return-void
.end method
