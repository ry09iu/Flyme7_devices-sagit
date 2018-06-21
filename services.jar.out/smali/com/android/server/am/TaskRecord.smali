.class final Lcom/android/server/am/TaskRecord;
.super Ljava/lang/Object;
.source "TaskRecord.java"


# static fields
.field private static final ATTR_AFFINITY:Ljava/lang/String; = "affinity"

.field private static final ATTR_ASKEDCOMPATMODE:Ljava/lang/String; = "asked_compat_mode"

.field private static final ATTR_AUTOREMOVERECENTS:Ljava/lang/String; = "auto_remove_recents"

.field private static final ATTR_CALLING_PACKAGE:Ljava/lang/String; = "calling_package"

.field private static final ATTR_CALLING_UID:Ljava/lang/String; = "calling_uid"

.field private static final ATTR_EFFECTIVE_UID:Ljava/lang/String; = "effective_uid"

.field private static final ATTR_FIRSTACTIVETIME:Ljava/lang/String; = "first_active_time"

.field private static final ATTR_LASTACTIVETIME:Ljava/lang/String; = "last_active_time"

.field private static final ATTR_LASTDESCRIPTION:Ljava/lang/String; = "last_description"

.field private static final ATTR_LASTTIMEMOVED:Ljava/lang/String; = "last_time_moved"

.field private static final ATTR_MIN_HEIGHT:Ljava/lang/String; = "min_height"

.field private static final ATTR_MIN_WIDTH:Ljava/lang/String; = "min_width"

.field private static final ATTR_NEVERRELINQUISH:Ljava/lang/String; = "never_relinquish_identity"

.field private static final ATTR_NEXT_AFFILIATION:Ljava/lang/String; = "next_affiliation"

.field private static final ATTR_NON_FULLSCREEN_BOUNDS:Ljava/lang/String; = "non_fullscreen_bounds"

.field private static final ATTR_ORIGACTIVITY:Ljava/lang/String; = "orig_activity"

.field private static final ATTR_PREV_AFFILIATION:Ljava/lang/String; = "prev_affiliation"

.field private static final ATTR_PRIVILEGED:Ljava/lang/String; = "privileged"

.field static final ATTR_REALACTIVITY:Ljava/lang/String; = "real_activity"

.field static final ATTR_REALACTIVITY_SUSPENDED:Ljava/lang/String; = "real_activity_suspended"

.field private static final ATTR_RESIZE_MODE:Ljava/lang/String; = "resize_mode"

.field private static final ATTR_ROOTHASRESET:Ljava/lang/String; = "root_has_reset"

.field private static final ATTR_ROOT_AFFINITY:Ljava/lang/String; = "root_affinity"

.field static final ATTR_TASKID:Ljava/lang/String; = "task_id"

.field private static final ATTR_TASKTYPE:Ljava/lang/String; = "task_type"

.field static final ATTR_TASK_AFFILIATION:Ljava/lang/String; = "task_affiliation"

.field private static final ATTR_TASK_AFFILIATION_COLOR:Ljava/lang/String; = "task_affiliation_color"

.field private static final ATTR_USERID:Ljava/lang/String; = "user_id"

.field private static final ATTR_USER_SETUP_COMPLETE:Ljava/lang/String; = "user_setup_complete"

.field static final INVALID_MIN_SIZE:I = -0x1

.field static final INVALID_TASK_ID:I = -0x1

.field static final LOCK_TASK_AUTH_DONT_LOCK:I = 0x0

.field static final LOCK_TASK_AUTH_LAUNCHABLE:I = 0x2

.field static final LOCK_TASK_AUTH_LAUNCHABLE_PRIV:I = 0x4

.field static final LOCK_TASK_AUTH_PINNABLE:I = 0x1

.field static final LOCK_TASK_AUTH_WHITELISTED:I = 0x3

.field private static final TAG:Ljava/lang/String;

.field private static final TAG_ACTIVITY:Ljava/lang/String; = "activity"

.field private static final TAG_ADD_REMOVE:Ljava/lang/String;

.field private static final TAG_AFFINITYINTENT:Ljava/lang/String; = "affinity_intent"

.field private static final TAG_INTENT:Ljava/lang/String; = "intent"

.field private static final TAG_LOCKTASK:Ljava/lang/String;

.field private static final TAG_RECENTS:Ljava/lang/String;

.field private static final TAG_TASKS:Ljava/lang/String;

.field private static final TASK_THUMBNAIL_SUFFIX:Ljava/lang/String; = "_task_thumbnail"


# instance fields
.field affinity:Ljava/lang/String;

.field affinityIntent:Landroid/content/Intent;

.field askedCompatMode:Z

.field autoRemoveRecents:Z

.field effectiveUid:I

.field firstActiveTime:J

.field hasBeenVisible:Z

.field inRecents:Z

.field intent:Landroid/content/Intent;

.field isAvailable:Z

.field isPersistable:Z

.field lastActiveTime:J

.field lastDescription:Ljava/lang/CharSequence;

.field lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

.field final mActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field mAffiliatedTaskColor:I

.field mAffiliatedTaskId:I

.field mBounds:Landroid/graphics/Rect;

.field mCallingPackage:Ljava/lang/String;

.field mCallingUid:I

.field private final mFilename:Ljava/lang/String;

.field mFullscreen:Z

.field mLastNonFullscreenBounds:Landroid/graphics/Rect;

.field private mLastThumbnail:Landroid/graphics/Bitmap;

.field private final mLastThumbnailFile:Ljava/io/File;

.field private mLastThumbnailInfo:Landroid/app/ActivityManager$TaskThumbnailInfo;

.field mLastTimeMoved:J

.field mLayerRank:I

.field mLockTaskAuth:I

.field mLockTaskMode:I

.field mLockTaskUid:I

.field mMinHeight:I

.field mMinWidth:I

.field mNeverRelinquishIdentity:Z

.field mNextAffiliate:Lcom/android/server/am/TaskRecord;

.field mNextAffiliateTaskId:I

.field mOverrideConfig:Landroid/content/res/Configuration;

.field mPrevAffiliate:Lcom/android/server/am/TaskRecord;

.field mPrevAffiliateTaskId:I

.field private mPrivileged:Z

.field mResizeMode:I

.field private mReuseTask:Z

.field final mService:Lcom/android/server/am/ActivityManagerService;

.field private mTaskToReturnTo:I

.field mTemporarilyUnresizable:Z

.field private final mTmpNonDecorBounds:Landroid/graphics/Rect;

.field private final mTmpRect:Landroid/graphics/Rect;

.field private final mTmpRect2:Landroid/graphics/Rect;

.field private final mTmpStableBounds:Landroid/graphics/Rect;

.field mUserSetupComplete:Z

.field maxRecents:I

.field numFullscreen:I

.field origActivity:Landroid/content/ComponentName;

.field realActivity:Landroid/content/ComponentName;

.field realActivitySuspended:Z

.field rootAffinity:Ljava/lang/String;

.field rootWasReset:Z

.field stack:Lcom/android/server/am/ActivityStack;

.field stringName:Ljava/lang/String;

.field final taskId:I

.field taskType:I

.field userId:I

.field final voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

.field final voiceSession:Landroid/service/voice/IVoiceInteractionSession;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 101
    const-string/jumbo v0, "ActivityManager"

    sput-object v0, Lcom/android/server/am/TaskRecord;->TAG:Ljava/lang/String;

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/am/TaskRecord;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_ADD_REMOVE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/TaskRecord;->TAG_ADD_REMOVE:Ljava/lang/String;

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/am/TaskRecord;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_RECENTS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/TaskRecord;->TAG_RECENTS:Ljava/lang/String;

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/am/TaskRecord;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_LOCKTASK:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/TaskRecord;->TAG_LOCKTASK:Ljava/lang/String;

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/am/TaskRecord;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_TASKS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/TaskRecord;->TAG_TASKS:Ljava/lang/String;

    .line 100
    return-void
.end method

.method private constructor <init>(Lcom/android/server/am/ActivityManagerService;ILandroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/content/ComponentName;ZZZIIILjava/lang/String;Ljava/util/ArrayList;JJJZLandroid/app/ActivityManager$TaskDescription;Landroid/app/ActivityManager$TaskThumbnailInfo;IIIIILjava/lang/String;IZZZII)V
    .locals 5
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "_taskId"    # I
    .param p3, "_intent"    # Landroid/content/Intent;
    .param p4, "_affinityIntent"    # Landroid/content/Intent;
    .param p5, "_affinity"    # Ljava/lang/String;
    .param p6, "_rootAffinity"    # Ljava/lang/String;
    .param p7, "_realActivity"    # Landroid/content/ComponentName;
    .param p8, "_origActivity"    # Landroid/content/ComponentName;
    .param p9, "_rootWasReset"    # Z
    .param p10, "_autoRemoveRecents"    # Z
    .param p11, "_askedCompatMode"    # Z
    .param p12, "_taskType"    # I
    .param p13, "_userId"    # I
    .param p14, "_effectiveUid"    # I
    .param p15, "_lastDescription"    # Ljava/lang/String;
    .param p17, "_firstActiveTime"    # J
    .param p19, "_lastActiveTime"    # J
    .param p21, "lastTimeMoved"    # J
    .param p23, "neverRelinquishIdentity"    # Z
    .param p24, "_lastTaskDescription"    # Landroid/app/ActivityManager$TaskDescription;
    .param p25, "lastThumbnailInfo"    # Landroid/app/ActivityManager$TaskThumbnailInfo;
    .param p26, "taskAffiliation"    # I
    .param p27, "prevTaskId"    # I
    .param p28, "nextTaskId"    # I
    .param p29, "taskAffiliationColor"    # I
    .param p30, "callingUid"    # I
    .param p31, "callingPackage"    # Ljava/lang/String;
    .param p32, "resizeMode"    # I
    .param p33, "privileged"    # Z
    .param p34, "_realActivitySuspended"    # Z
    .param p35, "userSetupComplete"    # Z
    .param p36, "minWidth"    # I
    .param p37, "minHeight"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/ActivityManagerService;",
            "I",
            "Landroid/content/Intent;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/content/ComponentName;",
            "Landroid/content/ComponentName;",
            "ZZZIII",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;JJJZ",
            "Landroid/app/ActivityManager$TaskDescription;",
            "Landroid/app/ActivityManager$TaskThumbnailInfo;",
            "IIIII",
            "Ljava/lang/String;",
            "IZZZII)V"
        }
    .end annotation

    .prologue
    .line 330
    .local p16, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    .line 198
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/am/TaskRecord;->mLockTaskUid:I

    .line 202
    new-instance v2, Landroid/app/ActivityManager$TaskDescription;

    invoke-direct {v2}, Landroid/app/ActivityManager$TaskDescription;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/TaskRecord;->lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 214
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/am/TaskRecord;->isPersistable:Z

    .line 220
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/am/TaskRecord;->mLastTimeMoved:J

    .line 225
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/am/TaskRecord;->mTaskToReturnTo:I

    .line 228
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/am/TaskRecord;->mNeverRelinquishIdentity:Z

    .line 232
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/am/TaskRecord;->mReuseTask:Z

    .line 243
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/am/TaskRecord;->mPrevAffiliateTaskId:I

    .line 245
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/am/TaskRecord;->mNextAffiliateTaskId:I

    .line 254
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/am/TaskRecord;->mFullscreen:Z

    .line 257
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    .line 258
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/TaskRecord;->mTmpStableBounds:Landroid/graphics/Rect;

    .line 259
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/TaskRecord;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    .line 260
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/TaskRecord;->mTmpRect:Landroid/graphics/Rect;

    .line 261
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/TaskRecord;->mTmpRect2:Landroid/graphics/Rect;

    .line 266
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/am/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    .line 274
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/am/TaskRecord;->mLayerRank:I

    .line 276
    sget-object v2, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    iput-object v2, p0, Lcom/android/server/am/TaskRecord;->mOverrideConfig:Landroid/content/res/Configuration;

    .line 341
    iput-object p1, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 342
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_task_thumbnail"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 343
    const-string/jumbo v3, ".png"

    .line 342
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/TaskRecord;->mFilename:Ljava/lang/String;

    .line 344
    new-instance v2, Ljava/io/File;

    invoke-static/range {p13 .. p13}, Lcom/android/server/am/TaskPersister;->getUserImagesDir(I)Ljava/io/File;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mFilename:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnailFile:Ljava/io/File;

    .line 345
    move-object/from16 v0, p25

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnailInfo:Landroid/app/ActivityManager$TaskThumbnailInfo;

    .line 346
    iput p2, p0, Lcom/android/server/am/TaskRecord;->taskId:I

    .line 347
    iput-object p3, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    .line 348
    iput-object p4, p0, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    .line 349
    iput-object p5, p0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    .line 350
    iput-object p6, p0, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    .line 351
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 352
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/am/TaskRecord;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 353
    iput-object p7, p0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    .line 354
    move/from16 v0, p34

    iput-boolean v0, p0, Lcom/android/server/am/TaskRecord;->realActivitySuspended:Z

    .line 355
    iput-object p8, p0, Lcom/android/server/am/TaskRecord;->origActivity:Landroid/content/ComponentName;

    .line 356
    iput-boolean p9, p0, Lcom/android/server/am/TaskRecord;->rootWasReset:Z

    .line 357
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/am/TaskRecord;->isAvailable:Z

    .line 358
    iput-boolean p10, p0, Lcom/android/server/am/TaskRecord;->autoRemoveRecents:Z

    .line 359
    move/from16 v0, p11

    iput-boolean v0, p0, Lcom/android/server/am/TaskRecord;->askedCompatMode:Z

    .line 360
    move/from16 v0, p12

    iput v0, p0, Lcom/android/server/am/TaskRecord;->taskType:I

    .line 361
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/server/am/TaskRecord;->mTaskToReturnTo:I

    .line 362
    move/from16 v0, p13

    iput v0, p0, Lcom/android/server/am/TaskRecord;->userId:I

    .line 363
    move/from16 v0, p35

    iput-boolean v0, p0, Lcom/android/server/am/TaskRecord;->mUserSetupComplete:Z

    .line 364
    move/from16 v0, p14

    iput v0, p0, Lcom/android/server/am/TaskRecord;->effectiveUid:I

    .line 365
    move-wide/from16 v0, p17

    iput-wide v0, p0, Lcom/android/server/am/TaskRecord;->firstActiveTime:J

    .line 366
    move-wide/from16 v0, p19

    iput-wide v0, p0, Lcom/android/server/am/TaskRecord;->lastActiveTime:J

    .line 367
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->lastDescription:Ljava/lang/CharSequence;

    .line 368
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 369
    move-wide/from16 v0, p21

    iput-wide v0, p0, Lcom/android/server/am/TaskRecord;->mLastTimeMoved:J

    .line 370
    move/from16 v0, p23

    iput-boolean v0, p0, Lcom/android/server/am/TaskRecord;->mNeverRelinquishIdentity:Z

    .line 371
    move-object/from16 v0, p24

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 372
    move/from16 v0, p26

    iput v0, p0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    .line 373
    move/from16 v0, p29

    iput v0, p0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskColor:I

    .line 374
    move/from16 v0, p27

    iput v0, p0, Lcom/android/server/am/TaskRecord;->mPrevAffiliateTaskId:I

    .line 375
    move/from16 v0, p28

    iput v0, p0, Lcom/android/server/am/TaskRecord;->mNextAffiliateTaskId:I

    .line 376
    move/from16 v0, p30

    iput v0, p0, Lcom/android/server/am/TaskRecord;->mCallingUid:I

    .line 377
    move-object/from16 v0, p31

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mCallingPackage:Ljava/lang/String;

    .line 378
    move/from16 v0, p32

    iput v0, p0, Lcom/android/server/am/TaskRecord;->mResizeMode:I

    .line 379
    move/from16 v0, p33

    iput-boolean v0, p0, Lcom/android/server/am/TaskRecord;->mPrivileged:Z

    .line 380
    move/from16 v0, p36

    iput v0, p0, Lcom/android/server/am/TaskRecord;->mMinWidth:I

    .line 381
    move/from16 v0, p37

    iput v0, p0, Lcom/android/server/am/TaskRecord;->mMinHeight:I

    .line 340
    return-void
