.class public Lcom/android/server/backup/BackupManagerService;
.super Ljava/lang/Object;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/backup/BackupManagerService$-void__init__android_content_Context_context_com_android_server_backup_Trampoline_parent_LambdaImpl0;,
        Lcom/android/server/backup/BackupManagerService$1;,
        Lcom/android/server/backup/BackupManagerService$2;,
        Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;,
        Lcom/android/server/backup/BackupManagerService$AdbRestoreFinishedLatch;,
        Lcom/android/server/backup/BackupManagerService$BackupHandler;,
        Lcom/android/server/backup/BackupManagerService$BackupParams;,
        Lcom/android/server/backup/BackupManagerService$BackupRequest;,
        Lcom/android/server/backup/BackupManagerService$BackupRestoreTask;,
        Lcom/android/server/backup/BackupManagerService$BackupState;,
        Lcom/android/server/backup/BackupManagerService$ClearDataObserver;,
        Lcom/android/server/backup/BackupManagerService$ClearParams;,
        Lcom/android/server/backup/BackupManagerService$ClearRetryParams;,
        Lcom/android/server/backup/BackupManagerService$FileMetadata;,
        Lcom/android/server/backup/BackupManagerService$FullBackupEngine;,
        Lcom/android/server/backup/BackupManagerService$FullBackupEntry;,
        Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;,
        Lcom/android/server/backup/BackupManagerService$FullBackupParams;,
        Lcom/android/server/backup/BackupManagerService$FullBackupPreflight;,
        Lcom/android/server/backup/BackupManagerService$FullBackupTask;,
        Lcom/android/server/backup/BackupManagerService$FullParams;,
        Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;,
        Lcom/android/server/backup/BackupManagerService$FullRestoreParams;,
        Lcom/android/server/backup/BackupManagerService$Lifecycle;,
        Lcom/android/server/backup/BackupManagerService$Operation;,
        Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;,
        Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;,
        Lcom/android/server/backup/BackupManagerService$PerformBackupTask;,
        Lcom/android/server/backup/BackupManagerService$PerformClearTask;,
        Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;,
        Lcom/android/server/backup/BackupManagerService$PerformInitializeTask;,
        Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;,
        Lcom/android/server/backup/BackupManagerService$ProvisionedObserver;,
        Lcom/android/server/backup/BackupManagerService$RestoreEngine;,
        Lcom/android/server/backup/BackupManagerService$RestoreGetSetsParams;,
        Lcom/android/server/backup/BackupManagerService$RestoreParams;,
        Lcom/android/server/backup/BackupManagerService$RestorePolicy;,
        Lcom/android/server/backup/BackupManagerService$RunBackupReceiver;,
        Lcom/android/server/backup/BackupManagerService$RunInitializeReceiver;,
        Lcom/android/server/backup/BackupManagerService$TransportConnection;,
        Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;
    }
.end annotation


# static fields
.field static final BACKUP_ENABLE_FILE:Ljava/lang/String; = "backup_enabled"

.field static final BACKUP_FILE_HEADER_MAGIC:Ljava/lang/String; = "ANDROID BACKUP\n"

.field static final BACKUP_FILE_VERSION:I = 0x4

.field static final BACKUP_MANIFEST_FILENAME:Ljava/lang/String; = "_manifest"

.field static final BACKUP_MANIFEST_VERSION:I = 0x1

.field static final BACKUP_METADATA_FILENAME:Ljava/lang/String; = "_meta"

.field static final BACKUP_METADATA_VERSION:I = 0x1

.field static final BACKUP_PW_FILE_VERSION:I = 0x2

.field static final BACKUP_WIDGET_METADATA_TOKEN:I = 0x1ffed01

.field static final BUSY_BACKOFF_FUZZ:I = 0x6ddd00

.field static final BUSY_BACKOFF_MIN_MILLIS:J = 0x36ee80L

.field static final COMPRESS_FULL_BACKUPS:Z = true

.field static final CURRENT_ANCESTRAL_RECORD_VERSION:I = 0x1

.field static final DEBUG:Z = true

.field static final DEBUG_BACKUP_TRACE:Z = true

.field static final DEBUG_SCHEDULING:Z = true

.field static final ENCRYPTION_ALGORITHM_NAME:Ljava/lang/String; = "AES-256"

.field static final INIT_SENTINEL_FILE_NAME:Ljava/lang/String; = "_need_init_"

.field static final KEY_WIDGET_STATE:Ljava/lang/String; = "\uffed\uffedwidget"

.field static final MIN_FULL_BACKUP_INTERVAL:J = 0x5265c00L

.field static final MORE_DEBUG:Z = false

.field static final MSG_BACKUP_RESTORE_STEP:I = 0x14

.field private static final MSG_FULL_CONFIRMATION_TIMEOUT:I = 0x9

.field static final MSG_OP_COMPLETE:I = 0x15

.field private static final MSG_REQUEST_BACKUP:I = 0xf

.field private static final MSG_RESTORE_TIMEOUT:I = 0x8

.field private static final MSG_RETRY_CLEAR:I = 0xc

.field private static final MSG_RETRY_INIT:I = 0xb

.field private static final MSG_RUN_ADB_BACKUP:I = 0x2

.field private static final MSG_RUN_ADB_RESTORE:I = 0xa

.field private static final MSG_RUN_BACKUP:I = 0x1

.field private static final MSG_RUN_CLEAR:I = 0x4

.field private static final MSG_RUN_FULL_TRANSPORT_BACKUP:I = 0xe

.field private static final MSG_RUN_GET_RESTORE_SETS:I = 0x6

.field private static final MSG_RUN_INITIALIZE:I = 0x5

.field private static final MSG_RUN_RESTORE:I = 0x3

.field private static final MSG_SCHEDULE_BACKUP_PACKAGE:I = 0x10

.field private static final MSG_TIMEOUT:I = 0x7

.field private static final MSG_WIDGET_BROADCAST:I = 0xd

.field static final OP_ACKNOWLEDGED:I = 0x1

.field static final OP_PENDING:I = 0x0

.field static final OP_TIMEOUT:I = -0x1

.field static final PACKAGE_MANAGER_SENTINEL:Ljava/lang/String; = "@pm@"

.field static final PBKDF2_HASH_ROUNDS:I = 0x2710

.field static final PBKDF2_KEY_SIZE:I = 0x100

.field static final PBKDF2_SALT_SIZE:I = 0x200

.field static final PBKDF_CURRENT:Ljava/lang/String; = "PBKDF2WithHmacSHA1"

.field static final PBKDF_FALLBACK:Ljava/lang/String; = "PBKDF2WithHmacSHA1And8bit"

.field private static final RUN_BACKUP_ACTION:Ljava/lang/String; = "android.app.backup.intent.RUN"

.field private static final RUN_INITIALIZE_ACTION:Ljava/lang/String; = "android.app.backup.intent.INIT"

.field static final SCHEDULE_FILE_VERSION:I = 0x1

.field static final SERVICE_ACTION_TRANSPORT_HOST:Ljava/lang/String; = "android.backup.TRANSPORT_HOST"

.field static final SETTINGS_PACKAGE:Ljava/lang/String; = "com.android.providers.settings"

.field static final SHARED_BACKUP_AGENT_PACKAGE:Ljava/lang/String; = "com.android.sharedstoragebackup"

.field private static final TAG:Ljava/lang/String; = "BackupManagerService"

.field static final TIMEOUT_BACKUP_INTERVAL:J = 0x7530L

.field static final TIMEOUT_FULL_BACKUP_INTERVAL:J = 0x493e0L

.field static final TIMEOUT_FULL_CONFIRMATION:J = 0xea60L

.field static final TIMEOUT_INTERVAL:J = 0x2710L

.field static final TIMEOUT_RESTORE_FINISHED_INTERVAL:J = 0x7530L

.field static final TIMEOUT_RESTORE_INTERVAL:J = 0xea60L

.field static final TIMEOUT_SHARED_BACKUP_INTERVAL:J = 0x1b7740L

.field private static final TRANSPORT_RETRY_INTERVAL:J = 0x36ee80L

.field static sInstance:Lcom/android/server/backup/Trampoline;


# instance fields
.field mActiveRestoreSession:Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;

.field private mActivityManager:Landroid/app/IActivityManager;

.field final mAgentConnectLock:Ljava/lang/Object;

.field private mAlarmManager:Landroid/app/AlarmManager;

.field mAncestralPackages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mAncestralToken:J

.field mAutoRestore:Z

.field mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

.field mBackupManagerBinder:Landroid/app/backup/IBackupManager;

.field final mBackupParticipants:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field volatile mBackupRunning:Z

.field final mBackupTrace:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mBaseStateDir:Ljava/io/File;

.field mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field final mClearDataLock:Ljava/lang/Object;

.field volatile mClearingData:Z

.field mConnectedAgent:Landroid/app/IBackupAgent;

.field volatile mConnecting:Z

.field mContext:Landroid/content/Context;

.field final mCurrentOpLock:Ljava/lang/Object;

.field final mCurrentOperations:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/backup/BackupManagerService$Operation;",
            ">;"
        }
    .end annotation
.end field

.field mCurrentToken:J

.field mCurrentTransport:Ljava/lang/String;

.field mDataDir:Ljava/io/File;

.field mEnabled:Z

.field private mEverStored:Ljava/io/File;

.field mEverStoredApps:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mFullBackupQueue:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mQueueLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/backup/BackupManagerService$FullBackupEntry;",
            ">;"
        }
    .end annotation
.end field

.field mFullBackupScheduleFile:Ljava/io/File;

.field mFullBackupScheduleWriter:Ljava/lang/Runnable;

.field final mFullConfirmations:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/backup/BackupManagerService$FullParams;",
            ">;"
        }
    .end annotation
.end field

.field mHandlerThread:Landroid/os/HandlerThread;

.field mJournal:Ljava/io/File;

.field mJournalDir:Ljava/io/File;

.field volatile mLastBackupPass:J

.field private mMountService:Landroid/os/storage/IMountService;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field mPackageManagerBinder:Landroid/content/pm/IPackageManager;

.field private mPasswordHash:Ljava/lang/String;

.field private mPasswordHashFile:Ljava/io/File;

.field private mPasswordSalt:[B

.field private mPasswordVersion:I

.field private mPasswordVersionFile:Ljava/io/File;

.field mPendingBackups:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/backup/BackupManagerService$BackupRequest;",
            ">;"
        }
    .end annotation
.end field

.field mPendingInits:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPowerManager:Landroid/os/PowerManager;

.field mProvisioned:Z

.field mProvisionedObserver:Landroid/database/ContentObserver;

.field final mQueueLock:Ljava/lang/Object;

.field private final mRng:Ljava/security/SecureRandom;

.field mRunBackupIntent:Landroid/app/PendingIntent;

.field mRunBackupReceiver:Landroid/content/BroadcastReceiver;

.field mRunInitIntent:Landroid/app/PendingIntent;

.field mRunInitReceiver:Landroid/content/BroadcastReceiver;

.field mRunningFullBackupTask:Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mQueueLock"
    .end annotation
.end field

.field mTokenFile:Ljava/io/File;

.field final mTokenGenerator:Ljava/util/Random;

.field final mTransportConnections:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/backup/BackupManagerService$TransportConnection;",
            ">;"
        }
    .end annotation
.end field

.field final mTransportNames:Landroid/util/ArrayMap;
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

.field final mTransportServiceIntent:Landroid/content/Intent;

.field final mTransportWhitelist:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field final mTransports:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/backup/IBackupTransport;",
            ">;"
        }
    .end annotation
.end field

