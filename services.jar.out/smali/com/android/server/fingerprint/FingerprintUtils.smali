.class public Lcom/android/server/fingerprint/FingerprintUtils;
.super Ljava/lang/Object;
.source "FingerprintUtils.java"


# static fields
.field private static final FP_ERROR_VIBRATE_PATTERN:[J

.field private static final FP_SUCCESS_VIBRATE_PATTERN:[J

.field private static final VIBRATE_DURATION:I = 0x32

.field private static sInstance:Lcom/android/server/fingerprint/FingerprintUtils;

.field private static final sInstanceLock:Ljava/lang/Object;


# instance fields
.field private final mUsers:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/fingerprint/FingerprintsUserState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x4

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/fingerprint/FingerprintUtils;->FP_ERROR_VIBRATE_PATTERN:[J

    .line 35
    const/4 v0, 0x2

    new-array v0, v0, [J

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/server/fingerprint/FingerprintUtils;->FP_SUCCESS_VIBRATE_PATTERN:[J

    .line 39
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/fingerprint/FingerprintUtils;->sInstanceLock:Ljava/lang/Object;

    .line 32
    return-void

    .line 34
    :array_0
    .array-data 8
        0x0
        0x1e
        0x64
        0x1e
    .end array-data

    .line 35
    :array_1
    .array-data 8
        0x0
        0x1e
    .end array-data
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintUtils;->mUsers:Landroid/util/SparseArray;

    .line 54
    return-void
.end method

.method public static getInstance()Lcom/android/server/fingerprint/FingerprintUtils;
    .locals 2

    .prologue
    .line 46
    sget-object v1, Lcom/android/server/fingerprint/FingerprintUtils;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 47
    :try_start_0
    sget-object v0, Lcom/android/server/fingerprint/FingerprintUtils;->sInstance:Lcom/android/server/fingerprint/FingerprintUtils;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lcom/android/server/fingerprint/FingerprintUtils;

    invoke-direct {v0}, Lcom/android/server/fingerprint/FingerprintUtils;-><init>()V

    sput-object v0, Lcom/android/server/fingerprint/FingerprintUtils;->sInstance:Lcom/android/server/fingerprint/FingerprintUtils;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 51
    sget-object v0, Lcom/android/server/fingerprint/FingerprintUtils;->sInstance:Lcom/android/server/fingerprint/FingerprintUtils;

    return-object v0

    .line 46
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getStateForUser(Landroid/content/Context;I)Lcom/android/server/fingerprint/FingerprintsUserState;
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "userId"    # I

    .prologue
    .line 96
    monitor-enter p0

    .line 97
    :try_start_0
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintUtils;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/fingerprint/FingerprintsUserState;

    .line 98
    .local v0, "state":Lcom/android/server/fingerprint/FingerprintsUserState;
    if-nez v0, :cond_0

    .line 99
    new-instance v0, Lcom/android/server/fingerprint/FingerprintsUserState;

    .end local v0    # "state":Lcom/android/server/fingerprint/FingerprintsUserState;
    invoke-direct {v0, p1, p2}, Lcom/android/server/fingerprint/FingerprintsUserState;-><init>(Landroid/content/Context;I)V

    .line 100
    .restart local v0    # "state":Lcom/android/server/fingerprint/FingerprintsUserState;
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintUtils;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 102
    return-object v0

    .line 96
    .end local v0    # "state":Lcom/android/server/fingerprint/FingerprintsUserState;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public static vibrateFingerprintError(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 78
    const-class v1, Landroid/os/Vibrator;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 79
    .local v0, "vibrator":Landroid/os/Vibrator;
    if-eqz v0, :cond_0

    .line 82
    const-wide/16 v2, 0x32

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 77
    :cond_0
    return-void
.end method

.method public static vibrateFingerprintSuccess(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 87
    const-class v1, Landroid/os/Vibrator;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 88
    .local v0, "vibrator":Landroid/os/Vibrator;
    if-eqz v0, :cond_0

    .line 91
    const-wide/16 v2, 0x32

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 86
    :cond_0
    return-void
.end method


# virtual methods
.method public addFingerprintForUser(Landroid/content/Context;II)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "fingerId"    # I
    .param p3, "userId"    # I

    .prologue
    .line 62
    invoke-direct {p0, p1, p3}, Lcom/android/server/fingerprint/FingerprintUtils;->getStateForUser(Landroid/content/Context;I)Lcom/android/server/fingerprint/FingerprintsUserState;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/android/server/fingerprint/FingerprintsUserState;->addFingerprint(II)V

    .line 61
    return-void
.end method

.method public getFingerprintsForUser(Landroid/content/Context;I)Ljava/util/List;
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/fingerprint/Fingerprint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/android/server/fingerprint/FingerprintUtils;->getStateForUser(Landroid/content/Context;I)Lcom/android/server/fingerprint/FingerprintsUserState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/fingerprint/FingerprintsUserState;->getFingerprints()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public removeFingerprintIdForUser(Landroid/content/Context;II)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "fingerId"    # I
    .param p3, "userId"    # I

    .prologue
    .line 66
    invoke-direct {p0, p1, p3}, Lcom/android/server/fingerprint/FingerprintUtils;->getStateForUser(Landroid/content/Context;I)Lcom/android/server/fingerprint/FingerprintsUserState;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/server/fingerprint/FingerprintsUserState;->removeFingerprint(I)V

    .line 65
    return-void
.end method

.method public renameFingerprintForUser(Landroid/content/Context;IILjava/lang/CharSequence;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "fingerId"    # I
    .param p3, "userId"    # I
    .param p4, "name"    # Ljava/lang/CharSequence;

    .prologue
    .line 70
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    return-void

    .line 74
    :cond_0
    invoke-direct {p0, p1, p3}, Lcom/android/server/fingerprint/FingerprintUtils;->getStateForUser(Landroid/content/Context;I)Lcom/android/server/fingerprint/FingerprintsUserState;

    move-result-object v0

    invoke-virtual {v0, p2, p4}, Lcom/android/server/fingerprint/FingerprintsUserState;->renameFingerprint(ILjava/lang/CharSequence;)V

    .line 69
    return-void
.end method