.end method

.method constructor <init>(Lcom/android/server/am/ActivityManagerService;ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/app/ActivityManager$TaskDescription;Landroid/app/ActivityManager$TaskThumbnailInfo;)V
    .locals 6
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "_taskId"    # I
    .param p3, "info"    # Landroid/content/pm/ActivityInfo;
    .param p4, "_intent"    # Landroid/content/Intent;
    .param p5, "_taskDescription"    # Landroid/app/ActivityManager$TaskDescription;
    .param p6, "thumbnailInfo"    # Landroid/app/ActivityManager$TaskThumbnailInfo;

    .prologue
    const/4 v5, 0x0

    const/4 v2, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 299
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    iput v3, p0, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    .line 198
    iput v2, p0, Lcom/android/server/am/TaskRecord;->mLockTaskUid:I

    .line 202
    new-instance v0, Landroid/app/ActivityManager$TaskDescription;

    invoke-direct {v0}, Landroid/app/ActivityManager$TaskDescription;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 214
    iput-boolean v4, p0, Lcom/android/server/am/TaskRecord;->isPersistable:Z

    .line 220
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/TaskRecord;->mLastTimeMoved:J

    .line 225
    iput v4, p0, Lcom/android/server/am/TaskRecord;->mTaskToReturnTo:I

    .line 228
    iput-boolean v3, p0, Lcom/android/server/am/TaskRecord;->mNeverRelinquishIdentity:Z

    .line 232
    iput-boolean v4, p0, Lcom/android/server/am/TaskRecord;->mReuseTask:Z

    .line 243
    iput v2, p0, Lcom/android/server/am/TaskRecord;->mPrevAffiliateTaskId:I

    .line 245
    iput v2, p0, Lcom/android/server/am/TaskRecord;->mNextAffiliateTaskId:I

    .line 254
    iput-boolean v3, p0, Lcom/android/server/am/TaskRecord;->mFullscreen:Z

    .line 257
    iput-object v5, p0, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    .line 258
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mTmpStableBounds:Landroid/graphics/Rect;

    .line 259
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    .line 260
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mTmpRect:Landroid/graphics/Rect;

    .line 261
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mTmpRect2:Landroid/graphics/Rect;

    .line 266
    iput-object v5, p0, Lcom/android/server/am/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    .line 274
    iput v2, p0, Lcom/android/server/am/TaskRecord;->mLayerRank:I

    .line 276
    sget-object v0, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mOverrideConfig:Landroid/content/res/Configuration;

    .line 301
    iput-object p1, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_task_thumbnail"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 303
    const-string/jumbo v1, ".png"

    .line 302
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mFilename:Ljava/lang/String;

    .line 304
    iget-object v0, p3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/TaskRecord;->userId:I

    .line 305
    new-instance v0, Ljava/io/File;

    iget v1, p0, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-static {v1}, Lcom/android/server/am/TaskPersister;->getUserImagesDir(I)Ljava/io/File;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mFilename:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnailFile:Ljava/io/File;

    .line 306
    iput-object p6, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnailInfo:Landroid/app/ActivityManager$TaskThumbnailInfo;

    .line 307
    iput p2, p0, Lcom/android/server/am/TaskRecord;->taskId:I

    .line 308
    iput p2, p0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    .line 309
    iput-object v5, p0, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 310
    iput-object v5, p0, Lcom/android/server/am/TaskRecord;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 311
    iput-boolean v3, p0, Lcom/android/server/am/TaskRecord;->isAvailable:Z

    .line 312
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 313
    iget-object v0, p3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v0, p0, Lcom/android/server/am/TaskRecord;->mCallingUid:I

    .line 314
    iget-object v0, p3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mCallingPackage:Ljava/lang/String;

    .line 315
    invoke-direct {p0, p4, p3}, Lcom/android/server/am/TaskRecord;->setIntent(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    .line 316
    invoke-direct {p0, p3}, Lcom/android/server/am/TaskRecord;->setMinDimensions(Landroid/content/pm/ActivityInfo;)V

    .line 318
    iput v4, p0, Lcom/android/server/am/TaskRecord;->taskType:I

    .line 319
    iput-boolean v3, p0, Lcom/android/server/am/TaskRecord;->isPersistable:Z

    .line 321
    iget v0, p3, Landroid/content/pm/ActivityInfo;->maxRecents:I

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 322
    invoke-static {}, Landroid/app/ActivityManager;->getMaxAppRecentsLimitStatic()I

    move-result v1

    .line 321
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/TaskRecord;->maxRecents:I

    .line 324
    iput v4, p0, Lcom/android/server/am/TaskRecord;->taskType:I

    .line 325
    iput v3, p0, Lcom/android/server/am/TaskRecord;->mTaskToReturnTo:I

    .line 326
    iput-object p5, p0, Lcom/android/server/am/TaskRecord;->lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 327
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->touchActiveTime()V

    .line 300
    return-void
.end method

.method constructor <init>(Lcom/android/server/am/ActivityManagerService;ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;)V
    .locals 6
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "_taskId"    # I
    .param p3, "info"    # Landroid/content/pm/ActivityInfo;
    .param p4, "_intent"    # Landroid/content/Intent;
    .param p5, "_voiceSession"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p6, "_voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    iput v3, p0, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    .line 198
    iput v2, p0, Lcom/android/server/am/TaskRecord;->mLockTaskUid:I

    .line 202
    new-instance v0, Landroid/app/ActivityManager$TaskDescription;

    invoke-direct {v0}, Landroid/app/ActivityManager$TaskDescription;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 214
    iput-boolean v4, p0, Lcom/android/server/am/TaskRecord;->isPersistable:Z

    .line 220
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/TaskRecord;->mLastTimeMoved:J

    .line 225
    iput v4, p0, Lcom/android/server/am/TaskRecord;->mTaskToReturnTo:I

    .line 228
    iput-boolean v3, p0, Lcom/android/server/am/TaskRecord;->mNeverRelinquishIdentity:Z

    .line 232
    iput-boolean v4, p0, Lcom/android/server/am/TaskRecord;->mReuseTask:Z

    .line 243
    iput v2, p0, Lcom/android/server/am/TaskRecord;->mPrevAffiliateTaskId:I

    .line 245
    iput v2, p0, Lcom/android/server/am/TaskRecord;->mNextAffiliateTaskId:I

    .line 254
    iput-boolean v3, p0, Lcom/android/server/am/TaskRecord;->mFullscreen:Z

    .line 257
    iput-object v5, p0, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    .line 258
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mTmpStableBounds:Landroid/graphics/Rect;

    .line 259
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    .line 260
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mTmpRect:Landroid/graphics/Rect;

    .line 261
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mTmpRect2:Landroid/graphics/Rect;

    .line 266
    iput-object v5, p0, Lcom/android/server/am/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    .line 274
    iput v2, p0, Lcom/android/server/am/TaskRecord;->mLayerRank:I

    .line 276
    sget-object v0, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mOverrideConfig:Landroid/content/res/Configuration;

    .line 280
    iput-object p1, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_task_thumbnail"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 282
    const-string/jumbo v1, ".png"

    .line 281
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mFilename:Ljava/lang/String;

    .line 283
    iget-object v0, p3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/TaskRecord;->userId:I

    .line 284
    new-instance v0, Ljava/io/File;

    iget v1, p0, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-static {v1}, Lcom/android/server/am/TaskPersister;->getUserImagesDir(I)Ljava/io/File;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mFilename:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnailFile:Ljava/io/File;

    .line 285
    new-instance v0, Landroid/app/ActivityManager$TaskThumbnailInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$TaskThumbnailInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnailInfo:Landroid/app/ActivityManager$TaskThumbnailInfo;

    .line 286
    iput p2, p0, Lcom/android/server/am/TaskRecord;->taskId:I

    .line 287
    iput p2, p0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    .line 288
    iput-object p5, p0, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 289
    iput-object p6, p0, Lcom/android/server/am/TaskRecord;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 290
    iput-boolean v3, p0, Lcom/android/server/am/TaskRecord;->isAvailable:Z

    .line 291
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 292
    iget-object v0, p3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v0, p0, Lcom/android/server/am/TaskRecord;->mCallingUid:I

    .line 293
    iget-object v0, p3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mCallingPackage:Ljava/lang/String;

    .line 294
    invoke-direct {p0, p4, p3}, Lcom/android/server/am/TaskRecord;->setIntent(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    .line 295
    invoke-direct {p0, p3}, Lcom/android/server/am/TaskRecord;->setMinDimensions(Landroid/content/pm/ActivityInfo;)V

    .line 296
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->touchActiveTime()V

    .line 279
    return-void
.end method

.method private adjustForMinimalTaskDimensions(Landroid/graphics/Rect;)V
    .locals 7
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    const/4 v6, -0x1

    .line 1413
    if-nez p1, :cond_0

    .line 1414
    return-void

    .line 1416
    :cond_0
    iget v3, p0, Lcom/android/server/am/TaskRecord;->mMinWidth:I

    .line 1417
    .local v3, "minWidth":I
    iget v2, p0, Lcom/android/server/am/TaskRecord;->mMinHeight:I

    .line 1421
    .local v2, "minHeight":I
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget v4, v4, Lcom/android/server/am/ActivityStack;->mStackId:I

    const/4 v5, 0x4

    if-eq v4, v5, :cond_2

    .line 1422
    if-ne v3, v6, :cond_1

    .line 1423
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v3, v4, Lcom/android/server/am/ActivityStackSupervisor;->mDefaultMinSizeOfResizeableTask:I

    .line 1425
    :cond_1
    if-ne v2, v6, :cond_2

    .line 1426
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v2, v4, Lcom/android/server/am/ActivityStackSupervisor;->mDefaultMinSizeOfResizeableTask:I

    .line 1429
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-le v3, v4, :cond_3

    const/4 v1, 0x1

    .line 1430
    .local v1, "adjustWidth":Z
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-le v2, v4, :cond_4

    const/4 v0, 0x1

    .line 1431
    .local v0, "adjustHeight":Z
    :goto_1
    if-nez v1, :cond_5

    move v4, v0

    :goto_2
    if-nez v4, :cond_6

    .line 1432
    return-void

    .line 1429
    .end local v0    # "adjustHeight":Z
    .end local v1    # "adjustWidth":Z
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "adjustWidth":Z
    goto :goto_0

    .line 1430
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "adjustHeight":Z
    goto :goto_1

    .line 1431
    :cond_5
    const/4 v4, 0x1

    goto :goto_2

    .line 1435
    :cond_6
    if-eqz v1, :cond_7

    .line 1436
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    if-eqz v4, :cond_9

    iget v4, p1, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    if-ne v4, v5, :cond_9

    .line 1437
    iget v4, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v3

    iput v4, p1, Landroid/graphics/Rect;->left:I

    .line 1444
    :cond_7
    :goto_3
    if-eqz v0, :cond_8

    .line 1445
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    if-eqz v4, :cond_a

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v5, p0, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    if-ne v4, v5, :cond_a

    .line 1446
    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v2

    iput v4, p1, Landroid/graphics/Rect;->top:I

    .line 1412
    :cond_8
    :goto_4
    return-void

    .line 1441
    :cond_9
    iget v4, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v3

    iput v4, p1, Landroid/graphics/Rect;->right:I

    goto :goto_3

    .line 1450
    :cond_a
    iget v4, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v2

    iput v4, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_4
.end method

.method private calculateOverrideConfig(Landroid/graphics/Rect;Landroid/graphics/Rect;ZZ)Landroid/content/res/Configuration;
    .locals 10
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .param p2, "insetBounds"    # Landroid/graphics/Rect;
    .param p3, "overrideWidth"    # Z
    .param p4, "overrideHeight"    # Z

    .prologue
    .line 1532
    iget-object v8, p0, Lcom/android/server/am/TaskRecord;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    invoke-virtual {v8, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1533
    iget-object v8, p0, Lcom/android/server/am/TaskRecord;->mTmpStableBounds:Landroid/graphics/Rect;

    invoke-virtual {v8, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1535
    iget-object v9, p0, Lcom/android/server/am/TaskRecord;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    if-eqz p2, :cond_0

    move-object v8, p2

    .line 1534
    :goto_0
    invoke-direct {p0, v9, v8, p3, p4}, Lcom/android/server/am/TaskRecord;->subtractNonDecorInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;ZZ)V

    .line 1538
    iget-object v9, p0, Lcom/android/server/am/TaskRecord;->mTmpStableBounds:Landroid/graphics/Rect;

    if-eqz p2, :cond_1

    move-object v8, p2

    .line 1537
    :goto_1
    invoke-direct {p0, v9, v8, p3, p4}, Lcom/android/server/am/TaskRecord;->subtractStableInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;ZZ)V

    .line 1543
    iget-object v8, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v8, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    .line 1544
    .local v5, "serviceConfig":Landroid/content/res/Configuration;
    new-instance v2, Landroid/content/res/Configuration;

    sget-object v8, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    invoke-direct {v2, v8}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 1546
    .local v2, "config":Landroid/content/res/Configuration;
    iget v8, v5, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v8, v8

    const v9, 0x3bcccccd    # 0.00625f

    mul-float v3, v8, v9

    .line 1548
    .local v3, "density":F
    iget-object v8, p0, Lcom/android/server/am/TaskRecord;->mTmpStableBounds:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v3

    float-to-int v8, v8

    iget v9, v5, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 1547
    iput v8, v2, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 1550
    iget-object v8, p0, Lcom/android/server/am/TaskRecord;->mTmpStableBounds:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v3

    float-to-int v8, v8

    iget v9, v5, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 1549
    iput v8, v2, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 1553
    iget v8, v2, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v9, v2, Landroid/content/res/Configuration;->screenHeightDp:I

    if-gt v8, v9, :cond_2

    .line 1554
    const/4 v8, 0x1

    .line 1553
    :goto_2
    iput v8, v2, Landroid/content/res/Configuration;->orientation:I

    .line 1560
    iget v8, v5, Landroid/content/res/Configuration;->fontScale:F

    iput v8, v2, Landroid/content/res/Configuration;->fontScale:F

    .line 1565
    iget-object v8, p0, Lcom/android/server/am/TaskRecord;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v3

    float-to-int v1, v8

    .line 1566
    .local v1, "compatScreenWidthDp":I
    iget-object v8, p0, Lcom/android/server/am/TaskRecord;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v3

    float-to-int v0, v8

    .line 1567
    .local v0, "compatScreenHeightDp":I
    iget v8, v5, Landroid/content/res/Configuration;->screenLayout:I

    invoke-static {v8}, Landroid/content/res/Configuration;->resetScreenLayout(I)I

    move-result v7

    .line 1568
    .local v7, "sl":I
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1569
    .local v4, "longSize":I
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 1570
    .local v6, "shortSize":I
    invoke-static {v7, v4, v6}, Landroid/content/res/Configuration;->reduceScreenLayout(III)I

    move-result v8

    iput v8, v2, Landroid/content/res/Configuration;->screenLayout:I

    .line 1572
    iget-object v8, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 1573
    if-eqz p2, :cond_3

    .line 1572
    .end local p2    # "insetBounds":Landroid/graphics/Rect;
    :goto_3
    invoke-virtual {v8, p2}, Lcom/android/server/wm/WindowManagerService;->getSmallestWidthForTaskBounds(Landroid/graphics/Rect;)I

    move-result v8

    iput v8, v2, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 1574
    return-object v2

    .end local v0    # "compatScreenHeightDp":I
    .end local v1    # "compatScreenWidthDp":I
    .end local v2    # "config":Landroid/content/res/Configuration;
    .end local v3    # "density":F
    .end local v4    # "longSize":I
    .end local v5    # "serviceConfig":Landroid/content/res/Configuration;
    .end local v6    # "shortSize":I
    .end local v7    # "sl":I
    .restart local p2    # "insetBounds":Landroid/graphics/Rect;
    :cond_0
    move-object v8, p1

    .line 1535
    goto/16 :goto_0

    :cond_1
    move-object v8, p1

    .line 1538
    goto :goto_1

    .line 1555
    .restart local v2    # "config":Landroid/content/res/Configuration;
    .restart local v3    # "density":F
    .restart local v5    # "serviceConfig":Landroid/content/res/Configuration;
    :cond_2
    const/4 v8, 0x2

    goto :goto_2

    .restart local v0    # "compatScreenHeightDp":I
    .restart local v1    # "compatScreenWidthDp":I
    .restart local v4    # "longSize":I
    .restart local v6    # "shortSize":I
    .restart local v7    # "sl":I
    :cond_3
    move-object p2, p1

    .line 1573
    goto :goto_3
.end method

.method static restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/server/am/TaskRecord;
    .locals 58
    .param p0, "in"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "stackSupervisor"    # Lcom/android/server/am/ActivityStackSupervisor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 1227
    const/4 v8, 0x0

    .line 1228
    .local v8, "intent":Landroid/content/Intent;
    const/4 v9, 0x0

    .line 1229
    .local v9, "affinityIntent":Landroid/content/Intent;
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 1230
    .local v21, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    const/4 v12, 0x0

    .line 1231
    .local v12, "realActivity":Landroid/content/ComponentName;
    const/16 v39, 0x0

    .line 1232
    .local v39, "realActivitySuspended":Z
    const/4 v13, 0x0

    .line 1233
    .local v13, "origActivity":Landroid/content/ComponentName;
    const/4 v10, 0x0

    .line 1234
    .local v10, "affinity":Ljava/lang/String;
    const/4 v11, 0x0

    .line 1235
    .local v11, "rootAffinity":Ljava/lang/String;
    const/16 v52, 0x0

    .line 1236
    .local v52, "hasRootAffinity":Z
    const/4 v14, 0x0

    .line 1237
    .local v14, "rootHasReset":Z
    const/4 v15, 0x0

    .line 1238
    .local v15, "autoRemoveRecents":Z
    const/16 v16, 0x0

    .line 1239
    .local v16, "askedCompatMode":Z
    const/16 v17, 0x0

    .line 1240
    .local v17, "taskType":I
    const/16 v18, 0x0

    .line 1241
    .local v18, "userId":I
    const/16 v40, 0x1

    .line 1242
    .local v40, "userSetupComplete":Z
    const/16 v19, -0x1

    .line 1243
    .local v19, "effectiveUid":I
    const/16 v20, 0x0

    .line 1244
    .local v20, "lastDescription":Ljava/lang/String;
    const-wide/16 v22, -0x1

    .line 1245
    .local v22, "firstActiveTime":J
    const-wide/16 v24, -0x1

    .line 1246
    .local v24, "lastActiveTime":J
    const-wide/16 v26, 0x0

    .line 1247
    .local v26, "lastTimeOnTop":J
    const/16 v28, 0x1

    .line 1248
    .local v28, "neverRelinquishIdentity":Z
    const/4 v7, -0x1

    .line 1249
    .local v7, "taskId":I
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v54

    .line 1250
    .local v54, "outerDepth":I
    new-instance v29, Landroid/app/ActivityManager$TaskDescription;

    invoke-direct/range {v29 .. v29}, Landroid/app/ActivityManager$TaskDescription;-><init>()V

    .line 1251
    .local v29, "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    new-instance v30, Landroid/app/ActivityManager$TaskThumbnailInfo;

    invoke-direct/range {v30 .. v30}, Landroid/app/ActivityManager$TaskThumbnailInfo;-><init>()V

    .line 1252
    .local v30, "thumbnailInfo":Landroid/app/ActivityManager$TaskThumbnailInfo;
    const/16 v31, -0x1

    .line 1253
    .local v31, "taskAffiliation":I
    const/16 v34, 0x0

    .line 1254
    .local v34, "taskAffiliationColor":I
    const/16 v32, -0x1

    .line 1255
    .local v32, "prevTaskId":I
    const/16 v33, -0x1

    .line 1256
    .local v33, "nextTaskId":I
    const/16 v35, -0x1

    .line 1257
    .local v35, "callingUid":I
    const-string/jumbo v36, ""

    .line 1258
    .local v36, "callingPackage":Ljava/lang/String;
    const/16 v37, 0x4

    .line 1259
    .local v37, "resizeMode":I
    const/16 v38, 0x0

    .line 1260
    .local v38, "privileged":Z
    const/16 v48, 0x0

    .line 1261
    .local v48, "bounds":Landroid/graphics/Rect;
    const/16 v41, -0x1

    .line 1262
    .local v41, "minWidth":I
    const/16 v42, -0x1

    .line 1264
    .local v42, "minHeight":I
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v6

    add-int/lit8 v46, v6, -0x1

    .end local v10    # "affinity":Ljava/lang/String;
    .end local v11    # "rootAffinity":Ljava/lang/String;
    .end local v12    # "realActivity":Landroid/content/ComponentName;
    .end local v13    # "origActivity":Landroid/content/ComponentName;
    .end local v14    # "rootHasReset":Z
    .end local v15    # "autoRemoveRecents":Z
    .end local v16    # "askedCompatMode":Z
    .end local v20    # "lastDescription":Ljava/lang/String;
    .end local v28    # "neverRelinquishIdentity":Z
    .end local v38    # "privileged":Z
    .end local v39    # "realActivitySuspended":Z
    .end local v40    # "userSetupComplete":Z
    .end local v48    # "bounds":Landroid/graphics/Rect;
    .local v46, "attrNdx":I
    :goto_0
    if-ltz v46, :cond_21

    .line 1265
    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v45

    .line 1266
    .local v45, "attrName":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v47

    .line 1269
    .local v47, "attrValue":Ljava/lang/String;
    const-string/jumbo v6, "task_id"

    move-object/from16 v0, v45

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1270
    const/4 v6, -0x1

    if-ne v7, v6, :cond_0

    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 1264
    :cond_0
    :goto_1
    add-int/lit8 v46, v46, -0x1

    goto :goto_0

    .line 1271
    :cond_1
    const-string/jumbo v6, "real_activity"

    move-object/from16 v0, v45

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1272
    invoke-static/range {v47 .. v47}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v12

    .local v12, "realActivity":Landroid/content/ComponentName;
    goto :goto_1

    .line 1273
    .end local v12    # "realActivity":Landroid/content/ComponentName;
    :cond_2
    const-string/jumbo v6, "real_activity_suspended"

    move-object/from16 v0, v45

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1274
    invoke-static/range {v47 .. v47}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v39

    .local v39, "realActivitySuspended":Z
    goto :goto_1

    .line 1275
    .end local v39    # "realActivitySuspended":Z
    :cond_3
    const-string/jumbo v6, "orig_activity"

    move-object/from16 v0, v45

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1276
    invoke-static/range {v47 .. v47}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v13

    .local v13, "origActivity":Landroid/content/ComponentName;
    goto :goto_1

    .line 1277
    .end local v13    # "origActivity":Landroid/content/ComponentName;
    :cond_4
    const-string/jumbo v6, "affinity"

    move-object/from16 v0, v45

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1278
    move-object/from16 v10, v47

    .local v10, "affinity":Ljava/lang/String;
    goto :goto_1

    .line 1279
    .end local v10    # "affinity":Ljava/lang/String;
    :cond_5
    const-string/jumbo v6, "root_affinity"

    move-object/from16 v0, v45

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1280
    move-object/from16 v11, v47

    .line 1281
    .local v11, "rootAffinity":Ljava/lang/String;
    const/16 v52, 0x1

    goto :goto_1

    .line 1282
    .end local v11    # "rootAffinity":Ljava/lang/String;
    :cond_6
    const-string/jumbo v6, "root_has_reset"

    move-object/from16 v0, v45

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1283
    invoke-static/range {v47 .. v47}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    .local v14, "rootHasReset":Z
    goto :goto_1

    .line 1284
    .end local v14    # "rootHasReset":Z
    :cond_7
    const-string/jumbo v6, "auto_remove_recents"

    move-object/from16 v0, v45

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1285
    invoke-static/range {v47 .. v47}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    .local v15, "autoRemoveRecents":Z
    goto :goto_1

    .line 1286
    .end local v15    # "autoRemoveRecents":Z
    :cond_8
    const-string/jumbo v6, "asked_compat_mode"

    move-object/from16 v0, v45

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 1287
    invoke-static/range {v47 .. v47}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v16

    .local v16, "askedCompatMode":Z
    goto/16 :goto_1

    .line 1288
    .end local v16    # "askedCompatMode":Z
    :cond_9
    const-string/jumbo v6, "user_id"

    move-object/from16 v0, v45

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 1289
    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    goto/16 :goto_1

    .line 1290
    :cond_a
    const-string/jumbo v6, "user_setup_complete"

    move-object/from16 v0, v45

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 1291
    invoke-static/range {v47 .. v47}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v40

    .local v40, "userSetupComplete":Z
    goto/16 :goto_1

    .line 1292
    .end local v40    # "userSetupComplete":Z
    :cond_b
    const-string/jumbo v6, "effective_uid"

    move-object/from16 v0, v45

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 1293
    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    goto/16 :goto_1

    .line 1294
    :cond_c
    const-string/jumbo v6, "task_type"

    move-object/from16 v0, v45

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 1295
    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    goto/16 :goto_1

    .line 1296
    :cond_d
    const-string/jumbo v6, "first_active_time"

    move-object/from16 v0, v45

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 1297
    invoke-static/range {v47 .. v47}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    goto/16 :goto_1

    .line 1298
    :cond_e
    const-string/jumbo v6, "last_active_time"

    move-object/from16 v0, v45

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 1299
    invoke-static/range {v47 .. v47}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    goto/16 :goto_1

    .line 1300
    :cond_f
    const-string/jumbo v6, "last_description"

    move-object/from16 v0, v45

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 1301
    move-object/from16 v20, v47

    .local v20, "lastDescription":Ljava/lang/String;
    goto/16 :goto_1

    .line 1302
    .end local v20    # "lastDescription":Ljava/lang/String;
    :cond_10
    const-string/jumbo v6, "last_time_moved"

    move-object/from16 v0, v45

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 1303
    invoke-static/range {v47 .. v47}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    goto/16 :goto_1

    .line 1304
    :cond_11
    const-string/jumbo v6, "never_relinquish_identity"

    move-object/from16 v0, v45

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 1305
    invoke-static/range {v47 .. v47}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v28

    .local v28, "neverRelinquishIdentity":Z
    goto/16 :goto_1

    .line 1306
    .end local v28    # "neverRelinquishIdentity":Z
    :cond_12
    const-string/jumbo v6, "task_thumbnailinfo_"

    move-object/from16 v0, v45

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 1307
    move-object/from16 v0, v30

    move-object/from16 v1, v45

    move-object/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManager$TaskThumbnailInfo;->restoreFromXml(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1308
    :cond_13
    const-string/jumbo v6, "task_description_"

    move-object/from16 v0, v45

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_14

    .line 1309
    move-object/from16 v0, v29

    move-object/from16 v1, v45

    move-object/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManager$TaskDescription;->restoreFromXml(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1310
    :cond_14
    const-string/jumbo v6, "task_affiliation"

    move-object/from16 v0, v45

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 1311
    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v31

    goto/16 :goto_1

    .line 1312
    :cond_15
    const-string/jumbo v6, "prev_affiliation"

    move-object/from16 v0, v45

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_16

    .line 1313
    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v32

    goto/16 :goto_1

    .line 1314
    :cond_16
    const-string/jumbo v6, "next_affiliation"

    move-object/from16 v0, v45

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 1315
    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v33

    goto/16 :goto_1

    .line 1316
    :cond_17
    const-string/jumbo v6, "task_affiliation_color"

    move-object/from16 v0, v45

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_18

    .line 1317
    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v34

    goto/16 :goto_1

    .line 1318
    :cond_18
    const-string/jumbo v6, "calling_uid"

    move-object/from16 v0, v45

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_19

    .line 1319
    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v35

    goto/16 :goto_1

    .line 1320
    :cond_19
    const-string/jumbo v6, "calling_package"

    move-object/from16 v0, v45

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 1321
    move-object/from16 v36, v47

    goto/16 :goto_1

    .line 1322
    :cond_1a
    const-string/jumbo v6, "resize_mode"

    move-object/from16 v0, v45

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b

    .line 1323
    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v37

    .line 1324
    const/4 v6, 0x1

    move/from16 v0, v37

    if-ne v0, v6, :cond_0

    .line 1325
    const/16 v37, 0x4

    goto/16 :goto_1

    .line 1326
    :cond_1b
    const-string/jumbo v6, "privileged"

    move-object/from16 v0, v45

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1c

    .line 1327
    invoke-static/range {v47 .. v47}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v38

    .local v38, "privileged":Z
    goto/16 :goto_1

    .line 1328
    .end local v38    # "privileged":Z
    :cond_1c
    const-string/jumbo v6, "non_fullscreen_bounds"

    move-object/from16 v0, v45

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1d

    .line 1329
    invoke-static/range {v47 .. v47}, Landroid/graphics/Rect;->unflattenFromString(Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object v48

    .local v48, "bounds":Landroid/graphics/Rect;
    goto/16 :goto_1

    .line 1330
    .end local v48    # "bounds":Landroid/graphics/Rect;
    :cond_1d
    const-string/jumbo v6, "min_width"

    move-object/from16 v0, v45

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1e

    .line 1331
    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v41

    goto/16 :goto_1

    .line 1332
    :cond_1e
    const-string/jumbo v6, "min_height"

    move-object/from16 v0, v45

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1f

    .line 1333
    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v42

    goto/16 :goto_1

    .line 1335
    :cond_1f
    sget-object v6, Lcom/android/server/am/TaskRecord;->TAG:Ljava/lang/String;

    new-instance v56, Ljava/lang/StringBuilder;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v57, "TaskRecord: Unknown attribute="

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    move-object/from16 v0, v56

    invoke-static {v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1350
    .end local v8    # "intent":Landroid/content/Intent;
    .end local v9    # "affinityIntent":Landroid/content/Intent;
    .end local v45    # "attrName":Ljava/lang/String;
    .end local v47    # "attrValue":Ljava/lang/String;
    .local v51, "event":I
    .local v53, "name":Ljava/lang/String;
    :cond_20
    const-string/jumbo v6, "activity"

    move-object/from16 v0, v53

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_24

    .line 1351
    invoke-static/range {p0 .. p1}, Lcom/android/server/am/ActivityRecord;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    .line 1354
    .local v4, "activity":Lcom/android/server/am/ActivityRecord;
    if-eqz v4, :cond_21

    .line 1355
    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1340
    .end local v4    # "activity":Lcom/android/server/am/ActivityRecord;
    .end local v51    # "event":I
    .end local v53    # "name":Ljava/lang/String;
    :cond_21
    :goto_2
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v51

    .restart local v51    # "event":I
    const/4 v6, 0x1

    move/from16 v0, v51

    if-eq v0, v6, :cond_25

    .line 1341
    const/4 v6, 0x3

    move/from16 v0, v51

    if-ne v0, v6, :cond_22

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    move/from16 v0, v54

    if-lt v6, v0, :cond_25

    .line 1342
    :cond_22
    const/4 v6, 0x2

    move/from16 v0, v51

    if-ne v0, v6, :cond_21

    .line 1343
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v53

    .line 1346
    .restart local v53    # "name":Ljava/lang/String;
    const-string/jumbo v6, "affinity_intent"

    move-object/from16 v0, v53

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_23

    .line 1347
    invoke-static/range {p0 .. p0}, Landroid/content/Intent;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/Intent;

    move-result-object v9

    .local v9, "affinityIntent":Landroid/content/Intent;
    goto :goto_2

    .line 1348
    .end local v9    # "affinityIntent":Landroid/content/Intent;
    :cond_23
    const-string/jumbo v6, "intent"

    move-object/from16 v0, v53

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_20

    .line 1349
    invoke-static/range {p0 .. p0}, Landroid/content/Intent;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/Intent;

    move-result-object v8

    .local v8, "intent":Landroid/content/Intent;
    goto :goto_2

    .line 1358
    .end local v8    # "intent":Landroid/content/Intent;
    :cond_24
    sget-object v6, Lcom/android/server/am/TaskRecord;->TAG:Ljava/lang/String;

    new-instance v56, Ljava/lang/StringBuilder;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v57, "restoreTask: Unexpected name="

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    move-object/from16 v0, v56

    invoke-static {v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1359
    invoke-static/range {p0 .. p0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_2

    .line 1363
    .end local v53    # "name":Ljava/lang/String;
    :cond_25
    if-nez v52, :cond_29

    .line 1364
    move-object v11, v10

    .line 1368
    :cond_26
    :goto_3
    if-gtz v19, :cond_28

    .line 1369
    if-eqz v8, :cond_2a

    move-object/from16 v49, v8

    .line 1370
    .local v49, "checkIntent":Landroid/content/Intent;
    :goto_4
    const/16 v19, 0x0

    .line 1371
    if-eqz v49, :cond_27

    .line 1372
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v55

    .line 1375
    .local v55, "pm":Landroid/content/pm/IPackageManager;
    :try_start_0
    invoke-virtual/range {v49 .. v49}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 1376
    const/16 v56, 0x2200

    .line 1374
    move-object/from16 v0, v55

    move/from16 v1, v56

    move/from16 v2, v18

    invoke-interface {v0, v6, v1, v2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v44

    .line 1378
    .local v44, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v44, :cond_27

    .line 1379
    move-object/from16 v0, v44

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v19, v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1384
    .end local v44    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v55    # "pm":Landroid/content/pm/IPackageManager;
    :cond_27
    :goto_5
    sget-object v6, Lcom/android/server/am/TaskRecord;->TAG:Ljava/lang/String;

    new-instance v56, Ljava/lang/StringBuilder;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v57, "Updating task #"

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v56

    const-string/jumbo v57, " for "

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v56

    .line 1385
    const-string/jumbo v57, ": effectiveUid="

    .line 1384
    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    move-object/from16 v0, v56

    invoke-static {v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1388
    .end local v49    # "checkIntent":Landroid/content/Intent;
    :cond_28
    new-instance v5, Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-direct/range {v5 .. v42}, Lcom/android/server/am/TaskRecord;-><init>(Lcom/android/server/am/ActivityManagerService;ILandroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/content/ComponentName;ZZZIIILjava/lang/String;Ljava/util/ArrayList;JJJZLandroid/app/ActivityManager$TaskDescription;Landroid/app/ActivityManager$TaskThumbnailInfo;IIIIILjava/lang/String;IZZZII)V

    .line 1395
    .local v5, "task":Lcom/android/server/am/TaskRecord;
    move-object/from16 v0, v48

    invoke-virtual {v5, v0}, Lcom/android/server/am/TaskRecord;->updateOverrideConfiguration(Landroid/graphics/Rect;)Landroid/content/res/Configuration;

    .line 1397
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v43, v6, -0x1

    .local v43, "activityNdx":I
    :goto_6
    if-ltz v43, :cond_2b

    .line 1398
    move-object/from16 v0, v21

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ActivityRecord;

    iput-object v5, v6, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 1397
    add-int/lit8 v43, v43, -0x1

    goto :goto_6

    .line 1365
    .end local v5    # "task":Lcom/android/server/am/TaskRecord;
    .end local v43    # "activityNdx":I
    :cond_29
    const-string/jumbo v6, "@"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_26

    .line 1366
    const/4 v11, 0x0

    .local v11, "rootAffinity":Ljava/lang/String;
    goto/16 :goto_3

    .end local v11    # "rootAffinity":Ljava/lang/String;
    :cond_2a
    move-object/from16 v49, v9

    .line 1369
    goto/16 :goto_4

    .line 1402
    .restart local v5    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v43    # "activityNdx":I
    :cond_2b
    iget v6, v5, Lcom/android/server/am/TaskRecord;->mResizeMode:I

    if-nez v6, :cond_2c

    if-eqz v12, :cond_2c

    .line 1403
    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/am/ActivityManagerServiceInjector;->inResizeWhiteList(Ljava/lang/String;)Z

    move-result v6

    .line 1402
    if-eqz v6, :cond_2c

    .line 1404
    const/4 v6, 0x4

    iput v6, v5, Lcom/android/server/am/TaskRecord;->mResizeMode:I

    .line 1408
    :cond_2c
    sget-boolean v6, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v6, :cond_2d

    sget-object v6, Lcom/android/server/am/TaskRecord;->TAG_RECENTS:Ljava/lang/String;

    new-instance v56, Ljava/lang/StringBuilder;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v57, "Restored task="

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    move-object/from16 v0, v56

    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1409
    :cond_2d
    return-object v5

    .line 1381
    .end local v5    # "task":Lcom/android/server/am/TaskRecord;
    .end local v43    # "activityNdx":I
    .restart local v49    # "checkIntent":Landroid/content/Intent;
    .restart local v55    # "pm":Landroid/content/pm/IPackageManager;
    :catch_0
    move-exception v50

    .local v50, "e":Landroid/os/RemoteException;
    goto/16 :goto_5
.end method

.method private setIntent(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V
    .locals 10
    .param p1, "_intent"    # Landroid/content/Intent;
    .param p2, "info"    # Landroid/content/pm/ActivityInfo;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 404
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-nez v4, :cond_8

    .line 406
    iget v4, p2, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v4, v4, 0x1000

    if-nez v4, :cond_7

    move v4, v5

    .line 405
    :goto_0
    iput-boolean v4, p0, Lcom/android/server/am/TaskRecord;->mNeverRelinquishIdentity:Z

    .line 411
    :cond_0
    iget-object v4, p2, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    .line 412
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-nez v4, :cond_1

    .line 416
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    .line 418
    :cond_1
    iget-object v4, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v4, p0, Lcom/android/server/am/TaskRecord;->effectiveUid:I

    .line 419
    iput-object v7, p0, Lcom/android/server/am/TaskRecord;->stringName:Ljava/lang/String;

    .line 421
    iget-object v4, p2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    if-nez v4, :cond_a

    .line 422
    if-eqz p1, :cond_3

    .line 426
    invoke-virtual {p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v4

    if-nez v4, :cond_2

    invoke-virtual {p1}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 427
    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 428
    .end local p1    # "_intent":Landroid/content/Intent;
    .local v0, "_intent":Landroid/content/Intent;
    invoke-virtual {v0, v7}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    .line 429
    invoke-virtual {v0, v7}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    move-object p1, v0

    .line 432
    .end local v0    # "_intent":Landroid/content/Intent;
    .restart local p1    # "_intent":Landroid/content/Intent;
    :cond_3
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v4, :cond_4

    sget-object v4, Lcom/android/server/am/TaskRecord;->TAG_TASKS:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Setting Intent of "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    :cond_4
    iput-object p1, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    .line 434
    if-eqz p1, :cond_9

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    :goto_1
    iput-object v4, p0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    .line 435
    iput-object v7, p0, Lcom/android/server/am/TaskRecord;->origActivity:Landroid/content/ComponentName;

    .line 456
    :goto_2
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-nez v4, :cond_d

    move v1, v6

    .line 457
    .local v1, "intentFlags":I
    :goto_3
    const/high16 v4, 0x200000

    and-int/2addr v4, v1

    if-eqz v4, :cond_5

    .line 460
    iput-boolean v5, p0, Lcom/android/server/am/TaskRecord;->rootWasReset:Z

    .line 462
    :cond_5
    iget-object v4, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    iput v4, p0, Lcom/android/server/am/TaskRecord;->userId:I

    .line 463
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 464
    const-string/jumbo v7, "user_setup_complete"

    iget v8, p0, Lcom/android/server/am/TaskRecord;->userId:I

    .line 463
    invoke-static {v4, v7, v6, v8}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-eqz v4, :cond_e

    move v4, v5

    :goto_4
    iput-boolean v4, p0, Lcom/android/server/am/TaskRecord;->mUserSetupComplete:Z

    .line 465
    iget v4, p2, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v4, v4, 0x2000

    if-eqz v4, :cond_f

    .line 467
    iput-boolean v5, p0, Lcom/android/server/am/TaskRecord;->autoRemoveRecents:Z

    .line 481
    :goto_5
    iget v4, p2, Landroid/content/pm/ActivityInfo;->resizeMode:I

    iput v4, p0, Lcom/android/server/am/TaskRecord;->mResizeMode:I

    .line 483
    iget v4, p0, Lcom/android/server/am/TaskRecord;->mResizeMode:I

    if-nez v4, :cond_6

    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    if-eqz v4, :cond_6

    .line 484
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/am/ActivityManagerServiceInjector;->inResizeWhiteList(Ljava/lang/String;)Z

    move-result v4

    .line 483
    if-eqz v4, :cond_6

    .line 485
    const/4 v4, 0x4

    iput v4, p0, Lcom/android/server/am/TaskRecord;->mResizeMode:I

    .line 488
    :cond_6
    iget v4, p2, Landroid/content/pm/ActivityInfo;->lockTaskLaunchMode:I

    iput v4, p0, Lcom/android/server/am/TaskRecord;->mLockTaskMode:I

    .line 489
    iget-object v4, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_12

    :goto_6
    iput-boolean v5, p0, Lcom/android/server/am/TaskRecord;->mPrivileged:Z

    .line 490
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->setLockTaskAuth()V

    .line 403
    return-void

    .end local v1    # "intentFlags":I
    :cond_7
    move v4, v6

    .line 406
    goto/16 :goto_0

    .line 407
    :cond_8
    iget-boolean v4, p0, Lcom/android/server/am/TaskRecord;->mNeverRelinquishIdentity:Z

    if-eqz v4, :cond_0

    .line 408
    return-void

    :cond_9
    move-object v4, v7

    .line 434
    goto :goto_1

    .line 437
    :cond_a
    new-instance v2, Landroid/content/ComponentName;

    .line 438
    iget-object v4, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v8, p2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    .line 437
    invoke-direct {v2, v4, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    .local v2, "targetComponent":Landroid/content/ComponentName;
    if-eqz p1, :cond_c

    .line 440
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 441
    .local v3, "targetIntent":Landroid/content/Intent;
    invoke-virtual {v3, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 442
    invoke-virtual {v3, v7}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    .line 443
    invoke-virtual {v3, v7}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 444
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v4, :cond_b

    sget-object v4, Lcom/android/server/am/TaskRecord;->TAG_TASKS:Ljava/lang/String;

    .line 445
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Setting Intent of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " to target "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 444
    invoke-static {v4, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    :cond_b
    iput-object v3, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    .line 447
    iput-object v2, p0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    .line 448
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/am/TaskRecord;->origActivity:Landroid/content/ComponentName;

    goto/16 :goto_2

    .line 450
    .end local v3    # "targetIntent":Landroid/content/Intent;
    :cond_c
    iput-object v7, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    .line 451
    iput-object v2, p0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    .line 452
    new-instance v4, Landroid/content/ComponentName;

    iget-object v7, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v8, p2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/server/am/TaskRecord;->origActivity:Landroid/content/ComponentName;

    goto/16 :goto_2

    .line 456
    .end local v2    # "targetComponent":Landroid/content/ComponentName;
    :cond_d
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getFlags()I

    move-result v1

    goto/16 :goto_3

    .restart local v1    # "intentFlags":I
    :cond_e
    move v4, v6

    .line 463
    goto/16 :goto_4

    .line 468
    :cond_f
    const v4, 0x82000

    and-int/2addr v4, v1

    .line 469
    const/high16 v7, 0x80000

    .line 468
    if-ne v4, v7, :cond_11

    .line 473
    iget v4, p2, Landroid/content/pm/ActivityInfo;->documentLaunchMode:I

    if-eqz v4, :cond_10

    .line 474
    iput-boolean v6, p0, Lcom/android/server/am/TaskRecord;->autoRemoveRecents:Z

    goto/16 :goto_5

    .line 476
    :cond_10
    iput-boolean v5, p0, Lcom/android/server/am/TaskRecord;->autoRemoveRecents:Z

    goto/16 :goto_5

    .line 479
    :cond_11
    iput-boolean v6, p0, Lcom/android/server/am/TaskRecord;->autoRemoveRecents:Z

    goto/16 :goto_5

    :cond_12
    move v5, v6

    .line 489
    goto/16 :goto_6
.end method

.method private setLastThumbnailLocked(Landroid/graphics/Bitmap;III)Z
    .locals 2
    .param p1, "thumbnail"    # Landroid/graphics/Bitmap;
    .param p2, "taskWidth"    # I
    .param p3, "taskHeight"    # I
    .param p4, "screenOrientation"    # I

    .prologue
    .line 610
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnail:Landroid/graphics/Bitmap;

    if-eq v0, p1, :cond_2

    .line 611
    iput-object p1, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnail:Landroid/graphics/Bitmap;

    .line 612
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnailInfo:Landroid/app/ActivityManager$TaskThumbnailInfo;

    iput p2, v0, Landroid/app/ActivityManager$TaskThumbnailInfo;->taskWidth:I

    .line 613
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnailInfo:Landroid/app/ActivityManager$TaskThumbnailInfo;

    iput p3, v0, Landroid/app/ActivityManager$TaskThumbnailInfo;->taskHeight:I

    .line 614
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnailInfo:Landroid/app/ActivityManager$TaskThumbnailInfo;

    iput p4, v0, Landroid/app/ActivityManager$TaskThumbnailInfo;->screenOrientation:I

    .line 615
    if-nez p1, :cond_1

    .line 616
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnailFile:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 617
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnailFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 622
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 620
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnailFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/am/RecentTasks;->saveImage(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    goto :goto_0

    .line 624
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private setMinDimensions(Landroid/content/pm/ActivityInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;

    .prologue
    const/4 v1, -0x1

    .line 495
    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    if-eqz v0, :cond_0

    .line 496
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    iget v0, v0, Landroid/content/pm/ActivityInfo$WindowLayout;->minWidth:I

    iput v0, p0, Lcom/android/server/am/TaskRecord;->mMinWidth:I

    .line 497
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    iget v0, v0, Landroid/content/pm/ActivityInfo$WindowLayout;->minHeight:I

    iput v0, p0, Lcom/android/server/am/TaskRecord;->mMinHeight:I

    .line 494
    :goto_0
    return-void

    .line 499
    :cond_0
    iput v1, p0, Lcom/android/server/am/TaskRecord;->mMinWidth:I

    .line 500
    iput v1, p0, Lcom/android/server/am/TaskRecord;->mMinHeight:I

    goto :goto_0
.end method

.method private subtractNonDecorInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;ZZ)V
    .locals 6
    .param p1, "inOutBounds"    # Landroid/graphics/Rect;
    .param p2, "inInsetBounds"    # Landroid/graphics/Rect;
    .param p3, "overrideWidth"    # Z
    .param p4, "overrideHeight"    # Z

    .prologue
    .line 1510
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v4, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1511
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, p0, Lcom/android/server/am/TaskRecord;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowManagerService;->subtractNonDecorInsets(Landroid/graphics/Rect;)V

    .line 1512
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mTmpRect2:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget v5, p2, Landroid/graphics/Rect;->left:I

    sub-int v1, v4, v5

    .line 1513
    .local v1, "leftInset":I
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mTmpRect2:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget v5, p2, Landroid/graphics/Rect;->top:I

    sub-int v3, v4, v5

    .line 1514
    .local v3, "topInset":I
    if-eqz p3, :cond_0

    const/4 v2, 0x0

    .line 1515
    .local v2, "rightInset":I
    :goto_0
    if-eqz p4, :cond_1

    const/4 v0, 0x0

    .line 1516
    .local v0, "bottomInset":I
    :goto_1
    invoke-virtual {p1, v1, v3, v2, v0}, Landroid/graphics/Rect;->inset(IIII)V

    .line 1509
    return-void

    .line 1514
    .end local v0    # "bottomInset":I
    .end local v2    # "rightInset":I
    :cond_0
    iget v4, p2, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Lcom/android/server/am/TaskRecord;->mTmpRect2:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int v2, v4, v5

    .restart local v2    # "rightInset":I
    goto :goto_0

    .line 1515
    :cond_1
    iget v4, p2, Landroid/graphics/Rect;->bottom:I

    iget-object v5, p0, Lcom/android/server/am/TaskRecord;->mTmpRect2:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v4, v5

    goto :goto_1
.end method

.method private subtractStableInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;ZZ)V
    .locals 6
    .param p1, "inOutBounds"    # Landroid/graphics/Rect;
    .param p2, "inInsetBounds"    # Landroid/graphics/Rect;
    .param p3, "overrideWidth"    # Z
    .param p4, "overrideHeight"    # Z

    .prologue
    .line 1521
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v4, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1522
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, p0, Lcom/android/server/am/TaskRecord;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowManagerService;->subtractStableInsets(Landroid/graphics/Rect;)V

    .line 1523
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mTmpRect2:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget v5, p2, Landroid/graphics/Rect;->left:I

    sub-int v1, v4, v5

    .line 1524
    .local v1, "leftInset":I
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mTmpRect2:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget v5, p2, Landroid/graphics/Rect;->top:I

    sub-int v3, v4, v5

    .line 1525
    .local v3, "topInset":I
    if-eqz p3, :cond_0

    const/4 v2, 0x0

    .line 1526
    .local v2, "rightInset":I
    :goto_0
    if-eqz p4, :cond_1

    const/4 v0, 0x0

    .line 1527
    .local v0, "bottomInset":I
    :goto_1
    invoke-virtual {p1, v1, v3, v2, v0}, Landroid/graphics/Rect;->inset(IIII)V

    .line 1520
    return-void

    .line 1525
    .end local v0    # "bottomInset":I
    .end local v2    # "rightInset":I
    :cond_0
    iget v4, p2, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Lcom/android/server/am/TaskRecord;->mTmpRect2:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int v2, v4, v5

    .restart local v2    # "rightInset":I
    goto :goto_0

    .line 1526
    :cond_1
    iget v4, p2, Landroid/graphics/Rect;->bottom:I

    iget-object v5, p0, Lcom/android/server/am/TaskRecord;->mTmpRect2:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v4, v5

    goto :goto_1
.end method

.method static validateBounds(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 4
    .param p0, "bounds"    # Landroid/graphics/Rect;

    .prologue
    const/4 v3, 0x0

    .line 1629
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1630
    sget-object v0, Lcom/android/server/am/TaskRecord;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Received strange task bounds: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1631
    return-object v3

    .line 1633
    :cond_0
    return-object p0
.end method


# virtual methods
.method addActivityAtBottom(Lcom/android/server/am/ActivityRecord;)V
    .locals 1
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 764
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/TaskRecord;->addActivityAtIndex(ILcom/android/server/am/ActivityRecord;)V

    .line 763
    return-void
.end method

.method addActivityAtIndex(ILcom/android/server/am/ActivityRecord;)V
    .locals 5
    .param p1, "index"    # I
    .param p2, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v4, 0x0

    .line 773
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p2, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-eqz v2, :cond_0

    .line 775
    iget v2, p0, Lcom/android/server/am/TaskRecord;->numFullscreen:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/am/TaskRecord;->numFullscreen:I

    .line 778
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 779
    iget v2, p2, Lcom/android/server/am/ActivityRecord;->mActivityType:I

    iput v2, p0, Lcom/android/server/am/TaskRecord;->taskType:I

    .line 780
    invoke-virtual {p2}, Lcom/android/server/am/ActivityRecord;->isPersistable()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/am/TaskRecord;->isPersistable:Z

    .line 781
    iget v2, p2, Lcom/android/server/am/ActivityRecord;->launchedFromUid:I

    iput v2, p0, Lcom/android/server/am/TaskRecord;->mCallingUid:I

    .line 782
    iget-object v2, p2, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/am/TaskRecord;->mCallingPackage:Ljava/lang/String;

    .line 784
    iget-object v2, p2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo;->maxRecents:I

    const/4 v3, 0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 785
    invoke-static {}, Landroid/app/ActivityManager;->getMaxAppRecentsLimitStatic()I

    move-result v3

    .line 784
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Lcom/android/server/am/TaskRecord;->maxRecents:I

    .line 791
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 793
    .local v0, "size":I
    if-ne p1, v0, :cond_1

    if-lez v0, :cond_1

    .line 794
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .local v1, "top":Lcom/android/server/am/ActivityRecord;
    iget-boolean v2, v1, Lcom/android/server/am/ActivityRecord;->mTaskOverlay:Z

    if-eqz v2, :cond_flyme_0

    add-int/lit8 p1, p1, -0x1


    :cond_flyme_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/TaskRecord;->updateFlymeActivityRecordIndex(ILcom/android/server/am/ActivityRecord;)I

    move-result p1

    .end local v1    # "top":Lcom/android/server/am/ActivityRecord;
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->updateEffectiveIntent()V

    invoke-virtual {p2}, Lcom/android/server/am/ActivityRecord;->isPersistable()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2, p0, v4}, Lcom/android/server/am/ActivityManagerService;->notifyTaskPersisterLocked(Lcom/android/server/am/TaskRecord;Z)V

    :cond_2
    return-void

    .end local v0    # "size":I
    :cond_3
    iget v2, p0, Lcom/android/server/am/TaskRecord;->taskType:I

    iput v2, p2, Lcom/android/server/am/ActivityRecord;->mActivityType:I

    goto :goto_0
.end method

.method addActivityToTop(Lcom/android/server/am/ActivityRecord;)V
    .locals 1
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 768
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/TaskRecord;->addActivityAtIndex(ILcom/android/server/am/ActivityRecord;)V

    .line 767
    return-void
.end method

.method autoRemoveFromRecents()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 837
    iget-boolean v2, p0, Lcom/android/server/am/TaskRecord;->autoRemoveRecents:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/server/am/TaskRecord;->hasBeenVisible:Z

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0
.end method

.method canGoInDockedStack()Z
    .locals 1

    .prologue
    .line 1042
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->isResizeable()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->inCropWindowsResizeMode()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method canMatchRootAffinity()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1701
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget v2, v2, Lcom/android/server/am/ActivityStack;->mStackId:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method closeRecentsChain()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 538
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    if-eqz v0, :cond_0

    .line 539
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->setNextAffiliate(Lcom/android/server/am/TaskRecord;)V

    .line 541
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    if-eqz v0, :cond_1

    .line 542
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->setPrevAffiliate(Lcom/android/server/am/TaskRecord;)V

    .line 544
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/server/am/TaskRecord;->setPrevAffiliate(Lcom/android/server/am/TaskRecord;)V

    .line 545
    invoke-virtual {p0, v2}, Lcom/android/server/am/TaskRecord;->setNextAffiliate(Lcom/android/server/am/TaskRecord;)V

    .line 537
    return-void
.end method

.method disposeThumbnail()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 656
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnailInfo:Landroid/app/ActivityManager$TaskThumbnailInfo;

    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskThumbnailInfo;->reset()V

    .line 657
    iput-object v1, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnail:Landroid/graphics/Bitmap;

    .line 658
    iput-object v1, p0, Lcom/android/server/am/TaskRecord;->lastDescription:Ljava/lang/CharSequence;

    .line 655
    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 8
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0x7d

    const/4 v6, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1705
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "userId="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1706
    const-string/jumbo v0, " effectiveUid="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/TaskRecord;->effectiveUid:I

    invoke-static {p1, v0}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 1707
    const-string/jumbo v0, " mCallingUid="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/TaskRecord;->mCallingUid:I

    invoke-static {p1, v0}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 1708
    const-string/jumbo v0, " mUserSetupComplete="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->mUserSetupComplete:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1709
    const-string/jumbo v0, " mCallingPackage="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mCallingPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1710
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1711
    :cond_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "affinity="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1712
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1715
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1718
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    if-eqz v0, :cond_3

    .line 1719
    :cond_2
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "VOICE: session=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1720
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1721
    const-string/jumbo v0, " interactor=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1722
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1724
    :cond_3
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_4

    .line 1725
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v0, 0x80

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1726
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "intent={"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1727
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    move v4, v2

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/Intent;->toShortString(Ljava/lang/StringBuilder;ZZZZ)V

    .line 1728
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1729
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1731
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    :cond_4
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    if-eqz v0, :cond_5

    .line 1732
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v0, 0x80

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1733
    .restart local v1    # "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "affinityIntent={"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1734
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    move v4, v2

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/Intent;->toShortString(Ljava/lang/StringBuilder;ZZZZ)V

    .line 1735
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1736
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1738
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    :cond_5
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->origActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_6

    .line 1739
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "origActivity="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1740
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->origActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1742
    :cond_6
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_7

    .line 1743
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "realActivity="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1744
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1746
    :cond_7
    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->autoRemoveRecents:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->isPersistable:Z

    if-nez v0, :cond_8

    iget v0, p0, Lcom/android/server/am/TaskRecord;->taskType:I

    if-eqz v0, :cond_11

    .line 1748
    :cond_8
    :goto_1
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "autoRemoveRecents="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->autoRemoveRecents:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1749
    const-string/jumbo v0, " isPersistable="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->isPersistable:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1750
    const-string/jumbo v0, " numFullscreen="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/TaskRecord;->numFullscreen:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1751
    const-string/jumbo v0, " taskType="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/TaskRecord;->taskType:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1752
    const-string/jumbo v0, " mTaskToReturnTo="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/TaskRecord;->mTaskToReturnTo:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1754
    :cond_9
    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->rootWasReset:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->mNeverRelinquishIdentity:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->mReuseTask:Z

    if-nez v0, :cond_a

    .line 1755
    iget v0, p0, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    if-eq v0, v3, :cond_b

    .line 1756
    :cond_a
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "rootWasReset="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->rootWasReset:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1757
    const-string/jumbo v0, " mNeverRelinquishIdentity="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->mNeverRelinquishIdentity:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1758
    const-string/jumbo v0, " mReuseTask="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->mReuseTask:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1759
    const-string/jumbo v0, " mLockTaskAuth="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->lockTaskAuthToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1761
    :cond_b
    iget v0, p0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    iget v2, p0, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v0, v2, :cond_c

    iget v0, p0, Lcom/android/server/am/TaskRecord;->mPrevAffiliateTaskId:I

    if-eq v0, v6, :cond_12

    .line 1764
    :cond_c
    :goto_2
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "affiliation="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1765
    const-string/jumbo v0, " prevAffiliation="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/TaskRecord;->mPrevAffiliateTaskId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1766
    const-string/jumbo v0, " ("

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1767
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    if-nez v0, :cond_13

    .line 1768
    const-string/jumbo v0, "null"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1772
    :goto_3
    const-string/jumbo v0, ") nextAffiliation="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/TaskRecord;->mNextAffiliateTaskId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1773
    const-string/jumbo v0, " ("

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1774
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    if-nez v0, :cond_14

    .line 1775
    const-string/jumbo v0, "null"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1779
    :goto_4
    const-string/jumbo v0, ")"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1781
    :cond_d
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "Activities="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1782
    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->askedCompatMode:Z

    if-eqz v0, :cond_15

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->inRecents:Z

    if-eqz v0, :cond_15

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->isAvailable:Z

    if-eqz v0, :cond_15

    .line 1787
    :goto_5
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "lastThumbnail="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 1788
    const-string/jumbo v0, " lastThumbnailFile="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnailFile:Ljava/io/File;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1789
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->lastDescription:Ljava/lang/CharSequence;

    if-eqz v0, :cond_e

    .line 1790
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "lastDescription="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->lastDescription:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1792
    :cond_e
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v0, :cond_f

    .line 1793
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "stackId="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget v0, v0, Lcom/android/server/am/ActivityStack;->mStackId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1795
    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "hasBeenVisible="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/server/am/TaskRecord;->hasBeenVisible:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1796
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " mResizeMode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/server/am/TaskRecord;->mResizeMode:I

    invoke-static {v2}, Landroid/content/pm/ActivityInfo;->resizeModeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1797
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " isResizeable="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->isResizeable()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1798
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " firstActiveTime="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/am/TaskRecord;->lastActiveTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1799
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " lastActiveTime="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/am/TaskRecord;->lastActiveTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1800
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " (inactive for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getInactiveDuration()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "s)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1704
    return-void

    .line 1713
    :cond_10
    const-string/jumbo v0, " root="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1746
    :cond_11
    iget v0, p0, Lcom/android/server/am/TaskRecord;->mTaskToReturnTo:I

    if-nez v0, :cond_8

    .line 1747
    iget v0, p0, Lcom/android/server/am/TaskRecord;->numFullscreen:I

    if-eqz v0, :cond_9

    goto/16 :goto_1

    .line 1762
    :cond_12
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    if-nez v0, :cond_c

    iget v0, p0, Lcom/android/server/am/TaskRecord;->mNextAffiliateTaskId:I

    if-ne v0, v6, :cond_c

    .line 1763
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    if-eqz v0, :cond_d

    goto/16 :goto_2

    .line 1770
    :cond_13
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1777
    :cond_14
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1783
    :cond_15
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "askedCompatMode="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->askedCompatMode:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1784
    const-string/jumbo v0, " inRecents="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->inRecents:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1785
    const-string/jumbo v0, " isAvailable="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->isAvailable:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    goto/16 :goto_5
.end method

.method extractOverrideConfig(Landroid/content/res/Configuration;)Landroid/content/res/Configuration;
    .locals 2
    .param p1, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 1583
    new-instance v0, Landroid/content/res/Configuration;

    sget-object v1, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    invoke-direct {v0, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 1584
    .local v0, "extracted":Landroid/content/res/Configuration;
    iget v1, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    iput v1, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 1585
    iget v1, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    iput v1, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 1586
    iget v1, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iput v1, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 1587
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    iput v1, v0, Landroid/content/res/Configuration;->orientation:I

    .line 1588
    iget v1, p1, Landroid/content/res/Configuration;->screenLayout:I

    iput v1, v0, Landroid/content/res/Configuration;->screenLayout:I

    .line 1589
    iget v1, p1, Landroid/content/res/Configuration;->fontScale:F

    iput v1, v0, Landroid/content/res/Configuration;->fontScale:F

    .line 1590
    return-object v0
.end method

.method final findActivityInHistoryLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;
    .locals 4
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 1050
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    .line 1051
    .local v2, "realActivity":Landroid/content/ComponentName;
    iget-object v3, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "activityNdx":I
    :goto_0
    if-ltz v0, :cond_2

    .line 1052
    iget-object v3, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 1053
    .local v1, "candidate":Lcom/android/server/am/ActivityRecord;
    iget-boolean v3, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v3, :cond_1

    .line 1051
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1056
    :cond_1
    iget-object v3, v1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v3, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1057
    return-object v1

    .line 1060
    .end local v1    # "candidate":Lcom/android/server/am/ActivityRecord;
    :cond_2
    const/4 v3, 0x0

    return-object v3
.end method

.method findEffectiveRootIndex()I
    .locals 5

    .prologue
    .line 1121
    const/4 v1, 0x0

    .line 1122
    .local v1, "effectiveNdx":I
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    .line 1123
    .local v3, "topActivityNdx":I
    const/4 v0, 0x0

    .local v0, "activityNdx":I
    :goto_0
    if-gt v0, v3, :cond_2

    .line 1124
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .line 1125
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v4, v2, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v4, :cond_1

    .line 1123
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1128
    :cond_1
    move v1, v0

    .line 1129
    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v4, v4, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v4, v4, 0x1000

    if-nez v4, :cond_0

    .line 1133
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_2
    return v1
.end method

.method freeLastThumbnail()V
    .locals 1

    .prologue
    .line 649
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnail:Landroid/graphics/Bitmap;

    .line 648
    return-void
.end method

.method getBaseIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 663
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    goto :goto_0
.end method

.method getInactiveDuration()J
    .locals 4

    .prologue
    .line 392
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/am/TaskRecord;->lastActiveTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method getLastThumbnail(Landroid/app/ActivityManager$TaskThumbnail;)V
    .locals 3
    .param p1, "thumbs"    # Landroid/app/ActivityManager$TaskThumbnail;

    .prologue
    const/4 v2, 0x0

    .line 628
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnail:Landroid/graphics/Bitmap;

    iput-object v1, p1, Landroid/app/ActivityManager$TaskThumbnail;->mainThumbnail:Landroid/graphics/Bitmap;

    .line 629
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnailInfo:Landroid/app/ActivityManager$TaskThumbnailInfo;

    iput-object v1, p1, Landroid/app/ActivityManager$TaskThumbnail;->thumbnailInfo:Landroid/app/ActivityManager$TaskThumbnailInfo;

    .line 630
    iput-object v2, p1, Landroid/app/ActivityManager$TaskThumbnail;->thumbnailFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 631
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnail:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    .line 632
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    .line 633
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnailFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 632
    invoke-virtual {v1, v2}, Lcom/android/server/am/RecentTasks;->getImageFromWriteQueue(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p1, Landroid/app/ActivityManager$TaskThumbnail;->mainThumbnail:Landroid/graphics/Bitmap;

    .line 636
    :cond_0
    iget-object v1, p1, Landroid/app/ActivityManager$TaskThumbnail;->mainThumbnail:Landroid/graphics/Bitmap;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnailFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 638
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnailFile:Ljava/io/File;

    .line 639
    const/high16 v2, 0x10000000

    .line 638
    invoke-static {v1, v2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    iput-object v1, p1, Landroid/app/ActivityManager$TaskThumbnail;->thumbnailFileDescriptor:Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 627
    :cond_1
    :goto_0
    return-void

    .line 640
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    goto :goto_0
.end method

.method getLaunchBounds()Landroid/graphics/Rect;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1679
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v2, v2, Lcom/android/server/am/ActivityManagerService;->mLockScreenShown:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 1680
    return-object v1

    .line 1683
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-nez v2, :cond_1

    .line 1684
    return-object v1

    .line 1687
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget v0, v2, Lcom/android/server/am/ActivityStack;->mStackId:I

    .line 1688
    .local v0, "stackId":I
    if-eqz v0, :cond_2

    .line 1689
    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    .line 1691
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->isResizeable()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget-object v1, v1, Lcom/android/server/am/ActivityStack;->mBounds:Landroid/graphics/Rect;

    :cond_3
    return-object v1

    .line 1690
    :cond_4
    const/4 v2, 0x3

    if-ne v0, v2, :cond_5

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->isResizeable()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1692
    :cond_5
    invoke-static {v0}, Landroid/app/ActivityManager$StackId;->persistTaskBounds(I)Z

    move-result v1

    if-nez v1, :cond_6

    .line 1693
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget-object v1, v1, Lcom/android/server/am/ActivityStack;->mBounds:Landroid/graphics/Rect;

    return-object v1

    .line 1695
    :cond_6
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    return-object v1
.end method

.method getLaunchStackId()I
    .locals 1

    .prologue
    .line 1667
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->isApplicationTask()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1668
    const/4 v0, 0x0

    return v0

    .line 1670
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_1

    .line 1671
    const/4 v0, 0x2

    return v0

    .line 1673
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method getRootActivity()Lcom/android/server/am/ActivityRecord;
    .locals 3

    .prologue
    .line 668
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 669
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 670
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v2, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v2, :cond_0

    .line 668
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 673
    :cond_0
    return-object v1

    .line 675
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method public getTaskThumbnailLocked()Landroid/app/ActivityManager$TaskThumbnail;
    .locals 4

    .prologue
    .line 941
    iget-object v3, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v3, :cond_0

    .line 942
    iget-object v3, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget-object v0, v3, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 943
    .local v0, "resumedActivity":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_0

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-ne v3, p0, :cond_0

    .line 944
    iget-object v3, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v3, v0}, Lcom/android/server/am/ActivityStack;->screenshotActivitiesLocked(Lcom/android/server/am/ActivityRecord;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 945
    .local v2, "thumbnail":Landroid/graphics/Bitmap;
    invoke-virtual {p0, v2}, Lcom/android/server/am/TaskRecord;->setLastThumbnailLocked(Landroid/graphics/Bitmap;)Z

    .line 948
    .end local v0    # "resumedActivity":Lcom/android/server/am/ActivityRecord;
    .end local v2    # "thumbnail":Landroid/graphics/Bitmap;
    :cond_0
    new-instance v1, Landroid/app/ActivityManager$TaskThumbnail;

    invoke-direct {v1}, Landroid/app/ActivityManager$TaskThumbnail;-><init>()V

    .line 949
    .local v1, "taskThumbnail":Landroid/app/ActivityManager$TaskThumbnail;
    invoke-virtual {p0, v1}, Lcom/android/server/am/TaskRecord;->getLastThumbnail(Landroid/app/ActivityManager$TaskThumbnail;)V

    .line 950
    return-object v1
.end method

.method getTaskToReturnTo()I
    .locals 1

    .prologue
    .line 523
    iget v0, p0, Lcom/android/server/am/TaskRecord;->mTaskToReturnTo:I

    return v0
.end method

.method getTopActivity()Lcom/android/server/am/ActivityRecord;
    .locals 3

    .prologue
    .line 679
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 680
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 681
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v2, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v2, :cond_0

    .line 679
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 684
    :cond_0
    return-object v1

    .line 686
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method inCropWindowsResizeMode()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1038
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->isResizeable()Z

    move-result v2

    if-nez v2, :cond_0

    iget v2, p0, Lcom/android/server/am/TaskRecord;->mResizeMode:I

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method isApplicationTask()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1025
    iget v1, p0, Lcom/android/server/am/TaskRecord;->taskType:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method isHomeTask()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1017
    iget v1, p0, Lcom/android/server/am/TaskRecord;->taskType:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isLockTaskWhitelistedLocked()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 1000
    iget-object v3, p0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1001
    .local v2, "pkg":Ljava/lang/String;
    :cond_0
    if-nez v2, :cond_1

    .line 1002
    return v5

    .line 1004
    :cond_1
    iget-object v3, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mLockTaskPackages:Landroid/util/SparseArray;

    iget v4, p0, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 1005
    .local v1, "packages":[Ljava/lang/String;
    if-nez v1, :cond_2

    .line 1006
    return v5

    .line 1008
    :cond_2
    array-length v3, v1

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_4

    .line 1009
    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1010
    const/4 v3, 0x1

    return v3

    .line 1008
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1013
    :cond_4
    return v5
.end method

.method isOverHomeStack()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1029
    iget v1, p0, Lcom/android/server/am/TaskRecord;->mTaskToReturnTo:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/android/server/am/TaskRecord;->mTaskToReturnTo:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isRecentsTask()Z
    .locals 2

    .prologue
    .line 1021
    iget v0, p0, Lcom/android/server/am/TaskRecord;->taskType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isResizeable()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1033
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->isHomeTask()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v1, v1, Lcom/android/server/am/ActivityManagerService;->mForceResizableActivities:Z

    if-nez v1, :cond_0

    .line 1034
    iget v1, p0, Lcom/android/server/am/TaskRecord;->mResizeMode:I

    invoke-static {v1}, Landroid/content/pm/ActivityInfo;->isResizeableMode(I)Z

    move-result v1

    .line 1033
    if-eqz v1, :cond_1

    .line 1034
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/am/TaskRecord;->mTemporarilyUnresizable:Z

    if-eqz v1, :cond_2

    .line 1033
    :cond_1
    :goto_0
    return v0

    .line 1034
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method isSameIntentFilter(Lcom/android/server/am/ActivityRecord;)Z
    .locals 2
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 509
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 513
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 514
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v1

    return v1
.end method

.method lockTaskAuthToString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 959
    iget v0, p0, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    packed-switch v0, :pswitch_data_0

    .line 965
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 960
    :pswitch_0
    const-string/jumbo v0, "LOCK_TASK_AUTH_DONT_LOCK"

    return-object v0

    .line 961
    :pswitch_1
    const-string/jumbo v0, "LOCK_TASK_AUTH_PINNABLE"

    return-object v0

    .line 962
    :pswitch_2
    const-string/jumbo v0, "LOCK_TASK_AUTH_LAUNCHABLE"

    return-object v0

    .line 963
    :pswitch_3
    const-string/jumbo v0, "LOCK_TASK_AUTH_WHITELISTED"

    return-object v0

    .line 964
    :pswitch_4
    const-string/jumbo v0, "LOCK_TASK_AUTH_LAUNCHABLE_PRIV"

    return-object v0

    .line 959
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method final moveActivityToFrontLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 3
    .param p1, "newTop"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 752
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ADD_REMOVE:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/am/TaskRecord;->TAG_ADD_REMOVE:Ljava/lang/String;

    .line 753
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Removing and adding activity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 754
    const-string/jumbo v2, " to stack at top callers="

    .line 753
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 754
    const/4 v2, 0x4

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    .line 753
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 752
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 757
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 758
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->updateEffectiveIntent()V

    .line 760
    invoke-virtual {p0, p1}, Lcom/android/server/am/TaskRecord;->setFrontOfTask(Lcom/android/server/am/ActivityRecord;)V

    .line 751
    return-void
.end method

.method final performClearTaskAtIndexLocked(I)V
    .locals 7
    .param p1, "activityNdx"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 845
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 846
    .local v6, "numActivities":I
    :goto_0
    if-ge p1, v6, :cond_3

    .line 847
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 848
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v0, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v0, :cond_1

    .line 846
    :cond_0
    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 851
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-nez v0, :cond_2

    .line 853
    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->takeFromHistory()V

    .line 854
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 855
    add-int/lit8 p1, p1, -0x1

    .line 856
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 857
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    .line 858
    const-string/jumbo v4, "clear-task-index"

    move v5, v2

    .line 857
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 859
    add-int/lit8 p1, p1, -0x1

    .line 860
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 844
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_3
    return-void
.end method

.method performClearTaskForReuseLocked(Lcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityRecord;
    .locals 2
    .param p1, "newR"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "launchFlags"    # I

    .prologue
    .line 875
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/am/TaskRecord;->mReuseTask:Z

    .line 876
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/TaskRecord;->performClearTaskLocked(Lcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 877
    .local v0, "result":Lcom/android/server/am/ActivityRecord;
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/am/TaskRecord;->mReuseTask:Z

    .line 878
    return-object v0
.end method

.method final performClearTaskLocked(Lcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityRecord;
    .locals 12
    .param p1, "newR"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "launchFlags"    # I

    .prologue
    .line 893
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 894
    .local v9, "numActivities":I
    add-int/lit8 v8, v9, -0x1

    .local v8, "activityNdx":I
    :goto_0
    if-ltz v8, :cond_8

    .line 895
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 896
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v0, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v0, :cond_1

    .line 894
    :cond_0
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    .line 899
    :cond_1
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v0, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 901
    move-object v11, v1

    .line 903
    .local v11, "ret":Lcom/android/server/am/ActivityRecord;
    add-int/lit8 v8, v8, 0x1

    :goto_1
    if-ge v8, v9, :cond_5

    .line 904
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 905
    .restart local v1    # "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v0, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v0, :cond_3

    .line 903
    :cond_2
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 908
    :cond_3
    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->takeOptionsLocked()Landroid/app/ActivityOptions;

    move-result-object v10

    .line 909
    .local v10, "opts":Landroid/app/ActivityOptions;
    if-eqz v10, :cond_4

    .line 910
    invoke-virtual {v11, v10}, Lcom/android/server/am/ActivityRecord;->updateOptionsLocked(Landroid/app/ActivityOptions;)V

    .line 912
    :cond_4
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    .line 913
    const-string/jumbo v4, "clear-task-stack"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 912
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 914
    add-int/lit8 v8, v8, -0x1

    .line 915
    add-int/lit8 v9, v9, -0x1

    goto :goto_2

    .line 922
    .end local v10    # "opts":Landroid/app/ActivityOptions;
    :cond_5
    iget v0, v11, Lcom/android/server/am/ActivityRecord;->launchMode:I

    if-nez v0, :cond_7

    .line 923
    const/high16 v0, 0x20000000

    and-int/2addr v0, p2

    if-nez v0, :cond_7

    .line 924
    iget-boolean v0, v11, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v0, :cond_7

    .line 925
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v0, :cond_6

    .line 926
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    .line 927
    const-string/jumbo v6, "clear-task-top"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v3, v11

    .line 926
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 929
    :cond_6
    const/4 v0, 0x0

    return-object v0

    .line 933
    :cond_7
    return-object v11

    .line 937
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v11    # "ret":Lcom/android/server/am/ActivityRecord;
    :cond_8
    const/4 v0, 0x0

    return-object v0
.end method

.method final performClearTaskLocked()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 869
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/TaskRecord;->mReuseTask:Z

    .line 870
    invoke-virtual {p0, v1}, Lcom/android/server/am/TaskRecord;->performClearTaskAtIndexLocked(I)V

    .line 871
    iput-boolean v1, p0, Lcom/android/server/am/TaskRecord;->mReuseTask:Z

    .line 868
    return-void
.end method

.method removeActivity(Lcom/android/server/am/ActivityRecord;)Z
    .locals 3
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v0, 0x0

    .line 811
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p1, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-eqz v1, :cond_0

    .line 813
    iget v1, p0, Lcom/android/server/am/TaskRecord;->numFullscreen:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/server/am/TaskRecord;->numFullscreen:I

    .line 815
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->isPersistable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 816
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, p0, v0}, Lcom/android/server/am/ActivityManagerService;->notifyTaskPersisterLocked(Lcom/android/server/am/TaskRecord;Z)V

    .line 819
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget v1, v1, Lcom/android/server/am/ActivityStack;->mStackId:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 823
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->notifyTaskStackChangedLocked()V

    .line 826
    :cond_2
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 827
    iget-boolean v1, p0, Lcom/android/server/am/TaskRecord;->mReuseTask:Z

    if-eqz v1, :cond_3

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    .line 829
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->updateEffectiveIntent()V

    .line 830
    return v0
.end method

.method public removeTaskActivitiesLocked()V
    .locals 1

    .prologue
    .line 955
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/am/TaskRecord;->performClearTaskAtIndexLocked(I)V

    .line 953
    return-void
.end method

.method removedFromRecents()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 549
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->disposeThumbnail()V

    .line 550
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->closeRecentsChain()V

    .line 551
    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->inRecents:Z

    if-eqz v0, :cond_0

    .line 552
    iput-boolean v1, p0, Lcom/android/server/am/TaskRecord;->inRecents:Z

    .line 553
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p0, v1}, Lcom/android/server/am/ActivityManagerService;->notifyTaskPersisterLocked(Lcom/android/server/am/TaskRecord;Z)V

    .line 548
    :cond_0
    return-void
.end method

.method sanitizeOverrideConfiguration(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "globalConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 1609
    iget-boolean v2, p0, Lcom/android/server/am/TaskRecord;->mFullscreen:Z

    if-eqz v2, :cond_0

    .line 1610
    return-void

    .line 1616
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mOverrideConfig:Landroid/content/res/Configuration;

    iget v1, v2, Landroid/content/res/Configuration;->screenLayout:I

    .line 1617
    .local v1, "overrideScreenLayout":I
    iget v0, p1, Landroid/content/res/Configuration;->screenLayout:I

    .line 1618
    .local v0, "newScreenLayout":I
    and-int/lit8 v2, v0, -0x31

    .line 1619
    and-int/lit8 v3, v1, 0x30

    .line 1618
    or-int v0, v2, v3

    .line 1620
    and-int/lit8 v2, v0, -0x10

    .line 1621
    and-int/lit8 v3, v1, 0xf

    .line 1620
    or-int v0, v2, v3

    .line 1622
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mOverrideConfig:Landroid/content/res/Configuration;

    iput v0, v2, Landroid/content/res/Configuration;->screenLayout:I

    .line 1625
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mOverrideConfig:Landroid/content/res/Configuration;

    iget v3, p1, Landroid/content/res/Configuration;->fontScale:F

    iput v3, v2, Landroid/content/res/Configuration;->fontScale:F

    .line 1607
    return-void
.end method

.method saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 10
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/high16 v9, 0x80000

    const/4 v8, 0x0

    .line 1143
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/server/am/TaskRecord;->TAG_RECENTS:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Saving task="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1145
    :cond_0
    const-string/jumbo v4, "task_id"

    iget v5, p0, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1146
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    if-eqz v4, :cond_1

    .line 1147
    const-string/jumbo v4, "real_activity"

    iget-object v5, p0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1149
    :cond_1
    const-string/jumbo v4, "real_activity_suspended"

    iget-boolean v5, p0, Lcom/android/server/am/TaskRecord;->realActivitySuspended:Z

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1150
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->origActivity:Landroid/content/ComponentName;

    if-eqz v4, :cond_2

    .line 1151
    const-string/jumbo v4, "orig_activity"

    iget-object v5, p0, Lcom/android/server/am/TaskRecord;->origActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1157
    :cond_2
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    if-eqz v4, :cond_a

    .line 1158
    const-string/jumbo v4, "affinity"

    iget-object v5, p0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1159
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1160
    const-string/jumbo v5, "root_affinity"

    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    :goto_0
    invoke-interface {p1, v8, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1165
    :cond_3
    :goto_1
    const-string/jumbo v4, "root_has_reset"

    iget-boolean v5, p0, Lcom/android/server/am/TaskRecord;->rootWasReset:Z

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1166
    const-string/jumbo v4, "auto_remove_recents"

    iget-boolean v5, p0, Lcom/android/server/am/TaskRecord;->autoRemoveRecents:Z

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1167
    const-string/jumbo v4, "asked_compat_mode"

    iget-boolean v5, p0, Lcom/android/server/am/TaskRecord;->askedCompatMode:Z

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1168
    const-string/jumbo v4, "user_id"

    iget v5, p0, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1169
    const-string/jumbo v4, "user_setup_complete"

    iget-boolean v5, p0, Lcom/android/server/am/TaskRecord;->mUserSetupComplete:Z

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1170
    const-string/jumbo v4, "effective_uid"

    iget v5, p0, Lcom/android/server/am/TaskRecord;->effectiveUid:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1171
    const-string/jumbo v4, "task_type"

    iget v5, p0, Lcom/android/server/am/TaskRecord;->taskType:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1172
    const-string/jumbo v4, "first_active_time"

    iget-wide v6, p0, Lcom/android/server/am/TaskRecord;->firstActiveTime:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1173
    const-string/jumbo v4, "last_active_time"

    iget-wide v6, p0, Lcom/android/server/am/TaskRecord;->lastActiveTime:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1174
    const-string/jumbo v4, "last_time_moved"

    iget-wide v6, p0, Lcom/android/server/am/TaskRecord;->mLastTimeMoved:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1175
    const-string/jumbo v4, "never_relinquish_identity"

    iget-boolean v5, p0, Lcom/android/server/am/TaskRecord;->mNeverRelinquishIdentity:Z

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1176
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->lastDescription:Ljava/lang/CharSequence;

    if-eqz v4, :cond_4

    .line 1177
    const-string/jumbo v4, "last_description"

    iget-object v5, p0, Lcom/android/server/am/TaskRecord;->lastDescription:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1179
    :cond_4
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    if-eqz v4, :cond_5

    .line 1180
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v4, p1}, Landroid/app/ActivityManager$TaskDescription;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1182
    :cond_5
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnailInfo:Landroid/app/ActivityManager$TaskThumbnailInfo;

    invoke-virtual {v4, p1}, Landroid/app/ActivityManager$TaskThumbnailInfo;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1183
    const-string/jumbo v4, "task_affiliation_color"

    iget v5, p0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskColor:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1184
    const-string/jumbo v4, "task_affiliation"

    iget v5, p0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1185
    const-string/jumbo v4, "prev_affiliation"

    iget v5, p0, Lcom/android/server/am/TaskRecord;->mPrevAffiliateTaskId:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1186
    const-string/jumbo v4, "next_affiliation"

    iget v5, p0, Lcom/android/server/am/TaskRecord;->mNextAffiliateTaskId:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1187
    const-string/jumbo v4, "calling_uid"

    iget v5, p0, Lcom/android/server/am/TaskRecord;->mCallingUid:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1188
    const-string/jumbo v5, "calling_package"

    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mCallingPackage:Ljava/lang/String;

    if-nez v4, :cond_c

    const-string/jumbo v4, ""

    :goto_2
    invoke-interface {p1, v8, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1189
    const-string/jumbo v4, "resize_mode"

    iget v5, p0, Lcom/android/server/am/TaskRecord;->mResizeMode:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1190
    const-string/jumbo v4, "privileged"

    iget-boolean v5, p0, Lcom/android/server/am/TaskRecord;->mPrivileged:Z

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1191
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    if-eqz v4, :cond_6

    .line 1193
    const-string/jumbo v4, "non_fullscreen_bounds"

    iget-object v5, p0, Lcom/android/server/am/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->flattenToString()Ljava/lang/String;

    move-result-object v5

    .line 1192
    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1195
    :cond_6
    const-string/jumbo v4, "min_width"

    iget v5, p0, Lcom/android/server/am/TaskRecord;->mMinWidth:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1196
    const-string/jumbo v4, "min_height"

    iget v5, p0, Lcom/android/server/am/TaskRecord;->mMinHeight:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1198
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    if-eqz v4, :cond_7

    .line 1199
    const-string/jumbo v4, "affinity_intent"

    invoke-interface {p1, v8, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1200
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    invoke-virtual {v4, p1}, Landroid/content/Intent;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1201
    const-string/jumbo v4, "affinity_intent"

    invoke-interface {p1, v8, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1204
    :cond_7
    const-string/jumbo v4, "intent"

    invoke-interface {p1, v8, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1205
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4, p1}, Landroid/content/Intent;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1206
    const-string/jumbo v4, "intent"

    invoke-interface {p1, v8, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1208
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 1209
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1210
    .local v2, "numActivities":I
    const/4 v1, 0x0

    .local v1, "activityNdx":I
    :goto_3
    if-ge v1, v2, :cond_8

    .line 1211
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 1212
    .local v3, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v4, v4, Landroid/content/pm/ActivityInfo;->persistableMode:I

    if-eqz v4, :cond_8

    invoke-virtual {v3}, Lcom/android/server/am/ActivityRecord;->isPersistable()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1213
    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getFlags()I

    move-result v4

    and-int/2addr v4, v9

    or-int/lit16 v4, v4, 0x2000

    if-ne v4, v9, :cond_d

    .line 1215
    if-lez v1, :cond_d

    .line 1142
    .end local v3    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_8
    return-void

    .line 1160
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    .end local v2    # "numActivities":I
    :cond_9
    const-string/jumbo v4, "@"

    goto/16 :goto_0

    .line 1162
    :cond_a
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 1163
    const-string/jumbo v5, "root_affinity"

    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    :goto_4
    invoke-interface {p1, v8, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_1

    :cond_b
    const-string/jumbo v4, "@"

    goto :goto_4

    .line 1188
    :cond_c
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mCallingPackage:Ljava/lang/String;

    goto/16 :goto_2

    .line 1219
    .restart local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .restart local v1    # "activityNdx":I
    .restart local v2    # "numActivities":I
    .restart local v3    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_d
    const-string/jumbo v4, "activity"

    invoke-interface {p1, v8, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1220
    invoke-virtual {v3, p1}, Lcom/android/server/am/ActivityRecord;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1221
    const-string/jumbo v4, "activity"

    invoke-interface {p1, v8, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1210
    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method

.method setFrontOfTask()V
    .locals 1

    .prologue
    .line 716
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/am/TaskRecord;->setFrontOfTask(Lcom/android/server/am/ActivityRecord;)V

    .line 715
    return-void
.end method

.method setFrontOfTask(Lcom/android/server/am/ActivityRecord;)V
    .locals 7
    .param p1, "newTop"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 725
    if-eqz p1, :cond_1

    const/4 v1, 0x1

    .line 727
    .local v1, "foundFront":Z
    :goto_0
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 728
    .local v2, "numActivities":I
    const/4 v0, 0x0

    .local v0, "activityNdx":I
    :goto_1
    if-ge v0, v2, :cond_3

    .line 729
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 730
    .local v3, "r":Lcom/android/server/am/ActivityRecord;
    if-nez v1, :cond_0

    iget-boolean v4, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v4, :cond_2

    .line 731
    :cond_0
    iput-boolean v5, v3, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    .line 728
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 725
    .end local v0    # "activityNdx":I
    .end local v1    # "foundFront":Z
    .end local v2    # "numActivities":I
    .end local v3    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "foundFront":Z
    goto :goto_0

    .line 733
    .restart local v0    # "activityNdx":I
    .restart local v2    # "numActivities":I
    .restart local v3    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_2
    iput-boolean v6, v3, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    .line 735
    const/4 v1, 0x1

    goto :goto_2

    .line 738
    .end local v3    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_3
    if-nez v1, :cond_4

    if-lez v2, :cond_4

    .line 741
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    iput-boolean v6, v4, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    .line 743
    :cond_4
    if-eqz p1, :cond_5

    .line 744
    iput-boolean v6, p1, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    .line 720
    :cond_5
    return-void
.end method

.method setIntent(Lcom/android/server/am/ActivityRecord;)V
    .locals 2
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 397
    iget v0, p1, Lcom/android/server/am/ActivityRecord;->launchedFromUid:I

    iput v0, p0, Lcom/android/server/am/TaskRecord;->mCallingUid:I

    .line 398
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mCallingPackage:Ljava/lang/String;

    .line 399
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/TaskRecord;->setIntent(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    .line 396
    return-void
.end method

.method setLastThumbnailLocked(Landroid/graphics/Bitmap;)Z
    .locals 6
    .param p1, "thumbnail"    # Landroid/graphics/Bitmap;

    .prologue
    .line 585
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v4, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    .line 586
    .local v1, "serviceConfig":Landroid/content/res/Configuration;
    const/4 v3, 0x0

    .line 587
    .local v3, "taskWidth":I
    const/4 v2, 0x0

    .line 588
    .local v2, "taskHeight":I
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    if-eqz v4, :cond_0

    .line 590
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 591
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 601
    :goto_0
    iget v4, v1, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, p1, v3, v2, v4}, Lcom/android/server/am/TaskRecord;->setLastThumbnailLocked(Landroid/graphics/Bitmap;III)Z

    move-result v4

    return v4

    .line 592
    :cond_0
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v4, :cond_1

    .line 594
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 595
    .local v0, "displaySize":Landroid/graphics/Point;
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v4, v0}, Lcom/android/server/am/ActivityStack;->getDisplaySize(Landroid/graphics/Point;)V

    .line 596
    iget v3, v0, Landroid/graphics/Point;->x:I

    .line 597
    iget v2, v0, Landroid/graphics/Point;->y:I

    goto :goto_0

    .line 599
    .end local v0    # "displaySize":Landroid/graphics/Point;
    :cond_1
    sget-object v4, Lcom/android/server/am/TaskRecord;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "setLastThumbnailLocked() called on Task without stack"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method setLockTaskAuth()V
    .locals 4

    .prologue
    const/4 v1, 0x2

    const/4 v3, 0x0

    const/4 v0, 0x1

    .line 970
    iget-boolean v2, p0, Lcom/android/server/am/TaskRecord;->mPrivileged:Z

    if-nez v2, :cond_1

    .line 971
    iget v2, p0, Lcom/android/server/am/TaskRecord;->mLockTaskMode:I

    if-eq v2, v1, :cond_0

    .line 972
    iget v2, p0, Lcom/android/server/am/TaskRecord;->mLockTaskMode:I

    if-ne v2, v0, :cond_1

    .line 974
    :cond_0
    iput v3, p0, Lcom/android/server/am/TaskRecord;->mLockTaskMode:I

    .line 976
    :cond_1
    iget v2, p0, Lcom/android/server/am/TaskRecord;->mLockTaskMode:I

    packed-switch v2, :pswitch_data_0

    .line 995
    :goto_0
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LOCKTASK:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/server/am/TaskRecord;->TAG_LOCKTASK:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setLockTaskAuth: task="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 996
    const-string/jumbo v2, " mLockTaskAuth="

    .line 995
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 996
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->lockTaskAuthToString()Ljava/lang/String;

    move-result-object v2

    .line 995
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    :cond_2
    return-void

    .line 978
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->isLockTaskWhitelistedLocked()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 979
    const/4 v0, 0x3

    .line 978
    :cond_3
    iput v0, p0, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    goto :goto_0

    .line 983
    :pswitch_1
    iput v3, p0, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    goto :goto_0

    .line 987
    :pswitch_2
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    goto :goto_0

    .line 991
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->isLockTaskWhitelistedLocked()Z

    move-result v2

    if-eqz v2, :cond_4

    move v0, v1

    :cond_4
    iput v0, p0, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    goto :goto_0

    .line 976
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method setNextAffiliate(Lcom/android/server/am/TaskRecord;)V
    .locals 1
    .param p1, "nextAffiliate"    # Lcom/android/server/am/TaskRecord;

    .prologue
    .line 532
    iput-object p1, p0, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    .line 533
    if-nez p1, :cond_0

    const/4 v0, -0x1

    :goto_0
    iput v0, p0, Lcom/android/server/am/TaskRecord;->mNextAffiliateTaskId:I

    .line 531
    return-void

    .line 533
    :cond_0
    iget v0, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    goto :goto_0
.end method

.method setPrevAffiliate(Lcom/android/server/am/TaskRecord;)V
    .locals 1
    .param p1, "prevAffiliate"    # Lcom/android/server/am/TaskRecord;

    .prologue
    .line 527
    iput-object p1, p0, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    .line 528
    if-nez p1, :cond_0

    const/4 v0, -0x1

    :goto_0
    iput v0, p0, Lcom/android/server/am/TaskRecord;->mPrevAffiliateTaskId:I

    .line 526
    return-void

    .line 528
    :cond_0
    iget v0, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    goto :goto_0
.end method

.method setTaskToAffiliateWith(Lcom/android/server/am/TaskRecord;)V
    .locals 5
    .param p1, "taskToAffiliateWith"    # Lcom/android/server/am/TaskRecord;

    .prologue
    const/4 v4, 0x0

    .line 558
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->closeRecentsChain()V

    .line 559
    iget v1, p1, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    iput v1, p0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    .line 560
    iget v1, p1, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskColor:I

    iput v1, p0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskColor:I

    .line 562
    :goto_0
    iget-object v1, p1, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    if-eqz v1, :cond_1

    .line 563
    iget-object v0, p1, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    .line 564
    .local v0, "nextRecents":Lcom/android/server/am/TaskRecord;
    iget v1, v0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    iget v2, p0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    if-eq v1, v2, :cond_2

    .line 565
    sget-object v1, Lcom/android/server/am/TaskRecord;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setTaskToAffiliateWith: nextRecents="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " affilTaskId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 566
    iget v3, v0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    .line 565
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 566
    const-string/jumbo v3, " should be "

    .line 565
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 566
    iget v3, p0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    .line 565
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    iget-object v1, v0, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    if-ne v1, p1, :cond_0

    .line 568
    invoke-virtual {v0, v4}, Lcom/android/server/am/TaskRecord;->setPrevAffiliate(Lcom/android/server/am/TaskRecord;)V

    .line 570
    :cond_0
    invoke-virtual {p1, v4}, Lcom/android/server/am/TaskRecord;->setNextAffiliate(Lcom/android/server/am/TaskRecord;)V

    .line 575
    .end local v0    # "nextRecents":Lcom/android/server/am/TaskRecord;
    :cond_1
    invoke-virtual {p1, p0}, Lcom/android/server/am/TaskRecord;->setNextAffiliate(Lcom/android/server/am/TaskRecord;)V

    .line 576
    invoke-virtual {p0, p1}, Lcom/android/server/am/TaskRecord;->setPrevAffiliate(Lcom/android/server/am/TaskRecord;)V

    .line 577
    invoke-virtual {p0, v4}, Lcom/android/server/am/TaskRecord;->setNextAffiliate(Lcom/android/server/am/TaskRecord;)V

    .line 557
    return-void

    .line 573
    .restart local v0    # "nextRecents":Lcom/android/server/am/TaskRecord;
    :cond_2
    move-object p1, v0

    goto :goto_0
.end method

.method setTaskToReturnTo(I)V
    .locals 1
    .param p1, "taskToReturnTo"    # I

    .prologue
    .line 518
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 519
    const/4 p1, 0x1

    .line 518
    .end local p1    # "taskToReturnTo":I
    :cond_0
    iput p1, p0, Lcom/android/server/am/TaskRecord;->mTaskToReturnTo:I

    .line 517
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1805
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1806
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->stringName:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1807
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->stringName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1808
    const-string/jumbo v1, " U="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1809
    iget v1, p0, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1810
    const-string/jumbo v1, " StackId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1811
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget v1, v1, Lcom/android/server/am/ActivityStack;->mStackId:I

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1812
    const-string/jumbo v1, " sz="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1813
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1814
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1815
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1811
    :cond_0
    const/4 v1, -0x1

    goto :goto_0

    .line 1817
    :cond_1
    const-string/jumbo v1, "TaskRecord{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1818
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1819
    const-string/jumbo v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1820
    iget v1, p0, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1821
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 1822
    const-string/jumbo v1, " A="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1823
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1833
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/TaskRecord;->stringName:Ljava/lang/String;

    .line 1834
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1824
    :cond_2
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz v1, :cond_3

    .line 1825
    const-string/jumbo v1, " I="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1826
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1827
    :cond_3
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    if-eqz v1, :cond_4

    .line 1828
    const-string/jumbo v1, " aI="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1829
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1831
    :cond_4
    const-string/jumbo v1, " ??"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 690
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v2, :cond_1

    .line 691
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "activityNdx":I
    :goto_0
    if-ltz v0, :cond_1

    .line 692
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 693
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v2, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v2, v1}, Lcom/android/server/am/ActivityStack;->okToShowLocked(Lcom/android/server/am/ActivityRecord;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 694
    return-object v1

    .line 691
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 698
    .end local v0    # "activityNdx":I
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1
    return-object v3
.end method

.method topRunningActivityWithStartingWindowLocked()Lcom/android/server/am/ActivityRecord;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 702
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v2, :cond_1

    .line 703
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "activityNdx":I
    :goto_0
    if-ltz v0, :cond_1

    .line 704
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 705
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    iget v2, v1, Lcom/android/server/am/ActivityRecord;->mStartingWindowState:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 706
    iget-boolean v2, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    .line 705
    if-nez v2, :cond_0

    .line 706
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v2, v1}, Lcom/android/server/am/ActivityStack;->okToShowLocked(Lcom/android/server/am/ActivityRecord;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 709
    return-object v1

    .line 703
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 712
    .end local v0    # "activityNdx":I
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1
    return-object v4
.end method

.method touchActiveTime()V
    .locals 4

    .prologue
    .line 385
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/TaskRecord;->lastActiveTime:J

    .line 386
    iget-wide v0, p0, Lcom/android/server/am/TaskRecord;->firstActiveTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 387
    iget-wide v0, p0, Lcom/android/server/am/TaskRecord;->lastActiveTime:J

    iput-wide v0, p0, Lcom/android/server/am/TaskRecord;->firstActiveTime:J

    .line 384
    :cond_0
    return-void
.end method

.method updateEffectiveIntent()V
    .locals 3

    .prologue
    .line 1137
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->findEffectiveRootIndex()I

    move-result v0

    .line 1138
    .local v0, "effectiveRootIndex":I
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 1139
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    invoke-virtual {p0, v1}, Lcom/android/server/am/TaskRecord;->setIntent(Lcom/android/server/am/ActivityRecord;)V

    .line 1136
    return-void
.end method

.method updateOverrideConfiguration(Landroid/graphics/Rect;)Landroid/content/res/Configuration;
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 1461
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/TaskRecord;->updateOverrideConfiguration(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/content/res/Configuration;

    move-result-object v0

    return-object v0
.end method

.method updateOverrideConfiguration(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/content/res/Configuration;
    .locals 9
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .param p2, "insetBounds"    # Landroid/graphics/Rect;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 1473
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1474
    return-object v5

    .line 1476
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mOverrideConfig:Landroid/content/res/Configuration;

    .line 1477
    .local v0, "oldConfig":Landroid/content/res/Configuration;
    iget-boolean v1, p0, Lcom/android/server/am/TaskRecord;->mFullscreen:Z

    .line 1479
    .local v1, "oldFullscreen":Z
    if-nez p1, :cond_3

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/server/am/TaskRecord;->mFullscreen:Z

    .line 1480
    iget-boolean v2, p0, Lcom/android/server/am/TaskRecord;->mFullscreen:Z

    if-eqz v2, :cond_4

    .line 1481
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget v2, v2, Lcom/android/server/am/ActivityStack;->mStackId:I

    invoke-static {v2}, Landroid/app/ActivityManager$StackId;->persistTaskBounds(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1482
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    iput-object v2, p0, Lcom/android/server/am/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    .line 1484
    :cond_1
    iput-object v5, p0, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    .line 1485
    sget-object v2, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    iput-object v2, p0, Lcom/android/server/am/TaskRecord;->mOverrideConfig:Landroid/content/res/Configuration;

    .line 1501
    :goto_1
    iget-boolean v2, p0, Lcom/android/server/am/TaskRecord;->mFullscreen:Z

    if-eq v2, v1, :cond_2

    .line 1502
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2, p0}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleReportMultiWindowModeChanged(Lcom/android/server/am/TaskRecord;)V

    .line 1505
    :cond_2
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mOverrideConfig:Landroid/content/res/Configuration;

    invoke-virtual {v2, v0}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v2

    if-nez v2, :cond_a

    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mOverrideConfig:Landroid/content/res/Configuration;

    :goto_2
    return-object v2

    :cond_3
    move v2, v4

    .line 1479
    goto :goto_0

    .line 1487
    :cond_4
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1488
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {p0, v2}, Lcom/android/server/am/TaskRecord;->adjustForMinimalTaskDimensions(Landroid/graphics/Rect;)V

    .line 1489
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    if-nez v2, :cond_7

    .line 1490
    new-instance v2, Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/android/server/am/TaskRecord;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {v2, v6}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v2, p0, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    .line 1494
    :goto_3
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget v2, v2, Lcom/android/server/am/ActivityStack;->mStackId:I

    invoke-static {v2}, Landroid/app/ActivityManager$StackId;->persistTaskBounds(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1495
    :cond_5
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    iput-object v2, p0, Lcom/android/server/am/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    .line 1497
    :cond_6
    iget-object v6, p0, Lcom/android/server/am/TaskRecord;->mTmpRect:Landroid/graphics/Rect;

    .line 1498
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mTmpRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget v7, p1, Landroid/graphics/Rect;->right:I

    if-eq v2, v7, :cond_8

    move v2, v3

    :goto_4
    iget-object v7, p0, Lcom/android/server/am/TaskRecord;->mTmpRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    iget v8, p1, Landroid/graphics/Rect;->bottom:I

    if-eq v7, v8, :cond_9

    .line 1497
    :goto_5
    invoke-direct {p0, v6, p2, v2, v3}, Lcom/android/server/am/TaskRecord;->calculateOverrideConfig(Landroid/graphics/Rect;Landroid/graphics/Rect;ZZ)Landroid/content/res/Configuration;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/TaskRecord;->mOverrideConfig:Landroid/content/res/Configuration;

    goto :goto_1

    .line 1492
    :cond_7
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/android/server/am/TaskRecord;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_3

    :cond_8
    move v2, v4

    .line 1498
    goto :goto_4

    :cond_9
    move v3, v4

    goto :goto_5

    :cond_a
    move-object v2, v5

    .line 1505
    goto :goto_2
.end method

.method updateOverrideConfigurationForStack(Lcom/android/server/am/ActivityStack;)V
    .locals 3
    .param p1, "inStack"    # Lcom/android/server/am/ActivityStack;

    .prologue
    const/4 v2, 0x0

    .line 1639
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-ne v0, p1, :cond_0

    .line 1640
    return-void

    .line 1643
    :cond_0
    iget v0, p1, Lcom/android/server/am/ActivityStack;->mStackId:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 1644
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->isResizeable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1645
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Can not position non-resizeable task="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1646
    const-string/jumbo v2, " in stack="

    .line 1645
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1648
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_2

    .line 1649
    return-void

    .line 1651
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_3

    .line 1652
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/server/am/TaskRecord;->updateOverrideConfiguration(Landroid/graphics/Rect;)Landroid/content/res/Configuration;

    .line 1638
    :goto_0
    return-void

    .line 1654
    :cond_3
    invoke-virtual {p1, p0, v2}, Lcom/android/server/am/ActivityStack;->layoutTaskInStack(Lcom/android/server/am/TaskRecord;Landroid/content/pm/ActivityInfo$WindowLayout;)Z

    goto :goto_0

    .line 1657
    :cond_4
    iget-object v0, p1, Lcom/android/server/am/ActivityStack;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/server/am/TaskRecord;->updateOverrideConfiguration(Landroid/graphics/Rect;)Landroid/content/res/Configuration;

    goto :goto_0
.end method

.method updateOverrideConfigurationFromLaunchBounds()Landroid/graphics/Rect;
    .locals 2

    .prologue
    .line 1594
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/TaskRecord;->validateBounds(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 1595
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {p0, v0}, Lcom/android/server/am/TaskRecord;->updateOverrideConfiguration(Landroid/graphics/Rect;)Landroid/content/res/Configuration;

    .line 1596
    if-eqz v0, :cond_0

    .line 1597
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1599
    :cond_0
    return-object v0
.end method

.method updateTaskDescription()V
    .locals 11

    .prologue
    const/4 v2, 0x0

    const/4 v10, 0x0

    .line 1068
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 1069
    .local v7, "numActivities":I
    if-nez v7, :cond_5

    const/4 v9, 0x0

    .line 1071
    .local v9, "relinquish":Z
    :goto_0
    const/4 v0, 0x1

    invoke-static {v7, v0}, Ljava/lang/Math;->min(II)I

    move-result v6

    .local v6, "activityNdx":I
    :goto_1
    if-ge v6, v7, :cond_0

    .line 1073
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ActivityRecord;

    .line 1074
    .local v8, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v9, :cond_7

    iget-object v0, v8, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v0, v0, 0x1000

    if-nez v0, :cond_7

    .line 1077
    add-int/lit8 v6, v6, 0x1

    .line 1085
    .end local v8    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_0
    if-lez v6, :cond_a

    .line 1090
    const/4 v1, 0x0

    .line 1091
    .local v1, "label":Ljava/lang/String;
    const/4 v3, 0x0

    .line 1092
    .local v3, "iconFilename":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1093
    .local v4, "colorPrimary":I
    const/4 v5, 0x0

    .line 1094
    .local v5, "colorBackground":I
    add-int/lit8 v6, v6, -0x1

    .end local v1    # "label":Ljava/lang/String;
    .end local v3    # "iconFilename":Ljava/lang/String;
    :goto_2
    if-ltz v6, :cond_9

    .line 1095
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ActivityRecord;

    .line 1096
    .restart local v8    # "r":Lcom/android/server/am/ActivityRecord;
    iget-object v0, v8, Lcom/android/server/am/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    if-eqz v0, :cond_4

    .line 1097
    if-nez v1, :cond_1

    .line 1098
    iget-object v0, v8, Lcom/android/server/am/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskDescription;->getLabel()Ljava/lang/String;

    move-result-object v1

    .line 1100
    :cond_1
    if-nez v3, :cond_2

    .line 1101
    iget-object v0, v8, Lcom/android/server/am/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskDescription;->getIconFilename()Ljava/lang/String;

    move-result-object v3

    .line 1103
    :cond_2
    if-nez v4, :cond_3

    .line 1104
    iget-object v0, v8, Lcom/android/server/am/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskDescription;->getPrimaryColor()I

    move-result v4

    .line 1106
    :cond_3
    if-nez v5, :cond_4

    .line 1107
    iget-object v0, v8, Lcom/android/server/am/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColor()I

    move-result v5

    .line 1094
    :cond_4
    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    .line 1070
    .end local v4    # "colorPrimary":I
    .end local v5    # "colorBackground":I
    .end local v6    # "activityNdx":I
    .end local v8    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v9    # "relinquish":Z
    :cond_5
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_6

    const/4 v9, 0x1

    .restart local v9    # "relinquish":Z
    goto :goto_0

    .end local v9    # "relinquish":Z
    :cond_6
    const/4 v9, 0x0

    .restart local v9    # "relinquish":Z
    goto :goto_0

    .line 1080
    .restart local v6    # "activityNdx":I
    .restart local v8    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_7
    iget-object v0, v8, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_8

    .line 1081
    iget-object v0, v8, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v10, 0x80000

    and-int/2addr v0, v10

    if-nez v0, :cond_0

    .line 1072
    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1111
    .end local v8    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v4    # "colorPrimary":I
    .restart local v5    # "colorBackground":I
    :cond_9
    new-instance v0, Landroid/app/ActivityManager$TaskDescription;

    invoke-direct/range {v0 .. v5}, Landroid/app/ActivityManager$TaskDescription;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 1114
    iget v0, p0, Lcom/android/server/am/TaskRecord;->taskId:I

    iget v2, p0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    if-ne v0, v2, :cond_a

    .line 1115
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskDescription;->getPrimaryColor()I

    move-result v0

    iput v0, p0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskColor:I

    .line 1064
    .end local v4    # "colorPrimary":I
    .end local v5    # "colorBackground":I
    :cond_a
    return-void
.end method

.method private updateFlymeActivityRecordIndex(ILcom/android/server/am/ActivityRecord;)I
    .locals 4
    .param p1, "index"    # I
    .param p2, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "size":I
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .local v1, "top":Lcom/android/server/am/ActivityRecord;
    iget-boolean v2, v1, Lcom/android/server/am/ActivityRecord;->mTaskOverlay:Z

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->isAccessApplication()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p2, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-eq v2, v1, :cond_0

    add-int/lit8 p1, p1, -0x1

    :cond_0
    return p1
.end method

.method public getHomeThumbnail()Landroid/app/ActivityManager$TaskThumbnail;
    .locals 4

    .prologue
    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget-object v0, v2, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .local v0, "resumedActivity":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-ne v2, p0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->isHomeActivity()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v3}, Lcom/android/server/am/TaskRecord;->setLastThumbnailLocked(Landroid/graphics/Bitmap;)Z

    .end local v0    # "resumedActivity":Lcom/android/server/am/ActivityRecord;
    :cond_0
    new-instance v1, Landroid/app/ActivityManager$TaskThumbnail;

    invoke-direct {v1}, Landroid/app/ActivityManager$TaskThumbnail;-><init>()V

    .local v1, "taskThumbnail":Landroid/app/ActivityManager$TaskThumbnail;
    invoke-virtual {p0, v1}, Lcom/android/server/am/TaskRecord;->getLastThumbnail(Landroid/app/ActivityManager$TaskThumbnail;)V

    return-object v1
.end method

.method performClearTaskUntilUnlocked(Lcom/android/server/am/ActivityRecord;)Z
    .locals 7
    .param p1, "skipped"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .local v3, "top":I
    move v2, v3

    .local v2, "start":I
    add-int/lit8 v0, v3, -0x1

    .local v0, "activityNdx":I
    :goto_0
    if-ltz v0, :cond_1

    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v4, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v4, :cond_0

    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mFlymeAccessControlService:Lcom/meizu/server/AccessControlService;

    iget-object v5, v1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4, v5, v6}, Lcom/meizu/server/AccessControlService;->isPopupUnlockingActivity(Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v2, v0

    goto :goto_1

    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1
    if-gez v2, :cond_2

    const/4 v2, 0x0

    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/server/am/TaskRecord;->performClearTaskAtIndexLocked(I)V

    const/4 v4, 0x1

    return v4
.end method