.field mWakelock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static synthetic -get0(Lcom/android/server/backup/BackupManagerService;)Landroid/app/IActivityManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mActivityManager:Landroid/app/IActivityManager;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/backup/BackupManagerService;)Landroid/app/AlarmManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/backup/BackupManagerService;)Landroid/content/pm/PackageManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/backup/BackupManagerService;)Ljava/security/SecureRandom;
    .locals 1

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mRng:Ljava/security/SecureRandom;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/content/pm/PackageInfo;)Z
    .locals 1
    .param p0, "pkg"    # Landroid/content/pm/PackageInfo;

    .prologue
    invoke-static {p0}, Lcom/android/server/backup/BackupManagerService;->appGetsFullBackup(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Landroid/content/pm/PackageInfo;)Z
    .locals 1
    .param p0, "pkg"    # Landroid/content/pm/PackageInfo;

    .prologue
    invoke-static {p0}, Lcom/android/server/backup/BackupManagerService;->appIsKeyValueOnly(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/android/server/backup/BackupManagerService;[B)Ljava/lang/String;
    .locals 1
    .param p1, "data"    # [B

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/backup/BackupManagerService;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap11(Lcom/android/server/backup/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;)Ljava/lang/String;
    .locals 1
    .param p1, "transport"    # Lcom/android/internal/backup/IBackupTransport;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/backup/BackupManagerService;->getTransportName(Lcom/android/internal/backup/IBackupTransport;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap12(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;Ljava/lang/String;[BI)Ljavax/crypto/SecretKey;
    .locals 1
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/lang/String;
    .param p3, "salt"    # [B
    .param p4, "rounds"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/backup/BackupManagerService;->buildPasswordKey(Ljava/lang/String;Ljava/lang/String;[BI)Ljavax/crypto/SecretKey;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap13(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/backup/BackupManagerService;->dataChangedImpl(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap14(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;Ljava/util/HashSet;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "targets"    # Ljava/util/HashSet;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/backup/BackupManagerService;->dataChangedImpl(Ljava/lang/String;Ljava/util/HashSet;)V

    return-void
.end method

.method static synthetic -wrap15(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/backup/IBackupTransport;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "component"    # Ljava/lang/String;
    .param p3, "transport"    # Lcom/android/internal/backup/IBackupTransport;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/backup/BackupManagerService;->registerTransport(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/backup/IBackupTransport;)V

    return-void
.end method

.method static synthetic -wrap16(Lcom/android/server/backup/BackupManagerService;Landroid/os/ParcelFileDescriptor;Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "inPipe"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "out"    # Ljava/io/OutputStream;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/backup/BackupManagerService;->routeSocketDataToOutput(Landroid/os/ParcelFileDescriptor;Ljava/io/OutputStream;)V

    return-void
.end method

.method static synthetic -wrap17(Landroid/app/backup/IBackupObserver;I)V
    .locals 0
    .param p0, "observer"    # Landroid/app/backup/IBackupObserver;
    .param p1, "status"    # I

    .prologue
    invoke-static {p0, p1}, Lcom/android/server/backup/BackupManagerService;->sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V

    return-void
.end method

.method static synthetic -wrap18(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V
    .locals 0
    .param p0, "observer"    # Landroid/app/backup/IBackupObserver;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "status"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/android/server/backup/BackupManagerService;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic -wrap19(Landroid/app/backup/IBackupObserver;Ljava/lang/String;Landroid/app/backup/BackupProgress;)V
    .locals 0
    .param p0, "observer"    # Landroid/app/backup/IBackupObserver;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "progress"    # Landroid/app/backup/BackupProgress;

    .prologue
    invoke-static {p0, p1, p2}, Lcom/android/server/backup/BackupManagerService;->sendBackupOnUpdate(Landroid/app/backup/IBackupObserver;Ljava/lang/String;Landroid/app/backup/BackupProgress;)V

    return-void
.end method

.method static synthetic -wrap2(Landroid/content/pm/ApplicationInfo;)Z
    .locals 1
    .param p0, "app"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    invoke-static {p0}, Lcom/android/server/backup/BackupManagerService;->appIsStopped(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap20(ZI)V
    .locals 0
    .param p0, "enable"    # Z
    .param p1, "userId"    # I

    .prologue
    invoke-static {p0, p1}, Lcom/android/server/backup/BackupManagerService;->writeBackupEnableState(ZI)V

    return-void
.end method

.method static synthetic -wrap21(Lcom/android/server/backup/BackupManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/backup/BackupManagerService;->writeFullBackupScheduleAsync()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)Z
    .locals 1
    .param p1, "currentPw"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/backup/BackupManagerService;->backupPasswordMatches(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(I)Z
    .locals 1
    .param p0, "userId"    # I

    .prologue
    invoke-static {p0}, Lcom/android/server/backup/BackupManagerService;->backupSettingMigrated(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap5(I)Z
    .locals 1
    .param p0, "userId"    # I

    .prologue
    invoke-static {p0}, Lcom/android/server/backup/BackupManagerService;->readBackupEnableState(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap6(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)[B
    .locals 1
    .param p1, "digits"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/backup/BackupManagerService;->hexToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap7(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;[B[BI)[B
    .locals 1
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "pwBytes"    # [B
    .param p3, "salt"    # [B
    .param p4, "rounds"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/backup/BackupManagerService;->makeKeyChecksum(Ljava/lang/String;[B[BI)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap8(Lcom/android/server/backup/BackupManagerService;I)[B
    .locals 1
    .param p1, "bits"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/backup/BackupManagerService;->randomBytes(I)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap9(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;
    .locals 1
    .param p1, "transportName"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/backup/BackupManagerService;->getTransport(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/backup/Trampoline;)V
    .locals 24
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Lcom/android/server/backup/Trampoline;

    .prologue
    .line 1075
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 284
    new-instance v20, Landroid/util/SparseArray;

    invoke-direct/range {v20 .. v20}, Landroid/util/SparseArray;-><init>()V

    .line 283
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    .line 299
    new-instance v20, Ljava/util/HashMap;

    invoke-direct/range {v20 .. v20}, Ljava/util/HashMap;-><init>()V

    .line 298
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mPendingBackups:Ljava/util/HashMap;

    .line 305
    new-instance v20, Ljava/lang/Object;

    invoke-direct/range {v20 .. v20}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    .line 311
    new-instance v20, Ljava/lang/Object;

    invoke-direct/range {v20 .. v20}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mAgentConnectLock:Ljava/lang/Object;

    .line 319
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mBackupTrace:Ljava/util/List;

    .line 322
    new-instance v20, Ljava/lang/Object;

    invoke-direct/range {v20 .. v20}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mClearDataLock:Ljava/lang/Object;

    .line 327
    new-instance v20, Landroid/content/Intent;

    const-string/jumbo v21, "android.backup.TRANSPORT_HOST"

    invoke-direct/range {v20 .. v21}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mTransportServiceIntent:Landroid/content/Intent;

    .line 329
    new-instance v20, Landroid/util/ArrayMap;

    invoke-direct/range {v20 .. v20}, Landroid/util/ArrayMap;-><init>()V

    .line 328
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mTransportNames:Landroid/util/ArrayMap;

    .line 331
    new-instance v20, Landroid/util/ArrayMap;

    invoke-direct/range {v20 .. v20}, Landroid/util/ArrayMap;-><init>()V

    .line 330
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mTransports:Landroid/util/ArrayMap;

    .line 333
    new-instance v20, Landroid/util/ArrayMap;

    invoke-direct/range {v20 .. v20}, Landroid/util/ArrayMap;-><init>()V

    .line 332
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mTransportConnections:Landroid/util/ArrayMap;

    .line 607
    new-instance v20, Landroid/util/SparseArray;

    invoke-direct/range {v20 .. v20}, Landroid/util/SparseArray;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    .line 608
    new-instance v20, Ljava/lang/Object;

    invoke-direct/range {v20 .. v20}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    .line 609
    new-instance v20, Ljava/util/Random;

    invoke-direct/range {v20 .. v20}, Ljava/util/Random;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mTokenGenerator:Ljava/util/Random;

    .line 611
    new-instance v20, Landroid/util/SparseArray;

    invoke-direct/range {v20 .. v20}, Landroid/util/SparseArray;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mFullConfirmations:Landroid/util/SparseArray;

    .line 625
    new-instance v20, Ljava/security/SecureRandom;

    invoke-direct/range {v20 .. v20}, Ljava/security/SecureRandom;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mRng:Ljava/security/SecureRandom;

    .line 642
    new-instance v20, Ljava/util/HashSet;

    invoke-direct/range {v20 .. v20}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mEverStoredApps:Ljava/util/HashSet;

    .line 646
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mAncestralPackages:Ljava/util/Set;

    .line 647
    const-wide/16 v20, 0x0

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/backup/BackupManagerService;->mAncestralToken:J

    .line 648
    const-wide/16 v20, 0x0

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/backup/BackupManagerService;->mCurrentToken:J

    .line 652
    new-instance v20, Ljava/util/HashSet;

    invoke-direct/range {v20 .. v20}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mPendingInits:Ljava/util/HashSet;

    .line 1492
    new-instance v20, Lcom/android/server/backup/BackupManagerService$1;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/backup/BackupManagerService$1;-><init>(Lcom/android/server/backup/BackupManagerService;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mFullBackupScheduleWriter:Ljava/lang/Runnable;

    .line 1874
    new-instance v20, Lcom/android/server/backup/BackupManagerService$2;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/backup/BackupManagerService$2;-><init>(Lcom/android/server/backup/BackupManagerService;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1076
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    .line 1077
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 1078
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mPackageManagerBinder:Landroid/content/pm/IPackageManager;

    .line 1079
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mActivityManager:Landroid/app/IActivityManager;

    .line 1081
    const-string/jumbo v20, "alarm"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/app/AlarmManager;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 1082
    const-string/jumbo v20, "power"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/os/PowerManager;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mPowerManager:Landroid/os/PowerManager;

    .line 1083
    const-string/jumbo v20, "mount"

    invoke-static/range {v20 .. v20}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mMountService:Landroid/os/storage/IMountService;

    .line 1085
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/backup/Trampoline;->asBinder()Landroid/os/IBinder;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/server/backup/Trampoline;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mBackupManagerBinder:Landroid/app/backup/IBackupManager;

    .line 1088
    new-instance v20, Landroid/os/HandlerThread;

    const-string/jumbo v21, "backup"

    const/16 v22, 0xa

    invoke-direct/range {v20 .. v22}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 1089
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/os/HandlerThread;->start()V

    .line 1090
    new-instance v20, Lcom/android/server/backup/BackupManagerService$BackupHandler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/server/backup/BackupManagerService$BackupHandler;-><init>(Lcom/android/server/backup/BackupManagerService;Landroid/os/Looper;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    .line 1093
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    .line 1095
    .local v14, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v20, "device_provisioned"

    const/16 v21, 0x0

    .line 1094
    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v14, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v20

    if-eqz v20, :cond_6

    const/16 v20, 0x1

    :goto_0
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/backup/BackupManagerService;->mProvisioned:Z

    .line 1097
    const-string/jumbo v20, "backup_auto_restore"

    const/16 v21, 0x1

    .line 1096
    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v14, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v20

    if-eqz v20, :cond_7

    const/16 v20, 0x1

    :goto_1
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/backup/BackupManagerService;->mAutoRestore:Z

    .line 1099
    new-instance v20, Lcom/android/server/backup/BackupManagerService$ProvisionedObserver;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/server/backup/BackupManagerService$ProvisionedObserver;-><init>(Lcom/android/server/backup/BackupManagerService;Landroid/os/Handler;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mProvisionedObserver:Landroid/database/ContentObserver;

    .line 1101
    const-string/jumbo v20, "device_provisioned"

    invoke-static/range {v20 .. v20}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v20

    .line 1102
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mProvisionedObserver:Landroid/database/ContentObserver;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    .line 1100
    move-object/from16 v0, v20

    move/from16 v1, v22

    move-object/from16 v2, v21

    invoke-virtual {v14, v0, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1106
    new-instance v20, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v21

    const-string/jumbo v22, "backup"

    invoke-direct/range {v20 .. v22}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    .line 1107
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->mkdirs()Z

    .line 1108
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    move-result v20

    if-nez v20, :cond_0

    .line 1109
    const-string/jumbo v20, "BackupManagerService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "SELinux restorecon failed on "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    :cond_0
    new-instance v20, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDownloadCacheDirectory()Ljava/io/File;

    move-result-object v21

    const-string/jumbo v22, "backup_stage"

    invoke-direct/range {v20 .. v22}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mDataDir:Ljava/io/File;

    .line 1115
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/backup/BackupManagerService;->mPasswordVersion:I

    .line 1116
    new-instance v20, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    move-object/from16 v21, v0

    const-string/jumbo v22, "pwversion"

    invoke-direct/range {v20 .. v22}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mPasswordVersionFile:Ljava/io/File;

    .line 1117
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mPasswordVersionFile:Ljava/io/File;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->exists()Z

    move-result v20

    if-eqz v20, :cond_2

    .line 1118
    const/4 v7, 0x0

    .line 1119
    .local v7, "fin":Ljava/io/FileInputStream;
    const/4 v11, 0x0

    .line 1121
    .local v11, "in":Ljava/io/DataInputStream;
    :try_start_0
    new-instance v8, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mPasswordVersionFile:Ljava/io/File;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-direct {v8, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1122
    .end local v7    # "fin":Ljava/io/FileInputStream;
    .local v8, "fin":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v12, Ljava/io/DataInputStream;

    invoke-direct {v12, v8}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 1123
    .local v12, "in":Ljava/io/DataInputStream;
    :try_start_2
    invoke-virtual {v12}, Ljava/io/DataInputStream;->readInt()I

    .end local v11    # "in":Ljava/io/DataInputStream;
    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/backup/BackupManagerService;->mPasswordVersion:I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_b
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    .line 1128
    if-eqz v12, :cond_1

    :try_start_3
    invoke-virtual {v12}, Ljava/io/DataInputStream;->close()V

    .line 1129
    :cond_1
    if-eqz v8, :cond_2

    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1136
    .end local v8    # "fin":Ljava/io/FileInputStream;
    .end local v12    # "in":Ljava/io/DataInputStream;
    :cond_2
    :goto_2
    new-instance v20, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    move-object/from16 v21, v0

    const-string/jumbo v22, "pwhash"

    invoke-direct/range {v20 .. v22}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mPasswordHashFile:Ljava/io/File;

    .line 1137
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mPasswordHashFile:Ljava/io/File;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->exists()Z

    move-result v20

    if-eqz v20, :cond_4

    .line 1138
    const/4 v7, 0x0

    .line 1139
    .restart local v7    # "fin":Ljava/io/FileInputStream;
    const/4 v11, 0x0

    .line 1141
    .restart local v11    # "in":Ljava/io/DataInputStream;
    :try_start_4
    new-instance v8, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mPasswordHashFile:Ljava/io/File;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-direct {v8, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1142
    .end local v7    # "fin":Ljava/io/FileInputStream;
    .restart local v8    # "fin":Ljava/io/FileInputStream;
    :try_start_5
    new-instance v12, Ljava/io/DataInputStream;

    new-instance v20, Ljava/io/BufferedInputStream;

    move-object/from16 v0, v20

    invoke-direct {v0, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v20

    invoke-direct {v12, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_8
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 1145
    .restart local v12    # "in":Ljava/io/DataInputStream;
    :try_start_6
    invoke-virtual {v12}, Ljava/io/DataInputStream;->readInt()I

    .end local v11    # "in":Ljava/io/DataInputStream;
    move-result v16

    .line 1146
    .local v16, "saltLen":I
    move/from16 v0, v16

    new-array v15, v0, [B

    .line 1147
    .local v15, "salt":[B
    invoke-virtual {v12, v15}, Ljava/io/DataInputStream;->readFully([B)V

    .line 1148
    invoke-virtual {v12}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mPasswordHash:Ljava/lang/String;

    .line 1149
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/server/backup/BackupManagerService;->mPasswordSalt:[B
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_9
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 1154
    if-eqz v12, :cond_3

    :try_start_7
    invoke-virtual {v12}, Ljava/io/DataInputStream;->close()V

    .line 1155
    :cond_3
    if-eqz v8, :cond_4

    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 1163
    .end local v8    # "fin":Ljava/io/FileInputStream;
    .end local v12    # "in":Ljava/io/DataInputStream;
    .end local v15    # "salt":[B
    .end local v16    # "saltLen":I
    :cond_4
    :goto_3
    new-instance v20, Lcom/android/server/backup/BackupManagerService$RunBackupReceiver;

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/server/backup/BackupManagerService$RunBackupReceiver;-><init>(Lcom/android/server/backup/BackupManagerService;Lcom/android/server/backup/BackupManagerService$RunBackupReceiver;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mRunBackupReceiver:Landroid/content/BroadcastReceiver;

    .line 1164
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 1165
    .local v6, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v20, "android.app.backup.intent.RUN"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1166
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mRunBackupReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v20, v0

    .line 1167
    const-string/jumbo v21, "android.permission.BACKUP"

    const/16 v22, 0x0

    .line 1166
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v6, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1169
    new-instance v20, Lcom/android/server/backup/BackupManagerService$RunInitializeReceiver;

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/server/backup/BackupManagerService$RunInitializeReceiver;-><init>(Lcom/android/server/backup/BackupManagerService;Lcom/android/server/backup/BackupManagerService$RunInitializeReceiver;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mRunInitReceiver:Landroid/content/BroadcastReceiver;

    .line 1170
    new-instance v6, Landroid/content/IntentFilter;

    .end local v6    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 1171
    .restart local v6    # "filter":Landroid/content/IntentFilter;
    const-string/jumbo v20, "android.app.backup.intent.INIT"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mRunInitReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v20, v0

    .line 1173
    const-string/jumbo v21, "android.permission.BACKUP"

    const/16 v22, 0x0

    .line 1172
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v6, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1175
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v20, "android.app.backup.intent.RUN"

    move-object/from16 v0, v20

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1176
    .local v4, "backupIntent":Landroid/content/Intent;
    const/high16 v20, 0x40000000    # 2.0f

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1177
    const/16 v20, 0x1

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v4, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mRunBackupIntent:Landroid/app/PendingIntent;

    .line 1179
    new-instance v13, Landroid/content/Intent;

    const-string/jumbo v20, "android.app.backup.intent.INIT"

    move-object/from16 v0, v20

    invoke-direct {v13, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1180
    .local v13, "initIntent":Landroid/content/Intent;
    const/high16 v20, 0x40000000    # 2.0f

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1181
    const/16 v20, 0x5

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v13, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mRunInitIntent:Landroid/app/PendingIntent;

    .line 1184
    new-instance v20, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    move-object/from16 v21, v0

    const-string/jumbo v22, "pending"

    invoke-direct/range {v20 .. v22}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mJournalDir:Ljava/io/File;

    .line 1185
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mJournalDir:Ljava/io/File;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->mkdirs()Z

    .line 1186
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mJournal:Ljava/io/File;

    .line 1189
    new-instance v20, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    move-object/from16 v21, v0

    const-string/jumbo v22, "fb-schedule"

    invoke-direct/range {v20 .. v22}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mFullBackupScheduleFile:Ljava/io/File;

    .line 1190
    invoke-direct/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService;->initPackageTracking()V

    .line 1195
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    move-object/from16 v20, v0

    monitor-enter v20

    .line 1196
    const/16 v21, 0x0

    :try_start_8
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService;->addPackageParticipantsLocked([Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    monitor-exit v20

    .line 1201
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v17

    .line 1202
    .local v17, "systemConfig":Lcom/android/server/SystemConfig;
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/SystemConfig;->getBackupTransportWhitelist()Landroid/util/ArraySet;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mTransportWhitelist:Landroid/util/ArraySet;

    .line 1204
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    .line 1205
    const-string/jumbo v21, "backup_transport"

    .line 1204
    invoke-static/range {v20 .. v21}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1206
    .local v18, "transport":Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 1207
    const/16 v18, 0x0

    .line 1209
    .end local v18    # "transport":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mCurrentTransport:Ljava/lang/String;

    .line 1210
    const-string/jumbo v20, "BackupManagerService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "Starting with transport "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mCurrentTransport:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v20, v0

    .line 1215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mTransportServiceIntent:Landroid/content/Intent;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    .line 1214
    invoke-virtual/range {v20 .. v23}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v9

    .line 1217
    .local v9, "hosts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const-string/jumbo v21, "BackupManagerService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "Found transports: "

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    if-nez v9, :cond_e

    const-string/jumbo v20, "null"

    :goto_4
    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1219
    if-eqz v9, :cond_f

    .line 1220
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_5
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v10, v0, :cond_f

    .line 1221
    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v19, v0

    .line 1225
    .local v19, "transportService":Landroid/content/pm/ServiceInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService;->tryBindTransport(Landroid/content/pm/ServiceInfo;)Z

    .line 1220
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 1094
    .end local v4    # "backupIntent":Landroid/content/Intent;
    .end local v6    # "filter":Landroid/content/IntentFilter;
    .end local v9    # "hosts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v10    # "i":I
    .end local v13    # "initIntent":Landroid/content/Intent;
    .end local v17    # "systemConfig":Lcom/android/server/SystemConfig;
    .end local v19    # "transportService":Landroid/content/pm/ServiceInfo;
    :cond_6
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 1096
    :cond_7
    const/16 v20, 0x0

    goto/16 :goto_1

    .line 1130
    .restart local v8    # "fin":Ljava/io/FileInputStream;
    .restart local v12    # "in":Ljava/io/DataInputStream;
    :catch_0
    move-exception v5

    .line 1131
    .local v5, "e":Ljava/io/IOException;
    const-string/jumbo v20, "BackupManagerService"

    const-string/jumbo v21, "Error closing pw version files"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1124
    .end local v5    # "e":Ljava/io/IOException;
    .end local v8    # "fin":Ljava/io/FileInputStream;
    .end local v12    # "in":Ljava/io/DataInputStream;
    .restart local v7    # "fin":Ljava/io/FileInputStream;
    .restart local v11    # "in":Ljava/io/DataInputStream;
    :catch_1
    move-exception v5

    .line 1125
    .end local v7    # "fin":Ljava/io/FileInputStream;
    .end local v11    # "in":Ljava/io/DataInputStream;
    .restart local v5    # "e":Ljava/io/IOException;
    :goto_6
    :try_start_9
    const-string/jumbo v20, "BackupManagerService"

    const-string/jumbo v21, "Unable to read backup pw version"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 1128
    if-eqz v11, :cond_8

    :try_start_a
    invoke-virtual {v11}, Ljava/io/DataInputStream;->close()V

    .line 1129
    :cond_8
    if-eqz v7, :cond_2

    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    goto/16 :goto_2

    .line 1130
    :catch_2
    move-exception v5

    .line 1131
    const-string/jumbo v20, "BackupManagerService"

    const-string/jumbo v21, "Error closing pw version files"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1126
    .end local v5    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v20

    .line 1128
    :goto_7
    if-eqz v11, :cond_9

    :try_start_b
    invoke-virtual {v11}, Ljava/io/DataInputStream;->close()V

    .line 1129
    :cond_9
    if-eqz v7, :cond_a

    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3

    .line 1126
    :cond_a
    :goto_8
    throw v20

    .line 1130
    :catch_3
    move-exception v5

    .line 1131
    .restart local v5    # "e":Ljava/io/IOException;
    const-string/jumbo v21, "BackupManagerService"

    const-string/jumbo v22, "Error closing pw version files"

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 1156
    .end local v5    # "e":Ljava/io/IOException;
    .restart local v8    # "fin":Ljava/io/FileInputStream;
    .restart local v12    # "in":Ljava/io/DataInputStream;
    .restart local v15    # "salt":[B
    .restart local v16    # "saltLen":I
    :catch_4
    move-exception v5

    .line 1157
    .restart local v5    # "e":Ljava/io/IOException;
    const-string/jumbo v20, "BackupManagerService"

    const-string/jumbo v21, "Unable to close streams"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1150
    .end local v5    # "e":Ljava/io/IOException;
    .end local v8    # "fin":Ljava/io/FileInputStream;
    .end local v12    # "in":Ljava/io/DataInputStream;
    .end local v15    # "salt":[B
    .end local v16    # "saltLen":I
    .restart local v7    # "fin":Ljava/io/FileInputStream;
    .restart local v11    # "in":Ljava/io/DataInputStream;
    :catch_5
    move-exception v5

    .line 1151
    .end local v7    # "fin":Ljava/io/FileInputStream;
    .end local v11    # "in":Ljava/io/DataInputStream;
    .restart local v5    # "e":Ljava/io/IOException;
    :goto_9
    :try_start_c
    const-string/jumbo v20, "BackupManagerService"

    const-string/jumbo v21, "Unable to read saved backup pw hash"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 1154
    if-eqz v11, :cond_b

    :try_start_d
    invoke-virtual {v11}, Ljava/io/DataInputStream;->close()V

    .line 1155
    :cond_b
    if-eqz v7, :cond_4

    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_6

    goto/16 :goto_3

    .line 1156
    :catch_6
    move-exception v5

    .line 1157
    const-string/jumbo v20, "BackupManagerService"

    const-string/jumbo v21, "Unable to close streams"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1152
    .end local v5    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v20

    .line 1154
    :goto_a
    if-eqz v11, :cond_c

    :try_start_e
    invoke-virtual {v11}, Ljava/io/DataInputStream;->close()V

    .line 1155
    :cond_c
    if-eqz v7, :cond_d

    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_7

    .line 1152
    :cond_d
    :goto_b
    throw v20

    .line 1156
    :catch_7
    move-exception v5

    .line 1157
    .restart local v5    # "e":Ljava/io/IOException;
    const-string/jumbo v21, "BackupManagerService"

    const-string/jumbo v22, "Unable to close streams"

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 1195
    .end local v5    # "e":Ljava/io/IOException;
    .restart local v4    # "backupIntent":Landroid/content/Intent;
    .restart local v6    # "filter":Landroid/content/IntentFilter;
    .restart local v13    # "initIntent":Landroid/content/Intent;
    :catchall_2
    move-exception v21

    monitor-exit v20

    throw v21

    .line 1217
    .restart local v9    # "hosts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v17    # "systemConfig":Lcom/android/server/SystemConfig;
    :cond_e
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    goto/16 :goto_4

    .line 1231
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    move-object/from16 v20, v0

    new-instance v21, Lcom/android/server/backup/BackupManagerService$-void__init__android_content_Context_context_com_android_server_backup_Trampoline_parent_LambdaImpl0;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/backup/BackupManagerService$-void__init__android_content_Context_context_com_android_server_backup_Trampoline_parent_LambdaImpl0;-><init>(Lcom/android/server/backup/BackupManagerService;)V

    invoke-virtual/range {v20 .. v21}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->post(Ljava/lang/Runnable;)Z

    .line 1234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mPowerManager:Landroid/os/PowerManager;

    move-object/from16 v20, v0

    const-string/jumbo v21, "*backup*"

    const/16 v22, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v22

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    .line 1075
    return-void

    .line 1152
    .end local v4    # "backupIntent":Landroid/content/Intent;
    .end local v6    # "filter":Landroid/content/IntentFilter;
    .end local v9    # "hosts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v13    # "initIntent":Landroid/content/Intent;
    .end local v17    # "systemConfig":Lcom/android/server/SystemConfig;
    .restart local v8    # "fin":Ljava/io/FileInputStream;
    .restart local v11    # "in":Ljava/io/DataInputStream;
    :catchall_3
    move-exception v20

    move-object v7, v8

    .end local v8    # "fin":Ljava/io/FileInputStream;
    .local v7, "fin":Ljava/io/FileInputStream;
    goto :goto_a

    .end local v7    # "fin":Ljava/io/FileInputStream;
    .end local v11    # "in":Ljava/io/DataInputStream;
    .restart local v8    # "fin":Ljava/io/FileInputStream;
    .restart local v12    # "in":Ljava/io/DataInputStream;
    :catchall_4
    move-exception v20

    move-object v11, v12

    .end local v12    # "in":Ljava/io/DataInputStream;
    .local v11, "in":Ljava/io/DataInputStream;
    move-object v7, v8

    .end local v8    # "fin":Ljava/io/FileInputStream;
    .restart local v7    # "fin":Ljava/io/FileInputStream;
    goto :goto_a

    .line 1150
    .end local v7    # "fin":Ljava/io/FileInputStream;
    .restart local v8    # "fin":Ljava/io/FileInputStream;
    .local v11, "in":Ljava/io/DataInputStream;
    :catch_8
    move-exception v5

    .restart local v5    # "e":Ljava/io/IOException;
    move-object v7, v8

    .end local v8    # "fin":Ljava/io/FileInputStream;
    .restart local v7    # "fin":Ljava/io/FileInputStream;
    goto :goto_9

    .end local v5    # "e":Ljava/io/IOException;
    .end local v7    # "fin":Ljava/io/FileInputStream;
    .end local v11    # "in":Ljava/io/DataInputStream;
    .restart local v8    # "fin":Ljava/io/FileInputStream;
    .restart local v12    # "in":Ljava/io/DataInputStream;
    :catch_9
    move-exception v5

    .restart local v5    # "e":Ljava/io/IOException;
    move-object v11, v12

    .end local v12    # "in":Ljava/io/DataInputStream;
    .local v11, "in":Ljava/io/DataInputStream;
    move-object v7, v8

    .end local v8    # "fin":Ljava/io/FileInputStream;
    .restart local v7    # "fin":Ljava/io/FileInputStream;
    goto :goto_9

    .line 1126
    .end local v5    # "e":Ljava/io/IOException;
    .end local v7    # "fin":Ljava/io/FileInputStream;
    .restart local v8    # "fin":Ljava/io/FileInputStream;
    .local v11, "in":Ljava/io/DataInputStream;
    :catchall_5
    move-exception v20

    move-object v7, v8

    .end local v8    # "fin":Ljava/io/FileInputStream;
    .restart local v7    # "fin":Ljava/io/FileInputStream;
    goto/16 :goto_7

    .end local v7    # "fin":Ljava/io/FileInputStream;
    .end local v11    # "in":Ljava/io/DataInputStream;
    .restart local v8    # "fin":Ljava/io/FileInputStream;
    .restart local v12    # "in":Ljava/io/DataInputStream;
    :catchall_6
    move-exception v20

    move-object v11, v12

    .end local v12    # "in":Ljava/io/DataInputStream;
    .local v11, "in":Ljava/io/DataInputStream;
    move-object v7, v8

    .end local v8    # "fin":Ljava/io/FileInputStream;
    .restart local v7    # "fin":Ljava/io/FileInputStream;
    goto/16 :goto_7

    .line 1124
    .end local v7    # "fin":Ljava/io/FileInputStream;
    .restart local v8    # "fin":Ljava/io/FileInputStream;
    .local v11, "in":Ljava/io/DataInputStream;
    :catch_a
    move-exception v5

    .restart local v5    # "e":Ljava/io/IOException;
    move-object v7, v8

    .end local v8    # "fin":Ljava/io/FileInputStream;
    .restart local v7    # "fin":Ljava/io/FileInputStream;
    goto/16 :goto_6

    .end local v5    # "e":Ljava/io/IOException;
    .end local v7    # "fin":Ljava/io/FileInputStream;
    .end local v11    # "in":Ljava/io/DataInputStream;
    .restart local v8    # "fin":Ljava/io/FileInputStream;
    .restart local v12    # "in":Ljava/io/DataInputStream;
    :catch_b
    move-exception v5

    .restart local v5    # "e":Ljava/io/IOException;
    move-object v11, v12

    .end local v12    # "in":Ljava/io/DataInputStream;
    .local v11, "in":Ljava/io/DataInputStream;
    move-object v7, v8

    .end local v8    # "fin":Ljava/io/FileInputStream;
    .restart local v7    # "fin":Ljava/io/FileInputStream;
    goto/16 :goto_6
.end method

.method private addPackageParticipantsLockedInner(Ljava/lang/String;Ljava/util/List;)V
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2174
    .local p2, "targetPkgs":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "pkg$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 2175
    .local v1, "pkg":Landroid/content/pm/PackageInfo;
    if-eqz p1, :cond_1

    iget-object v5, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2176
    :cond_1
    iget-object v5, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2177
    .local v4, "uid":I
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashSet;

    .line 2178
    .local v3, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-nez v3, :cond_2

    .line 2179
    new-instance v3, Ljava/util/HashSet;

    .end local v3    # "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 2180
    .restart local v3    # "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v5, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2182
    :cond_2
    iget-object v5, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2187
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    .line 2188
    iget-object v6, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/16 v7, 0x10

    .line 2187
    invoke-virtual {v5, v7, v6}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2189
    .local v0, "msg":Landroid/os/Message;
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    invoke-virtual {v5, v0}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 2169
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v3    # "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v4    # "uid":I
    :cond_3
    return-void
.end method

.method private static appGetsFullBackup(Landroid/content/pm/PackageInfo;)Z
    .locals 4
    .param p0, "pkg"    # Landroid/content/pm/PackageInfo;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 721
    iget-object v2, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 723
    iget-object v2, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x4000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    .line 727
    :cond_1
    return v0
.end method

.method public static appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;)Z
    .locals 3
    .param p0, "app"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    const/4 v2, 0x0

    .line 696
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 702
    :cond_0
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v1, 0x2710

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 703
    return v2

    .line 707
    :cond_1
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v1, "com.android.sharedstoragebackup"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 708
    return v2

    .line 711
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method private static appIsKeyValueOnly(Landroid/content/pm/PackageInfo;)Z
    .locals 3
    .param p0, "pkg"    # Landroid/content/pm/PackageInfo;

    .prologue
    const/4 v0, 0x0

    .line 736
    const-string/jumbo v1, "com.android.providers.settings"

    iget-object v2, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 737
    return v0

    .line 740
    :cond_0
    invoke-static {p0}, Lcom/android/server/backup/BackupManagerService;->appGetsFullBackup(Landroid/content/pm/PackageInfo;)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static appIsStopped(Landroid/content/pm/ApplicationInfo;)Z
    .locals 3
    .param p0, "app"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    const/4 v0, 0x0

    .line 716
    iget v1, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v2, 0x200000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private backupPasswordMatches(Ljava/lang/String;)Z
    .locals 4
    .param p1, "currentPw"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x2710

    .line 1731
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->hasBackupPassword()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1732
    iget v1, p0, Lcom/android/server/backup/BackupManagerService;->mPasswordVersion:I

    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    const/4 v0, 0x1

    .line 1733
    .local v0, "pbkdf2Fallback":Z
    :goto_0
    const-string/jumbo v1, "PBKDF2WithHmacSHA1"

    invoke-virtual {p0, v1, p1, v3}, Lcom/android/server/backup/BackupManagerService;->passwordMatchesSaved(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1734
    if-eqz v0, :cond_2

    const-string/jumbo v1, "PBKDF2WithHmacSHA1And8bit"

    invoke-virtual {p0, v1, p1, v3}, Lcom/android/server/backup/BackupManagerService;->passwordMatchesSaved(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1740
    .end local v0    # "pbkdf2Fallback":Z
    :cond_0
    const/4 v1, 0x1

    return v1

    .line 1732
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "pbkdf2Fallback":Z
    goto :goto_0

    .line 1736
    :cond_2
    const-string/jumbo v1, "BackupManagerService"

    const-string/jumbo v2, "Backup password mismatch; aborting"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1737
    const/4 v1, 0x0

    return v1
.end method

.method private static backupSettingMigrated(I)Z
    .locals 4
    .param p0, "userId"    # I

    .prologue
    .line 9710
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "backup"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 9711
    .local v0, "base":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "backup_enabled"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 9712
    .local v1, "enableFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    return v2
.end method

.method private buildCharArrayKey(Ljava/lang/String;[C[BI)Ljavax/crypto/SecretKey;
    .locals 6
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "pwArray"    # [C
    .param p3, "salt"    # [B
    .param p4, "rounds"    # I

    .prologue
    .line 1567
    :try_start_0
    invoke-static {p1}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v2

    .line 1568
    .local v2, "keyFactory":Ljavax/crypto/SecretKeyFactory;
    new-instance v3, Ljavax/crypto/spec/PBEKeySpec;

    const/16 v4, 0x100

    invoke-direct {v3, p2, p3, p4, v4}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    .line 1569
    .local v3, "ks":Ljava/security/spec/KeySpec;
    invoke-virtual {v2, v3}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;
    :try_end_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    return-object v4

    .line 1572
    .end local v2    # "keyFactory":Ljavax/crypto/SecretKeyFactory;
    .end local v3    # "ks":Ljava/security/spec/KeySpec;
    :catch_0
    move-exception v0

    .line 1573
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    const-string/jumbo v4, "BackupManagerService"

    const-string/jumbo v5, "PBKDF2 unavailable!"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1575
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :goto_0
    const/4 v4, 0x0

    return-object v4

    .line 1570
    :catch_1
    move-exception v1

    .line 1571
    .local v1, "e":Ljava/security/spec/InvalidKeySpecException;
    const-string/jumbo v4, "BackupManagerService"

    const-string/jumbo v5, "Invalid key spec for PBKDF2!"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private buildPasswordHash(Ljava/lang/String;Ljava/lang/String;[BI)Ljava/lang/String;
    .locals 2
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/lang/String;
    .param p3, "salt"    # [B
    .param p4, "rounds"    # I

    .prologue
    const/4 v1, 0x0

    .line 1579
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/backup/BackupManagerService;->buildPasswordKey(Ljava/lang/String;Ljava/lang/String;[BI)Ljavax/crypto/SecretKey;

    move-result-object v0

    .line 1580
    .local v0, "key":Ljavax/crypto/SecretKey;
    if-eqz v0, :cond_0

    .line 1581
    invoke-interface {v0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/backup/BackupManagerService;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1583
    :cond_0
    return-object v1
.end method

.method private buildPasswordKey(Ljava/lang/String;Ljava/lang/String;[BI)Ljavax/crypto/SecretKey;
    .locals 1
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/lang/String;
    .param p3, "salt"    # [B
    .param p4, "rounds"    # I

    .prologue
    .line 1562
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-direct {p0, p1, v0, p3, p4}, Lcom/android/server/backup/BackupManagerService;->buildCharArrayKey(Ljava/lang/String;[C[BI)Ljavax/crypto/SecretKey;

    move-result-object v0

    return-object v0
.end method

.method private byteArrayToHex([B)Ljava/lang/String;
    .locals 4
    .param p1, "data"    # [B

    .prologue
    .line 1587
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v2, p1

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1588
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 1589
    aget-byte v2, p1, v1

    const/4 v3, 0x1

    invoke-static {v2, v3}, Ljava/lang/Byte;->toHexString(BZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1588
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1591
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private dataChangedImpl(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 9227
    invoke-direct {p0, p1}, Lcom/android/server/backup/BackupManagerService;->dataChangedTargets(Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v0

    .line 9228
    .local v0, "targets":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-direct {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->dataChangedImpl(Ljava/lang/String;Ljava/util/HashSet;)V

    .line 9226
    return-void
.end method

.method private dataChangedImpl(Ljava/lang/String;Ljava/util/HashSet;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 9235
    .local p2, "targets":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-nez p2, :cond_0

    .line 9236
    const-string/jumbo v1, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "dataChanged but no participant pkg=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 9237
    const-string/jumbo v3, " uid="

    .line 9236
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 9237
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 9236
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9238
    return-void

    .line 9241
    :cond_0
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v2

    .line 9243
    :try_start_0
    invoke-virtual {p2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 9246
    new-instance v0, Lcom/android/server/backup/BackupManagerService$BackupRequest;

    invoke-direct {v0, p0, p1}, Lcom/android/server/backup/BackupManagerService$BackupRequest;-><init>(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)V

    .line 9247
    .local v0, "req":Lcom/android/server/backup/BackupManagerService$BackupRequest;
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mPendingBackups:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 9253
    invoke-direct {p0, p1}, Lcom/android/server/backup/BackupManagerService;->writeToJournalLocked(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "req":Lcom/android/server/backup/BackupManagerService$BackupRequest;
    :cond_1
    monitor-exit v2

    .line 9259
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/backup/KeyValueBackupJob;->schedule(Landroid/content/Context;)V

    .line 9231
    return-void

    .line 9241
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private dataChangedTargets(Ljava/lang/String;)Ljava/util/HashSet;
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 9266
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "android.permission.BACKUP"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    .line 9267
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 9266
    invoke-virtual {v4, v5, v6, v7}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v4

    .line 9267
    const/4 v5, -0x1

    .line 9266
    if-ne v4, v5, :cond_0

    .line 9268
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    monitor-enter v5

    .line 9269
    :try_start_0
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashSet;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    return-object v4

    .line 9268
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 9274
    :cond_0
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 9275
    .local v3, "targets":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const-string/jumbo v4, "@pm@"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 9276
    const-string/jumbo v4, "@pm@"

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 9288
    :goto_0
    return-object v3

    .line 9278
    :cond_1
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    monitor-enter v5

    .line 9279
    :try_start_1
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 9280
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_3

    .line 9281
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashSet;

    .line 9282
    .local v2, "s":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz v2, :cond_2

    .line 9283
    invoke-virtual {v3, v2}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 9280
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v2    # "s":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_3
    monitor-exit v5

    goto :goto_0

    .line 9278
    .end local v0    # "N":I
    .end local v1    # "i":I
    :catchall_1
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method private dumpAgents(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 10569
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->allAgentPackages()Ljava/util/List;

    move-result-object v0

    .line 10570
    .local v0, "agentPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    const-string/jumbo v3, "Defined backup agents:"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10571
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "pkg$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 10572
    .local v1, "pkg":Landroid/content/pm/PackageInfo;
    const-string/jumbo v3, "  "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 10573
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v3, 0x3a

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(C)V

    .line 10574
    const-string/jumbo v3, "      "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 10568
    .end local v1    # "pkg":Landroid/content/pm/PackageInfo;
    :cond_0
    return-void
.end method

.method private dumpInternal(Ljava/io/PrintWriter;)V
    .locals 36
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 10579
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    move-object/from16 v28, v0

    monitor-enter v28

    .line 10580
    :try_start_0
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "Backup Manager is "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/backup/BackupManagerService;->mEnabled:Z

    move/from16 v26, v0

    if-eqz v26, :cond_1

    const-string/jumbo v26, "enabled"

    :goto_0
    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    .line 10581
    const-string/jumbo v27, " / "

    .line 10580
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    .line 10581
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/backup/BackupManagerService;->mProvisioned:Z

    move/from16 v26, v0

    if-nez v26, :cond_2

    const-string/jumbo v26, "not "

    .line 10580
    :goto_1
    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    .line 10581
    const-string/jumbo v27, "provisioned / "

    .line 10580
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    .line 10582
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mPendingInits:Ljava/util/HashSet;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/HashSet;->size()I

    move-result v26

    if-nez v26, :cond_3

    const-string/jumbo v26, "not "

    .line 10580
    :goto_2
    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    .line 10582
    const-string/jumbo v27, "pending init"

    .line 10580
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10583
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "Auto-restore is "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/backup/BackupManagerService;->mAutoRestore:Z

    move/from16 v26, v0

    if-eqz v26, :cond_4

    const-string/jumbo v26, "enabled"

    :goto_3
    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10584
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/backup/BackupManagerService;->mBackupRunning:Z

    move/from16 v26, v0

    if-eqz v26, :cond_0

    const-string/jumbo v26, "Backup currently running"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10585
    :cond_0
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "Last backup pass started: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/backup/BackupManagerService;->mLastBackupPass:J

    move-wide/from16 v30, v0

    move-object/from16 v0, v26

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    .line 10586
    const-string/jumbo v27, " (now = "

    .line 10585
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    .line 10586
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v30

    .line 10585
    move-object/from16 v0, v26

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    .line 10586
    const/16 v27, 0x29

    .line 10585
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10587
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "  next scheduled: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-static {}, Lcom/android/server/backup/KeyValueBackupJob;->nextScheduled()J

    move-result-wide v30

    move-object/from16 v0, v26

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10589
    const-string/jumbo v26, "Transport whitelist:"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10590
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mTransportWhitelist:Landroid/util/ArraySet;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .local v23, "transport$iterator":Ljava/util/Iterator;
    :goto_4
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_5

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/content/ComponentName;

    .line 10591
    .local v21, "transport":Landroid/content/ComponentName;
    const-string/jumbo v26, "    "

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 10592
    invoke-virtual/range {v21 .. v21}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    .line 10579
    .end local v21    # "transport":Landroid/content/ComponentName;
    .end local v23    # "transport$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v26

    monitor-exit v28

    throw v26

    .line 10580
    :cond_1
    :try_start_1
    const-string/jumbo v26, "disabled"

    goto/16 :goto_0

    .line 10581
    :cond_2
    const-string/jumbo v26, ""

    goto/16 :goto_1

    .line 10582
    :cond_3
    const-string/jumbo v26, ""

    goto/16 :goto_2

    .line 10583
    :cond_4
    const-string/jumbo v26, "disabled"

    goto/16 :goto_3

    .line 10595
    .restart local v23    # "transport$iterator":Ljava/util/Iterator;
    :cond_5
    const-string/jumbo v26, "Available transports:"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10596
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService;->listAllTransports()[Ljava/lang/String;

    move-result-object v24

    .line 10597
    .local v24, "transports":[Ljava/lang/String;
    if-eqz v24, :cond_8

    .line 10598
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService;->listAllTransports()[Ljava/lang/String;

    move-result-object v29

    const/16 v26, 0x0

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v30, v0

    move/from16 v27, v26

    :goto_5
    move/from16 v0, v27

    move/from16 v1, v30

    if-ge v0, v1, :cond_8

    aget-object v20, v29, v27

    .line 10599
    .local v20, "t":Ljava/lang/String;
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mCurrentTransport:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_6

    const-string/jumbo v26, "  * "

    :goto_6
    move-object/from16 v0, v31

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10601
    :try_start_2
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/backup/BackupManagerService;->getTransport(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v22

    .line 10602
    .local v22, "transport":Lcom/android/internal/backup/IBackupTransport;
    new-instance v7, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    move-object/from16 v26, v0

    invoke-interface/range {v22 .. v22}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v26

    move-object/from16 v1, v31

    invoke-direct {v7, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 10603
    .local v7, "dir":Ljava/io/File;
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "       destination: "

    move-object/from16 v0, v26

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-interface/range {v22 .. v22}, Lcom/android/internal/backup/IBackupTransport;->currentDestinationString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v26

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10604
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "       intent: "

    move-object/from16 v0, v26

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-interface/range {v22 .. v22}, Lcom/android/internal/backup/IBackupTransport;->configurationIntent()Landroid/content/Intent;

    move-result-object v31

    move-object/from16 v0, v26

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10605
    invoke-virtual {v7}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v31

    const/16 v26, 0x0

    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v32, v0

    :goto_7
    move/from16 v0, v26

    move/from16 v1, v32

    if-ge v0, v1, :cond_7

    aget-object v11, v31, v26

    .line 10606
    .local v11, "f":Ljava/io/File;
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "       "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string/jumbo v34, " - "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v34

    invoke-virtual/range {v33 .. v35}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string/jumbo v34, " state bytes"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 10605
    add-int/lit8 v26, v26, 0x1

    goto :goto_7

    .line 10599
    .end local v7    # "dir":Ljava/io/File;
    .end local v11    # "f":Ljava/io/File;
    .end local v22    # "transport":Lcom/android/internal/backup/IBackupTransport;
    :cond_6
    :try_start_3
    const-string/jumbo v26, "    "

    goto/16 :goto_6

    .line 10608
    :catch_0
    move-exception v8

    .line 10609
    .local v8, "e":Ljava/lang/Exception;
    const-string/jumbo v26, "BackupManagerService"

    const-string/jumbo v31, "Error in transport"

    move-object/from16 v0, v26

    move-object/from16 v1, v31

    invoke-static {v0, v1, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 10610
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "        Error: "

    move-object/from16 v0, v26

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10598
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_7
    add-int/lit8 v26, v27, 0x1

    move/from16 v27, v26

    goto/16 :goto_5

    .line 10615
    .end local v20    # "t":Ljava/lang/String;
    :cond_8
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "Pending init: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mPendingInits:Ljava/util/HashSet;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/HashSet;->size()I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10616
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mPendingInits:Ljava/util/HashSet;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, "s$iterator":Ljava/util/Iterator;
    :goto_8
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_9

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 10617
    .local v18, "s":Ljava/lang/String;
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "    "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_8

    .line 10621
    .end local v18    # "s":Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mBackupTrace:Ljava/util/List;

    move-object/from16 v27, v0

    monitor-enter v27
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 10622
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mBackupTrace:Ljava/util/List;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->isEmpty()Z

    move-result v26

    if-nez v26, :cond_a

    .line 10623
    const-string/jumbo v26, "Most recent backup trace:"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10624
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mBackupTrace:Ljava/util/List;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_9
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_a

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 10625
    .restart local v18    # "s":Ljava/lang/String;
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "   "

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_9

    .line 10621
    .end local v18    # "s":Ljava/lang/String;
    :catchall_1
    move-exception v26

    :try_start_5
    monitor-exit v27

    throw v26

    :cond_a
    monitor-exit v27

    .line 10631
    const-string/jumbo v26, "Ancestral: "

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/backup/BackupManagerService;->mAncestralToken:J

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10632
    const-string/jumbo v26, "Current:   "

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/backup/BackupManagerService;->mCurrentToken:J

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10634
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/util/SparseArray;->size()I

    move-result v4

    .line 10635
    .local v4, "N":I
    const-string/jumbo v26, "Participants:"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10636
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_a
    if-ge v12, v4, :cond_c

    .line 10637
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v25

    .line 10638
    .local v25, "uid":I
    const-string/jumbo v26, "  uid: "

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 10639
    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 10640
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/HashSet;

    .line 10641
    .local v13, "participants":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "app$iterator":Ljava/util/Iterator;
    :goto_b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 10642
    .local v5, "app":Ljava/lang/String;
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "    "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_b

    .line 10636
    .end local v5    # "app":Ljava/lang/String;
    :cond_b
    add-int/lit8 v12, v12, 0x1

    goto :goto_a

    .line 10646
    .end local v6    # "app$iterator":Ljava/util/Iterator;
    .end local v13    # "participants":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v25    # "uid":I
    :cond_c
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "Ancestral packages: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    .line 10647
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mAncestralPackages:Ljava/util/Set;

    move-object/from16 v26, v0

    if-nez v26, :cond_d

    const-string/jumbo v26, "none"

    .line 10646
    :goto_c
    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10648
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mAncestralPackages:Ljava/util/Set;

    move-object/from16 v26, v0

    if-eqz v26, :cond_e

    .line 10649
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mAncestralPackages:Ljava/util/Set;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "pkg$iterator":Ljava/util/Iterator;
    :goto_d
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_e

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 10650
    .local v14, "pkg":Ljava/lang/String;
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "    "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_d

    .line 10647
    .end local v14    # "pkg":Ljava/lang/String;
    .end local v15    # "pkg$iterator":Ljava/util/Iterator;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mAncestralPackages:Ljava/util/Set;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Ljava/util/Set;->size()I

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    goto :goto_c

    .line 10654
    :cond_e
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "Ever backed up: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mEverStoredApps:Ljava/util/HashSet;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/HashSet;->size()I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10655
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mEverStoredApps:Ljava/util/HashSet;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .restart local v15    # "pkg$iterator":Ljava/util/Iterator;
    :goto_e
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_f

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 10656
    .restart local v14    # "pkg":Ljava/lang/String;
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "    "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_e

    .line 10659
    .end local v14    # "pkg":Ljava/lang/String;
    :cond_f
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "Pending key/value backup: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mPendingBackups:Ljava/util/HashMap;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/HashMap;->size()I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10660
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mPendingBackups:Ljava/util/HashMap;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, "req$iterator":Ljava/util/Iterator;
    :goto_f
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_10

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/backup/BackupManagerService$BackupRequest;

    .line 10661
    .local v16, "req":Lcom/android/server/backup/BackupManagerService$BackupRequest;
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "    "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_f

    .line 10664
    .end local v16    # "req":Lcom/android/server/backup/BackupManagerService$BackupRequest;
    :cond_10
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "Full backup queue:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10665
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "entry$iterator":Ljava/util/Iterator;
    :goto_10
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_11

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;

    .line 10666
    .local v9, "entry":Lcom/android/server/backup/BackupManagerService$FullBackupEntry;
    const-string/jumbo v26, "    "

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, v9, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;->lastBackup:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 10667
    const-string/jumbo v26, " : "

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v9, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;->packageName:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_10

    .end local v9    # "entry":Lcom/android/server/backup/BackupManagerService$FullBackupEntry;
    :cond_11
    monitor-exit v28

    .line 10578
    return-void
.end method

.method private fullBackupAllowable(Lcom/android/internal/backup/IBackupTransport;)Z
    .locals 9
    .param p1, "transport"    # Lcom/android/internal/backup/IBackupTransport;

    .prologue
    const/4 v8, 0x0

    .line 5034
    if-nez p1, :cond_0

    .line 5035
    const-string/jumbo v3, "BackupManagerService"

    const-string/jumbo v4, "Transport not present; full data backup not performed"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5036
    return v8

    .line 5042
    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    invoke-interface {p1}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 5043
    .local v2, "stateDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string/jumbo v3, "@pm@"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 5044
    .local v1, "pmState":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-gtz v3, :cond_1

    .line 5046
    const-string/jumbo v3, "BackupManagerService"

    const-string/jumbo v4, "Full backup requested but dataset not yet initialized"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5048
    return v8

    .line 5050
    .end local v1    # "pmState":Ljava/io/File;
    .end local v2    # "stateDir":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 5051
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unable to get transport name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5052
    return v8

    .line 5055
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "pmState":Ljava/io/File;
    .restart local v2    # "stateDir":Ljava/io/File;
    :cond_1
    const/4 v3, 0x1

    return v3
.end method

.method static getInstance()Lcom/android/server/backup/Trampoline;
    .locals 1

    .prologue
    .line 347
    sget-object v0, Lcom/android/server/backup/BackupManagerService;->sInstance:Lcom/android/server/backup/Trampoline;

    return-object v0
.end method

.method private getTransport(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;
    .locals 5
    .param p1, "transportName"    # Ljava/lang/String;

    .prologue
    .line 2354
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mTransports:Landroid/util/ArrayMap;

    monitor-enter v2

    .line 2355
    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mTransports:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/backup/IBackupTransport;

    .line 2356
    .local v0, "transport":Lcom/android/internal/backup/IBackupTransport;
    if-nez v0, :cond_0

    .line 2357
    const-string/jumbo v1, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Requested unavailable transport: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    .line 2359
    return-object v0

    .line 2354
    .end local v0    # "transport":Lcom/android/internal/backup/IBackupTransport;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private getTransportName(Lcom/android/internal/backup/IBackupTransport;)Ljava/lang/String;
    .locals 4
    .param p1, "transport"    # Lcom/android/internal/backup/IBackupTransport;

    .prologue
    .line 2368
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mTransports:Landroid/util/ArrayMap;

    monitor-enter v3

    .line 2369
    :try_start_0
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mTransports:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 2370
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 2371
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mTransports:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/backup/IBackupTransport;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2375
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mTransports:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    return-object v2

    .line 2370
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v3

    .line 2379
    const/4 v2, 0x0

    return-object v2

    .line 2368
    .end local v0    # "N":I
    .end local v1    # "i":I
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private hexToByteArray(Ljava/lang/String;)[B
    .locals 6
    .param p1, "digits"    # Ljava/lang/String;

    .prologue
    .line 1595
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    div-int/lit8 v0, v3, 0x2

    .line 1596
    .local v0, "bytes":I
    mul-int/lit8 v3, v0, 0x2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v3, v4, :cond_0

    .line 1597
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Hex string must have an even number of digits"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1600
    :cond_0
    new-array v2, v0, [B

    .line 1601
    .local v2, "result":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 1602
    div-int/lit8 v3, v1, 0x2

    add-int/lit8 v4, v1, 0x2

    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 1601
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 1604
    :cond_1
    return-object v2
.end method

.method private initPackageTracking()V
    .locals 24

    .prologue
    .line 1299
    new-instance v21, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    move-object/from16 v22, v0

    const-string/jumbo v23, "ancestral"

    invoke-direct/range {v21 .. v23}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mTokenFile:Ljava/io/File;

    .line 1301
    :try_start_0
    new-instance v19, Ljava/io/RandomAccessFile;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mTokenFile:Ljava/io/File;

    move-object/from16 v21, v0

    const-string/jumbo v22, "r"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1302
    .local v19, "tf":Ljava/io/RandomAccessFile;
    invoke-virtual/range {v19 .. v19}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v20

    .line 1303
    .local v20, "version":I
    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_0

    .line 1304
    invoke-virtual/range {v19 .. v19}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v22

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/backup/BackupManagerService;->mAncestralToken:J

    .line 1305
    invoke-virtual/range {v19 .. v19}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v22

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/backup/BackupManagerService;->mCurrentToken:J

    .line 1307
    invoke-virtual/range {v19 .. v19}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v12

    .line 1308
    .local v12, "numPackages":I
    if-ltz v12, :cond_0

    .line 1309
    new-instance v21, Ljava/util/HashSet;

    invoke-direct/range {v21 .. v21}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mAncestralPackages:Ljava/util/Set;

    .line 1310
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v9, v12, :cond_0

    .line 1311
    invoke-virtual/range {v19 .. v19}, Ljava/io/RandomAccessFile;->readUTF()Ljava/lang/String;

    move-result-object v14

    .line 1312
    .local v14, "pkgName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mAncestralPackages:Ljava/util/Set;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1310
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1316
    .end local v9    # "i":I
    .end local v12    # "numPackages":I
    .end local v14    # "pkgName":Ljava/lang/String;
    :cond_0
    invoke-virtual/range {v19 .. v19}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1327
    .end local v19    # "tf":Ljava/io/RandomAccessFile;
    .end local v20    # "version":I
    :goto_1
    new-instance v21, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    move-object/from16 v22, v0

    const-string/jumbo v23, "processed"

    invoke-direct/range {v21 .. v23}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mEverStored:Ljava/io/File;

    .line 1328
    new-instance v18, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    move-object/from16 v21, v0

    const-string/jumbo v22, "processed.new"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1333
    .local v18, "tempProcessedFile":Ljava/io/File;
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z

    move-result v21

    if-eqz v21, :cond_1

    .line 1334
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->delete()Z

    .line 1339
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mEverStored:Ljava/io/File;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->exists()Z

    move-result v21

    if-eqz v21, :cond_3

    .line 1340
    const/16 v16, 0x0

    .line 1341
    .local v16, "temp":Ljava/io/RandomAccessFile;
    const/4 v10, 0x0

    .line 1344
    .local v10, "in":Ljava/io/RandomAccessFile;
    :try_start_1
    new-instance v17, Ljava/io/RandomAccessFile;

    const-string/jumbo v21, "rws"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1345
    .end local v16    # "temp":Ljava/io/RandomAccessFile;
    .local v17, "temp":Ljava/io/RandomAccessFile;
    :try_start_2
    new-instance v11, Ljava/io/RandomAccessFile;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mEverStored:Ljava/io/File;

    move-object/from16 v21, v0

    const-string/jumbo v22, "r"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-direct {v11, v0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_d
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1349
    .end local v10    # "in":Ljava/io/RandomAccessFile;
    .local v11, "in":Ljava/io/RandomAccessFile;
    :goto_2
    :try_start_3
    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->readUTF()Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/EOFException; {:try_start_3 .. :try_end_3} :catch_c
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_e
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-result-object v13

    .line 1352
    .local v13, "pkg":Ljava/lang/String;
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v0, v13, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 1354
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mEverStoredApps:Ljava/util/HashSet;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1355
    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/io/RandomAccessFile;->writeUTF(Ljava/lang/String;)V
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/EOFException; {:try_start_4 .. :try_end_4} :catch_c
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_e
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_2

    .line 1357
    :catch_0
    move-exception v4

    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_2

    .line 1320
    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v11    # "in":Ljava/io/RandomAccessFile;
    .end local v13    # "pkg":Ljava/lang/String;
    .end local v17    # "temp":Ljava/io/RandomAccessFile;
    .end local v18    # "tempProcessedFile":Ljava/io/File;
    :catch_1
    move-exception v6

    .line 1321
    .local v6, "e":Ljava/io/IOException;
    const-string/jumbo v21, "BackupManagerService"

    const-string/jumbo v22, "Unable to read token file"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 1317
    .end local v6    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v8

    .line 1319
    .local v8, "fnf":Ljava/io/FileNotFoundException;
    const-string/jumbo v21, "BackupManagerService"

    const-string/jumbo v22, "No ancestral data"

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1368
    .end local v8    # "fnf":Ljava/io/FileNotFoundException;
    .restart local v10    # "in":Ljava/io/RandomAccessFile;
    .restart local v16    # "temp":Ljava/io/RandomAccessFile;
    .restart local v18    # "tempProcessedFile":Ljava/io/File;
    :catch_3
    move-exception v6

    .line 1369
    .end local v10    # "in":Ljava/io/RandomAccessFile;
    .end local v16    # "temp":Ljava/io/RandomAccessFile;
    .restart local v6    # "e":Ljava/io/IOException;
    :goto_3
    :try_start_5
    const-string/jumbo v21, "BackupManagerService"

    const-string/jumbo v22, "Error in processed file"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1371
    if-eqz v16, :cond_2

    :try_start_6
    invoke-virtual/range {v16 .. v16}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 1372
    :cond_2
    :goto_4
    if-eqz v10, :cond_3

    :try_start_7
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 1376
    .end local v6    # "e":Ljava/io/IOException;
    :cond_3
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    move-object/from16 v22, v0

    monitor-enter v22

    .line 1378
    :try_start_8
    invoke-direct/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService;->readFullBackupSchedule()Ljava/util/ArrayList;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    monitor-exit v22

    .line 1383
    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 1384
    .local v7, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v21, "android.intent.action.PACKAGE_ADDED"

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1385
    const-string/jumbo v21, "android.intent.action.PACKAGE_REMOVED"

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1386
    const-string/jumbo v21, "android.intent.action.PACKAGE_CHANGED"

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1387
    const-string/jumbo v21, "package"

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1388
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1390
    new-instance v15, Landroid/content/IntentFilter;

    invoke-direct {v15}, Landroid/content/IntentFilter;-><init>()V

    .line 1391
    .local v15, "sdFilter":Landroid/content/IntentFilter;
    const-string/jumbo v21, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1392
    const-string/jumbo v21, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1393
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v15}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1295
    return-void

    .line 1371
    .end local v7    # "filter":Landroid/content/IntentFilter;
    .end local v15    # "sdFilter":Landroid/content/IntentFilter;
    .restart local v6    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v6

    goto :goto_4

    .line 1372
    :catch_5
    move-exception v6

    goto :goto_5

    .line 1362
    .end local v6    # "e":Ljava/io/IOException;
    .restart local v10    # "in":Ljava/io/RandomAccessFile;
    .restart local v16    # "temp":Ljava/io/RandomAccessFile;
    :catch_6
    move-exception v5

    .line 1365
    .end local v10    # "in":Ljava/io/RandomAccessFile;
    .end local v16    # "temp":Ljava/io/RandomAccessFile;
    .local v5, "e":Ljava/io/EOFException;
    :goto_6
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mEverStored:Ljava/io/File;

    move-object/from16 v21, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v21

    if-nez v21, :cond_4

    .line 1366
    const-string/jumbo v21, "BackupManagerService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Error renaming "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, " to "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mEverStored:Ljava/io/File;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 1371
    :cond_4
    if-eqz v16, :cond_5

    :try_start_a
    invoke-virtual/range {v16 .. v16}, Ljava/io/RandomAccessFile;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    .line 1372
    :cond_5
    :goto_7
    if-eqz v10, :cond_3

    :try_start_b
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    goto/16 :goto_5

    :catch_7
    move-exception v6

    .restart local v6    # "e":Ljava/io/IOException;
    goto/16 :goto_5

    .line 1371
    .end local v6    # "e":Ljava/io/IOException;
    :catch_8
    move-exception v6

    .restart local v6    # "e":Ljava/io/IOException;
    goto :goto_7

    .line 1370
    .end local v5    # "e":Ljava/io/EOFException;
    .end local v6    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v21

    .line 1371
    :goto_8
    if-eqz v16, :cond_6

    :try_start_c
    invoke-virtual/range {v16 .. v16}, Ljava/io/RandomAccessFile;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9

    .line 1372
    :cond_6
    :goto_9
    if-eqz v10, :cond_7

    :try_start_d
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_a

    .line 1370
    :cond_7
    :goto_a
    throw v21

    .line 1371
    :catch_9
    move-exception v6

    .restart local v6    # "e":Ljava/io/IOException;
    goto :goto_9

    .line 1372
    .end local v6    # "e":Ljava/io/IOException;
    :catch_a
    move-exception v6

    .restart local v6    # "e":Ljava/io/IOException;
    goto :goto_a

    .line 1376
    .end local v6    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v21

    monitor-exit v22

    throw v21

    .line 1370
    .restart local v10    # "in":Ljava/io/RandomAccessFile;
    .restart local v17    # "temp":Ljava/io/RandomAccessFile;
    :catchall_2
    move-exception v21

    move-object/from16 v16, v17

    .end local v17    # "temp":Ljava/io/RandomAccessFile;
    .local v16, "temp":Ljava/io/RandomAccessFile;
    goto :goto_8

    .end local v10    # "in":Ljava/io/RandomAccessFile;
    .end local v16    # "temp":Ljava/io/RandomAccessFile;
    .restart local v11    # "in":Ljava/io/RandomAccessFile;
    .restart local v17    # "temp":Ljava/io/RandomAccessFile;
    :catchall_3
    move-exception v21

    move-object v10, v11

    .end local v11    # "in":Ljava/io/RandomAccessFile;
    .local v10, "in":Ljava/io/RandomAccessFile;
    move-object/from16 v16, v17

    .end local v17    # "temp":Ljava/io/RandomAccessFile;
    .restart local v16    # "temp":Ljava/io/RandomAccessFile;
    goto :goto_8

    .line 1362
    .end local v16    # "temp":Ljava/io/RandomAccessFile;
    .local v10, "in":Ljava/io/RandomAccessFile;
    .restart local v17    # "temp":Ljava/io/RandomAccessFile;
    :catch_b
    move-exception v5

    .restart local v5    # "e":Ljava/io/EOFException;
    move-object/from16 v16, v17

    .end local v17    # "temp":Ljava/io/RandomAccessFile;
    .restart local v16    # "temp":Ljava/io/RandomAccessFile;
    goto :goto_6

    .end local v5    # "e":Ljava/io/EOFException;
    .end local v10    # "in":Ljava/io/RandomAccessFile;
    .end local v16    # "temp":Ljava/io/RandomAccessFile;
    .restart local v11    # "in":Ljava/io/RandomAccessFile;
    .restart local v17    # "temp":Ljava/io/RandomAccessFile;
    :catch_c
    move-exception v5

    .restart local v5    # "e":Ljava/io/EOFException;
    move-object v10, v11

    .end local v11    # "in":Ljava/io/RandomAccessFile;
    .local v10, "in":Ljava/io/RandomAccessFile;
    move-object/from16 v16, v17

    .end local v17    # "temp":Ljava/io/RandomAccessFile;
    .restart local v16    # "temp":Ljava/io/RandomAccessFile;
    goto :goto_6

    .line 1368
    .end local v5    # "e":Ljava/io/EOFException;
    .end local v16    # "temp":Ljava/io/RandomAccessFile;
    .local v10, "in":Ljava/io/RandomAccessFile;
    .restart local v17    # "temp":Ljava/io/RandomAccessFile;
    :catch_d
    move-exception v6

    .restart local v6    # "e":Ljava/io/IOException;
    move-object/from16 v16, v17

    .end local v17    # "temp":Ljava/io/RandomAccessFile;
    .restart local v16    # "temp":Ljava/io/RandomAccessFile;
    goto/16 :goto_3

    .end local v6    # "e":Ljava/io/IOException;
    .end local v10    # "in":Ljava/io/RandomAccessFile;
    .end local v16    # "temp":Ljava/io/RandomAccessFile;
    .restart local v11    # "in":Ljava/io/RandomAccessFile;
    .restart local v17    # "temp":Ljava/io/RandomAccessFile;
    :catch_e
    move-exception v6

    .restart local v6    # "e":Ljava/io/IOException;
    move-object v10, v11

    .end local v11    # "in":Ljava/io/RandomAccessFile;
    .local v10, "in":Ljava/io/RandomAccessFile;
    move-object/from16 v16, v17

    .end local v17    # "temp":Ljava/io/RandomAccessFile;
    .restart local v16    # "temp":Ljava/io/RandomAccessFile;
    goto/16 :goto_3
.end method

.method private makeKeyChecksum(Ljava/lang/String;[B[BI)[B
    .locals 4
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "pwBytes"    # [B
    .param p3, "salt"    # [B
    .param p4, "rounds"    # I

    .prologue
    .line 1608
    array-length v3, p2

    new-array v2, v3, [C

    .line 1609
    .local v2, "mkAsChar":[C
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p2

    if-ge v1, v3, :cond_0

    .line 1610
    aget-byte v3, p2, v1

    int-to-char v3, v3

    aput-char v3, v2, v1

    .line 1609
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1613
    :cond_0
    invoke-direct {p0, p1, v2, p3, p4}, Lcom/android/server/backup/BackupManagerService;->buildCharArrayKey(Ljava/lang/String;[C[BI)Ljavax/crypto/SecretKey;

    move-result-object v0

    .line 1614
    .local v0, "checksum":Ljava/security/Key;
    invoke-interface {v0}, Ljava/security/Key;->getEncoded()[B

    move-result-object v3

    return-object v3
.end method

.method private parseLeftoverJournals()V
    .locals 13

    .prologue
    const/4 v7, 0x0

    .line 1534
    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService;->mJournalDir:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v8

    array-length v9, v8

    :goto_0
    if-ge v7, v9, :cond_5

    aget-object v3, v8, v7

    .line 1535
    .local v3, "f":Ljava/io/File;
    iget-object v10, p0, Lcom/android/server/backup/BackupManagerService;->mJournal:Ljava/io/File;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/server/backup/BackupManagerService;->mJournal:Ljava/io/File;

    invoke-virtual {v3, v10}, Ljava/io/File;->compareTo(Ljava/io/File;)I

    move-result v10

    if-eqz v10, :cond_2

    .line 1539
    :cond_0
    const/4 v4, 0x0

    .line 1541
    .local v4, "in":Ljava/io/RandomAccessFile;
    :try_start_0
    const-string/jumbo v10, "BackupManagerService"

    const-string/jumbo v11, "Found stale backup journal, scheduling"

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1542
    new-instance v5, Ljava/io/RandomAccessFile;

    const-string/jumbo v10, "r"

    invoke-direct {v5, v3, v10}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1544
    .end local v4    # "in":Ljava/io/RandomAccessFile;
    .local v5, "in":Ljava/io/RandomAccessFile;
    :goto_1
    :try_start_1
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->readUTF()Ljava/lang/String;

    move-result-object v6

    .line 1546
    .local v6, "packageName":Ljava/lang/String;
    invoke-direct {p0, v6}, Lcom/android/server/backup/BackupManagerService;->dataChangedImpl(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 1548
    .end local v6    # "packageName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/EOFException;
    move-object v4, v5

    .line 1554
    .end local v5    # "in":Ljava/io/RandomAccessFile;
    :goto_2
    if-eqz v4, :cond_1

    :try_start_2
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 1555
    :cond_1
    :goto_3
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 1534
    .end local v0    # "e":Ljava/io/EOFException;
    :cond_2
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1550
    .restart local v4    # "in":Ljava/io/RandomAccessFile;
    :catch_1
    move-exception v2

    .line 1551
    .end local v4    # "in":Ljava/io/RandomAccessFile;
    .local v2, "e":Ljava/lang/Exception;
    :goto_5
    :try_start_3
    const-string/jumbo v10, "BackupManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Can\'t read "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1554
    if-eqz v4, :cond_3

    :try_start_4
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 1555
    :cond_3
    :goto_6
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto :goto_4

    .line 1554
    :catch_2
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    goto :goto_6

    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "e":Ljava/io/EOFException;
    :catch_3
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_3

    .line 1552
    .end local v0    # "e":Ljava/io/EOFException;
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 1554
    :goto_7
    if-eqz v4, :cond_4

    :try_start_5
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 1555
    :cond_4
    :goto_8
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 1552
    throw v7

    .line 1554
    :catch_4
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_8

    .line 1533
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "f":Ljava/io/File;
    :cond_5
    return-void

    .line 1552
    .restart local v3    # "f":Ljava/io/File;
    .restart local v5    # "in":Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v7

    move-object v4, v5

    .end local v5    # "in":Ljava/io/RandomAccessFile;
    .local v4, "in":Ljava/io/RandomAccessFile;
    goto :goto_7

    .line 1548
    .local v4, "in":Ljava/io/RandomAccessFile;
    :catch_5
    move-exception v0

    .restart local v0    # "e":Ljava/io/EOFException;
    goto :goto_2

    .line 1550
    .end local v0    # "e":Ljava/io/EOFException;
    .end local v4    # "in":Ljava/io/RandomAccessFile;
    .restart local v5    # "in":Ljava/io/RandomAccessFile;
    :catch_6
    move-exception v2

    .restart local v2    # "e":Ljava/lang/Exception;
    move-object v4, v5

    .end local v5    # "in":Ljava/io/RandomAccessFile;
    .local v4, "in":Ljava/io/RandomAccessFile;
    goto :goto_5
.end method

.method private randomBytes(I)[B
    .locals 2
    .param p1, "bits"    # I

    .prologue
    .line 1619
    div-int/lit8 v1, p1, 0x8

    new-array v0, v1, [B

    .line 1620
    .local v0, "array":[B
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mRng:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 1621
    return-object v0
.end method

.method private static readBackupEnableState(I)Z
    .locals 11
    .param p0, "userId"    # I

    .prologue
    const/4 v9, 0x0

    const/4 v7, 0x0

    .line 9716
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v6

    const-string/jumbo v8, "backup"

    invoke-direct {v0, v6, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 9717
    .local v0, "base":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string/jumbo v6, "backup_enabled"

    invoke-direct {v2, v0, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 9718
    .local v2, "enableFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 9719
    const/4 v3, 0x0

    .local v3, "fin":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 9720
    .end local v3    # "fin":Ljava/io/FileInputStream;
    .local v4, "fin":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/FileInputStream;->read()I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result v5

    .line 9721
    .local v5, "state":I
    if-eqz v5, :cond_1

    const/4 v6, 0x1

    .line 9725
    :goto_0
    if-eqz v4, :cond_0

    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_1
    if-eqz v7, :cond_2

    :try_start_3
    throw v7
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 9722
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    move-object v3, v4

    .line 9724
    .end local v4    # "fin":Ljava/io/FileInputStream;
    .end local v5    # "state":I
    :goto_2
    const-string/jumbo v6, "BackupManagerService"

    const-string/jumbo v7, "Cannot read enable state; assuming disabled"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9731
    .end local v1    # "e":Ljava/io/IOException;
    :goto_3
    return v9

    .restart local v4    # "fin":Ljava/io/FileInputStream;
    .restart local v5    # "state":I
    :cond_1
    move v6, v9

    .line 9721
    goto :goto_0

    .line 9725
    :catch_1
    move-exception v7

    goto :goto_1

    .line 9721
    :cond_2
    return v6

    .line 9725
    .end local v4    # "fin":Ljava/io/FileInputStream;
    .end local v5    # "state":I
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    :catch_2
    move-exception v6

    .end local v3    # "fin":Ljava/io/FileInputStream;
    :goto_4
    :try_start_4
    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v7

    move-object v10, v7

    move-object v7, v6

    move-object v6, v10

    :goto_5
    if-eqz v3, :cond_3

    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_3
    :goto_6
    if-eqz v7, :cond_5

    :try_start_6
    throw v7

    .line 9722
    :catch_3
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_2

    .line 9725
    .end local v1    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v8

    if-nez v7, :cond_4

    move-object v7, v8

    goto :goto_6

    :cond_4
    if-eq v7, v8, :cond_3

    invoke-virtual {v7, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_5
    throw v6
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 9728
    :cond_6
    const-string/jumbo v6, "BackupManagerService"

    const-string/jumbo v7, "isBackupEnabled() => false due to absent settings file"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 9725
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v6

    goto :goto_5

    .end local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v4    # "fin":Ljava/io/FileInputStream;
    :catchall_2
    move-exception v6

    move-object v3, v4

    .end local v4    # "fin":Ljava/io/FileInputStream;
    .local v3, "fin":Ljava/io/FileInputStream;
    goto :goto_5

    .end local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v4    # "fin":Ljava/io/FileInputStream;
    :catch_5
    move-exception v6

    move-object v3, v4

    .end local v4    # "fin":Ljava/io/FileInputStream;
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    goto :goto_4
.end method

.method private readFullBackupSchedule()Ljava/util/ArrayList;
    .locals 34
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/backup/BackupManagerService$FullBackupEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1397
    const/4 v12, 0x0

    .line 1398
    .local v12, "changed":Z
    const/16 v27, 0x0

    .line 1400
    .local v27, "schedule":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/BackupManagerService$FullBackupEntry;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/server/backup/PackageManagerBackupAgent;->getStorableApplications(Landroid/content/pm/PackageManager;)Ljava/util/List;

    move-result-object v9

    .line 1402
    .local v9, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mFullBackupScheduleFile:Ljava/io/File;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/io/File;->exists()Z

    move-result v30

    if-eqz v30, :cond_2

    .line 1403
    const/16 v16, 0x0

    .line 1404
    .local v16, "fstream":Ljava/io/FileInputStream;
    const/4 v10, 0x0

    .line 1405
    .local v10, "bufStream":Ljava/io/BufferedInputStream;
    const/16 v19, 0x0

    .line 1407
    .local v19, "in":Ljava/io/DataInputStream;
    :try_start_0
    new-instance v17, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mFullBackupScheduleFile:Ljava/io/File;

    move-object/from16 v30, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1408
    .end local v16    # "fstream":Ljava/io/FileInputStream;
    .local v17, "fstream":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v11, Ljava/io/BufferedInputStream;

    move-object/from16 v0, v17

    invoke-direct {v11, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1409
    .local v11, "bufStream":Ljava/io/BufferedInputStream;
    :try_start_2
    new-instance v20, Ljava/io/DataInputStream;

    .end local v10    # "bufStream":Ljava/io/BufferedInputStream;
    move-object/from16 v0, v20

    invoke-direct {v0, v11}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1411
    .local v20, "in":Ljava/io/DataInputStream;
    :try_start_3
    invoke-virtual/range {v20 .. v20}, Ljava/io/DataInputStream;->readInt()I

    .end local v19    # "in":Ljava/io/DataInputStream;
    move-result v29

    .line 1412
    .local v29, "version":I
    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_0

    .line 1413
    const-string/jumbo v30, "BackupManagerService"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "Unknown backup schedule version "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 1414
    const/16 v30, 0x0

    .line 1468
    invoke-static/range {v20 .. v20}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1469
    invoke-static {v11}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1470
    invoke-static/range {v17 .. v17}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1414
    return-object v30

    .line 1417
    :cond_0
    :try_start_4
    invoke-virtual/range {v20 .. v20}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    .line 1418
    .local v6, "N":I
    new-instance v28, Ljava/util/ArrayList;

    move-object/from16 v0, v28

    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 1424
    .end local v27    # "schedule":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/BackupManagerService$FullBackupEntry;>;"
    .local v28, "schedule":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/BackupManagerService$FullBackupEntry;>;"
    :try_start_5
    new-instance v15, Ljava/util/HashSet;

    invoke-direct {v15, v6}, Ljava/util/HashSet;-><init>(I)V

    .line 1426
    .local v15, "foundApps":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_0
    move/from16 v0, v18

    if-ge v0, v6, :cond_4

    .line 1427
    invoke-virtual/range {v20 .. v20}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v26

    .line 1428
    .local v26, "pkgName":Ljava/lang/String;
    invoke-virtual/range {v20 .. v20}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v24

    .line 1429
    .local v24, "lastBackup":J
    move-object/from16 v0, v26

    invoke-virtual {v15, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 1431
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, v26

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v23

    .line 1432
    .local v23, "pkg":Landroid/content/pm/PackageInfo;
    invoke-static/range {v23 .. v23}, Lcom/android/server/backup/BackupManagerService;->appGetsFullBackup(Landroid/content/pm/PackageInfo;)Z

    move-result v30

    if-eqz v30, :cond_1

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/server/backup/BackupManagerService;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;)Z

    move-result v30

    if-eqz v30, :cond_1

    .line 1433
    new-instance v30, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    move-object/from16 v2, v26

    move-wide/from16 v3, v24

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;-><init>(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;J)V

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1426
    .end local v23    # "pkg":Landroid/content/pm/PackageInfo;
    :goto_1
    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    .line 1436
    .restart local v23    # "pkg":Landroid/content/pm/PackageInfo;
    :cond_1
    const-string/jumbo v30, "BackupManagerService"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "Package "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    .line 1437
    const-string/jumbo v32, " no longer eligible for full backup"

    .line 1436
    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    goto :goto_1

    .line 1440
    .end local v23    # "pkg":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v13

    .line 1442
    .local v13, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_7
    const-string/jumbo v30, "BackupManagerService"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "Package "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    .line 1443
    const-string/jumbo v32, " not installed; dropping from full backup"

    .line 1442
    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    goto :goto_1

    .line 1463
    .end local v13    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v15    # "foundApps":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v18    # "i":I
    .end local v24    # "lastBackup":J
    .end local v26    # "pkgName":Ljava/lang/String;
    :catch_1
    move-exception v14

    .local v14, "e":Ljava/lang/Exception;
    move-object/from16 v19, v20

    .end local v20    # "in":Ljava/io/DataInputStream;
    .local v19, "in":Ljava/io/DataInputStream;
    move-object v10, v11

    .end local v11    # "bufStream":Ljava/io/BufferedInputStream;
    .local v10, "bufStream":Ljava/io/BufferedInputStream;
    move-object/from16 v16, v17

    .end local v17    # "fstream":Ljava/io/FileInputStream;
    .local v16, "fstream":Ljava/io/FileInputStream;
    move-object/from16 v27, v28

    .line 1464
    .end local v6    # "N":I
    .end local v10    # "bufStream":Ljava/io/BufferedInputStream;
    .end local v16    # "fstream":Ljava/io/FileInputStream;
    .end local v19    # "in":Ljava/io/DataInputStream;
    .end local v28    # "schedule":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/BackupManagerService$FullBackupEntry;>;"
    .end local v29    # "version":I
    :goto_2
    :try_start_8
    const-string/jumbo v30, "BackupManagerService"

    const-string/jumbo v31, "Unable to read backup schedule"

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-static {v0, v1, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1465
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mFullBackupScheduleFile:Ljava/io/File;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/io/File;->delete()Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1466
    const/16 v27, 0x0

    .line 1468
    .restart local v27    # "schedule":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/BackupManagerService$FullBackupEntry;>;"
    invoke-static/range {v19 .. v19}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1469
    invoke-static {v10}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1470
    invoke-static/range {v16 .. v16}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1474
    .end local v14    # "e":Ljava/lang/Exception;
    .end local v27    # "schedule":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/BackupManagerService$FullBackupEntry;>;"
    :cond_2
    :goto_3
    if-nez v27, :cond_7

    .line 1477
    const/4 v12, 0x1

    .line 1478
    new-instance v27, Ljava/util/ArrayList;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v30

    move-object/from16 v0, v27

    move/from16 v1, v30

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1479
    .local v27, "schedule":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/BackupManagerService$FullBackupEntry;>;"
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .local v22, "info$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_4
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_7

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/content/pm/PackageInfo;

    .line 1480
    .local v21, "info":Landroid/content/pm/PackageInfo;
    invoke-static/range {v21 .. v21}, Lcom/android/server/backup/BackupManagerService;->appGetsFullBackup(Landroid/content/pm/PackageInfo;)Z

    move-result v30

    if-eqz v30, :cond_3

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/server/backup/BackupManagerService;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;)Z

    move-result v30

    if-eqz v30, :cond_3

    .line 1481
    new-instance v30, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v31, v0

    const-wide/16 v32, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    move-object/from16 v2, v31

    move-wide/from16 v3, v32

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;-><init>(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;J)V

    move-object/from16 v0, v27

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1450
    .end local v21    # "info":Landroid/content/pm/PackageInfo;
    .end local v22    # "info$iterator":Ljava/util/Iterator;
    .end local v27    # "schedule":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/BackupManagerService$FullBackupEntry;>;"
    .restart local v6    # "N":I
    .restart local v11    # "bufStream":Ljava/io/BufferedInputStream;
    .restart local v15    # "foundApps":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v17    # "fstream":Ljava/io/FileInputStream;
    .restart local v18    # "i":I
    .restart local v20    # "in":Ljava/io/DataInputStream;
    .restart local v28    # "schedule":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/BackupManagerService$FullBackupEntry;>;"
    .restart local v29    # "version":I
    :cond_4
    :try_start_9
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "app$iterator":Ljava/util/Iterator;
    :cond_5
    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/PackageInfo;

    .line 1451
    .local v7, "app":Landroid/content/pm/PackageInfo;
    invoke-static {v7}, Lcom/android/server/backup/BackupManagerService;->appGetsFullBackup(Landroid/content/pm/PackageInfo;)Z

    move-result v30

    if-eqz v30, :cond_5

    iget-object v0, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/server/backup/BackupManagerService;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;)Z

    move-result v30

    if-eqz v30, :cond_5

    .line 1452
    iget-object v0, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v15, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_5

    .line 1456
    new-instance v30, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;

    iget-object v0, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v31, v0

    const-wide/16 v32, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    move-object/from16 v2, v31

    move-wide/from16 v3, v32

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;-><init>(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;J)V

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1457
    const/4 v12, 0x1

    goto :goto_5

    .line 1462
    .end local v7    # "app":Landroid/content/pm/PackageInfo;
    :cond_6
    invoke-static/range {v28 .. v28}, Ljava/util/Collections;->sort(Ljava/util/List;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 1468
    invoke-static/range {v20 .. v20}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1469
    invoke-static {v11}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1470
    invoke-static/range {v17 .. v17}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move-object/from16 v27, v28

    .end local v28    # "schedule":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/BackupManagerService$FullBackupEntry;>;"
    .restart local v27    # "schedule":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/BackupManagerService$FullBackupEntry;>;"
    goto/16 :goto_3

    .line 1467
    .end local v6    # "N":I
    .end local v8    # "app$iterator":Ljava/util/Iterator;
    .end local v11    # "bufStream":Ljava/io/BufferedInputStream;
    .end local v15    # "foundApps":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v17    # "fstream":Ljava/io/FileInputStream;
    .end local v18    # "i":I
    .end local v20    # "in":Ljava/io/DataInputStream;
    .end local v27    # "schedule":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/BackupManagerService$FullBackupEntry;>;"
    .end local v29    # "version":I
    :catchall_0
    move-exception v30

    .line 1468
    :goto_6
    invoke-static/range {v19 .. v19}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1469
    invoke-static {v10}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1470
    invoke-static/range {v16 .. v16}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1467
    throw v30

    .line 1486
    :cond_7
    if-eqz v12, :cond_8

    .line 1487
    invoke-direct/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService;->writeFullBackupScheduleAsync()V

    .line 1489
    :cond_8
    return-object v27

    .line 1467
    .local v10, "bufStream":Ljava/io/BufferedInputStream;
    .restart local v17    # "fstream":Ljava/io/FileInputStream;
    .local v19, "in":Ljava/io/DataInputStream;
    .local v27, "schedule":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/BackupManagerService$FullBackupEntry;>;"
    :catchall_1
    move-exception v30

    move-object/from16 v16, v17

    .end local v17    # "fstream":Ljava/io/FileInputStream;
    .restart local v16    # "fstream":Ljava/io/FileInputStream;
    goto :goto_6

    .end local v10    # "bufStream":Ljava/io/BufferedInputStream;
    .end local v16    # "fstream":Ljava/io/FileInputStream;
    .restart local v11    # "bufStream":Ljava/io/BufferedInputStream;
    .restart local v17    # "fstream":Ljava/io/FileInputStream;
    :catchall_2
    move-exception v30

    move-object v10, v11

    .end local v11    # "bufStream":Ljava/io/BufferedInputStream;
    .local v10, "bufStream":Ljava/io/BufferedInputStream;
    move-object/from16 v16, v17

    .end local v17    # "fstream":Ljava/io/FileInputStream;
    .restart local v16    # "fstream":Ljava/io/FileInputStream;
    goto :goto_6

    .end local v10    # "bufStream":Ljava/io/BufferedInputStream;
    .end local v16    # "fstream":Ljava/io/FileInputStream;
    .end local v19    # "in":Ljava/io/DataInputStream;
    .restart local v11    # "bufStream":Ljava/io/BufferedInputStream;
    .restart local v17    # "fstream":Ljava/io/FileInputStream;
    .restart local v20    # "in":Ljava/io/DataInputStream;
    :catchall_3
    move-exception v30

    move-object/from16 v19, v20

    .end local v20    # "in":Ljava/io/DataInputStream;
    .local v19, "in":Ljava/io/DataInputStream;
    move-object v10, v11

    .end local v11    # "bufStream":Ljava/io/BufferedInputStream;
    .restart local v10    # "bufStream":Ljava/io/BufferedInputStream;
    move-object/from16 v16, v17

    .end local v17    # "fstream":Ljava/io/FileInputStream;
    .restart local v16    # "fstream":Ljava/io/FileInputStream;
    goto :goto_6

    .end local v10    # "bufStream":Ljava/io/BufferedInputStream;
    .end local v16    # "fstream":Ljava/io/FileInputStream;
    .end local v19    # "in":Ljava/io/DataInputStream;
    .end local v27    # "schedule":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/BackupManagerService$FullBackupEntry;>;"
    .restart local v6    # "N":I
    .restart local v11    # "bufStream":Ljava/io/BufferedInputStream;
    .restart local v17    # "fstream":Ljava/io/FileInputStream;
    .restart local v20    # "in":Ljava/io/DataInputStream;
    .restart local v28    # "schedule":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/BackupManagerService$FullBackupEntry;>;"
    .restart local v29    # "version":I
    :catchall_4
    move-exception v30

    move-object/from16 v19, v20

    .end local v20    # "in":Ljava/io/DataInputStream;
    .restart local v19    # "in":Ljava/io/DataInputStream;
    move-object v10, v11

    .end local v11    # "bufStream":Ljava/io/BufferedInputStream;
    .restart local v10    # "bufStream":Ljava/io/BufferedInputStream;
    move-object/from16 v16, v17

    .end local v17    # "fstream":Ljava/io/FileInputStream;
    .restart local v16    # "fstream":Ljava/io/FileInputStream;
    move-object/from16 v27, v28

    .end local v28    # "schedule":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/BackupManagerService$FullBackupEntry;>;"
    .local v27, "schedule":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/BackupManagerService$FullBackupEntry;>;"
    goto :goto_6

    .line 1463
    .end local v6    # "N":I
    .end local v29    # "version":I
    .local v10, "bufStream":Ljava/io/BufferedInputStream;
    .local v16, "fstream":Ljava/io/FileInputStream;
    .local v19, "in":Ljava/io/DataInputStream;
    .local v27, "schedule":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/BackupManagerService$FullBackupEntry;>;"
    :catch_2
    move-exception v14

    .restart local v14    # "e":Ljava/lang/Exception;
    goto/16 :goto_2

    .end local v14    # "e":Ljava/lang/Exception;
    .end local v16    # "fstream":Ljava/io/FileInputStream;
    .restart local v17    # "fstream":Ljava/io/FileInputStream;
    :catch_3
    move-exception v14

    .restart local v14    # "e":Ljava/lang/Exception;
    move-object/from16 v16, v17

    .end local v17    # "fstream":Ljava/io/FileInputStream;
    .local v16, "fstream":Ljava/io/FileInputStream;
    goto/16 :goto_2

    .end local v10    # "bufStream":Ljava/io/BufferedInputStream;
    .end local v14    # "e":Ljava/lang/Exception;
    .end local v16    # "fstream":Ljava/io/FileInputStream;
    .restart local v11    # "bufStream":Ljava/io/BufferedInputStream;
    .restart local v17    # "fstream":Ljava/io/FileInputStream;
    :catch_4
    move-exception v14

    .restart local v14    # "e":Ljava/lang/Exception;
    move-object v10, v11

    .end local v11    # "bufStream":Ljava/io/BufferedInputStream;
    .local v10, "bufStream":Ljava/io/BufferedInputStream;
    move-object/from16 v16, v17

    .end local v17    # "fstream":Ljava/io/FileInputStream;
    .restart local v16    # "fstream":Ljava/io/FileInputStream;
    goto/16 :goto_2

    .end local v10    # "bufStream":Ljava/io/BufferedInputStream;
    .end local v14    # "e":Ljava/lang/Exception;
    .end local v16    # "fstream":Ljava/io/FileInputStream;
    .end local v19    # "in":Ljava/io/DataInputStream;
    .restart local v11    # "bufStream":Ljava/io/BufferedInputStream;
    .restart local v17    # "fstream":Ljava/io/FileInputStream;
    .restart local v20    # "in":Ljava/io/DataInputStream;
    :catch_5
    move-exception v14

    .restart local v14    # "e":Ljava/lang/Exception;
    move-object/from16 v19, v20

    .end local v20    # "in":Ljava/io/DataInputStream;
    .local v19, "in":Ljava/io/DataInputStream;
    move-object v10, v11

    .end local v11    # "bufStream":Ljava/io/BufferedInputStream;
    .restart local v10    # "bufStream":Ljava/io/BufferedInputStream;
    move-object/from16 v16, v17

    .end local v17    # "fstream":Ljava/io/FileInputStream;
    .restart local v16    # "fstream":Ljava/io/FileInputStream;
    goto/16 :goto_2
.end method

.method private registerTransport(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/backup/IBackupTransport;)V
    .locals 10
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "component"    # Ljava/lang/String;
    .param p3, "transport"    # Lcom/android/internal/backup/IBackupTransport;

    .prologue
    .line 1832
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService;->mTransports:Landroid/util/ArrayMap;

    monitor-enter v5

    .line 1833
    :try_start_0
    const-string/jumbo v4, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Registering transport "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1834
    const-string/jumbo v7, "::"

    .line 1833
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1834
    const-string/jumbo v7, " = "

    .line 1833
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1835
    if-eqz p3, :cond_1

    .line 1836
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mTransports:Landroid/util/ArrayMap;

    invoke-virtual {v4, p1, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1837
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mTransportNames:Landroid/util/ArrayMap;

    invoke-virtual {v4, p2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    .line 1850
    :try_start_1
    invoke-interface {p3}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;

    move-result-object v3

    .line 1851
    .local v3, "transportName":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    invoke-direct {v2, v4, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1852
    .local v2, "stateDir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 1854
    new-instance v1, Ljava/io/File;

    const-string/jumbo v4, "_need_init_"

    invoke-direct {v1, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1855
    .local v1, "initSentinel":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1856
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1857
    :try_start_2
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mPendingInits:Ljava/util/HashSet;

    invoke-virtual {v4, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1861
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 1862
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 1860
    const-wide/32 v8, 0xea60

    .line 1862
    add-long/2addr v6, v8

    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService;->mRunInitIntent:Landroid/app/PendingIntent;

    .line 1861
    const/4 v9, 0x0

    invoke-virtual {v4, v9, v6, v7, v8}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 1831
    .end local v1    # "initSentinel":Ljava/io/File;
    .end local v2    # "stateDir":Ljava/io/File;
    .end local v3    # "transportName":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 1839
    :cond_1
    :try_start_4
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mTransports:Landroid/util/ArrayMap;

    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService;->mTransportNames:Landroid/util/ArrayMap;

    invoke-virtual {v6, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1840
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mTransportNames:Landroid/util/ArrayMap;

    invoke-virtual {v4, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v5

    .line 1842
    return-void

    .line 1832
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 1856
    .restart local v1    # "initSentinel":Ljava/io/File;
    .restart local v2    # "stateDir":Ljava/io/File;
    .restart local v3    # "transportName":Ljava/lang/String;
    :catchall_1
    move-exception v4

    :try_start_5
    monitor-exit v5

    throw v4
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 1865
    .end local v1    # "initSentinel":Ljava/io/File;
    .end local v2    # "stateDir":Ljava/io/File;
    .end local v3    # "transportName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1867
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unable to register transport as "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1868
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mTransportNames:Landroid/util/ArrayMap;

    invoke-virtual {v4, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1869
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mTransports:Landroid/util/ArrayMap;

    invoke-virtual {v4, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private removePackageFromSetLocked(Ljava/util/HashSet;Ljava/lang/String;)V
    .locals 1
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2218
    .local p1, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {p1, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2226
    invoke-virtual {p1, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 2227
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mPendingBackups:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2217
    :cond_0
    return-void
.end method

.method private routeSocketDataToOutput(Landroid/os/ParcelFileDescriptor;Ljava/io/OutputStream;)V
    .locals 8
    .param p1, "inPipe"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 3565
    new-instance v4, Ljava/io/FileInputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 3566
    .local v4, "raw":Ljava/io/FileInputStream;
    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 3568
    .local v2, "in":Ljava/io/DataInputStream;
    const v6, 0x8000

    new-array v0, v6, [B

    .line 3570
    .local v0, "buffer":[B
    :cond_0
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .local v1, "chunkTotal":I
    if-lez v1, :cond_2

    .line 3571
    :goto_0
    if-lez v1, :cond_0

    .line 3572
    array-length v6, v0

    if-le v1, v6, :cond_1

    array-length v5, v0

    .line 3573
    .local v5, "toRead":I
    :goto_1
    invoke-virtual {v2, v0, v7, v5}, Ljava/io/DataInputStream;->read([BII)I

    move-result v3

    .line 3574
    .local v3, "nRead":I
    invoke-virtual {p2, v0, v7, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 3575
    sub-int/2addr v1, v3

    goto :goto_0

    .end local v3    # "nRead":I
    .end local v5    # "toRead":I
    :cond_1
    move v5, v1

    .line 3572
    goto :goto_1

    .line 3563
    :cond_2
    return-void
.end method

.method private static sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V
    .locals 3
    .param p0, "observer"    # Landroid/app/backup/IBackupObserver;
    .param p1, "status"    # I

    .prologue
    .line 10699
    if-eqz p0, :cond_0

    .line 10701
    :try_start_0
    invoke-interface {p0, p1}, Landroid/app/backup/IBackupObserver;->backupFinished(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10698
    :cond_0
    :goto_0
    return-void

    .line 10702
    :catch_0
    move-exception v0

    .line 10704
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BackupManagerService"

    const-string/jumbo v2, "Backup observer went away: backupFinished"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V
    .locals 3
    .param p0, "observer"    # Landroid/app/backup/IBackupObserver;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "status"    # I

    .prologue
    .line 10687
    if-eqz p0, :cond_0

    .line 10689
    :try_start_0
    invoke-interface {p0, p1, p2}, Landroid/app/backup/IBackupObserver;->onResult(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10686
    :cond_0
    :goto_0
    return-void

    .line 10690
    :catch_0
    move-exception v0

    .line 10692
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BackupManagerService"

    const-string/jumbo v2, "Backup observer went away: onResult"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static sendBackupOnUpdate(Landroid/app/backup/IBackupObserver;Ljava/lang/String;Landroid/app/backup/BackupProgress;)V
    .locals 3
    .param p0, "observer"    # Landroid/app/backup/IBackupObserver;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "progress"    # Landroid/app/backup/BackupProgress;

    .prologue
    .line 10674
    if-eqz p0, :cond_0

    .line 10676
    :try_start_0
    invoke-interface {p0, p1, p2}, Landroid/app/backup/IBackupObserver;->onUpdate(Ljava/lang/String;Landroid/app/backup/BackupProgress;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10673
    :cond_0
    :goto_0
    return-void

    .line 10677
    :catch_0
    move-exception v0

    .line 10679
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BackupManagerService"

    const-string/jumbo v2, "Backup observer went away: onUpdate"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static signaturesMatch([Landroid/content/pm/Signature;Landroid/content/pm/PackageInfo;)Z
    .locals 10
    .param p0, "storedSigs"    # [Landroid/content/pm/Signature;
    .param p1, "target"    # Landroid/content/pm/PackageInfo;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 7957
    if-nez p1, :cond_0

    .line 7958
    return v8

    .line 7966
    :cond_0
    iget-object v6, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_1

    .line 7968
    return v9

    .line 7973
    :cond_1
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 7976
    .local v0, "deviceSigs":[Landroid/content/pm/Signature;
    if-eqz p0, :cond_2

    array-length v6, p0

    if-nez v6, :cond_4

    .line 7977
    :cond_2
    if-eqz v0, :cond_3

    array-length v6, v0

    if-nez v6, :cond_4

    .line 7978
    :cond_3
    return v9

    .line 7980
    :cond_4
    if-eqz p0, :cond_5

    if-nez v0, :cond_6

    .line 7981
    :cond_5
    return v8

    .line 7987
    :cond_6
    array-length v5, p0

    .line 7988
    .local v5, "nStored":I
    array-length v4, v0

    .line 7990
    .local v4, "nDevice":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v5, :cond_a

    .line 7991
    const/4 v3, 0x0

    .line 7992
    .local v3, "match":Z
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    if-ge v2, v4, :cond_7

    .line 7993
    aget-object v6, p0, v1

    aget-object v7, v0, v2

    invoke-virtual {v6, v7}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 7994
    const/4 v3, 0x1

    .line 7998
    :cond_7
    if-nez v3, :cond_9

    .line 7999
    return v8

    .line 7992
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 7990
    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8002
    .end local v2    # "j":I
    .end local v3    # "match":Z
    :cond_a
    return v9
.end method

.method private static writeBackupEnableState(ZI)V
    .locals 10
    .param p0, "enable"    # Z
    .param p1, "userId"    # I

    .prologue
    .line 9735
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v7

    const-string/jumbo v8, "backup"

    invoke-direct {v0, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 9736
    .local v0, "base":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string/jumbo v7, "backup_enabled"

    invoke-direct {v2, v0, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 9737
    .local v2, "enableFile":Ljava/io/File;
    new-instance v6, Ljava/io/File;

    const-string/jumbo v7, "backup_enabled-stage"

    invoke-direct {v6, v0, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 9738
    .local v6, "stage":Ljava/io/File;
    const/4 v3, 0x0

    .line 9740
    .local v3, "fout":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9741
    .end local v3    # "fout":Ljava/io/FileOutputStream;
    .local v4, "fout":Ljava/io/FileOutputStream;
    if-eqz p0, :cond_0

    const/4 v7, 0x1

    :goto_0
    :try_start_1
    invoke-virtual {v4, v7}, Ljava/io/FileOutputStream;->write(I)V

    .line 9742
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 9743
    invoke-virtual {v6, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 9757
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move-object v3, v4

    .line 9734
    .end local v4    # "fout":Ljava/io/FileOutputStream;
    :goto_1
    return-void

    .line 9741
    .restart local v4    # "fout":Ljava/io/FileOutputStream;
    :cond_0
    const/4 v7, 0x0

    goto :goto_0

    .line 9745
    .end local v4    # "fout":Ljava/io/FileOutputStream;
    .restart local v3    # "fout":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v1

    .line 9748
    .end local v3    # "fout":Ljava/io/FileOutputStream;
    .local v1, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_2
    const-string/jumbo v7, "BackupManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Unable to record backup enable state; reverting to disabled: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 9749
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    .line 9748
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9751
    sget-object v7, Lcom/android/server/backup/BackupManagerService;->sInstance:Lcom/android/server/backup/Trampoline;

    iget-object v7, v7, Lcom/android/server/backup/Trampoline;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 9753
    .local v5, "r":Landroid/content/ContentResolver;
    const-string/jumbo v7, "backup_enabled"

    const/4 v8, 0x0

    .line 9752
    invoke-static {v5, v7, v8, p1}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 9754
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 9755
    invoke-virtual {v6}, Ljava/io/File;->delete()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 9757
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_1

    .line 9756
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v5    # "r":Landroid/content/ContentResolver;
    :catchall_0
    move-exception v7

    .line 9757
    :goto_3
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 9756
    throw v7

    .restart local v4    # "fout":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v7

    move-object v3, v4

    .end local v4    # "fout":Ljava/io/FileOutputStream;
    .local v3, "fout":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 9745
    .end local v3    # "fout":Ljava/io/FileOutputStream;
    .restart local v4    # "fout":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v1

    .restart local v1    # "e":Ljava/lang/Exception;
    move-object v3, v4

    .end local v4    # "fout":Ljava/io/FileOutputStream;
    .restart local v3    # "fout":Ljava/io/FileOutputStream;
    goto :goto_2
.end method

.method private writeFullBackupScheduleAsync()V
    .locals 2

    .prologue
    .line 1529
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mFullBackupScheduleWriter:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1530
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mFullBackupScheduleWriter:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->post(Ljava/lang/Runnable;)Z

    .line 1528
    return-void
.end method

.method private writeToJournalLocked(Ljava/lang/String;)V
    .locals 6
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 9292
    const/4 v1, 0x0

    .line 9294
    .local v1, "out":Ljava/io/RandomAccessFile;
    :try_start_0
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mJournal:Ljava/io/File;

    if-nez v3, :cond_0

    const-string/jumbo v3, "journal"

    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mJournalDir:Ljava/io/File;

    const/4 v5, 0x0

    invoke-static {v3, v5, v4}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mJournal:Ljava/io/File;

    .line 9295
    :cond_0
    new-instance v2, Ljava/io/RandomAccessFile;

    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mJournal:Ljava/io/File;

    const-string/jumbo v4, "rws"

    invoke-direct {v2, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9296
    .end local v1    # "out":Ljava/io/RandomAccessFile;
    .local v2, "out":Ljava/io/RandomAccessFile;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 9297
    invoke-virtual {v2, p1}, Ljava/io/RandomAccessFile;->writeUTF(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 9302
    if-eqz v2, :cond_1

    :try_start_2
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    :goto_0
    move-object v1, v2

    .line 9291
    .end local v2    # "out":Ljava/io/RandomAccessFile;
    :cond_2
    :goto_1
    return-void

    .line 9302
    .restart local v2    # "out":Ljava/io/RandomAccessFile;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    goto :goto_0

    .line 9298
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "out":Ljava/io/RandomAccessFile;
    .restart local v1    # "out":Ljava/io/RandomAccessFile;
    :catch_1
    move-exception v0

    .line 9299
    .end local v1    # "out":Ljava/io/RandomAccessFile;
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_3
    const-string/jumbo v3, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Can\'t write "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " to backup journal"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 9300
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mJournal:Ljava/io/File;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 9302
    if-eqz v1, :cond_2

    :try_start_4
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1

    .line 9301
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    .line 9302
    :goto_3
    if-eqz v1, :cond_3

    :try_start_5
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 9301
    :cond_3
    :goto_4
    throw v3

    .line 9302
    :catch_3
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    goto :goto_4

    .line 9301
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "out":Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "out":Ljava/io/RandomAccessFile;
    .local v1, "out":Ljava/io/RandomAccessFile;
    goto :goto_3

    .line 9298
    .end local v1    # "out":Ljava/io/RandomAccessFile;
    .restart local v2    # "out":Ljava/io/RandomAccessFile;
    :catch_4
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    move-object v1, v2

    .end local v2    # "out":Ljava/io/RandomAccessFile;
    .restart local v1    # "out":Ljava/io/RandomAccessFile;
    goto :goto_2
.end method


# virtual methods
.method synthetic -com_android_server_backup_BackupManagerService_lambda$1()V
    .locals 0

    .prologue
    .line 1231
    invoke-direct {p0}, Lcom/android/server/backup/BackupManagerService;->parseLeftoverJournals()V

    .line 0
    return-void
.end method

.method public acknowledgeFullBackupOrRestore(IZLjava/lang/String;Ljava/lang/String;Landroid/app/backup/IFullBackupRestoreObserver;)V
    .locals 8
    .param p1, "token"    # I
    .param p2, "allow"    # Z
    .param p3, "curPassword"    # Ljava/lang/String;
    .param p4, "encPpassword"    # Ljava/lang/String;
    .param p5, "observer"    # Landroid/app/backup/IFullBackupRestoreObserver;

    .prologue
    .line 9659
    const-string/jumbo v5, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "acknowledgeFullBackupOrRestore : token="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 9660
    const-string/jumbo v7, " allow="

    .line 9659
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9666
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    const/16 v6, 0x3e8

    if-eq v5, v6, :cond_0

    .line 9667
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "android.permission.BACKUP"

    const-string/jumbo v7, "acknowledgeFullBackupOrRestore"

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 9671
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 9675
    .local v2, "oldId":J
    :try_start_0
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService;->mFullConfirmations:Landroid/util/SparseArray;

    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 9676
    :try_start_1
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService;->mFullConfirmations:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/backup/BackupManagerService$FullParams;

    .line 9677
    .local v1, "params":Lcom/android/server/backup/BackupManagerService$FullParams;
    if-eqz v1, :cond_3

    .line 9678
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    const/16 v7, 0x9

    invoke-virtual {v5, v7, v1}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->removeMessages(ILjava/lang/Object;)V

    .line 9679
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService;->mFullConfirmations:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 9681
    if-eqz p2, :cond_2

    .line 9682
    instance-of v5, v1, Lcom/android/server/backup/BackupManagerService$FullBackupParams;

    if-eqz v5, :cond_1

    .line 9683
    const/4 v4, 0x2

    .line 9686
    .local v4, "verb":I
    :goto_0
    iput-object p5, v1, Lcom/android/server/backup/BackupManagerService$FullParams;->observer:Landroid/app/backup/IFullBackupRestoreObserver;

    .line 9687
    iput-object p3, v1, Lcom/android/server/backup/BackupManagerService$FullParams;->curPassword:Ljava/lang/String;

    .line 9689
    iput-object p4, v1, Lcom/android/server/backup/BackupManagerService$FullParams;->encryptPassword:Ljava/lang/String;

    .line 9692
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 9693
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    invoke-virtual {v5, v4, v1}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 9694
    .local v0, "msg":Landroid/os/Message;
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    invoke-virtual {v5, v0}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "msg":Landroid/os/Message;
    .end local v4    # "verb":I
    :goto_1
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 9705
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 9658
    return-void

    .line 9684
    :cond_1
    const/16 v4, 0xa

    .restart local v4    # "verb":I
    goto :goto_0

    .line 9696
    .end local v4    # "verb":I
    :cond_2
    :try_start_3
    const-string/jumbo v5, "BackupManagerService"

    const-string/jumbo v7, "User rejected full backup/restore operation"

    invoke-static {v5, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9698
    invoke-virtual {p0, v1}, Lcom/android/server/backup/BackupManagerService;->signalFullBackupRestoreCompletion(Lcom/android/server/backup/BackupManagerService$FullParams;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 9675
    .end local v1    # "params":Lcom/android/server/backup/BackupManagerService$FullParams;
    :catchall_0
    move-exception v5

    :try_start_4
    monitor-exit v6

    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 9704
    :catchall_1
    move-exception v5

    .line 9705
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 9704
    throw v5

    .line 9701
    .restart local v1    # "params":Lcom/android/server/backup/BackupManagerService$FullParams;
    :cond_3
    :try_start_5
    const-string/jumbo v5, "BackupManagerService"

    const-string/jumbo v7, "Attempted to ack full backup/restore with invalid token"

    invoke-static {v5, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method

.method addBackupTrace(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 1059
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mBackupTrace:Ljava/util/List;

    monitor-enter v1

    .line 1060
    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mBackupTrace:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 1057
    return-void

    .line 1059
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method addPackageParticipantsLocked([Ljava/lang/String;)V
    .locals 4
    .param p1, "packageNames"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 2156
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->allAgentPackages()Ljava/util/List;

    move-result-object v1

    .line 2157
    .local v1, "targetApps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    if-eqz p1, :cond_0

    .line 2159
    const/4 v2, 0x0

    array-length v3, p1

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, p1, v2

    .line 2160
    .local v0, "packageName":Ljava/lang/String;
    invoke-direct {p0, v0, v1}, Lcom/android/server/backup/BackupManagerService;->addPackageParticipantsLockedInner(Ljava/lang/String;Ljava/util/List;)V

    .line 2159
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2164
    .end local v0    # "packageName":Ljava/lang/String;
    :cond_0
    invoke-direct {p0, v2, v1}, Lcom/android/server/backup/BackupManagerService;->addPackageParticipantsLockedInner(Ljava/lang/String;Ljava/util/List;)V

    .line 2154
    :cond_1
    return-void
.end method

.method public agentConnected(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "agentBinder"    # Landroid/os/IBinder;

    .prologue
    .line 10002
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mAgentConnectLock:Ljava/lang/Object;

    monitor-enter v2

    .line 10003
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v3, 0x3e8

    if-ne v1, v3, :cond_0

    .line 10004
    const-string/jumbo v1, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "agentConnected pkg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " agent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10005
    invoke-static {p2}, Landroid/app/IBackupAgent$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IBackupAgent;

    move-result-object v0

    .line 10006
    .local v0, "agent":Landroid/app/IBackupAgent;
    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mConnectedAgent:Landroid/app/IBackupAgent;

    .line 10007
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/backup/BackupManagerService;->mConnecting:Z

    .line 10012
    .end local v0    # "agent":Landroid/app/IBackupAgent;
    :goto_0
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mAgentConnectLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 10001
    return-void

    .line 10009
    :cond_0
    :try_start_1
    const-string/jumbo v1, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Non-system process uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 10010
    const-string/jumbo v4, " claiming agent connected"

    .line 10009
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 10002
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public agentDisconnected(Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 10021
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mAgentConnectLock:Ljava/lang/Object;

    monitor-enter v1

    .line 10022
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v2, 0x3e8

    if-ne v0, v2, :cond_0

    .line 10023
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mConnectedAgent:Landroid/app/IBackupAgent;

    .line 10024
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/backup/BackupManagerService;->mConnecting:Z

    .line 10029
    :goto_0
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mAgentConnectLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 10019
    return-void

    .line 10026
    :cond_0
    :try_start_1
    const-string/jumbo v0, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Non-system process uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 10027
    const-string/jumbo v3, " claiming agent disconnected"

    .line 10026
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 10021
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method allAgentPackages()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2234
    const/16 v4, 0x40

    .line 2235
    .local v4, "flags":I
    iget-object v7, p0, Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v7, v4}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v5

    .line 2236
    .local v5, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    .line 2237
    .local v0, "N":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "a":I
    :goto_0
    if-ltz v1, :cond_2

    .line 2238
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageInfo;

    .line 2240
    .local v6, "pkg":Landroid/content/pm/PackageInfo;
    :try_start_0
    iget-object v2, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 2241
    .local v2, "app":Landroid/content/pm/ApplicationInfo;
    iget v7, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const v8, 0x8000

    and-int/2addr v7, v8

    if-eqz v7, :cond_0

    .line 2242
    iget-object v7, v2, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    if-nez v7, :cond_1

    .line 2244
    :cond_0
    invoke-interface {v5, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2237
    .end local v2    # "app":Landroid/content/pm/ApplicationInfo;
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2243
    .restart local v2    # "app":Landroid/content/pm/ApplicationInfo;
    :cond_1
    iget v7, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v8, 0x4000000

    and-int/2addr v7, v8

    if-nez v7, :cond_0

    .line 2250
    iget-object v7, p0, Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v8, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 2251
    const/16 v9, 0x400

    .line 2250
    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 2252
    iget-object v7, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v2, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    iput-object v8, v7, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2254
    .end local v2    # "app":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v3

    .line 2255
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-interface {v5, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 2258
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v6    # "pkg":Landroid/content/pm/PackageInfo;
    :cond_2
    return-object v5
.end method

.method public backupNow()V
    .locals 4

    .prologue
    .line 9395
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.BACKUP"

    const-string/jumbo v3, "backupNow"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 9397
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9398
    const-string/jumbo v1, "BackupManagerService"

    const-string/jumbo v2, "Not running backup while in battery save mode"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9399
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/backup/KeyValueBackupJob;->schedule(Landroid/content/Context;)V

    .line 9394
    :goto_0
    return-void

    .line 9401
    :cond_0
    const-string/jumbo v1, "BackupManagerService"

    const-string/jumbo v2, "Scheduling immediate backup pass"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9402
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v2

    .line 9405
    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mRunBackupIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9412
    :goto_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/backup/KeyValueBackupJob;->cancel(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    goto :goto_0

    .line 9406
    :catch_0
    move-exception v0

    .line 9408
    .local v0, "e":Landroid/app/PendingIntent$CanceledException;
    :try_start_2
    const-string/jumbo v1, "BackupManagerService"

    const-string/jumbo v3, "run-backup intent cancelled!"

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 9402
    .end local v0    # "e":Landroid/app/PendingIntent$CanceledException;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method beginFullBackup(Lcom/android/server/backup/FullBackupJob;)Z
    .locals 30
    .param p1, "scheduledJob"    # Lcom/android/server/backup/FullBackupJob;

    .prologue
    .line 5069
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    .line 5070
    .local v22, "now":J
    const/4 v15, 0x0

    .line 5071
    .local v15, "entry":Lcom/android/server/backup/BackupManagerService$FullBackupEntry;
    const-wide/32 v18, 0x5265c00

    .line 5073
    .local v18, "latency":J
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/backup/BackupManagerService;->mEnabled:Z

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/backup/BackupManagerService;->mProvisioned:Z

    if-eqz v2, :cond_0

    .line 5086
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5087
    const-string/jumbo v2, "BackupManagerService"

    const-string/jumbo v3, "Deferring scheduled full backups in battery saver mode"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5088
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-wide/32 v6, 0xdbba00

    invoke-static {v2, v6, v7}, Lcom/android/server/backup/FullBackupJob;->schedule(Landroid/content/Context;J)V

    .line 5089
    const/4 v2, 0x0

    return v2

    .line 5081
    :cond_0
    const/4 v2, 0x0

    return v2

    .line 5093
    :cond_1
    const-string/jumbo v2, "BackupManagerService"

    const-string/jumbo v3, "Beginning scheduled full backup operation"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5097
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    move-object/from16 v27, v0

    monitor-enter v27

    .line 5098
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService;->mRunningFullBackupTask:Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;

    if-eqz v2, :cond_2

    .line 5099
    const-string/jumbo v2, "BackupManagerService"

    const-string/jumbo v3, "Backup triggered but one already/still running!"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5100
    const/4 v2, 0x0

    monitor-exit v27

    return v2

    .line 5106
    :cond_2
    const/16 v25, 0x1

    .line 5112
    .end local v15    # "entry":Lcom/android/server/backup/BackupManagerService$FullBackupEntry;
    :goto_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_4

    .line 5115
    const-string/jumbo v2, "BackupManagerService"

    const-string/jumbo v3, "Backup queue empty; doing nothing"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5117
    const/16 v25, 0x0

    .line 5195
    :cond_3
    :goto_1
    if-nez v25, :cond_c

    .line 5197
    const-string/jumbo v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Nothing pending full backup; rescheduling +"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v18

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5199
    move-wide/from16 v12, v18

    .line 5200
    .local v12, "deferTime":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    new-instance v3, Lcom/android/server/backup/BackupManagerService$4;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v12, v13}, Lcom/android/server/backup/BackupManagerService$4;-><init>(Lcom/android/server/backup/BackupManagerService;J)V

    invoke-virtual {v2, v3}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5205
    const/4 v2, 0x0

    monitor-exit v27

    return v2

    .line 5121
    .end local v12    # "deferTime":J
    :cond_4
    const/16 v16, 0x0

    .line 5123
    .local v16, "headBusy":Z
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService;->mCurrentTransport:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/backup/BackupManagerService;->getTransport(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/backup/BackupManagerService;->fullBackupAllowable(Lcom/android/internal/backup/IBackupTransport;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 5127
    const/16 v25, 0x0

    .line 5131
    .local v25, "runBackup":Z
    const-wide/32 v18, 0xdbba00

    .line 5134
    .end local v25    # "runBackup":Z
    :cond_5
    if-eqz v25, :cond_8

    .line 5135
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;

    move-object v15, v0

    .line 5136
    .local v15, "entry":Lcom/android/server/backup/BackupManagerService$FullBackupEntry;
    iget-wide v2, v15, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;->lastBackup:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sub-long v28, v22, v2

    .line 5137
    .local v28, "timeSinceRun":J
    const-wide/32 v2, 0x5265c00

    cmp-long v2, v28, v2

    if-ltz v2, :cond_6

    const/16 v25, 0x1

    .line 5138
    .local v25, "runBackup":Z
    :goto_2
    if-nez v25, :cond_7

    .line 5144
    const-wide/32 v2, 0x5265c00

    sub-long v18, v2, v28

    .line 5145
    goto :goto_1

    .line 5137
    .end local v25    # "runBackup":Z
    :cond_6
    const/16 v25, 0x0

    goto :goto_2

    .line 5149
    .restart local v25    # "runBackup":Z
    :cond_7
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v3, v15, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v11

    .line 5150
    .local v11, "appInfo":Landroid/content/pm/PackageInfo;
    invoke-static {v11}, Lcom/android/server/backup/BackupManagerService;->appGetsFullBackup(Landroid/content/pm/PackageInfo;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 5158
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 5159
    const/16 v16, 0x1

    .line 5193
    .end local v11    # "appInfo":Landroid/content/pm/PackageInfo;
    .end local v15    # "entry":Lcom/android/server/backup/BackupManagerService$FullBackupEntry;
    .end local v16    # "headBusy":Z
    .end local v25    # "runBackup":Z
    .end local v28    # "timeSinceRun":J
    :cond_8
    :goto_3
    if-eqz v16, :cond_3

    goto/16 :goto_0

    .line 5163
    .restart local v11    # "appInfo":Landroid/content/pm/PackageInfo;
    .restart local v15    # "entry":Lcom/android/server/backup/BackupManagerService$FullBackupEntry;
    .restart local v16    # "headBusy":Z
    .restart local v25    # "runBackup":Z
    .restart local v28    # "timeSinceRun":J
    :cond_9
    iget-object v2, v11, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v2, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    move/from16 v24, v0

    .line 5164
    .local v24, "privFlags":I
    move/from16 v0, v24

    and-int/lit16 v2, v0, 0x1000

    if-nez v2, :cond_a

    .line 5165
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService;->mActivityManager:Landroid/app/IActivityManager;

    iget-object v3, v11, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-interface {v2, v3}, Landroid/app/IActivityManager;->isAppForeground(I)Z

    move-result v16

    .line 5167
    .local v16, "headBusy":Z
    :goto_4
    if-eqz v16, :cond_8

    .line 5168
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 5169
    const-wide/32 v6, 0x36ee80

    .line 5168
    add-long/2addr v2, v6

    .line 5170
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService;->mTokenGenerator:Ljava/util/Random;

    const v6, 0x6ddd00

    invoke-virtual {v4, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    int-to-long v6, v4

    .line 5168
    add-long v20, v2, v6

    .line 5172
    .local v20, "nextEligible":J
    new-instance v26, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy-MM-dd HH:mm:ss"

    move-object/from16 v0, v26

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 5173
    .local v26, "sdf":Ljava/text/SimpleDateFormat;
    const-string/jumbo v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Full backup time but "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v15, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 5174
    const-string/jumbo v4, " is busy; deferring to "

    .line 5173
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 5175
    new-instance v4, Ljava/util/Date;

    move-wide/from16 v0, v20

    invoke-direct {v4, v0, v1}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 5173
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5180
    iget-object v2, v15, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;->packageName:Ljava/lang/String;

    .line 5181
    const-wide/32 v6, 0x5265c00

    sub-long v6, v20, v6

    .line 5180
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v6, v7}, Lcom/android/server/backup/BackupManagerService;->enqueueFullBackup(Ljava/lang/String;J)V
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 5183
    .end local v11    # "appInfo":Landroid/content/pm/PackageInfo;
    .end local v16    # "headBusy":Z
    .end local v20    # "nextEligible":J
    .end local v24    # "privFlags":I
    .end local v26    # "sdf":Ljava/text/SimpleDateFormat;
    :catch_0
    move-exception v17

    .line 5188
    .local v17, "nnf":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_b

    const/16 v25, 0x1

    .local v25, "runBackup":Z
    goto/16 :goto_3

    .line 5164
    .end local v17    # "nnf":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v11    # "appInfo":Landroid/content/pm/PackageInfo;
    .local v16, "headBusy":Z
    .restart local v24    # "privFlags":I
    .local v25, "runBackup":Z
    :cond_a
    const/16 v16, 0x0

    goto :goto_4

    .line 5188
    .end local v11    # "appInfo":Landroid/content/pm/PackageInfo;
    .end local v16    # "headBusy":Z
    .end local v24    # "privFlags":I
    .restart local v17    # "nnf":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_b
    const/16 v25, 0x0

    .local v25, "runBackup":Z
    goto/16 :goto_3

    .line 5209
    .end local v15    # "entry":Lcom/android/server/backup/BackupManagerService$FullBackupEntry;
    .end local v17    # "nnf":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v25    # "runBackup":Z
    .end local v28    # "timeSinceRun":J
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 5210
    new-instance v8, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v8, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 5211
    .local v8, "latch":Ljava/util/concurrent/CountDownLatch;
    const/4 v2, 0x1

    new-array v5, v2, [Ljava/lang/String;

    iget-object v2, v15, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;->packageName:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v5, v3

    .line 5212
    .local v5, "pkg":[Ljava/lang/String;
    new-instance v2, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;

    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 5213
    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v3, p0

    move-object/from16 v7, p1

    .line 5212
    invoke-direct/range {v2 .. v10}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;-><init>(Lcom/android/server/backup/BackupManagerService;Landroid/app/backup/IFullBackupRestoreObserver;[Ljava/lang/String;ZLcom/android/server/backup/FullBackupJob;Ljava/util/concurrent/CountDownLatch;Landroid/app/backup/IBackupObserver;Z)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/backup/BackupManagerService;->mRunningFullBackupTask:Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;

    .line 5215
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 5216
    new-instance v2, Ljava/lang/Thread;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService;->mRunningFullBackupTask:Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v27

    .line 5219
    const/4 v2, 0x1

    return v2

    .line 5097
    .end local v5    # "pkg":[Ljava/lang/String;
    .end local v8    # "latch":Ljava/util/concurrent/CountDownLatch;
    :catchall_0
    move-exception v2

    monitor-exit v27

    throw v2

    .line 5189
    .restart local v15    # "entry":Lcom/android/server/backup/BackupManagerService$FullBackupEntry;
    .local v25, "runBackup":Z
    .restart local v28    # "timeSinceRun":J
    :catch_1
    move-exception v14

    .local v14, "e":Landroid/os/RemoteException;
    goto/16 :goto_3
.end method

.method public beginRestoreSession(Ljava/lang/String;Ljava/lang/String;)Landroid/app/backup/IRestoreSession;
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "transport"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 10103
    const-string/jumbo v3, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "beginRestoreSession: pkg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 10104
    const-string/jumbo v5, " transport="

    .line 10103
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 10106
    const/4 v1, 0x1

    .line 10107
    .local v1, "needPermission":Z
    if-nez p2, :cond_0

    .line 10108
    iget-object p2, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentTransport:Ljava/lang/String;

    .line 10110
    if-eqz p1, :cond_0

    .line 10111
    const/4 v0, 0x0

    .line 10113
    .local v0, "app":Landroid/content/pm/PackageInfo;
    :try_start_0
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 10119
    .local v0, "app":Landroid/content/pm/PackageInfo;
    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 10123
    const/4 v1, 0x0

    .line 10128
    .end local v0    # "app":Landroid/content/pm/PackageInfo;
    :cond_0
    if-eqz v1, :cond_1

    .line 10129
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "android.permission.BACKUP"

    .line 10130
    const-string/jumbo v5, "beginRestoreSession"

    .line 10129
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 10135
    :goto_0
    monitor-enter p0

    .line 10136
    :try_start_1
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mActiveRestoreSession:Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;

    if-eqz v3, :cond_2

    .line 10137
    const-string/jumbo v3, "BackupManagerService"

    const-string/jumbo v4, "Restore session requested but one already active"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 10138
    return-object v6

    .line 10114
    .local v0, "app":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v2

    .line 10115
    .local v2, "nnf":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v3, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Asked to restore nonexistent pkg "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10116
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " not found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 10132
    .end local v0    # "app":Landroid/content/pm/PackageInfo;
    .end local v2    # "nnf":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    const-string/jumbo v3, "BackupManagerService"

    const-string/jumbo v4, "restoring self on current transport; no permission needed"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 10140
    :cond_2
    :try_start_2
    iget-boolean v3, p0, Lcom/android/server/backup/BackupManagerService;->mBackupRunning:Z

    if-eqz v3, :cond_3

    .line 10141
    const-string/jumbo v3, "BackupManagerService"

    const-string/jumbo v4, "Restore session requested but currently running backups"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    .line 10142
    return-object v6

    .line 10144
    :cond_3
    :try_start_3
    new-instance v3, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;

    invoke-direct {v3, p0, p1, p2}, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;-><init>(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mActiveRestoreSession:Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;

    .line 10145
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    const/16 v4, 0x8

    const-wide/32 v6, 0xea60

    invoke-virtual {v3, v4, v6, v7}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    .line 10147
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mActiveRestoreSession:Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;

    return-object v3

    .line 10135
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method bindToAgentSynchronous(Landroid/content/pm/ApplicationInfo;I)Landroid/app/IBackupAgent;
    .locals 13
    .param p1, "app"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "mode"    # I

    .prologue
    const/4 v12, 0x0

    .line 2384
    const/4 v0, 0x0

    .line 2385
    .local v0, "agent":Landroid/app/IBackupAgent;
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService;->mAgentConnectLock:Ljava/lang/Object;

    monitor-enter v6

    .line 2386
    const/4 v3, 0x1

    :try_start_0
    iput-boolean v3, p0, Lcom/android/server/backup/BackupManagerService;->mConnecting:Z

    .line 2387
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mConnectedAgent:Landroid/app/IBackupAgent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2389
    :try_start_1
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mActivityManager:Landroid/app/IActivityManager;

    iget-object v7, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 2390
    const/4 v8, 0x0

    .line 2389
    invoke-interface {v3, v7, p2, v8}, Landroid/app/IActivityManager;->bindBackupAgent(Ljava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2391
    const-string/jumbo v3, "BackupManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "awaiting agent for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2395
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x2710

    add-long v4, v8, v10

    .line 2396
    .local v4, "timeoutMark":J
    :goto_0
    iget-boolean v3, p0, Lcom/android/server/backup/BackupManagerService;->mConnecting:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mConnectedAgent:Landroid/app/IBackupAgent;

    if-nez v3, :cond_0

    .line 2397
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v8

    cmp-long v3, v8, v4

    if-gez v3, :cond_0

    .line 2399
    :try_start_2
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mAgentConnectLock:Ljava/lang/Object;

    const-wide/16 v8, 0x1388

    invoke-virtual {v3, v8, v9}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 2400
    :catch_0
    move-exception v2

    .line 2402
    .local v2, "e":Ljava/lang/InterruptedException;
    :try_start_3
    const-string/jumbo v3, "BackupManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Interrupted: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2403
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mActivityManager:Landroid/app/IActivityManager;

    invoke-interface {v3}, Landroid/app/IActivityManager;->clearPendingBackup()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v6

    .line 2404
    return-object v12

    .line 2409
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :cond_0
    :try_start_4
    iget-boolean v3, p0, Lcom/android/server/backup/BackupManagerService;->mConnecting:Z

    if-eqz v3, :cond_1

    .line 2410
    const-string/jumbo v3, "BackupManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Timeout waiting for agent "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2411
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mActivityManager:Landroid/app/IActivityManager;

    invoke-interface {v3}, Landroid/app/IActivityManager;->clearPendingBackup()V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v6

    .line 2412
    return-object v12

    .line 2414
    :cond_1
    :try_start_5
    const-string/jumbo v3, "BackupManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "got agent "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService;->mConnectedAgent:Landroid/app/IBackupAgent;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2415
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mConnectedAgent:Landroid/app/IBackupAgent;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .end local v0    # "agent":Landroid/app/IBackupAgent;
    .end local v4    # "timeoutMark":J
    :cond_2
    :goto_1
    monitor-exit v6

    .line 2421
    return-object v0

    .line 2385
    .restart local v0    # "agent":Landroid/app/IBackupAgent;
    :catchall_0
    move-exception v3

    monitor-exit v6

    throw v3

    .line 2417
    :catch_1
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method bindTransport(Landroid/content/pm/ServiceInfo;)Z
    .locals 6
    .param p1, "transport"    # Landroid/content/pm/ServiceInfo;

    .prologue
    .line 2121
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v4, p1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2122
    .local v2, "svcName":Landroid/content/ComponentName;
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mTransportWhitelist:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2123
    const-string/jumbo v3, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Proposed transport "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " not whitelisted; ignoring"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2124
    const/4 v3, 0x0

    return v3

    .line 2130
    :cond_0
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mTransportServiceIntent:Landroid/content/Intent;

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 2131
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2134
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mTransports:Landroid/util/ArrayMap;

    monitor-enter v4

    .line 2135
    :try_start_0
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mTransportConnections:Landroid/util/ArrayMap;

    iget-object v5, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/backup/BackupManagerService$TransportConnection;

    .line 2136
    .local v0, "connection":Lcom/android/server/backup/BackupManagerService$TransportConnection;
    if-nez v0, :cond_1

    .line 2137
    new-instance v0, Lcom/android/server/backup/BackupManagerService$TransportConnection;

    .end local v0    # "connection":Lcom/android/server/backup/BackupManagerService$TransportConnection;
    invoke-direct {v0, p0, p1}, Lcom/android/server/backup/BackupManagerService$TransportConnection;-><init>(Lcom/android/server/backup/BackupManagerService;Landroid/content/pm/ServiceInfo;)V

    .line 2138
    .restart local v0    # "connection":Lcom/android/server/backup/BackupManagerService$TransportConnection;
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mTransportConnections:Landroid/util/ArrayMap;

    iget-object v5, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v4

    .line 2147
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    .line 2149
    sget-object v4, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 2148
    const/4 v5, 0x1

    .line 2147
    invoke-virtual {v3, v1, v0, v5, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v3

    return v3

    .line 2143
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2134
    .end local v0    # "connection":Lcom/android/server/backup/BackupManagerService$TransportConnection;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method checkForTransportAndBind(Landroid/content/pm/PackageInfo;)V
    .locals 8
    .param p1, "pkgInfo"    # Landroid/content/pm/PackageInfo;

    .prologue
    const/4 v7, 0x0

    .line 2089
    new-instance v5, Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService;->mTransportServiceIntent:Landroid/content/Intent;

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 2090
    iget-object v6, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 2089
    invoke-virtual {v5, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 2092
    .local v4, "intent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v4, v7, v7}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v1

    .line 2094
    .local v1, "hosts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v1, :cond_0

    .line 2095
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 2096
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 2097
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget-object v3, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 2098
    .local v3, "info":Landroid/content/pm/ServiceInfo;
    invoke-virtual {p0, v3}, Lcom/android/server/backup/BackupManagerService;->tryBindTransport(Landroid/content/pm/ServiceInfo;)Z

    .line 2096
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2088
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v3    # "info":Landroid/content/pm/ServiceInfo;
    :cond_0
    return-void
.end method

.method clearApplicationDataSynchronous(Ljava/lang/String;)V
    .locals 14
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2428
    :try_start_0
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v8, 0x0

    invoke-virtual {v5, p1, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 2429
    .local v3, "info":Landroid/content/pm/PackageInfo;
    iget-object v5, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v5, v5, 0x40

    if-nez v5, :cond_0

    .line 2432
    return-void

    .line 2434
    .end local v3    # "info":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 2435
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v5, "BackupManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Tried to clear data for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " but not found"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2436
    return-void

    .line 2439
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v3    # "info":Landroid/content/pm/PackageInfo;
    :cond_0
    new-instance v4, Lcom/android/server/backup/BackupManagerService$ClearDataObserver;

    invoke-direct {v4, p0}, Lcom/android/server/backup/BackupManagerService$ClearDataObserver;-><init>(Lcom/android/server/backup/BackupManagerService;)V

    .line 2441
    .local v4, "observer":Lcom/android/server/backup/BackupManagerService$ClearDataObserver;
    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService;->mClearDataLock:Ljava/lang/Object;

    monitor-enter v8

    .line 2442
    const/4 v5, 0x1

    :try_start_1
    iput-boolean v5, p0, Lcom/android/server/backup/BackupManagerService;->mClearingData:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2444
    :try_start_2
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService;->mActivityManager:Landroid/app/IActivityManager;

    const/4 v9, 0x0

    invoke-interface {v5, p1, v4, v9}, Landroid/app/IActivityManager;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;I)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2450
    :goto_0
    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const-wide/16 v12, 0x2710

    add-long v6, v10, v12

    .line 2451
    .local v6, "timeoutMark":J
    :goto_1
    iget-boolean v5, p0, Lcom/android/server/backup/BackupManagerService;->mClearingData:Z

    if-eqz v5, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-wide v10

    cmp-long v5, v10, v6

    if-gez v5, :cond_1

    .line 2453
    :try_start_4
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService;->mClearDataLock:Ljava/lang/Object;

    const-wide/16 v10, 0x1388

    invoke-virtual {v5, v10, v11}, Ljava/lang/Object;->wait(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 2454
    :catch_1
    move-exception v2

    .line 2456
    .local v2, "e":Ljava/lang/InterruptedException;
    const/4 v5, 0x0

    :try_start_5
    iput-boolean v5, p0, Lcom/android/server/backup/BackupManagerService;->mClearingData:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 2441
    .end local v2    # "e":Ljava/lang/InterruptedException;
    .end local v6    # "timeoutMark":J
    :catchall_0
    move-exception v5

    monitor-exit v8

    throw v5

    .restart local v6    # "timeoutMark":J
    :cond_1
    monitor-exit v8

    .line 2425
    return-void

    .line 2445
    .end local v6    # "timeoutMark":J
    :catch_2
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public clearBackupData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 18
    .param p1, "transportName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 9339
    const-string/jumbo v14, "BackupManagerService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "clearBackupData() of "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " on "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9342
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v15, 0x40

    move-object/from16 v0, p2

    invoke-virtual {v14, v0, v15}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 9351
    .local v8, "info":Landroid/content/pm/PackageInfo;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v15, "android.permission.BACKUP"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v16

    .line 9352
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v17

    .line 9351
    invoke-virtual/range {v14 .. v17}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v14

    .line 9352
    const/4 v15, -0x1

    .line 9351
    if-ne v14, v15, :cond_1

    .line 9353
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/backup/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v15

    invoke-virtual {v14, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashSet;

    .line 9369
    .local v5, "apps":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_0
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 9372
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    const/16 v15, 0xc

    invoke-virtual {v14, v15}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->removeMessages(I)V

    .line 9373
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v15

    .line 9374
    :try_start_1
    invoke-direct/range {p0 .. p1}, Lcom/android/server/backup/BackupManagerService;->getTransport(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v13

    .line 9375
    .local v13, "transport":Lcom/android/internal/backup/IBackupTransport;
    if-nez v13, :cond_3

    .line 9377
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    .line 9378
    new-instance v16, Lcom/android/server/backup/BackupManagerService$ClearRetryParams;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/backup/BackupManagerService$ClearRetryParams;-><init>(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;Ljava/lang/String;)V

    .line 9377
    const/16 v17, 0xc

    move/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v14, v0, v1}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 9379
    .local v9, "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    const-wide/32 v16, 0x36ee80

    move-wide/from16 v0, v16

    invoke-virtual {v14, v9, v0, v1}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v15

    .line 9380
    return-void

    .line 9343
    .end local v5    # "apps":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v8    # "info":Landroid/content/pm/PackageInfo;
    .end local v9    # "msg":Landroid/os/Message;
    .end local v13    # "transport":Lcom/android/internal/backup/IBackupTransport;
    :catch_0
    move-exception v6

    .line 9344
    .local v6, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v14, "BackupManagerService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "No such package \'"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "\' - not clearing backup data"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9345
    return-void

    .line 9358
    .end local v6    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v8    # "info":Landroid/content/pm/PackageInfo;
    :cond_1
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 9359
    .restart local v5    # "apps":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/backup/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v14}, Landroid/util/SparseArray;->size()I

    move-result v4

    .line 9360
    .local v4, "N":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v4, :cond_0

    .line 9361
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/backup/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v14, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/HashSet;

    .line 9362
    .local v12, "s":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz v12, :cond_2

    .line 9363
    invoke-virtual {v5, v12}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 9360
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 9382
    .end local v4    # "N":I
    .end local v7    # "i":I
    .end local v12    # "s":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v13    # "transport":Lcom/android/internal/backup/IBackupTransport;
    :cond_3
    :try_start_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 9383
    .local v10, "oldId":J
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v14}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 9384
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    .line 9385
    new-instance v16, Lcom/android/server/backup/BackupManagerService$ClearParams;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v13, v8}, Lcom/android/server/backup/BackupManagerService$ClearParams;-><init>(Lcom/android/server/backup/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Landroid/content/pm/PackageInfo;)V

    .line 9384
    const/16 v17, 0x4

    move/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v14, v0, v1}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 9386
    .restart local v9    # "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    invoke-virtual {v14, v9}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->sendMessage(Landroid/os/Message;)Z

    .line 9387
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v15

    .line 9338
    .end local v9    # "msg":Landroid/os/Message;
    .end local v10    # "oldId":J
    .end local v13    # "transport":Lcom/android/internal/backup/IBackupTransport;
    :cond_4
    return-void

    .line 9373
    :catchall_0
    move-exception v14

    monitor-exit v15

    throw v14
.end method

.method clearBackupTrace()V
    .locals 2

    .prologue
    .line 1067
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mBackupTrace:Ljava/util/List;

    monitor-enter v1

    .line 1068
    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mBackupTrace:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 1065
    return-void

    .line 1067
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method clearRestoreSession(Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;)V
    .locals 2
    .param p1, "currentSession"    # Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;

    .prologue
    .line 10151
    monitor-enter p0

    .line 10152
    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mActiveRestoreSession:Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;

    if-eq p1, v0, :cond_0

    .line 10153
    const-string/jumbo v0, "BackupManagerService"

    const-string/jumbo v1, "ending non-current restore session"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    .line 10150
    return-void

    .line 10155
    :cond_0
    :try_start_1
    const-string/jumbo v0, "BackupManagerService"

    const-string/jumbo v1, "Clearing restore session and halting timeout"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 10156
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mActiveRestoreSession:Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;

    .line 10157
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->removeMessages(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 10151
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public dataChanged(Ljava/lang/String;)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 9309
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 9310
    .local v0, "callingUserHandle":I
    if-eqz v0, :cond_0

    .line 9320
    return-void

    .line 9323
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/backup/BackupManagerService;->dataChangedTargets(Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v1

    .line 9324
    .local v1, "targets":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-nez v1, :cond_1

    .line 9325
    const-string/jumbo v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "dataChanged but no participant pkg=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 9326
    const-string/jumbo v4, " uid="

    .line 9325
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 9326
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 9325
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9327
    return-void

    .line 9330
    :cond_1
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    new-instance v3, Lcom/android/server/backup/BackupManagerService$5;

    invoke-direct {v3, p0, p1, v1}, Lcom/android/server/backup/BackupManagerService$5;-><init>(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;Ljava/util/HashSet;)V

    invoke-virtual {v2, v3}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->post(Ljava/lang/Runnable;)Z

    .line 9308
    return-void
.end method

.method dequeueFullBackupLocked(Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 4991
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4992
    .local v0, "N":I
    add-int/lit8 v2, v0, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 4993
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;

    .line 4994
    .local v1, "e":Lcom/android/server/backup/BackupManagerService$FullBackupEntry;
    iget-object v3, v1, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4995
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4992
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 4990
    .end local v1    # "e":Lcom/android/server/backup/BackupManagerService$FullBackupEntry;
    :cond_1
    return-void
.end method

.method deviceIsEncrypted()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 4009
    :try_start_0
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mMountService:Landroid/os/storage/IMountService;

    invoke-interface {v3}, Landroid/os/storage/IMountService;->getEncryptionState()I

    move-result v3

    if-eq v3, v1, :cond_1

    .line 4011
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mMountService:Landroid/os/storage/IMountService;

    invoke-interface {v3}, Landroid/os/storage/IMountService;->getPasswordType()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eq v3, v1, :cond_0

    .line 4009
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 4011
    goto :goto_0

    :cond_1
    move v1, v2

    .line 4009
    goto :goto_0

    .line 4013
    :catch_0
    move-exception v0

    .line 4016
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unable to communicate with mount service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4017
    return v1
.end method

.method deviceIsProvisioned()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 9418
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 9419
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v2, "device_provisioned"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 10545
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "android.permission.DUMP"

    const-string/jumbo v5, "BackupManagerService"

    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 10547
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 10549
    .local v2, "identityToken":J
    if-eqz p3, :cond_2

    .line 10550
    const/4 v1, 0x0

    :try_start_0
    array-length v4, p3

    :goto_0
    if-ge v1, v4, :cond_2

    aget-object v0, p3, v1

    .line 10551
    .local v0, "arg":Ljava/lang/String;
    const-string/jumbo v5, "-h"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 10552
    const-string/jumbo v1, "\'dumpsys backup\' optional arguments:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10553
    const-string/jumbo v1, "  -h       : this help text"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10554
    const-string/jumbo v1, "  a[gents] : dump information about defined backup agents"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10564
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 10555
    return-void

    .line 10556
    :cond_0
    :try_start_1
    const-string/jumbo v5, "agents"

    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 10557
    invoke-direct {p0, p2}, Lcom/android/server/backup/BackupManagerService;->dumpAgents(Ljava/io/PrintWriter;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10564
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 10558
    return-void

    .line 10550
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 10562
    .end local v0    # "arg":Ljava/lang/String;
    :cond_2
    :try_start_2
    invoke-direct {p0, p2}, Lcom/android/server/backup/BackupManagerService;->dumpInternal(Ljava/io/PrintWriter;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 10564
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 10544
    return-void

    .line 10563
    :catchall_0
    move-exception v1

    .line 10564
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 10563
    throw v1
.end method

.method endFullBackup()V
    .locals 3

    .prologue
    .line 5225
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v1

    .line 5226
    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mRunningFullBackupTask:Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;

    if-eqz v0, :cond_0

    .line 5228
    const-string/jumbo v0, "BackupManagerService"

    const-string/jumbo v2, "Telling running backup to stop"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5230
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mRunningFullBackupTask:Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->setRunning(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 5224
    return-void

    .line 5225
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method enqueueFullBackup(Ljava/lang/String;J)V
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "lastBackedUp"    # J

    .prologue
    .line 5004
    new-instance v1, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;-><init>(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;J)V

    .line 5005
    .local v1, "newEntry":Lcom/android/server/backup/BackupManagerService$FullBackupEntry;
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v4

    .line 5009
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->dequeueFullBackupLocked(Ljava/lang/String;)V

    .line 5015
    const/4 v2, -0x1

    .line 5016
    .local v2, "which":I
    const-wide/16 v6, 0x0

    cmp-long v3, p2, v6

    if-lez v3, :cond_0

    .line 5017
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    :goto_0
    if-ltz v2, :cond_0

    .line 5018
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;

    .line 5019
    .local v0, "entry":Lcom/android/server/backup/BackupManagerService$FullBackupEntry;
    iget-wide v6, v0, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;->lastBackup:J

    cmp-long v3, v6, p2

    if-gtz v3, :cond_2

    .line 5020
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v3, v5, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 5025
    .end local v0    # "entry":Lcom/android/server/backup/BackupManagerService$FullBackupEntry;
    :cond_0
    if-gez v2, :cond_1

    .line 5027
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v4

    .line 5030
    invoke-direct {p0}, Lcom/android/server/backup/BackupManagerService;->writeFullBackupScheduleAsync()V

    .line 5003
    return-void

    .line 5017
    .restart local v0    # "entry":Lcom/android/server/backup/BackupManagerService$FullBackupEntry;
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 5005
    .end local v0    # "entry":Lcom/android/server/backup/BackupManagerService$FullBackupEntry;
    .end local v2    # "which":I
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public fullBackup(Landroid/os/ParcelFileDescriptor;ZZZZZZZ[Ljava/lang/String;)V
    .locals 18
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "includeApks"    # Z
    .param p3, "includeObbs"    # Z
    .param p4, "includeShared"    # Z
    .param p5, "doWidgets"    # Z
    .param p6, "doAllApps"    # Z
    .param p7, "includeSystem"    # Z
    .param p8, "compress"    # Z
    .param p9, "pkgList"    # [Ljava/lang/String;

    .prologue
    .line 9431
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "android.permission.BACKUP"

    const-string/jumbo v5, "fullBackup"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 9433
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v13

    .line 9435
    .local v13, "callingUserHandle":I
    if-eqz v13, :cond_0

    .line 9436
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "Backup supported only for the device owner"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 9440
    :cond_0
    if-nez p6, :cond_2

    .line 9441
    if-nez p4, :cond_2

    .line 9445
    if-eqz p9, :cond_1

    move-object/from16 v0, p9

    array-length v3, v0

    if-nez v3, :cond_2

    .line 9446
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    .line 9447
    const-string/jumbo v4, "Backup requested but neither shared nor any apps named"

    .line 9446
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 9452
    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 9455
    .local v16, "oldId":J
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService;->deviceIsProvisioned()Z

    move-result v3

    if-nez v3, :cond_3

    .line 9456
    const-string/jumbo v3, "BackupManagerService"

    const-string/jumbo v4, "Full backup not supported before setup"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 9497
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 9501
    :goto_0
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 9502
    const-string/jumbo v3, "BackupManagerService"

    const-string/jumbo v4, "Full backup processing complete."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9457
    return-void

    .line 9498
    :catch_0
    move-exception v14

    .local v14, "e":Ljava/io/IOException;
    goto :goto_0

    .line 9460
    .end local v14    # "e":Ljava/io/IOException;
    :cond_3
    :try_start_2
    const-string/jumbo v3, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Requesting full backup: apks="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 9461
    const-string/jumbo v5, " obb="

    .line 9460
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 9461
    const-string/jumbo v5, " shared="

    .line 9460
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 9461
    const-string/jumbo v5, " all="

    .line 9460
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p6

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 9462
    const-string/jumbo v5, " system="

    .line 9460
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p7

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 9462
    const-string/jumbo v5, " pkgs="

    .line 9460
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p9

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9463
    const-string/jumbo v3, "BackupManagerService"

    const-string/jumbo v4, "Beginning full backup..."

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9465
    new-instance v2, Lcom/android/server/backup/BackupManagerService$FullBackupParams;

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move-object/from16 v12, p9

    invoke-direct/range {v2 .. v12}, Lcom/android/server/backup/BackupManagerService$FullBackupParams;-><init>(Lcom/android/server/backup/BackupManagerService;Landroid/os/ParcelFileDescriptor;ZZZZZZZ[Ljava/lang/String;)V

    .line 9467
    .local v2, "params":Lcom/android/server/backup/BackupManagerService$FullBackupParams;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService;->generateToken()I

    move-result v15

    .line 9468
    .local v15, "token":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService;->mFullConfirmations:Landroid/util/SparseArray;

    monitor-enter v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 9469
    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService;->mFullConfirmations:Landroid/util/SparseArray;

    invoke-virtual {v3, v15, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v4

    .line 9473
    const-string/jumbo v3, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Starting backup confirmation UI, token="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9477
    const-string/jumbo v3, "fullback"

    invoke-virtual/range {p1 .. p1}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v4

    move-object/from16 v0, p0

    invoke-static {v0, v15, v3, v4}, Lcom/android/server/backup/BackupManagerServiceInjector;->startConfirmationUi(Lcom/android/server/backup/BackupManagerService;ILjava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_4

    .line 9478
    const-string/jumbo v3, "BackupManagerService"

    const-string/jumbo v4, "Unable to launch full backup confirmation"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9479
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService;->mFullConfirmations:Landroid/util/SparseArray;

    invoke-virtual {v3, v15}, Landroid/util/SparseArray;->delete(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 9497
    :try_start_5
    invoke-virtual/range {p1 .. p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 9501
    :goto_1
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 9502
    const-string/jumbo v3, "BackupManagerService"

    const-string/jumbo v4, "Full backup processing complete."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9480
    return-void

    .line 9468
    :catchall_0
    move-exception v3

    :try_start_6
    monitor-exit v4

    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 9495
    .end local v2    # "params":Lcom/android/server/backup/BackupManagerService$FullBackupParams;
    .end local v15    # "token":I
    :catchall_1
    move-exception v3

    .line 9497
    :try_start_7
    invoke-virtual/range {p1 .. p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 9501
    :goto_2
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 9502
    const-string/jumbo v4, "BackupManagerService"

    const-string/jumbo v5, "Full backup processing complete."

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9495
    throw v3

    .line 9498
    .restart local v2    # "params":Lcom/android/server/backup/BackupManagerService$FullBackupParams;
    .restart local v15    # "token":I
    :catch_1
    move-exception v14

    .restart local v14    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 9484
    .end local v14    # "e":Ljava/io/IOException;
    :cond_4
    :try_start_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 9485
    const/4 v6, 0x0

    .line 9486
    const/4 v7, 0x0

    .line 9484
    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/os/PowerManager;->userActivity(JII)V

    .line 9493
    const-string/jumbo v3, "BackupManagerService"

    const-string/jumbo v4, "Waiting for full backup completion..."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9494
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/backup/BackupManagerService;->waitForCompletion(Lcom/android/server/backup/BackupManagerService$FullParams;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 9497
    :try_start_9
    invoke-virtual/range {p1 .. p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    .line 9501
    :goto_3
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 9502
    const-string/jumbo v3, "BackupManagerService"

    const-string/jumbo v4, "Full backup processing complete."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9430
    return-void

    .line 9498
    :catch_2
    move-exception v14

    .restart local v14    # "e":Ljava/io/IOException;
    goto :goto_3

    .end local v2    # "params":Lcom/android/server/backup/BackupManagerService$FullBackupParams;
    .end local v14    # "e":Ljava/io/IOException;
    .end local v15    # "token":I
    :catch_3
    move-exception v14

    .restart local v14    # "e":Ljava/io/IOException;
    goto :goto_2
.end method

.method public fullRestore(Landroid/os/ParcelFileDescriptor;)V
    .locals 11
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;

    .prologue
    .line 9556
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "android.permission.BACKUP"

    const-string/jumbo v8, "fullRestore"

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 9558
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 9560
    .local v0, "callingUserHandle":I
    if-eqz v0, :cond_0

    .line 9561
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string/jumbo v7, "Restore supported only for the device owner"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 9564
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 9569
    .local v2, "oldId":J
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->deviceIsProvisioned()Z

    move-result v6

    if-nez v6, :cond_1

    .line 9570
    const-string/jumbo v6, "BackupManagerService"

    const-string/jumbo v7, "Full restore not permitted before setup"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 9607
    :try_start_1
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 9611
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 9612
    const-string/jumbo v6, "BackupManagerService"

    const-string/jumbo v7, "Full restore processing complete."

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9571
    return-void

    .line 9608
    :catch_0
    move-exception v1

    .line 9609
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v6, "BackupManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Error trying to close fd after full restore: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 9574
    .end local v1    # "e":Ljava/io/IOException;
    :cond_1
    :try_start_2
    const-string/jumbo v6, "BackupManagerService"

    const-string/jumbo v7, "Beginning full restore..."

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9576
    new-instance v4, Lcom/android/server/backup/BackupManagerService$FullRestoreParams;

    invoke-direct {v4, p0, p1}, Lcom/android/server/backup/BackupManagerService$FullRestoreParams;-><init>(Lcom/android/server/backup/BackupManagerService;Landroid/os/ParcelFileDescriptor;)V

    .line 9577
    .local v4, "params":Lcom/android/server/backup/BackupManagerService$FullRestoreParams;
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->generateToken()I

    move-result v5

    .line 9578
    .local v5, "token":I
    iget-object v7, p0, Lcom/android/server/backup/BackupManagerService;->mFullConfirmations:Landroid/util/SparseArray;

    monitor-enter v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 9579
    :try_start_3
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService;->mFullConfirmations:Landroid/util/SparseArray;

    invoke-virtual {v6, v5, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v7

    .line 9583
    const-string/jumbo v6, "BackupManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Starting restore confirmation UI, token="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9587
    const-string/jumbo v6, "fullrest"

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v7

    invoke-static {p0, v5, v6, v7}, Lcom/android/server/backup/BackupManagerServiceInjector;->startConfirmationUi(Lcom/android/server/backup/BackupManagerService;ILjava/lang/String;I)Z

    move-result v6

    if-nez v6, :cond_2

    .line 9588
    const-string/jumbo v6, "BackupManagerService"

    const-string/jumbo v7, "Unable to launch full restore confirmation"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9589
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService;->mFullConfirmations:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->delete(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 9607
    :try_start_5
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 9611
    :goto_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 9612
    const-string/jumbo v6, "BackupManagerService"

    const-string/jumbo v7, "Full restore processing complete."

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9590
    return-void

    .line 9578
    :catchall_0
    move-exception v6

    :try_start_6
    monitor-exit v7

    throw v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 9605
    .end local v4    # "params":Lcom/android/server/backup/BackupManagerService$FullRestoreParams;
    .end local v5    # "token":I
    :catchall_1
    move-exception v6

    .line 9607
    :try_start_7
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 9611
    :goto_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 9612
    const-string/jumbo v7, "BackupManagerService"

    const-string/jumbo v8, "Full restore processing complete."

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9605
    throw v6

    .line 9608
    .restart local v4    # "params":Lcom/android/server/backup/BackupManagerService$FullRestoreParams;
    .restart local v5    # "token":I
    :catch_1
    move-exception v1

    .line 9609
    .restart local v1    # "e":Ljava/io/IOException;
    const-string/jumbo v6, "BackupManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Error trying to close fd after full restore: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 9594
    .end local v1    # "e":Ljava/io/IOException;
    :cond_2
    :try_start_8
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 9595
    const/4 v7, 0x0

    .line 9596
    const/4 v10, 0x0

    .line 9594
    invoke-virtual {v6, v8, v9, v7, v10}, Landroid/os/PowerManager;->userActivity(JII)V

    .line 9603
    const-string/jumbo v6, "BackupManagerService"

    const-string/jumbo v7, "Waiting for full restore completion..."

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9604
    invoke-virtual {p0, v4}, Lcom/android/server/backup/BackupManagerService;->waitForCompletion(Lcom/android/server/backup/BackupManagerService$FullParams;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 9607
    :try_start_9
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    .line 9611
    :goto_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 9612
    const-string/jumbo v6, "BackupManagerService"

    const-string/jumbo v7, "Full restore processing complete."

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9555
    return-void

    .line 9608
    :catch_2
    move-exception v1

    .line 9609
    .restart local v1    # "e":Ljava/io/IOException;
    const-string/jumbo v6, "BackupManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Error trying to close fd after full restore: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 9608
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "params":Lcom/android/server/backup/BackupManagerService$FullRestoreParams;
    .end local v5    # "token":I
    :catch_3
    move-exception v1

    .line 9609
    .restart local v1    # "e":Ljava/io/IOException;
    const-string/jumbo v7, "BackupManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Error trying to close fd after full restore: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method public fullTransportBackup([Ljava/lang/String;)V
    .locals 18
    .param p1, "pkgNames"    # [Ljava/lang/String;

    .prologue
    .line 9507
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "android.permission.BACKUP"

    .line 9508
    const-string/jumbo v5, "fullTransportBackup"

    .line 9507
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 9510
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v11

    .line 9512
    .local v11, "callingUserHandle":I
    if-eqz v11, :cond_0

    .line 9513
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "Restore supported only for the device owner"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 9516
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService;->mCurrentTransport:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/backup/BackupManagerService;->getTransport(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/backup/BackupManagerService;->fullBackupAllowable(Lcom/android/internal/backup/IBackupTransport;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 9517
    const-string/jumbo v3, "BackupManagerService"

    const-string/jumbo v4, "Full backup not currently possible -- key/value backup not yet run?"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9551
    :goto_0
    const-string/jumbo v3, "BackupManagerService"

    const-string/jumbo v4, "Done with full transport backup."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9506
    return-void

    .line 9520
    :cond_1
    const-string/jumbo v3, "BackupManagerService"

    const-string/jumbo v4, "fullTransportBackup()"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9523
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 9525
    .local v16, "oldId":J
    :try_start_0
    new-instance v8, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {v8, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 9526
    .local v8, "latch":Ljava/util/concurrent/CountDownLatch;
    new-instance v2, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;

    const/4 v4, 0x0

    .line 9527
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v3, p0

    move-object/from16 v5, p1

    .line 9526
    invoke-direct/range {v2 .. v10}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;-><init>(Lcom/android/server/backup/BackupManagerService;Landroid/app/backup/IFullBackupRestoreObserver;[Ljava/lang/String;ZLcom/android/server/backup/FullBackupJob;Ljava/util/concurrent/CountDownLatch;Landroid/app/backup/IBackupObserver;Z)V

    .line 9529
    .local v2, "task":Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 9530
    new-instance v3, Ljava/lang/Thread;

    const-string/jumbo v4, "full-transport-master"

    invoke-direct {v3, v2, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9533
    :goto_1
    :try_start_1
    invoke-virtual {v8}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9541
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 9542
    .local v14, "now":J
    const/4 v3, 0x0

    move-object/from16 v0, p1

    array-length v4, v0

    :goto_2
    if-ge v3, v4, :cond_2

    aget-object v13, p1, v3

    .line 9543
    .local v13, "pkg":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v15}, Lcom/android/server/backup/BackupManagerService;->enqueueFullBackup(Ljava/lang/String;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 9542
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 9535
    .end local v13    # "pkg":Ljava/lang/String;
    .end local v14    # "now":J
    :catch_0
    move-exception v12

    .local v12, "e":Ljava/lang/InterruptedException;
    goto :goto_1

    .line 9546
    .end local v12    # "e":Ljava/lang/InterruptedException;
    .restart local v14    # "now":J
    :cond_2
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 9545
    .end local v2    # "task":Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;
    .end local v8    # "latch":Ljava/util/concurrent/CountDownLatch;
    .end local v14    # "now":J
    :catchall_0
    move-exception v3

    .line 9546
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 9545
    throw v3
.end method

.method generateToken()I
    .locals 3

    .prologue
    .line 686
    :cond_0
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mTokenGenerator:Ljava/util/Random;

    monitor-enter v2

    .line 687
    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mTokenGenerator:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .local v0, "token":I
    monitor-exit v2

    .line 689
    if-ltz v0, :cond_0

    .line 690
    return v0

    .line 686
    .end local v0    # "token":I
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public getAvailableRestoreToken(Ljava/lang/String;)J
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2474
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "android.permission.BACKUP"

    .line 2475
    const-string/jumbo v4, "getAvailableRestoreToken"

    .line 2474
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2477
    iget-wide v0, p0, Lcom/android/server/backup/BackupManagerService;->mAncestralToken:J

    .line 2478
    .local v0, "token":J
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2479
    :try_start_0
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mEverStoredApps:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2483
    iget-wide v0, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentToken:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v3

    .line 2487
    return-wide v0

    .line 2478
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public getConfigurationIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 8
    .param p1, "transportName"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 9906
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "android.permission.BACKUP"

    .line 9907
    const-string/jumbo v5, "getConfigurationIntent"

    .line 9906
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 9909
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mTransports:Landroid/util/ArrayMap;

    monitor-enter v4

    .line 9910
    :try_start_0
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mTransports:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/backup/IBackupTransport;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9911
    .local v2, "transport":Lcom/android/internal/backup/IBackupTransport;
    if-eqz v2, :cond_0

    .line 9913
    :try_start_1
    invoke-interface {v2}, Lcom/android/internal/backup/IBackupTransport;->configurationIntent()Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .local v1, "intent":Landroid/content/Intent;
    monitor-exit v4

    .line 9916
    return-object v1

    .line 9917
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 9919
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v3, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unable to get configuration intent from transport: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    monitor-exit v4

    .line 9924
    return-object v7

    .line 9909
    .end local v2    # "transport":Lcom/android/internal/backup/IBackupTransport;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public getCurrentTransport()Ljava/lang/String;
    .locals 3

    .prologue
    .line 9847
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.BACKUP"

    .line 9848
    const-string/jumbo v2, "getCurrentTransport"

    .line 9847
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 9850
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentTransport:Ljava/lang/String;

    return-object v0
.end method

.method public getDataManagementIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 8
    .param p1, "transportName"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 9955
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "android.permission.BACKUP"

    .line 9956
    const-string/jumbo v5, "getDataManagementIntent"

    .line 9955
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 9958
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mTransports:Landroid/util/ArrayMap;

    monitor-enter v4

    .line 9959
    :try_start_0
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mTransports:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/backup/IBackupTransport;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9960
    .local v2, "transport":Lcom/android/internal/backup/IBackupTransport;
    if-eqz v2, :cond_0

    .line 9962
    :try_start_1
    invoke-interface {v2}, Lcom/android/internal/backup/IBackupTransport;->dataManagementIntent()Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .local v1, "intent":Landroid/content/Intent;
    monitor-exit v4

    .line 9965
    return-object v1

    .line 9966
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 9968
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v3, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unable to get management intent from transport: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    monitor-exit v4

    .line 9973
    return-object v7

    .line 9958
    .end local v2    # "transport":Lcom/android/internal/backup/IBackupTransport;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public getDataManagementLabel(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "transportName"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 9979
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "android.permission.BACKUP"

    .line 9980
    const-string/jumbo v5, "getDataManagementLabel"

    .line 9979
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 9982
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mTransports:Landroid/util/ArrayMap;

    monitor-enter v4

    .line 9983
    :try_start_0
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mTransports:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/backup/IBackupTransport;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9984
    .local v2, "transport":Lcom/android/internal/backup/IBackupTransport;
    if-eqz v2, :cond_0

    .line 9986
    :try_start_1
    invoke-interface {v2}, Lcom/android/internal/backup/IBackupTransport;->dataManagementLabel()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .local v1, "text":Ljava/lang/String;
    monitor-exit v4

    .line 9988
    return-object v1

    .line 9989
    .end local v1    # "text":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 9991
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v3, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unable to get management label from transport: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    monitor-exit v4

    .line 9996
    return-object v7

    .line 9982
    .end local v2    # "transport":Lcom/android/internal/backup/IBackupTransport;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public getDestinationString(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "transportName"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 9933
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "android.permission.BACKUP"

    .line 9934
    const-string/jumbo v5, "getDestinationString"

    .line 9933
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 9936
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mTransports:Landroid/util/ArrayMap;

    monitor-enter v4

    .line 9937
    :try_start_0
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mTransports:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/backup/IBackupTransport;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9938
    .local v2, "transport":Lcom/android/internal/backup/IBackupTransport;
    if-eqz v2, :cond_0

    .line 9940
    :try_start_1
    invoke-interface {v2}, Lcom/android/internal/backup/IBackupTransport;->currentDestinationString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .local v1, "text":Ljava/lang/String;
    monitor-exit v4

    .line 9942
    return-object v1

    .line 9943
    .end local v1    # "text":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 9945
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v3, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unable to get string from transport: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    monitor-exit v4

    .line 9950
    return-object v7

    .line 9936
    .end local v2    # "transport":Lcom/android/internal/backup/IBackupTransport;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public getTransportWhitelist()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 9874
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mTransportWhitelist:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    new-array v1, v2, [Ljava/lang/String;

    .line 9875
    .local v1, "whitelist":[Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mTransportWhitelist:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 9876
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mTransportWhitelist:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 9875
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 9878
    :cond_0
    return-object v1
.end method

.method handleTimeout(ILjava/lang/Object;)V
    .locals 7
    .param p1, "token"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2608
    const/4 v1, 0x0

    .line 2609
    .local v1, "op":Lcom/android/server/backup/BackupManagerService$Operation;
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2610
    :try_start_0
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/android/server/backup/BackupManagerService$Operation;

    move-object v1, v0

    .line 2615
    .local v1, "op":Lcom/android/server/backup/BackupManagerService$Operation;
    if-eqz v1, :cond_2

    iget v2, v1, Lcom/android/server/backup/BackupManagerService$Operation;->state:I

    .line 2616
    .local v2, "state":I
    :goto_0
    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 2621
    const/4 v1, 0x0

    .line 2622
    .local v1, "op":Lcom/android/server/backup/BackupManagerService$Operation;
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 2628
    .end local v1    # "op":Lcom/android/server/backup/BackupManagerService$Operation;
    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    .line 2632
    if-eqz v1, :cond_1

    iget-object v3, v1, Lcom/android/server/backup/BackupManagerService$Operation;->callback:Lcom/android/server/backup/BackupManagerService$BackupRestoreTask;

    if-eqz v3, :cond_1

    .line 2636
    iget-object v3, v1, Lcom/android/server/backup/BackupManagerService$Operation;->callback:Lcom/android/server/backup/BackupManagerService$BackupRestoreTask;

    invoke-interface {v3}, Lcom/android/server/backup/BackupManagerService$BackupRestoreTask;->handleTimeout()V

    .line 2606
    :cond_1
    return-void

    .line 2615
    .end local v2    # "state":I
    .local v1, "op":Lcom/android/server/backup/BackupManagerService$Operation;
    :cond_2
    const/4 v2, -0x1

    .restart local v2    # "state":I
    goto :goto_0

    .line 2623
    :cond_3
    if-nez v2, :cond_0

    .line 2624
    :try_start_1
    const-string/jumbo v3, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "TIMEOUT: token="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2625
    const/4 v3, -0x1

    iput v3, v1, Lcom/android/server/backup/BackupManagerService$Operation;->state:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 2609
    .end local v1    # "op":Lcom/android/server/backup/BackupManagerService$Operation;
    .end local v2    # "state":I
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public hasBackupPassword()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1724
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.BACKUP"

    .line 1725
    const-string/jumbo v3, "hasBackupPassword"

    .line 1724
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1727
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mPasswordHash:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mPasswordHash:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isAppEligibleForBackup(Ljava/lang/String;)Z
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 10193
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "android.permission.BACKUP"

    .line 10194
    const-string/jumbo v6, "isAppEligibleForBackup"

    .line 10193
    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 10196
    :try_start_0
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 10197
    const/16 v5, 0x40

    .line 10196
    invoke-virtual {v4, p1, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 10198
    .local v2, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v4}, Lcom/android/server/backup/BackupManagerService;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 10199
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v4}, Lcom/android/server/backup/BackupManagerService;->appIsStopped(Landroid/content/pm/ApplicationInfo;)Z

    move-result v4

    .line 10198
    if-eqz v4, :cond_1

    .line 10200
    :cond_0
    return v7

    .line 10202
    :cond_1
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentTransport:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/server/backup/BackupManagerService;->getTransport(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 10203
    .local v3, "transport":Lcom/android/internal/backup/IBackupTransport;
    if-eqz v3, :cond_2

    .line 10206
    :try_start_1
    invoke-static {v2}, Lcom/android/server/backup/BackupManagerService;->appGetsFullBackup(Landroid/content/pm/PackageInfo;)Z

    move-result v4

    .line 10205
    invoke-interface {v3, v2, v4}, Lcom/android/internal/backup/IBackupTransport;->isAppEligibleForBackup(Landroid/content/pm/PackageInfo;Z)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    return v4

    .line 10207
    :catch_0
    move-exception v1

    .line 10208
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v4, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unable to ask about eligibility: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    .line 10212
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    const/4 v4, 0x1

    return v4

    .line 10213
    .end local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v3    # "transport":Lcom/android/internal/backup/IBackupTransport;
    :catch_1
    move-exception v0

    .line 10214
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v7
.end method

.method public isBackupEnabled()Z
    .locals 3

    .prologue
    .line 9841
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.BACKUP"

    const-string/jumbo v2, "isBackupEnabled"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 9842
    iget-boolean v0, p0, Lcom/android/server/backup/BackupManagerService;->mEnabled:Z

    return v0
.end method

.method public listAllTransports()[Ljava/lang/String;
    .locals 7

    .prologue
    .line 9855
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "android.permission.BACKUP"

    const-string/jumbo v6, "listAllTransports"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 9857
    const/4 v3, 0x0

    .line 9858
    .local v3, "list":[Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 9859
    .local v2, "known":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mTransports:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "entry$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 9860
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/backup/IBackupTransport;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 9861
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9865
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/backup/IBackupTransport;>;"
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 9866
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v3, v4, [Ljava/lang/String;

    .line 9867
    .local v3, "list":[Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 9869
    .end local v3    # "list":[Ljava/lang/String;
    :cond_2
    return-object v3
.end method

.method logBackupComplete(Ljava/lang/String;)V
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2265
    const-string/jumbo v3, "@pm@"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    .line 2267
    :cond_0
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mEverStoredApps:Ljava/util/HashSet;

    monitor-enter v4

    .line 2268
    :try_start_0
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mEverStoredApps:Ljava/util/HashSet;

    invoke-virtual {v3, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v3

    if-nez v3, :cond_1

    monitor-exit v4

    return-void

    .line 2270
    :cond_1
    const/4 v1, 0x0

    .line 2272
    .local v1, "out":Ljava/io/RandomAccessFile;
    :try_start_1
    new-instance v2, Ljava/io/RandomAccessFile;

    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mEverStored:Ljava/io/File;

    const-string/jumbo v5, "rws"

    invoke-direct {v2, v3, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2273
    .end local v1    # "out":Ljava/io/RandomAccessFile;
    .local v2, "out":Ljava/io/RandomAccessFile;
    :try_start_2
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 2274
    invoke-virtual {v2, p1}, Ljava/io/RandomAccessFile;->writeUTF(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 2278
    if-eqz v2, :cond_2

    :try_start_3
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_2
    :goto_0
    move-object v1, v2

    .end local v2    # "out":Ljava/io/RandomAccessFile;
    :cond_3
    :goto_1
    monitor-exit v4

    .line 2264
    return-void

    .line 2278
    .restart local v2    # "out":Ljava/io/RandomAccessFile;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    goto :goto_0

    .line 2275
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "out":Ljava/io/RandomAccessFile;
    .restart local v1    # "out":Ljava/io/RandomAccessFile;
    :catch_1
    move-exception v0

    .line 2276
    .end local v1    # "out":Ljava/io/RandomAccessFile;
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_4
    const-string/jumbo v3, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Can\'t log backup of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService;->mEverStored:Ljava/io/File;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2278
    if-eqz v1, :cond_3

    :try_start_5
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1

    .line 2277
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    .line 2278
    :goto_3
    if-eqz v1, :cond_4

    :try_start_6
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 2277
    :cond_4
    :goto_4
    :try_start_7
    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 2267
    :catchall_1
    move-exception v3

    monitor-exit v4

    throw v3

    .line 2278
    :catch_3
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    goto :goto_4

    .line 2277
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "out":Ljava/io/RandomAccessFile;
    :catchall_2
    move-exception v3

    move-object v1, v2

    .end local v2    # "out":Ljava/io/RandomAccessFile;
    .local v1, "out":Ljava/io/RandomAccessFile;
    goto :goto_3

    .line 2275
    .end local v1    # "out":Ljava/io/RandomAccessFile;
    .restart local v2    # "out":Ljava/io/RandomAccessFile;
    :catch_4
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    move-object v1, v2

    .end local v2    # "out":Ljava/io/RandomAccessFile;
    .restart local v1    # "out":Ljava/io/RandomAccessFile;
    goto :goto_2
.end method

.method public opComplete(IJ)V
    .locals 8
    .param p1, "token"    # I
    .param p2, "result"    # J

    .prologue
    .line 10168
    const/4 v3, 0x0

    .line 10169
    .local v3, "op":Lcom/android/server/backup/BackupManagerService$Operation;
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    monitor-enter v5

    .line 10170
    :try_start_0
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/android/server/backup/BackupManagerService$Operation;

    move-object v3, v0

    .line 10171
    .local v3, "op":Lcom/android/server/backup/BackupManagerService$Operation;
    if-eqz v3, :cond_0

    .line 10172
    iget v4, v3, Lcom/android/server/backup/BackupManagerService$Operation;->state:I

    const/4 v6, -0x1

    if-ne v4, v6, :cond_2

    .line 10175
    const/4 v3, 0x0

    .line 10176
    .local v3, "op":Lcom/android/server/backup/BackupManagerService$Operation;
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 10181
    .end local v3    # "op":Lcom/android/server/backup/BackupManagerService$Operation;
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    .line 10185
    if-eqz v3, :cond_1

    iget-object v4, v3, Lcom/android/server/backup/BackupManagerService$Operation;->callback:Lcom/android/server/backup/BackupManagerService$BackupRestoreTask;

    if-eqz v4, :cond_1

    .line 10186
    iget-object v4, v3, Lcom/android/server/backup/BackupManagerService$Operation;->callback:Lcom/android/server/backup/BackupManagerService$BackupRestoreTask;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    .line 10187
    .local v1, "callbackAndResult":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/backup/BackupManagerService$BackupRestoreTask;Ljava/lang/Long;>;"
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    const/16 v5, 0x15

    invoke-virtual {v4, v5, v1}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 10188
    .local v2, "msg":Landroid/os/Message;
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    invoke-virtual {v4, v2}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->sendMessage(Landroid/os/Message;)Z

    .line 10164
    .end local v1    # "callbackAndResult":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/backup/BackupManagerService$BackupRestoreTask;Ljava/lang/Long;>;"
    .end local v2    # "msg":Landroid/os/Message;
    :cond_1
    return-void

    .line 10178
    .local v3, "op":Lcom/android/server/backup/BackupManagerService$Operation;
    :cond_2
    const/4 v4, 0x1

    :try_start_1
    iput v4, v3, Lcom/android/server/backup/BackupManagerService$Operation;->state:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 10169
    .end local v3    # "op":Lcom/android/server/backup/BackupManagerService$Operation;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method passwordMatchesSaved(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 4
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "candidatePw"    # Ljava/lang/String;
    .param p3, "rounds"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1625
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mPasswordHash:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 1627
    if-eqz p2, :cond_0

    const-string/jumbo v1, ""

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1628
    :cond_0
    return v3

    .line 1632
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 1633
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mPasswordSalt:[B

    invoke-direct {p0, p1, p2, v1, p3}, Lcom/android/server/backup/BackupManagerService;->buildPasswordHash(Ljava/lang/String;Ljava/lang/String;[BI)Ljava/lang/String;

    move-result-object v0

    .line 1634
    .local v0, "currentPwHash":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mPasswordHash:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1636
    return v3

    .line 1640
    .end local v0    # "currentPwHash":Ljava/lang/String;
    :cond_2
    return v2
.end method

.method prepareOperationTimeout(IJLcom/android/server/backup/BackupManagerService$BackupRestoreTask;)V
    .locals 6
    .param p1, "token"    # I
    .param p2, "interval"    # J
    .param p4, "callback"    # Lcom/android/server/backup/BackupManagerService$BackupRestoreTask;

    .prologue
    .line 2565
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2566
    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    new-instance v3, Lcom/android/server/backup/BackupManagerService$Operation;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4, p4}, Lcom/android/server/backup/BackupManagerService$Operation;-><init>(Lcom/android/server/backup/BackupManagerService;ILcom/android/server/backup/BackupManagerService$BackupRestoreTask;)V

    invoke-virtual {v1, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2568
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-virtual {v1, v3, p1, v4, p4}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2569
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    invoke-virtual {v1, v0, p2, p3}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 2562
    return-void

    .line 2565
    .end local v0    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method recordInitPendingLocked(ZLjava/lang/String;)V
    .locals 12
    .param p1, "isPending"    # Z
    .param p2, "transportName"    # Ljava/lang/String;

    .prologue
    const/16 v10, 0xb

    const/4 v7, 0x0

    .line 1748
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    invoke-virtual {v6, v10}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->removeMessages(I)V

    .line 1751
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/server/backup/BackupManagerService;->getTransport(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v4

    .line 1752
    .local v4, "transport":Lcom/android/internal/backup/IBackupTransport;
    if-eqz v4, :cond_1

    .line 1753
    invoke-interface {v4}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;

    move-result-object v5

    .line 1754
    .local v5, "transportDirName":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    invoke-direct {v3, v6, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1755
    .local v3, "stateDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string/jumbo v6, "_need_init_"

    invoke-direct {v1, v3, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1757
    .local v1, "initPendingFile":Ljava/io/File;
    if-eqz p1, :cond_0

    .line 1761
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService;->mPendingInits:Ljava/util/HashSet;

    invoke-virtual {v6, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1763
    :try_start_1
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1772
    :goto_0
    return-void

    .line 1769
    :cond_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 1770
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService;->mPendingInits:Ljava/util/HashSet;

    invoke-virtual {v6, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 1774
    .end local v1    # "initPendingFile":Ljava/io/File;
    .end local v3    # "stateDir":Ljava/io/File;
    .end local v4    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .end local v5    # "transportDirName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1776
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "BackupManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Transport "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " failed to report name: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1777
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    .line 1776
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1783
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    if-eqz p1, :cond_2

    .line 1784
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService;->mPendingInits:Ljava/util/HashSet;

    invoke-virtual {v6, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1785
    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    .line 1786
    iget-object v9, p0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    .line 1787
    if-eqz p1, :cond_3

    const/4 v6, 0x1

    .line 1786
    :goto_1
    invoke-virtual {v9, v10, v6, v7, p2}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 1790
    const-wide/32 v10, 0x36ee80

    .line 1785
    invoke-virtual {v8, v6, v10, v11}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1745
    :cond_2
    return-void

    :cond_3
    move v6, v7

    .line 1787
    goto :goto_1

    .line 1764
    .restart local v1    # "initPendingFile":Ljava/io/File;
    .restart local v3    # "stateDir":Ljava/io/File;
    .restart local v4    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .restart local v5    # "transportDirName":Ljava/lang/String;
    :catch_1
    move-exception v2

    .local v2, "ioe":Ljava/io/IOException;
    goto :goto_0
.end method

.method removeEverBackedUp(Ljava/lang/String;)V
    .locals 10
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2285
    const-string/jumbo v6, "BackupManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Removing backed-up knowledge of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2288
    iget-object v7, p0, Lcom/android/server/backup/BackupManagerService;->mEverStoredApps:Ljava/util/HashSet;

    monitor-enter v7

    .line 2292
    :try_start_0
    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    const-string/jumbo v8, "processed.new"

    invoke-direct {v5, v6, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2293
    .local v5, "tempKnownFile":Ljava/io/File;
    const/4 v1, 0x0

    .line 2295
    .local v1, "known":Ljava/io/RandomAccessFile;
    :try_start_1
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string/jumbo v6, "rws"

    invoke-direct {v2, v5, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2296
    .end local v1    # "known":Ljava/io/RandomAccessFile;
    .local v2, "known":Ljava/io/RandomAccessFile;
    :try_start_2
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService;->mEverStoredApps:Ljava/util/HashSet;

    invoke-virtual {v6, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 2297
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService;->mEverStoredApps:Ljava/util/HashSet;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "s$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2298
    .local v3, "s":Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/io/RandomAccessFile;->writeUTF(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 2306
    .end local v3    # "s":Ljava/lang/String;
    .end local v4    # "s$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    move-object v1, v2

    .line 2311
    .end local v2    # "known":Ljava/io/RandomAccessFile;
    :goto_1
    :try_start_3
    const-string/jumbo v6, "BackupManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Error rewriting "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/backup/BackupManagerService;->mEverStored:Ljava/io/File;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2312
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService;->mEverStoredApps:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->clear()V

    .line 2313
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 2314
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService;->mEverStored:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->delete()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2316
    if-eqz v1, :cond_0

    :try_start_4
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    :goto_2
    monitor-exit v7

    .line 2284
    return-void

    .line 2301
    .restart local v2    # "known":Ljava/io/RandomAccessFile;
    .restart local v4    # "s$iterator":Ljava/util/Iterator;
    :cond_1
    :try_start_5
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 2302
    const/4 v1, 0x0

    .line 2303
    .restart local v1    # "known":Ljava/io/RandomAccessFile;
    :try_start_6
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService;->mEverStored:Ljava/io/File;

    .end local v2    # "known":Ljava/io/RandomAccessFile;
    invoke-virtual {v5, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 2304
    new-instance v6, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Can\'t rename "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/backup/BackupManagerService;->mEverStored:Ljava/io/File;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 2306
    .end local v4    # "s$iterator":Ljava/util/Iterator;
    :catch_1
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 2316
    .end local v1    # "known":Ljava/io/RandomAccessFile;
    :catch_2
    move-exception v0

    goto :goto_2

    .line 2315
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 2316
    :goto_3
    if-eqz v1, :cond_2

    :try_start_7
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 2315
    :cond_2
    :goto_4
    :try_start_8
    throw v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 2288
    .end local v5    # "tempKnownFile":Ljava/io/File;
    :catchall_1
    move-exception v6

    monitor-exit v7

    throw v6

    .line 2316
    .restart local v5    # "tempKnownFile":Ljava/io/File;
    :catch_3
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    goto :goto_4

    .line 2315
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "known":Ljava/io/RandomAccessFile;
    :catchall_2
    move-exception v6

    move-object v1, v2

    .end local v2    # "known":Ljava/io/RandomAccessFile;
    .local v1, "known":Ljava/io/RandomAccessFile;
    goto :goto_3
.end method

.method removePackageParticipantsLocked([Ljava/lang/String;I)V
    .locals 5
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "oldUid"    # I

    .prologue
    .line 2196
    if-nez p1, :cond_0

    .line 2197
    const-string/jumbo v2, "BackupManagerService"

    const-string/jumbo v3, "removePackageParticipants with null list"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2198
    return-void

    .line 2203
    :cond_0
    const/4 v2, 0x0

    array-length v3, p1

    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v0, p1, v2

    .line 2205
    .local v0, "pkg":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v4, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    .line 2206
    .local v1, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2207
    invoke-direct {p0, v1, v0}, Lcom/android/server/backup/BackupManagerService;->removePackageFromSetLocked(Ljava/util/HashSet;Ljava/lang/String;)V

    .line 2208
    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2210
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v4, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 2203
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2195
    .end local v0    # "pkg":Ljava/lang/String;
    .end local v1    # "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_2
    return-void
.end method

.method public requestBackup([Ljava/lang/String;Landroid/app/backup/IBackupObserver;)I
    .locals 13
    .param p1, "packages"    # [Ljava/lang/String;
    .param p2, "observer"    # Landroid/app/backup/IBackupObserver;

    .prologue
    .line 2491
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.BACKUP"

    const-string/jumbo v6, "requestBackup"

    invoke-virtual {v0, v1, v6}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2493
    if-eqz p1, :cond_0

    array-length v0, p1

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 2494
    :cond_0
    const-string/jumbo v0, "BackupManagerService"

    const-string/jumbo v1, "No packages named for backup request"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2495
    const/16 v0, -0x3e8

    invoke-static {p2, v0}, Lcom/android/server/backup/BackupManagerService;->sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V

    .line 2496
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "No packages are provided for backup"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2499
    :cond_1
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentTransport:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/backup/BackupManagerService;->getTransport(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v2

    .line 2500
    .local v2, "transport":Lcom/android/internal/backup/IBackupTransport;
    if-nez v2, :cond_2

    .line 2501
    const/16 v0, -0x3e8

    invoke-static {p2, v0}, Lcom/android/server/backup/BackupManagerService;->sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V

    .line 2502
    const/16 v0, -0x3e8

    return v0

    .line 2505
    :cond_2
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2506
    .local v5, "fullBackupList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2507
    .local v4, "kvBackupList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    array-length v1, p1

    :goto_0
    if-ge v0, v1, :cond_5

    aget-object v12, p1, v0

    .line 2509
    .local v12, "packageName":Ljava/lang/String;
    :try_start_0
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 2510
    const/16 v7, 0x40

    .line 2509
    invoke-virtual {v6, v12, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v11

    .line 2511
    .local v11, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v6, v11, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v6}, Lcom/android/server/backup/BackupManagerService;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 2513
    const/16 v6, -0x7d1

    .line 2512
    invoke-static {p2, v12, v6}, Lcom/android/server/backup/BackupManagerService;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 2507
    .end local v11    # "packageInfo":Landroid/content/pm/PackageInfo;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2516
    .restart local v11    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_3
    invoke-static {v11}, Lcom/android/server/backup/BackupManagerService;->appGetsFullBackup(Landroid/content/pm/PackageInfo;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 2517
    iget-object v6, v11, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2521
    .end local v11    # "packageInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v8

    .line 2523
    .local v8, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/16 v6, -0x7d2

    .line 2522
    invoke-static {p2, v12, v6}, Lcom/android/server/backup/BackupManagerService;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    goto :goto_1

    .line 2519
    .end local v8    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v11    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_4
    :try_start_1
    iget-object v6, v11, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 2526
    .end local v11    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v12    # "packageName":Ljava/lang/String;
    :cond_5
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    array-length v1, p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v6, 0x0

    aput-object v1, v0, v6

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v6, 0x1

    aput-object v1, v0, v6

    .line 2527
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v6, 0x2

    aput-object v1, v0, v6

    .line 2526
    const/16 v1, 0xb0c

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2535
    :try_start_2
    invoke-interface {v2}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v3

    .line 2541
    .local v3, "dirName":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    .line 2542
    .local v10, "msg":Landroid/os/Message;
    new-instance v0, Lcom/android/server/backup/BackupManagerService$BackupParams;

    .line 2543
    const/4 v7, 0x1

    move-object v1, p0

    move-object v6, p2

    .line 2542
    invoke-direct/range {v0 .. v7}, Lcom/android/server/backup/BackupManagerService$BackupParams;-><init>(Lcom/android/server/backup/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/app/backup/IBackupObserver;Z)V

    iput-object v0, v10, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2544
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    invoke-virtual {v0, v10}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2545
    const/4 v0, 0x0

    return v0

    .line 2536
    .end local v3    # "dirName":Ljava/lang/String;
    .end local v10    # "msg":Landroid/os/Message;
    :catch_1
    move-exception v9

    .line 2537
    .local v9, "e":Ljava/lang/Exception;
    const-string/jumbo v0, "BackupManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Transport unavailable while attempting backup: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2538
    const/16 v0, -0x3e8

    invoke-static {p2, v0}, Lcom/android/server/backup/BackupManagerService;->sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V

    .line 2539
    const/16 v0, -0x3e8

    return v0
.end method

.method resetBackupState(Ljava/io/File;)V
    .locals 12
    .param p1, "stateFileDir"    # Ljava/io/File;

    .prologue
    .line 1798
    iget-object v7, p0, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v7

    .line 1800
    :try_start_0
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService;->mEverStoredApps:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->clear()V

    .line 1801
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService;->mEverStored:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 1803
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentToken:J

    .line 1804
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->writeRestoreTokens()V

    .line 1807
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v8

    const/4 v6, 0x0

    array-length v9, v8

    :goto_0
    if-ge v6, v9, :cond_1

    aget-object v5, v8, v6

    .line 1809
    .local v5, "sf":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "_need_init_"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 1810
    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1807
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .end local v5    # "sf":Ljava/io/File;
    :cond_1
    monitor-exit v7

    .line 1816
    iget-object v7, p0, Lcom/android/server/backup/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    monitor-enter v7

    .line 1817
    :try_start_1
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 1818
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_3

    .line 1819
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashSet;

    .line 1820
    .local v4, "participants":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz v4, :cond_2

    .line 1821
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "packageName$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1822
    .local v2, "packageName":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/android/server/backup/BackupManagerService;->dataChangedImpl(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 1816
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "packageName$iterator":Ljava/util/Iterator;
    .end local v4    # "participants":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    .line 1798
    :catchall_1
    move-exception v6

    monitor-exit v7

    throw v6

    .line 1818
    .restart local v0    # "N":I
    .restart local v1    # "i":I
    .restart local v4    # "participants":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v4    # "participants":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_3
    monitor-exit v7

    .line 1797
    return-void
.end method

.method public restoreAtInstall(Ljava/lang/String;I)V
    .locals 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "token"    # I

    .prologue
    .line 10036
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_0

    .line 10037
    const-string/jumbo v1, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Non-system process uid="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 10038
    const-string/jumbo v5, " attemping install-time restore"

    .line 10037
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10039
    return-void

    .line 10042
    :cond_0
    const/4 v12, 0x0

    .line 10044
    .local v12, "skip":Z
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->getAvailableRestoreToken(Ljava/lang/String;)J

    move-result-wide v6

    .line 10045
    .local v6, "restoreSet":J
    const-string/jumbo v1, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "restoreAtInstall pkg="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 10046
    const-string/jumbo v5, " token="

    .line 10045
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 10046
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    .line 10045
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 10047
    const-string/jumbo v5, " restoreSet="

    .line 10045
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 10047
    invoke-static {v6, v7}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v5

    .line 10045
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 10048
    const-wide/16 v8, 0x0

    cmp-long v1, v6, v8

    if-nez v1, :cond_1

    .line 10050
    const/4 v12, 0x1

    .line 10054
    :cond_1
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentTransport:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/backup/BackupManagerService;->getTransport(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v3

    .line 10055
    .local v3, "transport":Lcom/android/internal/backup/IBackupTransport;
    if-nez v3, :cond_2

    .line 10056
    const-string/jumbo v1, "BackupManagerService"

    const-string/jumbo v2, "No transport"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10057
    const/4 v12, 0x1

    .line 10060
    :cond_2
    iget-boolean v1, p0, Lcom/android/server/backup/BackupManagerService;->mAutoRestore:Z

    if-nez v1, :cond_3

    .line 10062
    const-string/jumbo v1, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Non-restorable state: auto="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v5, p0, Lcom/android/server/backup/BackupManagerService;->mAutoRestore:Z

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10064
    const/4 v12, 0x1

    .line 10067
    :cond_3
    if-nez v12, :cond_4

    .line 10074
    :try_start_0
    invoke-interface {v3}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;

    move-result-object v4

    .line 10076
    .local v4, "dirName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 10080
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    .line 10081
    .local v11, "msg":Landroid/os/Message;
    new-instance v1, Lcom/android/server/backup/BackupManagerService$RestoreParams;

    const/4 v5, 0x0

    move-object v2, p0

    move-object v8, p1

    move v9, p2

    invoke-direct/range {v1 .. v9}, Lcom/android/server/backup/BackupManagerService$RestoreParams;-><init>(Lcom/android/server/backup/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Ljava/lang/String;Landroid/app/backup/IRestoreObserver;JLjava/lang/String;I)V

    iput-object v1, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 10083
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    invoke-virtual {v1, v11}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10091
    .end local v4    # "dirName":Ljava/lang/String;
    .end local v11    # "msg":Landroid/os/Message;
    :cond_4
    :goto_0
    if-eqz v12, :cond_5

    .line 10094
    const-string/jumbo v1, "BackupManagerService"

    const-string/jumbo v2, "Finishing install immediately"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 10096
    :try_start_1
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mPackageManagerBinder:Landroid/content/pm/IPackageManager;

    const/4 v2, 0x0

    invoke-interface {v1, p2, v2}, Landroid/content/pm/IPackageManager;->finishPackageInstall(IZ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 10035
    :cond_5
    :goto_1
    return-void

    .line 10084
    :catch_0
    move-exception v10

    .line 10086
    .local v10, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unable to contact transport: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v10}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10087
    const/4 v12, 0x1

    goto :goto_0

    .line 10097
    .end local v10    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method restoreWidgetData(Ljava/lang/String;[B)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "widgetData"    # [B

    .prologue
    .line 8012
    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/android/server/AppWidgetBackupBridge;->restoreWidgetState(Ljava/lang/String;[BI)V

    .line 8006
    return-void
.end method

.method scheduleNextFullBackupJob(J)V
    .locals 17
    .param p1, "transportMinLatency"    # J

    .prologue
    .line 4963
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v12

    .line 4964
    :try_start_0
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/backup/BackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_1

    .line 4968
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/backup/BackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    const/4 v13, 0x0

    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;

    iget-wide v10, v7, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;->lastBackup:J

    .line 4969
    .local v10, "upcomingLastBackup":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long v8, v14, v10

    .line 4970
    .local v8, "timeSinceLast":J
    const-wide/32 v14, 0x5265c00

    cmp-long v7, v8, v14

    if-gez v7, :cond_0

    .line 4971
    const-wide/32 v14, 0x5265c00

    sub-long v2, v14, v8

    .line 4972
    .local v2, "appLatency":J
    :goto_0
    move-wide/from16 v0, p1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 4973
    .local v4, "latency":J
    new-instance v6, Lcom/android/server/backup/BackupManagerService$3;

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v4, v5}, Lcom/android/server/backup/BackupManagerService$3;-><init>(Lcom/android/server/backup/BackupManagerService;J)V

    .line 4978
    .local v6, "r":Ljava/lang/Runnable;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    const-wide/16 v14, 0x9c4

    invoke-virtual {v7, v6, v14, v15}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v2    # "appLatency":J
    .end local v4    # "latency":J
    .end local v6    # "r":Ljava/lang/Runnable;
    .end local v8    # "timeSinceLast":J
    .end local v10    # "upcomingLastBackup":J
    :goto_1
    monitor-exit v12

    .line 4962
    return-void

    .line 4971
    .restart local v8    # "timeSinceLast":J
    .restart local v10    # "upcomingLastBackup":J
    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0

    .line 4981
    .end local v8    # "timeSinceLast":J
    .end local v10    # "upcomingLastBackup":J
    :cond_1
    :try_start_1
    const-string/jumbo v7, "BackupManagerService"

    const-string/jumbo v13, "Full backup queue empty; not scheduling"

    invoke-static {v7, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 4963
    :catchall_0
    move-exception v7

    monitor-exit v12

    throw v7
.end method

.method public selectBackupTransport(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "transport"    # Ljava/lang/String;

    .prologue
    .line 9883
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "android.permission.BACKUP"

    .line 9884
    const-string/jumbo v5, "selectBackupTransport"

    .line 9883
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 9886
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mTransports:Landroid/util/ArrayMap;

    monitor-enter v4

    .line 9887
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v0

    .line 9889
    .local v0, "oldId":J
    :try_start_1
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentTransport:Ljava/lang/String;

    .line 9890
    .local v2, "prevTransport":Ljava/lang/String;
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentTransport:Ljava/lang/String;

    .line 9891
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 9892
    const-string/jumbo v5, "backup_transport"

    .line 9891
    invoke-static {v3, v5, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 9893
    const-string/jumbo v3, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "selectBackupTransport() set "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentTransport:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 9894
    const-string/jumbo v6, " returning "

    .line 9893
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9897
    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v4

    .line 9895
    return-object v2

    .line 9896
    .end local v2    # "prevTransport":Ljava/lang/String;
    :catchall_0
    move-exception v3

    .line 9897
    :try_start_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 9896
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 9886
    .end local v0    # "oldId":J
    :catchall_1
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public setAutoRestore(Z)V
    .locals 5
    .param p1, "doAutoRestore"    # Z

    .prologue
    .line 9813
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "android.permission.BACKUP"

    .line 9814
    const-string/jumbo v4, "setAutoRestore"

    .line 9813
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 9816
    const-string/jumbo v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Auto restore => "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9818
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 9820
    .local v0, "oldId":J
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 9821
    :try_start_1
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 9822
    const-string/jumbo v4, "backup_auto_restore"

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    .line 9821
    :goto_0
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 9823
    iput-boolean p1, p0, Lcom/android/server/backup/BackupManagerService;->mAutoRestore:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 9826
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 9812
    return-void

    .line 9822
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 9820
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit p0

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 9825
    :catchall_1
    move-exception v2

    .line 9826
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 9825
    throw v2
.end method

.method public setBackupEnabled(Z)V
    .locals 12
    .param p1, "enable"    # Z

    .prologue
    .line 9763
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "android.permission.BACKUP"

    .line 9764
    const-string/jumbo v8, "setBackupEnabled"

    .line 9763
    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 9766
    const-string/jumbo v6, "BackupManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Backup enabled => "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9768
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 9770
    .local v2, "oldId":J
    :try_start_0
    iget-boolean v5, p0, Lcom/android/server/backup/BackupManagerService;->mEnabled:Z

    .line 9771
    .local v5, "wasEnabled":Z
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 9772
    const/4 v6, 0x0

    :try_start_1
    invoke-static {p1, v6}, Lcom/android/server/backup/BackupManagerService;->writeBackupEnableState(ZI)V

    .line 9773
    iput-boolean p1, p0, Lcom/android/server/backup/BackupManagerService;->mEnabled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    monitor-exit p0

    .line 9776
    iget-object v7, p0, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 9777
    if-eqz p1, :cond_0

    if-eqz v5, :cond_1

    .line 9781
    :cond_0
    if-nez p1, :cond_2

    .line 9785
    :try_start_3
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/server/backup/KeyValueBackupJob;->cancel(Landroid/content/Context;)V

    .line 9790
    if-eqz v5, :cond_2

    iget-boolean v6, p0, Lcom/android/server/backup/BackupManagerService;->mProvisioned:Z

    if-eqz v6, :cond_2

    .line 9794
    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService;->mTransports:Landroid/util/ArrayMap;

    monitor-enter v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 9795
    :try_start_4
    new-instance v0, Ljava/util/HashSet;

    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService;->mTransports:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .local v0, "allTransports":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :try_start_5
    monitor-exit v8

    .line 9798
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "transport$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 9799
    .local v1, "transport":Ljava/lang/String;
    const/4 v6, 0x1

    invoke-virtual {p0, v6, v1}, Lcom/android/server/backup/BackupManagerService;->recordInitPendingLocked(ZLjava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 9776
    .end local v0    # "allTransports":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v1    # "transport":Ljava/lang/String;
    .end local v4    # "transport$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v6

    :try_start_6
    monitor-exit v7

    throw v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 9806
    .end local v5    # "wasEnabled":Z
    :catchall_1
    move-exception v6

    .line 9807
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 9806
    throw v6

    .line 9771
    .restart local v5    # "wasEnabled":Z
    :catchall_2
    move-exception v6

    :try_start_7
    monitor-exit p0

    throw v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 9777
    :cond_1
    :try_start_8
    iget-boolean v6, p0, Lcom/android/server/backup/BackupManagerService;->mProvisioned:Z

    if-eqz v6, :cond_0

    .line 9779
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/server/backup/KeyValueBackupJob;->schedule(Landroid/content/Context;)V

    .line 9780
    const-wide/16 v8, 0x0

    invoke-virtual {p0, v8, v9}, Lcom/android/server/backup/BackupManagerService;->scheduleNextFullBackupJob(J)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :cond_2
    :goto_1
    :try_start_9
    monitor-exit v7
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 9807
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 9762
    return-void

    .line 9794
    :catchall_3
    move-exception v6

    :try_start_a
    monitor-exit v8

    throw v6

    .line 9801
    .restart local v0    # "allTransports":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v4    # "transport$iterator":Ljava/util/Iterator;
    :cond_3
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 9802
    iget-object v10, p0, Lcom/android/server/backup/BackupManagerService;->mRunInitIntent:Landroid/app/PendingIntent;

    .line 9801
    const/4 v11, 0x0

    invoke-virtual {v6, v11, v8, v9, v10}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_1
.end method

.method public setBackupPassword(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 22
    .param p1, "currentPw"    # Ljava/lang/String;
    .param p2, "newPw"    # Ljava/lang/String;

    .prologue
    .line 1644
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string/jumbo v20, "android.permission.BACKUP"

    .line 1645
    const-string/jumbo v21, "setBackupPassword"

    .line 1644
    invoke-virtual/range {v19 .. v21}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1648
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/backup/BackupManagerService;->mPasswordVersion:I

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_4

    const/4 v11, 0x1

    .line 1652
    .local v11, "pbkdf2Fallback":Z
    :goto_0
    const-string/jumbo v19, "PBKDF2WithHmacSHA1"

    const/16 v20, 0x2710

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, p1

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/backup/BackupManagerService;->passwordMatchesSaved(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v19

    if-nez v19, :cond_0

    .line 1653
    if-eqz v11, :cond_5

    const-string/jumbo v19, "PBKDF2WithHmacSHA1And8bit"

    .line 1654
    const/16 v20, 0x2710

    .line 1653
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, p1

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/backup/BackupManagerService;->passwordMatchesSaved(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 1659
    :cond_0
    const/16 v19, 0x2

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/backup/BackupManagerService;->mPasswordVersion:I

    .line 1660
    const/4 v12, 0x0

    .line 1661
    .local v12, "pwFout":Ljava/io/FileOutputStream;
    const/4 v14, 0x0

    .line 1663
    .local v14, "pwOut":Ljava/io/DataOutputStream;
    :try_start_0
    new-instance v13, Ljava/io/FileOutputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mPasswordVersionFile:Ljava/io/File;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-direct {v13, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1664
    .end local v12    # "pwFout":Ljava/io/FileOutputStream;
    .local v13, "pwFout":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v15, Ljava/io/DataOutputStream;

    invoke-direct {v15, v13}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 1665
    .local v15, "pwOut":Ljava/io/DataOutputStream;
    :try_start_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/backup/BackupManagerService;->mPasswordVersion:I

    move/from16 v19, v0

    .end local v14    # "pwOut":Ljava/io/DataOutputStream;
    move/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    .line 1671
    if-eqz v15, :cond_1

    :try_start_3
    invoke-virtual {v15}, Ljava/io/DataOutputStream;->close()V

    .line 1672
    :cond_1
    if-eqz v13, :cond_2

    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1679
    :cond_2
    :goto_1
    if-eqz p2, :cond_3

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->isEmpty()Z

    move-result v19

    if-eqz v19, :cond_b

    .line 1680
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mPasswordHashFile:Ljava/io/File;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->exists()Z

    move-result v19

    if-eqz v19, :cond_a

    .line 1681
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mPasswordHashFile:Ljava/io/File;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->delete()Z

    move-result v19

    if-nez v19, :cond_a

    .line 1683
    const-string/jumbo v19, "BackupManagerService"

    const-string/jumbo v20, "Unable to clear backup password"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1684
    const/16 v19, 0x0

    return v19

    .line 1648
    .end local v11    # "pbkdf2Fallback":Z
    .end local v13    # "pwFout":Ljava/io/FileOutputStream;
    .end local v15    # "pwOut":Ljava/io/DataOutputStream;
    :cond_4
    const/4 v11, 0x0

    .restart local v11    # "pbkdf2Fallback":Z
    goto/16 :goto_0

    .line 1655
    :cond_5
    const/16 v19, 0x0

    return v19

    .line 1673
    .restart local v13    # "pwFout":Ljava/io/FileOutputStream;
    .restart local v15    # "pwOut":Ljava/io/DataOutputStream;
    :catch_0
    move-exception v7

    .line 1674
    .local v7, "e":Ljava/io/IOException;
    const-string/jumbo v19, "BackupManagerService"

    const-string/jumbo v20, "Unable to close pw version record"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1666
    .end local v7    # "e":Ljava/io/IOException;
    .end local v13    # "pwFout":Ljava/io/FileOutputStream;
    .end local v15    # "pwOut":Ljava/io/DataOutputStream;
    .restart local v12    # "pwFout":Ljava/io/FileOutputStream;
    .restart local v14    # "pwOut":Ljava/io/DataOutputStream;
    :catch_1
    move-exception v7

    .line 1667
    .end local v12    # "pwFout":Ljava/io/FileOutputStream;
    .end local v14    # "pwOut":Ljava/io/DataOutputStream;
    .restart local v7    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_4
    const-string/jumbo v19, "BackupManagerService"

    const-string/jumbo v20, "Unable to write backup pw version; password not changed"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1668
    const/16 v19, 0x0

    .line 1671
    if-eqz v14, :cond_6

    :try_start_5
    invoke-virtual {v14}, Ljava/io/DataOutputStream;->close()V

    .line 1672
    :cond_6
    if-eqz v12, :cond_7

    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 1668
    :cond_7
    :goto_3
    return v19

    .line 1673
    :catch_2
    move-exception v7

    .line 1674
    const-string/jumbo v20, "BackupManagerService"

    const-string/jumbo v21, "Unable to close pw version record"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1669
    .end local v7    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v19

    .line 1671
    :goto_4
    if-eqz v14, :cond_8

    :try_start_6
    invoke-virtual {v14}, Ljava/io/DataOutputStream;->close()V

    .line 1672
    :cond_8
    if-eqz v12, :cond_9

    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 1669
    :cond_9
    :goto_5
    throw v19

    .line 1673
    :catch_3
    move-exception v7

    .line 1674
    .restart local v7    # "e":Ljava/io/IOException;
    const-string/jumbo v20, "BackupManagerService"

    const-string/jumbo v21, "Unable to close pw version record"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 1687
    .end local v7    # "e":Ljava/io/IOException;
    .restart local v13    # "pwFout":Ljava/io/FileOutputStream;
    .restart local v15    # "pwOut":Ljava/io/DataOutputStream;
    :cond_a
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mPasswordHash:Ljava/lang/String;

    .line 1688
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mPasswordSalt:[B

    .line 1689
    const/16 v19, 0x1

    return v19

    .line 1694
    :cond_b
    const/16 v19, 0x200

    :try_start_7
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/backup/BackupManagerService;->randomBytes(I)[B

    move-result-object v18

    .line 1695
    .local v18, "salt":[B
    const-string/jumbo v19, "PBKDF2WithHmacSHA1"

    const/16 v20, 0x2710

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, p2

    move-object/from16 v3, v18

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/backup/BackupManagerService;->buildPasswordHash(Ljava/lang/String;Ljava/lang/String;[BI)Ljava/lang/String;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    move-result-object v8

    .line 1697
    .local v8, "newPwHash":Ljava/lang/String;
    const/16 v16, 0x0

    .local v16, "pwf":Ljava/io/OutputStream;
    const/4 v5, 0x0

    .line 1698
    .local v5, "buffer":Ljava/io/OutputStream;
    const/4 v9, 0x0

    .line 1700
    .local v9, "out":Ljava/io/DataOutputStream;
    :try_start_8
    new-instance v17, Ljava/io/FileOutputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mPasswordHashFile:Ljava/io/File;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 1701
    .local v17, "pwf":Ljava/io/OutputStream;
    :try_start_9
    new-instance v6, Ljava/io/BufferedOutputStream;

    .end local v16    # "pwf":Ljava/io/OutputStream;
    move-object/from16 v0, v17

    invoke-direct {v6, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 1702
    .local v6, "buffer":Ljava/io/OutputStream;
    :try_start_a
    new-instance v10, Ljava/io/DataOutputStream;

    .end local v5    # "buffer":Ljava/io/OutputStream;
    invoke-direct {v10, v6}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 1705
    .local v10, "out":Ljava/io/DataOutputStream;
    :try_start_b
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v19, v0

    .end local v9    # "out":Ljava/io/DataOutputStream;
    move/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1706
    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 1707
    invoke-virtual {v10, v8}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1708
    invoke-virtual {v10}, Ljava/io/DataOutputStream;->flush()V

    .line 1709
    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/android/server/backup/BackupManagerService;->mPasswordHash:Ljava/lang/String;

    .line 1710
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mPasswordSalt:[B
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 1711
    const/16 v19, 0x1

    .line 1713
    if-eqz v10, :cond_c

    :try_start_c
    invoke-virtual {v10}, Ljava/io/DataOutputStream;->close()V

    .line 1714
    :cond_c
    if-eqz v6, :cond_d

    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    .line 1715
    :cond_d
    if-eqz v17, :cond_e

    invoke-virtual/range {v17 .. v17}, Ljava/io/OutputStream;->close()V

    .line 1711
    :cond_e
    return v19

    .line 1712
    .end local v6    # "buffer":Ljava/io/OutputStream;
    .end local v10    # "out":Ljava/io/DataOutputStream;
    .end local v17    # "pwf":Ljava/io/OutputStream;
    .restart local v5    # "buffer":Ljava/io/OutputStream;
    .restart local v9    # "out":Ljava/io/DataOutputStream;
    .restart local v16    # "pwf":Ljava/io/OutputStream;
    :catchall_1
    move-exception v19

    .line 1713
    .end local v5    # "buffer":Ljava/io/OutputStream;
    .end local v9    # "out":Ljava/io/DataOutputStream;
    .end local v16    # "pwf":Ljava/io/OutputStream;
    :goto_6
    if-eqz v9, :cond_f

    invoke-virtual {v9}, Ljava/io/DataOutputStream;->close()V

    .line 1714
    :cond_f
    if-eqz v5, :cond_10

    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    .line 1715
    :cond_10
    if-eqz v16, :cond_11

    invoke-virtual/range {v16 .. v16}, Ljava/io/OutputStream;->close()V

    .line 1712
    :cond_11
    throw v19
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4

    .line 1717
    .end local v8    # "newPwHash":Ljava/lang/String;
    .end local v18    # "salt":[B
    :catch_4
    move-exception v7

    .line 1718
    .restart local v7    # "e":Ljava/io/IOException;
    const-string/jumbo v19, "BackupManagerService"

    const-string/jumbo v20, "Unable to set backup password"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1720
    const/16 v19, 0x0

    return v19

    .line 1712
    .end local v7    # "e":Ljava/io/IOException;
    .restart local v5    # "buffer":Ljava/io/OutputStream;
    .restart local v8    # "newPwHash":Ljava/lang/String;
    .restart local v9    # "out":Ljava/io/DataOutputStream;
    .restart local v17    # "pwf":Ljava/io/OutputStream;
    .restart local v18    # "salt":[B
    :catchall_2
    move-exception v19

    move-object/from16 v16, v17

    .end local v17    # "pwf":Ljava/io/OutputStream;
    .local v16, "pwf":Ljava/io/OutputStream;
    goto :goto_6

    .end local v5    # "buffer":Ljava/io/OutputStream;
    .end local v16    # "pwf":Ljava/io/OutputStream;
    .restart local v6    # "buffer":Ljava/io/OutputStream;
    .restart local v17    # "pwf":Ljava/io/OutputStream;
    :catchall_3
    move-exception v19

    move-object v5, v6

    .end local v6    # "buffer":Ljava/io/OutputStream;
    .local v5, "buffer":Ljava/io/OutputStream;
    move-object/from16 v16, v17

    .end local v17    # "pwf":Ljava/io/OutputStream;
    .restart local v16    # "pwf":Ljava/io/OutputStream;
    goto :goto_6

    .end local v5    # "buffer":Ljava/io/OutputStream;
    .end local v9    # "out":Ljava/io/DataOutputStream;
    .end local v16    # "pwf":Ljava/io/OutputStream;
    .restart local v6    # "buffer":Ljava/io/OutputStream;
    .restart local v10    # "out":Ljava/io/DataOutputStream;
    .restart local v17    # "pwf":Ljava/io/OutputStream;
    :catchall_4
    move-exception v19

    move-object v9, v10

    .end local v10    # "out":Ljava/io/DataOutputStream;
    .local v9, "out":Ljava/io/DataOutputStream;
    move-object v5, v6

    .end local v6    # "buffer":Ljava/io/OutputStream;
    .restart local v5    # "buffer":Ljava/io/OutputStream;
    move-object/from16 v16, v17

    .end local v17    # "pwf":Ljava/io/OutputStream;
    .restart local v16    # "pwf":Ljava/io/OutputStream;
    goto :goto_6

    .line 1669
    .end local v5    # "buffer":Ljava/io/OutputStream;
    .end local v8    # "newPwHash":Ljava/lang/String;
    .end local v9    # "out":Ljava/io/DataOutputStream;
    .end local v15    # "pwOut":Ljava/io/DataOutputStream;
    .end local v16    # "pwf":Ljava/io/OutputStream;
    .end local v18    # "salt":[B
    .restart local v14    # "pwOut":Ljava/io/DataOutputStream;
    :catchall_5
    move-exception v19

    move-object v12, v13

    .end local v13    # "pwFout":Ljava/io/FileOutputStream;
    .local v12, "pwFout":Ljava/io/FileOutputStream;
    goto/16 :goto_4

    .end local v12    # "pwFout":Ljava/io/FileOutputStream;
    .end local v14    # "pwOut":Ljava/io/DataOutputStream;
    .restart local v13    # "pwFout":Ljava/io/FileOutputStream;
    .restart local v15    # "pwOut":Ljava/io/DataOutputStream;
    :catchall_6
    move-exception v19

    move-object v14, v15

    .end local v15    # "pwOut":Ljava/io/DataOutputStream;
    .local v14, "pwOut":Ljava/io/DataOutputStream;
    move-object v12, v13

    .end local v13    # "pwFout":Ljava/io/FileOutputStream;
    .restart local v12    # "pwFout":Ljava/io/FileOutputStream;
    goto/16 :goto_4

    .line 1666
    .end local v12    # "pwFout":Ljava/io/FileOutputStream;
    .restart local v13    # "pwFout":Ljava/io/FileOutputStream;
    .local v14, "pwOut":Ljava/io/DataOutputStream;
    :catch_5
    move-exception v7

    .restart local v7    # "e":Ljava/io/IOException;
    move-object v12, v13

    .end local v13    # "pwFout":Ljava/io/FileOutputStream;
    .restart local v12    # "pwFout":Ljava/io/FileOutputStream;
    goto/16 :goto_2

    .end local v7    # "e":Ljava/io/IOException;
    .end local v12    # "pwFout":Ljava/io/FileOutputStream;
    .end local v14    # "pwOut":Ljava/io/DataOutputStream;
    .restart local v13    # "pwFout":Ljava/io/FileOutputStream;
    .restart local v15    # "pwOut":Ljava/io/DataOutputStream;
    :catch_6
    move-exception v7

    .restart local v7    # "e":Ljava/io/IOException;
    move-object v14, v15

    .end local v15    # "pwOut":Ljava/io/DataOutputStream;
    .local v14, "pwOut":Ljava/io/DataOutputStream;
    move-object v12, v13

    .end local v13    # "pwFout":Ljava/io/FileOutputStream;
    .restart local v12    # "pwFout":Ljava/io/FileOutputStream;
    goto/16 :goto_2
.end method

.method public setBackupProvisioned(Z)V
    .locals 3
    .param p1, "available"    # Z

    .prologue
    .line 9832
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.BACKUP"

    .line 9833
    const-string/jumbo v2, "setBackupProvisioned"

    .line 9832
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 9831
    return-void
.end method

.method signalFullBackupRestoreCompletion(Lcom/android/server/backup/BackupManagerService$FullParams;)V
    .locals 3
    .param p1, "params"    # Lcom/android/server/backup/BackupManagerService$FullParams;

    .prologue
    .line 9649
    iget-object v1, p1, Lcom/android/server/backup/BackupManagerService$FullParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 9650
    :try_start_0
    iget-object v0, p1, Lcom/android/server/backup/BackupManagerService$FullParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 9651
    iget-object v0, p1, Lcom/android/server/backup/BackupManagerService$FullParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 9648
    return-void

    .line 9649
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method startConfirmationTimeout(ILcom/android/server/backup/BackupManagerService$FullParams;)V
    .locals 4
    .param p1, "token"    # I
    .param p2, "params"    # Lcom/android/server/backup/BackupManagerService$FullParams;

    .prologue
    .line 9633
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    const/16 v2, 0x9

    .line 9634
    const/4 v3, 0x0

    .line 9633
    invoke-virtual {v1, v2, p1, v3, p2}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 9635
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 9630
    return-void
.end method

.method startConfirmationUi(ILjava/lang/String;)Z
    .locals 4
    .param p1, "token"    # I
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    .line 9618
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 9619
    .local v0, "confIntent":Landroid/content/Intent;
    const-string/jumbo v2, "com.android.backupconfirm"

    .line 9620
    const-string/jumbo v3, "com.android.backupconfirm.BackupRestoreConfirmation"

    .line 9619
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 9621
    const-string/jumbo v2, "conftoken"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 9622
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 9623
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9627
    const/4 v2, 0x1

    return v2

    .line 9624
    .end local v0    # "confIntent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 9625
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const/4 v2, 0x0

    return v2
.end method

.method tearDownAgentAndKill(Landroid/content/pm/ApplicationInfo;)V
    .locals 4
    .param p1, "app"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 3581
    if-nez p1, :cond_0

    .line 3583
    return-void

    .line 3588
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mActivityManager:Landroid/app/IActivityManager;

    invoke-interface {v1, p1}, Landroid/app/IActivityManager;->unbindBackupAgent(Landroid/content/pm/ApplicationInfo;)V

    .line 3593
    iget v1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v2, 0x2710

    if-lt v1, v2, :cond_1

    .line 3594
    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v2, "com.android.backupconfirm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3580
    :cond_1
    :goto_0
    return-void

    .line 3596
    :cond_2
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mActivityManager:Landroid/app/IActivityManager;

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget v3, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-interface {v1, v2, v3}, Landroid/app/IActivityManager;->killApplicationProcess(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3600
    :catch_0
    move-exception v0

    .line 3601
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BackupManagerService"

    const-string/jumbo v2, "Lost app trying to shut down"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method tryBindTransport(Landroid/content/pm/ServiceInfo;)Z
    .locals 6
    .param p1, "info"    # Landroid/content/pm/ServiceInfo;

    .prologue
    const/4 v5, 0x0

    .line 2106
    :try_start_0
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v3, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 2107
    .local v1, "packInfo":Landroid/content/pm/PackageInfo;
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_0

    .line 2109
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->bindTransport(Landroid/content/pm/ServiceInfo;)Z

    move-result v2

    return v2

    .line 2111
    :cond_0
    const-string/jumbo v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Transport package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " not privileged"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2116
    .end local v1    # "packInfo":Landroid/content/pm/PackageInfo;
    :goto_0
    return v5

    .line 2113
    :catch_0
    move-exception v0

    .line 2114
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Problem resolving transport package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method waitForCompletion(Lcom/android/server/backup/BackupManagerService$FullParams;)V
    .locals 3
    .param p1, "params"    # Lcom/android/server/backup/BackupManagerService$FullParams;

    .prologue
    .line 9639
    iget-object v2, p1, Lcom/android/server/backup/BackupManagerService$FullParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v2

    .line 9640
    :goto_0
    :try_start_0
    iget-object v1, p1, Lcom/android/server/backup/BackupManagerService$FullParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 9642
    :try_start_1
    iget-object v1, p1, Lcom/android/server/backup/BackupManagerService$FullParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 9643
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/InterruptedException;
    goto :goto_0

    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    monitor-exit v2

    .line 9638
    return-void

    .line 9639
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method waitUntilOperationComplete(I)Z
    .locals 8
    .param p1, "token"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 2577
    const/4 v2, 0x0

    .line 2578
    .local v2, "finalState":I
    const/4 v3, 0x0

    .line 2579
    .local v3, "op":Lcom/android/server/backup/BackupManagerService$Operation;
    iget-object v7, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    monitor-enter v7

    .line 2581
    .end local v3    # "op":Lcom/android/server/backup/BackupManagerService$Operation;
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/android/server/backup/BackupManagerService$Operation;

    move-object v3, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2582
    .local v3, "op":Lcom/android/server/backup/BackupManagerService$Operation;
    if-nez v3, :cond_0

    :goto_1
    monitor-exit v7

    .line 2600
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    const/4 v7, 0x7

    invoke-virtual {v4, v7}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->removeMessages(I)V

    .line 2603
    if-ne v2, v5, :cond_2

    move v4, v5

    :goto_2
    return v4

    .line 2586
    :cond_0
    :try_start_1
    iget v4, v3, Lcom/android/server/backup/BackupManagerService$Operation;->state:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v4, :cond_1

    .line 2588
    :try_start_2
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 2589
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/InterruptedException;
    goto :goto_0

    .line 2593
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_1
    :try_start_3
    iget v2, v3, Lcom/android/server/backup/BackupManagerService$Operation;->state:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 2579
    .end local v3    # "op":Lcom/android/server/backup/BackupManagerService$Operation;
    :catchall_0
    move-exception v4

    monitor-exit v7

    throw v4

    .restart local v3    # "op":Lcom/android/server/backup/BackupManagerService$Operation;
    :cond_2
    move v4, v6

    .line 2603
    goto :goto_2
.end method

.method writeRestoreTokens()V
    .locals 7

    .prologue
    .line 2326
    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mTokenFile:Ljava/io/File;

    const-string/jumbo v5, "rwd"

    invoke-direct {v0, v4, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2329
    .local v0, "af":Ljava/io/RandomAccessFile;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 2332
    iget-wide v4, p0, Lcom/android/server/backup/BackupManagerService;->mAncestralToken:J

    invoke-virtual {v0, v4, v5}, Ljava/io/RandomAccessFile;->writeLong(J)V

    .line 2333
    iget-wide v4, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentToken:J

    invoke-virtual {v0, v4, v5}, Ljava/io/RandomAccessFile;->writeLong(J)V

    .line 2336
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mAncestralPackages:Ljava/util/Set;

    if-nez v4, :cond_1

    .line 2337
    const/4 v4, -0x1

    invoke-virtual {v0, v4}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 2346
    :cond_0
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 2324
    .end local v0    # "af":Ljava/io/RandomAccessFile;
    :goto_0
    return-void

    .line 2339
    .restart local v0    # "af":Ljava/io/RandomAccessFile;
    :cond_1
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mAncestralPackages:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 2340
    const-string/jumbo v4, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Ancestral packages:  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService;->mAncestralPackages:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2341
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mAncestralPackages:Ljava/util/Set;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "pkgName$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2342
    .local v2, "pkgName":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/io/RandomAccessFile;->writeUTF(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2347
    .end local v0    # "af":Ljava/io/RandomAccessFile;
    .end local v2    # "pkgName":Ljava/lang/String;
    .end local v3    # "pkgName$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v1

    .line 2348
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v4, "BackupManagerService"

    const-string/jumbo v5, "Unable to write token file:"

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
