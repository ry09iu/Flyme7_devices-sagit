.class public Lmiui/app/backup/BackupManager;
.super Ljava/lang/Object;
.source "BackupManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/app/backup/BackupManager$BackupRestoreListener;,
        Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;
    }
.end annotation


# static fields
.field public static final BACKUP_FILE_HEADER_MAGIC:Ljava/lang/String; = "MIUI BACKUP\n"

.field public static final BACKUP_FILE_VERSION:I = 0x2

.field public static DOMAIN_ATTACH:Ljava/lang/String; = null

.field public static DOMAIN_BAK:Ljava/lang/String; = null

.field public static DOMAIN_END:Ljava/lang/String; = null

.field public static DOMAIN_META:Ljava/lang/String; = null

.field public static final ERR_AUTHENTICATION_FAILED:I = 0x3

.field public static final ERR_BAKFILE_BROKEN:I = 0x6

.field public static final ERR_BINDER_DIED:I = 0x8

.field public static final ERR_IO_PERMISSION:I = 0x7

.field public static final ERR_NONE:I = 0x0

.field public static final ERR_NO_BACKUPAGENT:I = 0x2

.field public static final ERR_UNKNOWN:I = 0x1

.field public static final ERR_VERSION_TOO_OLD:I = 0x5

.field public static final ERR_VERSION_UNSUPPORTED:I = 0x4

.field public static final FEATURE_FULL_BACKUP:I = -0x1

.field public static final PROG_TYPE_NORMAL:I = 0x0

.field public static final PROG_TYPE_RECORD:I = 0x1

.field public static final SERVICE_NAME:Ljava/lang/String; = "MiuiBackup"

.field public static final STATE_BACKUP:I = 0x1

.field public static final STATE_IDLE:I = 0x0

.field public static final STATE_RESTORE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "Backup:BackupManager"

.field public static final TYPE_NORMAL_BACKUP_TIMEOUT_SCALE:I = 0x1

.field public static final TYPE_RECORD_BACKUP_TIMEOUT_SCALE:I = 0x6

.field private static mSystemAppWhiteSet:Ljava/util/HashSet;

.field private static sProgRecordAppSet:Ljava/util/HashSet;

.field private static sWRInstance:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lmiui/app/backup/BackupManager;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBackupRestoreLatch:Ljava/lang/Object;

.field private mBackupRestoreListener:Lmiui/app/backup/BackupManager$BackupRestoreListener;

.field private mContext:Landroid/content/Context;

.field private mICaller:Landroid/os/IBinder;

.field private mIsAcquired:Z

.field private mPips:[Landroid/os/ParcelFileDescriptor;

.field private mService:Lmiui/app/backup/IBackupManager;

.field private mTransactionLatch:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static synthetic -get0(Lmiui/app/backup/BackupManager;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lmiui/app/backup/BackupManager;->mBackupRestoreLatch:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get1(Lmiui/app/backup/BackupManager;)Lmiui/app/backup/BackupManager$BackupRestoreListener;
    .locals 1

    iget-object v0, p0, Lmiui/app/backup/BackupManager;->mBackupRestoreListener:Lmiui/app/backup/BackupManager$BackupRestoreListener;

    return-object v0
.end method

.method static synthetic -get2(Lmiui/app/backup/BackupManager;)[Landroid/os/ParcelFileDescriptor;
    .locals 1

    iget-object v0, p0, Lmiui/app/backup/BackupManager;->mPips:[Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method

.method static synthetic -get3(Lmiui/app/backup/BackupManager;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    iget-object v0, p0, Lmiui/app/backup/BackupManager;->mTransactionLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic -set0(Lmiui/app/backup/BackupManager;Ljava/util/concurrent/atomic/AtomicBoolean;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iput-object p1, p0, Lmiui/app/backup/BackupManager;->mTransactionLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p1
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 58
    const-string/jumbo v0, "miui_bak"

    sput-object v0, Lmiui/app/backup/BackupManager;->DOMAIN_BAK:Ljava/lang/String;

    .line 62
    const-string/jumbo v0, "miui_meta"

    sput-object v0, Lmiui/app/backup/BackupManager;->DOMAIN_META:Ljava/lang/String;

    .line 66
    const-string/jumbo v0, "miui_att"

    sput-object v0, Lmiui/app/backup/BackupManager;->DOMAIN_ATTACH:Ljava/lang/String;

    .line 70
    const-string/jumbo v0, "miui_end"

    sput-object v0, Lmiui/app/backup/BackupManager;->DOMAIN_END:Ljava/lang/String;

    .line 138
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lmiui/app/backup/BackupManager;->mSystemAppWhiteSet:Ljava/util/HashSet;

    .line 140
    sget-object v0, Lmiui/app/backup/BackupManager;->mSystemAppWhiteSet:Ljava/util/HashSet;

    const-string/jumbo v1, "com.android.browser"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 141
    sget-object v0, Lmiui/app/backup/BackupManager;->mSystemAppWhiteSet:Ljava/util/HashSet;

    const-string/jumbo v1, "com.miui.weather2"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 142
    sget-object v0, Lmiui/app/backup/BackupManager;->mSystemAppWhiteSet:Ljava/util/HashSet;

    const-string/jumbo v1, "com.miui.notes"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 143
    sget-object v0, Lmiui/app/backup/BackupManager;->mSystemAppWhiteSet:Ljava/util/HashSet;

    const-string/jumbo v1, "com.android.email"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 170
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lmiui/app/backup/BackupManager;->sProgRecordAppSet:Ljava/util/HashSet;

    .line 173
    sget-object v0, Lmiui/app/backup/BackupManager;->sProgRecordAppSet:Ljava/util/HashSet;

    const-string/jumbo v1, "com.android.contacts"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 174
    sget-object v0, Lmiui/app/backup/BackupManager;->sProgRecordAppSet:Ljava/util/HashSet;

    const-string/jumbo v1, "com.android.mms"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 23
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/app/backup/BackupManager;->mTransactionLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 93
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmiui/app/backup/BackupManager;->mBackupRestoreLatch:Ljava/lang/Object;

    .line 97
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lmiui/app/backup/BackupManager;->mICaller:Landroid/os/IBinder;

    .line 192
    iput-object p1, p0, Lmiui/app/backup/BackupManager;->mContext:Landroid/content/Context;

    .line 193
    const-string/jumbo v0, "MiuiBackup"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lmiui/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/app/backup/IBackupManager;

    move-result-object v0

    iput-object v0, p0, Lmiui/app/backup/BackupManager;->mService:Lmiui/app/backup/IBackupManager;

    .line 191
    return-void
.end method

.method public static final getBackupManager(Landroid/content/Context;)Lmiui/app/backup/BackupManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 183
    sget-object v1, Lmiui/app/backup/BackupManager;->sWRInstance:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_1

    .line 184
    .local v0, "instance":Lmiui/app/backup/BackupManager;
    :goto_0
    if-nez v0, :cond_0

    .line 185
    new-instance v0, Lmiui/app/backup/BackupManager;

    .end local v0    # "instance":Lmiui/app/backup/BackupManager;
    invoke-direct {v0, p0}, Lmiui/app/backup/BackupManager;-><init>(Landroid/content/Context;)V

    .line 186
    .restart local v0    # "instance":Lmiui/app/backup/BackupManager;
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lmiui/app/backup/BackupManager;->sWRInstance:Ljava/lang/ref/WeakReference;

    .line 188
    :cond_0
    return-object v0

    .line 183
    .end local v0    # "instance":Lmiui/app/backup/BackupManager;
    :cond_1
    sget-object v1, Lmiui/app/backup/BackupManager;->sWRInstance:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/app/backup/BackupManager;

    move-object v0, v1

    goto :goto_0
.end method

.method public static isProgRecordApp(Ljava/lang/String;I)Z
    .locals 1
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "feature"    # I

    .prologue
    .line 179
    sget-object v0, Lmiui/app/backup/BackupManager;->sProgRecordAppSet:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isSysAppForBackup(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 148
    const/4 v2, 0x0

    .line 149
    .local v2, "isSysApp":Z
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 151
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/16 v4, 0x40

    :try_start_0
    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 152
    .local v1, "info":Landroid/content/pm/PackageInfo;
    invoke-static {v1}, Lmiui/app/backup/BackupManager;->isSysAppForBackup(Landroid/content/pm/PackageInfo;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 155
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    .end local v2    # "isSysApp":Z
    :goto_0
    return v2

    .line 153
    .restart local v2    # "isSysApp":Z
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method public static isSysAppForBackup(Landroid/content/pm/PackageInfo;)Z
    .locals 3
    .param p0, "info"    # Landroid/content/pm/PackageInfo;

    .prologue
    .line 160
    const/4 v0, 0x0

    .line 161
    .local v0, "isSysApp":Z
    if-eqz p0, :cond_1

    iget-object v1, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_1

    .line 162
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_0

    .line 163
    sget-object v1, Lmiui/app/backup/BackupManager;->mSystemAppWhiteSet:Ljava/util/HashSet;

    iget-object v2, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 162
    if-eqz v1, :cond_1

    .line 164
    :cond_0
    const/4 v0, 0x1

    .line 167
    :cond_1
    return v0
.end method


# virtual methods
.method public acquire(Lmiui/app/backup/IBackupServiceStateObserver;)Z
    .locals 3
    .param p1, "stateObserver"    # Lmiui/app/backup/IBackupServiceStateObserver;

    .prologue
    .line 104
    :try_start_0
    iget-boolean v1, p0, Lmiui/app/backup/BackupManager;->mIsAcquired:Z

    if-nez v1, :cond_0

    .line 105
    iget-object v1, p0, Lmiui/app/backup/BackupManager;->mService:Lmiui/app/backup/IBackupManager;

    iget-object v2, p0, Lmiui/app/backup/BackupManager;->mICaller:Landroid/os/IBinder;

    invoke-interface {v1, p1, v2}, Lmiui/app/backup/IBackupManager;->acquire(Lmiui/app/backup/IBackupServiceStateObserver;Landroid/os/IBinder;)Z

    move-result v1

    iput-boolean v1, p0, Lmiui/app/backup/BackupManager;->mIsAcquired:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lmiui/app/backup/BackupManager;->mIsAcquired:Z

    return v1

    .line 107
    :catch_0
    move-exception v0

    .line 108
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public backupPackage(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZLmiui/app/backup/BackupManager$BackupRestoreListener;)V
    .locals 15
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "feature"    # I
    .param p3, "pwd"    # Ljava/lang/String;
    .param p4, "encryptedPwd"    # Ljava/lang/String;
    .param p5, "includeApk"    # Z
    .param p6, "forceBackup"    # Z
    .param p7, "l"    # Lmiui/app/backup/BackupManager$BackupRestoreListener;

    .prologue
    .line 200
    iget-boolean v1, p0, Lmiui/app/backup/BackupManager;->mIsAcquired:Z

    if-nez v1, :cond_0

    .line 201
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "You must acquire first to use the backup or restore service"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 204
    :cond_0
    move-object/from16 v0, p7

    iput-object v0, p0, Lmiui/app/backup/BackupManager;->mBackupRestoreListener:Lmiui/app/backup/BackupManager$BackupRestoreListener;

    .line 205
    iget-object v1, p0, Lmiui/app/backup/BackupManager;->mService:Lmiui/app/backup/IBackupManager;

    if-eqz v1, :cond_2

    .line 207
    :try_start_0
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    iput-object v1, p0, Lmiui/app/backup/BackupManager;->mPips:[Landroid/os/ParcelFileDescriptor;

    .line 208
    iget-object v14, p0, Lmiui/app/backup/BackupManager;->mBackupRestoreLatch:Ljava/lang/Object;

    monitor-enter v14
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 209
    :try_start_1
    iget-object v1, p0, Lmiui/app/backup/BackupManager;->mService:Lmiui/app/backup/IBackupManager;

    iget-object v2, p0, Lmiui/app/backup/BackupManager;->mPips:[Landroid/os/ParcelFileDescriptor;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    iget-object v3, p0, Lmiui/app/backup/BackupManager;->mPips:[Landroid/os/ParcelFileDescriptor;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    .line 210
    new-instance v10, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;

    const/4 v4, 0x0

    invoke-direct {v10, p0, v4}, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;-><init>(Lmiui/app/backup/BackupManager;Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;)V

    move-object/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    .line 209
    invoke-interface/range {v1 .. v10}, Lmiui/app/backup/IBackupManager;->backupPackage(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZLmiui/app/backup/IPackageBackupRestoreObserver;)V

    .line 213
    iget-object v1, p0, Lmiui/app/backup/BackupManager;->mBackupRestoreLatch:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v14
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 222
    iget-object v1, p0, Lmiui/app/backup/BackupManager;->mPips:[Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_2

    .line 224
    :try_start_3
    iget-object v1, p0, Lmiui/app/backup/BackupManager;->mPips:[Landroid/os/ParcelFileDescriptor;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    if-eqz v1, :cond_1

    .line 225
    iget-object v1, p0, Lmiui/app/backup/BackupManager;->mPips:[Landroid/os/ParcelFileDescriptor;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 227
    :cond_1
    iget-object v1, p0, Lmiui/app/backup/BackupManager;->mPips:[Landroid/os/ParcelFileDescriptor;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    if-eqz v1, :cond_2

    .line 228
    iget-object v1, p0, Lmiui/app/backup/BackupManager;->mPips:[Landroid/os/ParcelFileDescriptor;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 199
    :cond_2
    :goto_0
    return-void

    .line 208
    :catchall_0
    move-exception v1

    :try_start_4
    monitor-exit v14

    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 215
    :catch_0
    move-exception v12

    .line 216
    .local v12, "e":Ljava/io/IOException;
    :try_start_5
    const-string/jumbo v1, "Backup:BackupManager"

    const-string/jumbo v2, "create pipe failed"

    invoke-static {v1, v2, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 222
    iget-object v1, p0, Lmiui/app/backup/BackupManager;->mPips:[Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_2

    .line 224
    :try_start_6
    iget-object v1, p0, Lmiui/app/backup/BackupManager;->mPips:[Landroid/os/ParcelFileDescriptor;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    if-eqz v1, :cond_3

    .line 225
    iget-object v1, p0, Lmiui/app/backup/BackupManager;->mPips:[Landroid/os/ParcelFileDescriptor;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 227
    :cond_3
    iget-object v1, p0, Lmiui/app/backup/BackupManager;->mPips:[Landroid/os/ParcelFileDescriptor;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    if-eqz v1, :cond_2

    .line 228
    iget-object v1, p0, Lmiui/app/backup/BackupManager;->mPips:[Landroid/os/ParcelFileDescriptor;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_0

    .line 230
    :catch_1
    move-exception v12

    .line 231
    const-string/jumbo v1, "Backup:BackupManager"

    const-string/jumbo v2, "IOException"

    invoke-static {v1, v2, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 230
    .end local v12    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v12

    .line 231
    .restart local v12    # "e":Ljava/io/IOException;
    const-string/jumbo v1, "Backup:BackupManager"

    const-string/jumbo v2, "IOException"

    invoke-static {v1, v2, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 219
    .end local v12    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v13

    .line 220
    .local v13, "e":Ljava/lang/InterruptedException;
    :try_start_7
    const-string/jumbo v1, "Backup:BackupManager"

    const-string/jumbo v2, "InterruptedException"

    invoke-static {v1, v2, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 222
    iget-object v1, p0, Lmiui/app/backup/BackupManager;->mPips:[Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_2

    .line 224
    :try_start_8
    iget-object v1, p0, Lmiui/app/backup/BackupManager;->mPips:[Landroid/os/ParcelFileDescriptor;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    if-eqz v1, :cond_4

    .line 225
    iget-object v1, p0, Lmiui/app/backup/BackupManager;->mPips:[Landroid/os/ParcelFileDescriptor;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 227
    :cond_4
    iget-object v1, p0, Lmiui/app/backup/BackupManager;->mPips:[Landroid/os/ParcelFileDescriptor;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    if-eqz v1, :cond_2

    .line 228
    iget-object v1, p0, Lmiui/app/backup/BackupManager;->mPips:[Landroid/os/ParcelFileDescriptor;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_0

    .line 230
    :catch_4
    move-exception v12

    .line 231
    .restart local v12    # "e":Ljava/io/IOException;
    const-string/jumbo v1, "Backup:BackupManager"

    const-string/jumbo v2, "IOException"

    invoke-static {v1, v2, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 217
    .end local v12    # "e":Ljava/io/IOException;
    .end local v13    # "e":Ljava/lang/InterruptedException;
    :catch_5
    move-exception v11

    .line 218
    .local v11, "e":Landroid/os/RemoteException;
    :try_start_9
    const-string/jumbo v1, "Backup:BackupManager"

    const-string/jumbo v2, "Remove invoking failed"

    invoke-static {v1, v2, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 222
    iget-object v1, p0, Lmiui/app/backup/BackupManager;->mPips:[Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_2

    .line 224
    :try_start_a
    iget-object v1, p0, Lmiui/app/backup/BackupManager;->mPips:[Landroid/os/ParcelFileDescriptor;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    if-eqz v1, :cond_5

    .line 225
    iget-object v1, p0, Lmiui/app/backup/BackupManager;->mPips:[Landroid/os/ParcelFileDescriptor;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 227
    :cond_5
    iget-object v1, p0, Lmiui/app/backup/BackupManager;->mPips:[Landroid/os/ParcelFileDescriptor;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    if-eqz v1, :cond_2

    .line 228
    iget-object v1, p0, Lmiui/app/backup/BackupManager;->mPips:[Landroid/os/ParcelFileDescriptor;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    goto/16 :goto_0

    .line 230
    :catch_6
    move-exception v12

    .line 231
    .restart local v12    # "e":Ljava/io/IOException;
    const-string/jumbo v1, "Backup:BackupManager"

    const-string/jumbo v2, "IOException"

    invoke-static {v1, v2, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 221
    .end local v11    # "e":Landroid/os/RemoteException;
    .end local v12    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v1

    .line 222
    iget-object v2, p0, Lmiui/app/backup/BackupManager;->mPips:[Landroid/os/ParcelFileDescriptor;

    if-eqz v2, :cond_7

    .line 224
    :try_start_b
    iget-object v2, p0, Lmiui/app/backup/BackupManager;->mPips:[Landroid/os/ParcelFileDescriptor;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    if-eqz v2, :cond_6

    .line 225
    iget-object v2, p0, Lmiui/app/backup/BackupManager;->mPips:[Landroid/os/ParcelFileDescriptor;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 227
    :cond_6
    iget-object v2, p0, Lmiui/app/backup/BackupManager;->mPips:[Landroid/os/ParcelFileDescriptor;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    if-eqz v2, :cond_7

    .line 228
    iget-object v2, p0, Lmiui/app/backup/BackupManager;->mPips:[Landroid/os/ParcelFileDescriptor;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    .line 221
    :cond_7
    :goto_1
    throw v1

    .line 230
    :catch_7
    move-exception v12

    .line 231
    .restart local v12    # "e":Ljava/io/IOException;
    const-string/jumbo v2, "Backup:BackupManager"

    const-string/jumbo v3, "IOException"

    invoke-static {v2, v3, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public getCurrentRunningPackage()Ljava/lang/String;
    .locals 3

    .prologue
    .line 324
    :try_start_0
    iget-object v1, p0, Lmiui/app/backup/BackupManager;->mService:Lmiui/app/backup/IBackupManager;

    invoke-interface {v1}, Lmiui/app/backup/IBackupManager;->getCurrentRunningPackage()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 325
    :catch_0
    move-exception v0

    .line 326
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "Backup:BackupManager"

    const-string/jumbo v2, "RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 328
    const/4 v1, 0x0

    return-object v1
.end method

.method public getCurrentWorkingFeature()I
    .locals 3

    .prologue
    .line 312
    :try_start_0
    iget-object v1, p0, Lmiui/app/backup/BackupManager;->mService:Lmiui/app/backup/IBackupManager;

    invoke-interface {v1}, Lmiui/app/backup/IBackupManager;->getCurrentWorkingFeature()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 313
    :catch_0
    move-exception v0

    .line 314
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "Backup:BackupManager"

    const-string/jumbo v2, "RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 316
    const/4 v1, -0x1

    return v1
.end method

.method public getState()I
    .locals 3

    .prologue
    .line 336
    :try_start_0
    iget-object v1, p0, Lmiui/app/backup/BackupManager;->mService:Lmiui/app/backup/IBackupManager;

    invoke-interface {v1}, Lmiui/app/backup/IBackupManager;->getState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 337
    :catch_0
    move-exception v0

    .line 338
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "Backup:BackupManager"

    const-string/jumbo v2, "RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 340
    const/4 v1, -0x1

    return v1
.end method

.method public isServiceIdle()Z
    .locals 3

    .prologue
    .line 129
    const/4 v1, 0x0

    .line 131
    .local v1, "isIdle":Z
    :try_start_0
    iget-object v2, p0, Lmiui/app/backup/BackupManager;->mService:Lmiui/app/backup/IBackupManager;

    invoke-interface {v2}, Lmiui/app/backup/IBackupManager;->isServiceIdle()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 135
    .end local v1    # "isIdle":Z
    :goto_0
    return v1

    .line 132
    .restart local v1    # "isIdle":Z
    :catch_0
    move-exception v0

    .line 133
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public release(Lmiui/app/backup/IBackupServiceStateObserver;)V
    .locals 2
    .param p1, "stateObserver"    # Lmiui/app/backup/IBackupServiceStateObserver;

    .prologue
    .line 118
    :try_start_0
    iget-object v1, p0, Lmiui/app/backup/BackupManager;->mService:Lmiui/app/backup/IBackupManager;

    invoke-interface {v1, p1}, Lmiui/app/backup/IBackupManager;->release(Lmiui/app/backup/IBackupServiceStateObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lmiui/app/backup/BackupManager;->mIsAcquired:Z

    .line 116
    return-void

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public restoreFile(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;ZLmiui/app/backup/BackupManager$BackupRestoreListener;)V
    .locals 11
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "pwd"    # Ljava/lang/String;
    .param p3, "forceRestore"    # Z
    .param p4, "l"    # Lmiui/app/backup/BackupManager$BackupRestoreListener;

    .prologue
    const/4 v10, 0x0

    .line 244
    iget-boolean v5, p0, Lmiui/app/backup/BackupManager;->mIsAcquired:Z

    if-nez v5, :cond_0

    .line 245
    new-instance v5, Ljava/lang/RuntimeException;

    const-string/jumbo v6, "You must acquire first to use the backup or restore service"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 248
    :cond_0
    iput-object p4, p0, Lmiui/app/backup/BackupManager;->mBackupRestoreListener:Lmiui/app/backup/BackupManager$BackupRestoreListener;

    .line 249
    const/4 v3, 0x0

    .line 251
    .local v3, "pipe":[Landroid/os/ParcelFileDescriptor;
    :try_start_0
    iget-object v6, p0, Lmiui/app/backup/BackupManager;->mBackupRestoreLatch:Ljava/lang/Object;

    monitor-enter v6
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 252
    :try_start_1
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .line 253
    .local v3, "pipe":[Landroid/os/ParcelFileDescriptor;
    const/4 v5, 0x1

    aget-object v4, v3, v5

    .line 254
    .local v4, "writeSide":Landroid/os/ParcelFileDescriptor;
    new-instance v5, Lmiui/app/backup/BackupManager$1;

    invoke-direct {v5, p0, v4, p1}, Lmiui/app/backup/BackupManager$1;-><init>(Lmiui/app/backup/BackupManager;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;)V

    invoke-virtual {v5}, Lmiui/app/backup/BackupManager$1;->start()V

    .line 286
    iget-object v5, p0, Lmiui/app/backup/BackupManager;->mService:Lmiui/app/backup/IBackupManager;

    const/4 v7, 0x0

    aget-object v7, v3, v7

    new-instance v8, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;

    const/4 v9, 0x0

    invoke-direct {v8, p0, v9}, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;-><init>(Lmiui/app/backup/BackupManager;Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;)V

    invoke-interface {v5, v7, p2, p3, v8}, Lmiui/app/backup/IBackupManager;->restoreFile(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;ZLmiui/app/backup/IPackageBackupRestoreObserver;)V

    .line 288
    iget-object v5, p0, Lmiui/app/backup/BackupManager;->mBackupRestoreLatch:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 297
    if-eqz v3, :cond_1

    aget-object v5, v3, v10

    if-eqz v5, :cond_1

    .line 299
    const/4 v5, 0x0

    :try_start_3
    aget-object v5, v3, v5

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 243
    .end local v3    # "pipe":[Landroid/os/ParcelFileDescriptor;
    .end local v4    # "writeSide":Landroid/os/ParcelFileDescriptor;
    :cond_1
    :goto_0
    return-void

    .line 251
    :catchall_0
    move-exception v5

    :try_start_4
    monitor-exit v6

    throw v5
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 290
    :catch_0
    move-exception v0

    .line 291
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_5
    const-string/jumbo v5, "Backup:BackupManager"

    const-string/jumbo v6, "RemoteException"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 297
    if-eqz v3, :cond_1

    aget-object v5, v3, v10

    if-eqz v5, :cond_1

    .line 299
    const/4 v5, 0x0

    :try_start_6
    aget-object v5, v3, v5

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_0

    .line 300
    :catch_1
    move-exception v1

    .line 301
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v5, "Backup:BackupManager"

    const-string/jumbo v6, "IOException"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 300
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v3    # "pipe":[Landroid/os/ParcelFileDescriptor;
    .restart local v4    # "writeSide":Landroid/os/ParcelFileDescriptor;
    :catch_2
    move-exception v1

    .line 301
    .restart local v1    # "e":Ljava/io/IOException;
    const-string/jumbo v5, "Backup:BackupManager"

    const-string/jumbo v6, "IOException"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 294
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "pipe":[Landroid/os/ParcelFileDescriptor;
    .end local v4    # "writeSide":Landroid/os/ParcelFileDescriptor;
    :catch_3
    move-exception v1

    .line 295
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_7
    const-string/jumbo v5, "Backup:BackupManager"

    const-string/jumbo v6, "IOException"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 297
    if-eqz v3, :cond_1

    aget-object v5, v3, v10

    if-eqz v5, :cond_1

    .line 299
    const/4 v5, 0x0

    :try_start_8
    aget-object v5, v3, v5

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_0

    .line 300
    :catch_4
    move-exception v1

    .line 301
    const-string/jumbo v5, "Backup:BackupManager"

    const-string/jumbo v6, "IOException"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 292
    .end local v1    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v2

    .line 293
    .local v2, "e":Ljava/lang/InterruptedException;
    :try_start_9
    const-string/jumbo v5, "Backup:BackupManager"

    const-string/jumbo v6, "InterruptedException"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 297
    if-eqz v3, :cond_1

    aget-object v5, v3, v10

    if-eqz v5, :cond_1

    .line 299
    const/4 v5, 0x0

    :try_start_a
    aget-object v5, v3, v5

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    goto :goto_0

    .line 300
    :catch_6
    move-exception v1

    .line 301
    .restart local v1    # "e":Ljava/io/IOException;
    const-string/jumbo v5, "Backup:BackupManager"

    const-string/jumbo v6, "IOException"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 296
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :catchall_1
    move-exception v5

    .line 297
    if-eqz v3, :cond_2

    aget-object v6, v3, v10

    if-eqz v6, :cond_2

    .line 299
    const/4 v6, 0x0

    :try_start_b
    aget-object v6, v3, v6

    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    .line 296
    :cond_2
    :goto_1
    throw v5

    .line 300
    :catch_7
    move-exception v1

    .line 301
    .restart local v1    # "e":Ljava/io/IOException;
    const-string/jumbo v6, "Backup:BackupManager"

    const-string/jumbo v7, "IOException"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public setCustomProgress(III)V
    .locals 3
    .param p1, "progType"    # I
    .param p2, "prog"    # I
    .param p3, "total"    # I

    .prologue
    .line 364
    :try_start_0
    iget-object v2, p0, Lmiui/app/backup/BackupManager;->mService:Lmiui/app/backup/IBackupManager;

    invoke-interface {v2}, Lmiui/app/backup/IBackupManager;->getCurrentRunningPackage()Ljava/lang/String;

    move-result-object v1

    .line 365
    .local v1, "pkg":Ljava/lang/String;
    iget-object v2, p0, Lmiui/app/backup/BackupManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 366
    iget-object v2, p0, Lmiui/app/backup/BackupManager;->mService:Lmiui/app/backup/IBackupManager;

    invoke-interface {v2, p1, p2, p3}, Lmiui/app/backup/IBackupManager;->setCustomProgress(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 362
    .end local v1    # "pkg":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 368
    :catch_0
    move-exception v0

    .line 369
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setIsNeedBeKilled(Z)V
    .locals 3
    .param p1, "isNeedBeKilled"    # Z

    .prologue
    .line 348
    :try_start_0
    iget-object v1, p0, Lmiui/app/backup/BackupManager;->mService:Lmiui/app/backup/IBackupManager;

    iget-object v2, p0, Lmiui/app/backup/BackupManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Lmiui/app/backup/IBackupManager;->setIsNeedBeKilled(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 346
    :goto_0
    return-void

    .line 349
    :catch_0
    move-exception v0

    .line 350
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "Backup:BackupManager"

    const-string/jumbo v2, "RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method setWorkingError(I)V
    .locals 2
    .param p1, "errCode"    # I

    .prologue
    .line 356
    :try_start_0
    iget-object v1, p0, Lmiui/app/backup/BackupManager;->mService:Lmiui/app/backup/IBackupManager;

    invoke-interface {v1, p1}, Lmiui/app/backup/IBackupManager;->errorOccur(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 354
    :goto_0
    return-void

    .line 357
    :catch_0
    move-exception v0

    .line 358
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
