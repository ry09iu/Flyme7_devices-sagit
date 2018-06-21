.class public Lcom/android/server/securespaces/SpaceEncryptionService;
.super Landroid/service/securespaces/ISpaceEncryptionService$Stub;
.source "SpaceEncryptionService.java"


# static fields
.field private static final ABORTCMD:I = -0xc9

.field private static final ACKCMD:I = -0xca

.field private static final DEBUG:Z = true

.field private static final DEFAULT_AUTH_DATA:Ljava/lang/String; = "4178522d9b7d8c122e09d8c21e499939"

.field private static final EF_MOUNT:I = -0x79

.field private static final EF_OVERWRITE:I = -0x7b

.field private static final EF_UNMOUNT:I = -0x7c

.field private static final EF_UNMOUNT_MEDIA:I = -0x80

.field private static final EF_UPDATE:I = -0x7a

.field private static final KEY_DESC_HASH_ALGORITHM:Ljava/lang/String; = "SHA-256"

.field private static final SALT_LENGTH:I = 0x20

.field private static final TAG:Ljava/lang/String; = "SpaceEncryptionService"

.field private static final USER_SALT_DIR_NAME:Ljava/lang/String; = ".Spaces"

.field private static final USER_SALT_FILE_NAME:Ljava/lang/String; = "salt"

.field private static final WALLPAPER:Ljava/lang/String; = "wallpaper"

.field private static final WALLPAPER_INFO:Ljava/lang/String; = "wallpaper_info.xml"

.field private static final fekekDescriptionSalt:[B

.field private static final fnekDescriptionSalt:[B


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEcryptfsLock:Ljava/lang/Object;

.field private mEcryptfsMountedUsers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mEcryptfsMountedUsersRemovable:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mEcryptfsUnmountPendingUsers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mEcryptfsUnmountRemovablePendingUsers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mKeyguard:Lcom/android/server/securespaces/Keyguard;

.field private mPackageManagerQueue:Lcom/android/server/securespaces/PackageManagerQueue;

.field private mPms:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x20

    .line 71
    const-string/jumbo v0, "miui_security"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 97
    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/securespaces/SpaceEncryptionService;->fekekDescriptionSalt:[B

    .line 109
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/server/securespaces/SpaceEncryptionService;->fnekDescriptionSalt:[B

    .line 68
    return-void

    .line 97
    nop

    :array_0
    .array-data 1
        0x30t
        -0x46t
        0x14t
        -0x3ft
        -0x1et
        -0x50t
        -0x7et
        -0x23t
        -0x2dt
        -0x7t
        -0x7t
        0x6et
        0x2dt
        0x1ft
        0x46t
        -0x55t
        0x67t
        0x8t
        0x4bt
        -0xft
        -0x67t
        0x72t
        -0x45t
        0x78t
        0x33t
        -0x63t
        0x17t
        0x1bt
        -0x5t
        -0x1at
        -0x2et
        0x6at
    .end array-data

    .line 109
    :array_1
    .array-data 1
        0x7et
        0x5ct
        -0x66t
        0x60t
        -0x2et
        -0x31t
        -0x36t
        0x3et
        -0x73t
        0x35t
        -0x2at
        -0x48t
        -0x63t
        -0x73t
        0x11t
        0x10t
        0xdt
        0x36t
        0x6et
        0x5at
        0x16t
        -0x7t
        -0x46t
        0x7bt
        0x3ct
        -0x1bt
        -0x7at
        0x28t
        -0x6et
        -0x61t
        -0x69t
        -0x6et
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 211
    invoke-direct {p0}, Landroid/service/securespaces/ISpaceEncryptionService$Stub;-><init>()V

    .line 131
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mPms:Lcom/android/server/pm/PackageManagerService;

    .line 133
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mEcryptfsMountedUsers:Ljava/util/ArrayList;

    .line 134
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mEcryptfsMountedUsersRemovable:Ljava/util/ArrayList;

    .line 135
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mEcryptfsUnmountPendingUsers:Ljava/util/ArrayList;

    .line 136
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mEcryptfsUnmountRemovablePendingUsers:Ljava/util/ArrayList;

    .line 138
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mEcryptfsLock:Ljava/lang/Object;

    .line 212
    iput-object p1, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mContext:Landroid/content/Context;

    .line 213
    invoke-static {}, Lcom/android/server/securespaces/PackageManagerQueue;->getInstance()Lcom/android/server/securespaces/PackageManagerQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mPackageManagerQueue:Lcom/android/server/securespaces/PackageManagerQueue;

    .line 215
    invoke-direct {p0}, Lcom/android/server/securespaces/SpaceEncryptionService;->initializeEcryptfsMounts()V

    .line 211
    return-void
.end method

.method private closeStream(Ljava/io/Closeable;)V
    .locals 3
    .param p1, "s"    # Ljava/io/Closeable;

    .prologue
    .line 1048
    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1046
    :cond_0
    :goto_0
    return-void

    .line 1049
    :catch_0
    move-exception v0

    .line 1050
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v1, "SpaceEncryptionService"

    const-string/jumbo v2, "error closing stream"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private doEcryptfsMountLocked(IILjava/lang/String;)I
    .locals 12
    .param p1, "userId"    # I
    .param p2, "authId"    # I
    .param p3, "authData"    # Ljava/lang/String;

    .prologue
    .line 448
    const/4 v6, 0x0

    .line 450
    .local v6, "rc":I
    const-string/jumbo v9, "SpaceEncryptionService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "doEcryptfsMountLocked: userId = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " authId = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    invoke-static {}, Lcom/android/server/securespaces/SpaceEncryptionService;->jniInitssService()I

    move-result v6

    .line 453
    if-eqz v6, :cond_0

    .line 454
    const-string/jumbo v9, "SpaceEncryptionService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "doEcryptfsMountLocked - jniInitssService failed: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    const/4 v9, -0x1

    return v9

    .line 459
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/securespaces/SpaceEncryptionService;->getUserSalt(I)[B

    move-result-object v8

    .line 460
    .local v8, "userSalt":[B
    if-nez v8, :cond_1

    .line 461
    const-string/jumbo v9, "SpaceEncryptionService"

    const-string/jumbo v10, "unable to get user salt"

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    const/4 v9, -0x1

    return v9

    .line 466
    :cond_1
    invoke-direct {p0, p1, v8}, Lcom/android/server/securespaces/SpaceEncryptionService;->generateFekekDescription(I[B)Ljava/lang/String;

    move-result-object v2

    .line 467
    .local v2, "fekekDesc":Ljava/lang/String;
    invoke-direct {p0, p1, v8}, Lcom/android/server/securespaces/SpaceEncryptionService;->generateFnekDescription(I[B)Ljava/lang/String;

    move-result-object v3

    .line 468
    .local v3, "fnekDesc":Ljava/lang/String;
    invoke-direct {p0, p1, v8}, Lcom/android/server/securespaces/SpaceEncryptionService;->generateMediaFekekDescription(I[B)Ljava/lang/String;

    move-result-object v4

    .line 469
    .local v4, "mediaFekekDesc":Ljava/lang/String;
    invoke-direct {p0, p1, v8}, Lcom/android/server/securespaces/SpaceEncryptionService;->generateMediaFnekDescription(I[B)Ljava/lang/String;

    move-result-object v5

    .line 471
    .local v5, "mediaFnekDesc":Ljava/lang/String;
    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    .line 473
    .local v1, "encodedAuthData":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 474
    const-string/jumbo v10, " "

    .line 473
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 474
    const-string/jumbo v10, " "

    .line 473
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 474
    const-string/jumbo v10, " "

    .line 473
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 475
    const-string/jumbo v10, " "

    .line 473
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 475
    const-string/jumbo v10, " "

    .line 473
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 479
    .local v0, "cmdStr":Ljava/lang/String;
    const/16 v9, -0x79

    invoke-static {v9, v0}, Lcom/android/server/securespaces/SpaceEncryptionService;->jniSendssService(ILjava/lang/String;)I

    move-result v6

    .line 480
    if-eqz v6, :cond_2

    .line 481
    const-string/jumbo v9, "SpaceEncryptionService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Failed to execute mount cmdStr: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    :cond_2
    invoke-static {}, Lcom/android/server/securespaces/SpaceEncryptionService;->jniRecvssService()I

    move-result v7

    .line 485
    .local v7, "ret":I
    const/16 v9, -0xca

    if-ne v7, v9, :cond_3

    .line 486
    const/4 v6, 0x0

    .line 491
    :goto_0
    return v6

    .line 488
    :cond_3
    const-string/jumbo v9, "SpaceEncryptionService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Execution of mount cmdStr: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " returned: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-direct {p0, v6}, Lcom/android/server/securespaces/SpaceEncryptionService;->getEncryptionCmdError(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    const/4 v6, -0x1

    goto :goto_0
.end method

.method private doEcryptfsMountRemovableLocked(I)V
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 273
    invoke-direct {p0, p1}, Lcom/android/server/securespaces/SpaceEncryptionService;->isUserEcryptfsMountedRemovableLocked(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 274
    return-void

    .line 276
    :cond_0
    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/android/server/securespaces/SpaceEncryptionService;->jniEcryptfsMountRemovable(ILjava/lang/String;)I

    move-result v0

    .line 277
    .local v0, "rc":I
    if-nez v0, :cond_1

    .line 278
    iget-object v1, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mEcryptfsMountedUsersRemovable:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 272
    :goto_0
    return-void

    .line 280
    :cond_1
    const-string/jumbo v1, "SpaceEncryptionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "call to jniEcryptfsMountRemovable() failed for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 281
    const-string/jumbo v3, " with rc="

    .line 280
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private doEcryptfsOverwriteLocked(I)I
    .locals 7
    .param p1, "userId"    # I

    .prologue
    .line 580
    const/4 v1, 0x0

    .line 582
    .local v1, "rc":I
    const-string/jumbo v3, "SpaceEncryptionService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "doEcryptfsOverwriteLocked: userId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    iget-object v4, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mEcryptfsLock:Ljava/lang/Object;

    monitor-enter v4

    .line 585
    :try_start_0
    invoke-static {}, Lcom/android/server/securespaces/SpaceEncryptionService;->jniInitssService()I

    move-result v1

    .line 586
    if-eqz v1, :cond_0

    .line 587
    const-string/jumbo v3, "SpaceEncryptionService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "jniInitssService failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 588
    const/4 v3, -0x1

    monitor-exit v4

    return v3

    .line 591
    :cond_0
    :try_start_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 592
    .local v0, "cmdStr":Ljava/lang/String;
    const/16 v3, -0x7b

    invoke-static {v3, v0}, Lcom/android/server/securespaces/SpaceEncryptionService;->jniSendssService(ILjava/lang/String;)I

    move-result v1

    .line 593
    if-eqz v1, :cond_1

    .line 594
    const-string/jumbo v3, "SpaceEncryptionService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Failed to execute overwrite cmdStr: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    :cond_1
    invoke-static {}, Lcom/android/server/securespaces/SpaceEncryptionService;->jniRecvssService()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    .line 598
    .local v2, "ret":I
    const/16 v3, -0xca

    if-ne v2, v3, :cond_2

    .line 599
    const/4 v1, 0x0

    :goto_0
    monitor-exit v4

    .line 604
    return v1

    .line 601
    :cond_2
    :try_start_2
    const-string/jumbo v3, "SpaceEncryptionService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Execution of overwrite cmdStr: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " returned: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0, v1}, Lcom/android/server/securespaces/SpaceEncryptionService;->getEncryptionCmdError(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 602
    const/4 v1, -0x1

    goto :goto_0

    .line 584
    .end local v0    # "cmdStr":Ljava/lang/String;
    .end local v2    # "ret":I
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private doEcryptfsUnmountLocked(I)I
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 495
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/securespaces/SpaceEncryptionService;->doEcryptfsUnmountLocked(IZ)I

    move-result v0

    return v0
.end method

.method private doEcryptfsUnmountLocked(IZ)I
    .locals 6
    .param p1, "userId"    # I
    .param p2, "media_only"    # Z

    .prologue
    .line 509
    const/4 v1, 0x0

    .line 511
    .local v1, "rc":I
    const-string/jumbo v3, "SpaceEncryptionService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "doEcryptfsUnmountLocked: Unmounting userId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    invoke-static {}, Lcom/android/server/securespaces/SpaceEncryptionService;->jniInitssService()I

    move-result v1

    .line 514
    if-eqz v1, :cond_0

    .line 515
    const-string/jumbo v3, "SpaceEncryptionService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "doEcryptfsUnmountLocked - jniInitssService failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    const/4 v3, -0x1

    return v3

    .line 518
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 519
    .local v0, "cmdStr":Ljava/lang/String;
    if-eqz p2, :cond_2

    .line 520
    const/16 v3, -0x80

    invoke-static {v3, v0}, Lcom/android/server/securespaces/SpaceEncryptionService;->jniSendssService(ILjava/lang/String;)I

    move-result v1

    .line 524
    :goto_0
    if-eqz v1, :cond_1

    .line 525
    const-string/jumbo v3, "SpaceEncryptionService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Failed to execute umount cmdStr: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    :cond_1
    invoke-static {}, Lcom/android/server/securespaces/SpaceEncryptionService;->jniRecvssService()I

    move-result v2

    .line 528
    .local v2, "ret":I
    const/16 v3, -0xca

    if-ne v2, v3, :cond_3

    .line 529
    const/4 v1, 0x0

    .line 534
    :goto_1
    return v1

    .line 522
    .end local v2    # "ret":I
    :cond_2
    const/16 v3, -0x7c

    invoke-static {v3, v0}, Lcom/android/server/securespaces/SpaceEncryptionService;->jniSendssService(ILjava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 531
    .restart local v2    # "ret":I
    :cond_3
    const-string/jumbo v3, "SpaceEncryptionService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Execution of unmount cmdStr: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " returned: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0, v1}, Lcom/android/server/securespaces/SpaceEncryptionService;->getEncryptionCmdError(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private doEcryptfsUnmountRemovableLocked(I)V
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 307
    invoke-direct {p0, p1}, Lcom/android/server/securespaces/SpaceEncryptionService;->isUserEcryptfsMountedRemovableLocked(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 308
    return-void

    .line 312
    :cond_0
    invoke-static {p1}, Landroid/service/securespaces/SecureSpacesService;->isUserWipeDataPending(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 313
    iget-object v1, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mEcryptfsUnmountRemovablePendingUsers:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 314
    iget-object v1, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mEcryptfsUnmountRemovablePendingUsers:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 316
    :cond_1
    return-void

    .line 319
    :cond_2
    invoke-static {p1}, Lcom/android/server/securespaces/SpaceEncryptionService;->jniEcryptfsUnmountRemovable(I)I

    move-result v0

    .line 320
    .local v0, "rc":I
    if-nez v0, :cond_3

    .line 322
    iget-object v1, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mEcryptfsMountedUsersRemovable:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 306
    :goto_0
    return-void

    .line 324
    :cond_3
    const-string/jumbo v1, "SpaceEncryptionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "call to jniEcryptfsUnmountRemovable() failed for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 325
    const-string/jumbo v3, " with rc="

    .line 324
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private doEcryptfsUpdateLocked(IILjava/lang/String;)I
    .locals 12
    .param p1, "userId"    # I
    .param p2, "authId"    # I
    .param p3, "authData"    # Ljava/lang/String;

    .prologue
    .line 540
    const/4 v6, 0x0

    .line 542
    .local v6, "rc":I
    const-string/jumbo v9, "SpaceEncryptionService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "doEcryptfsUpdateLocked: userId = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " authId = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    invoke-static {}, Lcom/android/server/securespaces/SpaceEncryptionService;->jniInitssService()I

    move-result v6

    .line 545
    if-eqz v6, :cond_0

    .line 546
    const-string/jumbo v9, "SpaceEncryptionService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "doEcryptfsUpdateLocked - jniInitssService failed: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    const/4 v9, -0x1

    return v9

    .line 551
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/securespaces/SpaceEncryptionService;->getUserSalt(I)[B

    move-result-object v8

    .line 554
    .local v8, "userSalt":[B
    invoke-direct {p0, p1, v8}, Lcom/android/server/securespaces/SpaceEncryptionService;->generateFekekDescription(I[B)Ljava/lang/String;

    move-result-object v2

    .line 555
    .local v2, "fekekDesc":Ljava/lang/String;
    invoke-direct {p0, p1, v8}, Lcom/android/server/securespaces/SpaceEncryptionService;->generateFnekDescription(I[B)Ljava/lang/String;

    move-result-object v3

    .line 556
    .local v3, "fnekDesc":Ljava/lang/String;
    invoke-direct {p0, p1, v8}, Lcom/android/server/securespaces/SpaceEncryptionService;->generateMediaFekekDescription(I[B)Ljava/lang/String;

    move-result-object v4

    .line 557
    .local v4, "mediaFekekDesc":Ljava/lang/String;
    invoke-direct {p0, p1, v8}, Lcom/android/server/securespaces/SpaceEncryptionService;->generateMediaFnekDescription(I[B)Ljava/lang/String;

    move-result-object v5

    .line 558
    .local v5, "mediaFnekDesc":Ljava/lang/String;
    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    .line 560
    .local v1, "encodedAuthData":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 561
    const-string/jumbo v10, " "

    .line 560
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 562
    .local v0, "cmdStr":Ljava/lang/String;
    const/16 v9, -0x7a

    invoke-static {v9, v0}, Lcom/android/server/securespaces/SpaceEncryptionService;->jniSendssService(ILjava/lang/String;)I

    move-result v6

    .line 563
    if-eqz v6, :cond_1

    .line 564
    const-string/jumbo v9, "SpaceEncryptionService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Failed to execute update cmdStr: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    :cond_1
    invoke-static {}, Lcom/android/server/securespaces/SpaceEncryptionService;->jniRecvssService()I

    move-result v7

    .line 567
    .local v7, "ret":I
    const/16 v9, -0xca

    if-ne v7, v9, :cond_2

    .line 568
    const/4 v6, 0x0

    .line 573
    :goto_0
    return v6

    .line 570
    :cond_2
    const-string/jumbo v9, "SpaceEncryptionService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Execution of update cmdStr: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " returned: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-direct {p0, v6}, Lcom/android/server/securespaces/SpaceEncryptionService;->getEncryptionCmdError(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    const/4 v6, -0x1

    goto :goto_0
.end method

.method private enableGraphiteAppBeforeSwitch(I)V
    .locals 7
    .param p1, "targetId"    # I

    .prologue
    const/4 v6, 0x0

    .line 1189
    invoke-static {}, Lmiui/securityspace/CrossUserUtils;->getCurrentUserId()I

    move-result v4

    if-nez v4, :cond_1

    .line 1190
    iget-object v4, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "user"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    .line 1191
    .local v3, "userManager":Landroid/os/UserManager;
    invoke-virtual {v3, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 1192
    .local v2, "userInfo":Landroid/content/pm/UserInfo;
    if-nez v2, :cond_0

    .line 1193
    const-string/jumbo v4, "SpaceEncryptionService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "User switch failed , user id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " is not exist"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1194
    return-void

    .line 1196
    :cond_0
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isSpace()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1197
    iget-object v4, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1198
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    const-string/jumbo v4, "content://com.miui.securitycore.provider/activeGraphiteApps"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1199
    .local v1, "uri":Landroid/net/Uri;
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v0, v1, v4, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1188
    .end local v0    # "contentResolver":Landroid/content/ContentResolver;
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v2    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v3    # "userManager":Landroid/os/UserManager;
    :cond_1
    return-void
.end method

.method private generateEcryptfsKeyDescription(Ljava/lang/String;[BI[B)Ljava/lang/String;
    .locals 6
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "fixedSalt"    # [B
    .param p3, "userId"    # I
    .param p4, "userSalt"    # [B

    .prologue
    .line 353
    const/4 v0, 0x0

    .line 355
    .local v0, "H":[B
    :try_start_0
    const-string/jumbo v4, "SHA-256"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 357
    .local v3, "md":Ljava/security/MessageDigest;
    invoke-virtual {v3, p2}, Ljava/security/MessageDigest;->update([B)V

    .line 358
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/security/MessageDigest;->update([B)V

    .line 359
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/security/MessageDigest;->update([B)V

    .line 360
    invoke-virtual {v3, p4}, Ljava/security/MessageDigest;->update([B)V

    .line 361
    invoke-virtual {v3, p2}, Ljava/security/MessageDigest;->update([B)V

    .line 362
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 375
    .local v0, "H":[B
    invoke-static {v0}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 377
    .local v1, "desc":Ljava/lang/String;
    const/4 v4, 0x0

    const/16 v5, 0x10

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 363
    .end local v1    # "desc":Ljava/lang/String;
    .end local v3    # "md":Ljava/security/MessageDigest;
    .local v0, "H":[B
    :catch_0
    move-exception v2

    .line 364
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "SpaceEncryptionService"

    const-string/jumbo v5, "caught exception from MessageDigest: "

    invoke-static {v4, v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 365
    const/4 v4, 0x0

    return-object v4
.end method

.method private generateFekekDescription(I[B)Ljava/lang/String;
    .locals 2
    .param p1, "userId"    # I
    .param p2, "userSalt"    # [B

    .prologue
    .line 381
    const-string/jumbo v0, "fekek"

    sget-object v1, Lcom/android/server/securespaces/SpaceEncryptionService;->fekekDescriptionSalt:[B

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/server/securespaces/SpaceEncryptionService;->generateEcryptfsKeyDescription(Ljava/lang/String;[BI[B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private generateFnekDescription(I[B)Ljava/lang/String;
    .locals 2
    .param p1, "userId"    # I
    .param p2, "userSalt"    # [B

    .prologue
    .line 385
    const-string/jumbo v0, "fnek"

    sget-object v1, Lcom/android/server/securespaces/SpaceEncryptionService;->fnekDescriptionSalt:[B

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/server/securespaces/SpaceEncryptionService;->generateEcryptfsKeyDescription(Ljava/lang/String;[BI[B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private generateMediaFekekDescription(I[B)Ljava/lang/String;
    .locals 2
    .param p1, "userId"    # I
    .param p2, "userSalt"    # [B

    .prologue
    .line 389
    const-string/jumbo v0, "media-fekek"

    sget-object v1, Lcom/android/server/securespaces/SpaceEncryptionService;->fekekDescriptionSalt:[B

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/server/securespaces/SpaceEncryptionService;->generateEcryptfsKeyDescription(Ljava/lang/String;[BI[B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private generateMediaFnekDescription(I[B)Ljava/lang/String;
    .locals 2
    .param p1, "userId"    # I
    .param p2, "userSalt"    # [B

    .prologue
    .line 393
    const-string/jumbo v0, "media-fnek"

    sget-object v1, Lcom/android/server/securespaces/SpaceEncryptionService;->fnekDescriptionSalt:[B

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/server/securespaces/SpaceEncryptionService;->generateEcryptfsKeyDescription(Ljava/lang/String;[BI[B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getEncryptionCmdError(I)Ljava/lang/String;
    .locals 1
    .param p1, "code"    # I

    .prologue
    .line 144
    packed-switch p1, :pswitch_data_0

    .line 206
    const-string/jumbo v0, "Unknown Error."

    .line 208
    .local v0, "errStr":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 146
    .end local v0    # "errStr":Ljava/lang/String;
    :pswitch_0
    const-string/jumbo v0, "ABORTCMD"

    .restart local v0    # "errStr":Ljava/lang/String;
    goto :goto_0

    .line 149
    .end local v0    # "errStr":Ljava/lang/String;
    :pswitch_1
    const-string/jumbo v0, "ACKCMD"

    .restart local v0    # "errStr":Ljava/lang/String;
    goto :goto_0

    .line 152
    .end local v0    # "errStr":Ljava/lang/String;
    :pswitch_2
    const-string/jumbo v0, "CMD_ERR_OUT_OF_MEMORY"

    .restart local v0    # "errStr":Ljava/lang/String;
    goto :goto_0

    .line 155
    .end local v0    # "errStr":Ljava/lang/String;
    :pswitch_3
    const-string/jumbo v0, "CMD_ERR_NO_AUTH_DATA"

    .restart local v0    # "errStr":Ljava/lang/String;
    goto :goto_0

    .line 158
    .end local v0    # "errStr":Ljava/lang/String;
    :pswitch_4
    const-string/jumbo v0, "CMD_ERR_KEYRING"

    .restart local v0    # "errStr":Ljava/lang/String;
    goto :goto_0

    .line 161
    .end local v0    # "errStr":Ljava/lang/String;
    :pswitch_5
    const-string/jumbo v0, "CMD_ERR_PREPARE_DIR"

    .restart local v0    # "errStr":Ljava/lang/String;
    goto :goto_0

    .line 164
    .end local v0    # "errStr":Ljava/lang/String;
    :pswitch_6
    const-string/jumbo v0, "CMD_ERR_FILE_NOT_FOUND"

    .restart local v0    # "errStr":Ljava/lang/String;
    goto :goto_0

    .line 167
    .end local v0    # "errStr":Ljava/lang/String;
    :pswitch_7
    const-string/jumbo v0, "CMD_ERR_CREATE_KEY"

    .restart local v0    # "errStr":Ljava/lang/String;
    goto :goto_0

    .line 170
    .end local v0    # "errStr":Ljava/lang/String;
    :pswitch_8
    const-string/jumbo v0, "CMD_ERR_FIND_KEY"

    .restart local v0    # "errStr":Ljava/lang/String;
    goto :goto_0

    .line 173
    .end local v0    # "errStr":Ljava/lang/String;
    :pswitch_9
    const-string/jumbo v0, "CMD_ERR_LOAD_KEY"

    .restart local v0    # "errStr":Ljava/lang/String;
    goto :goto_0

    .line 176
    .end local v0    # "errStr":Ljava/lang/String;
    :pswitch_a
    const-string/jumbo v0, "CMD_ERR_HASHDATA"

    .restart local v0    # "errStr":Ljava/lang/String;
    goto :goto_0

    .line 179
    .end local v0    # "errStr":Ljava/lang/String;
    :pswitch_b
    const-string/jumbo v0, "CMD_ERR_MOUNT"

    .restart local v0    # "errStr":Ljava/lang/String;
    goto :goto_0

    .line 182
    .end local v0    # "errStr":Ljava/lang/String;
    :pswitch_c
    const-string/jumbo v0, "CMD_ERR_UMOUNT"

    .restart local v0    # "errStr":Ljava/lang/String;
    goto :goto_0

    .line 185
    .end local v0    # "errStr":Ljava/lang/String;
    :pswitch_d
    const-string/jumbo v0, "CMD_ERR_SYSCALL"

    .restart local v0    # "errStr":Ljava/lang/String;
    goto :goto_0

    .line 188
    .end local v0    # "errStr":Ljava/lang/String;
    :pswitch_e
    const-string/jumbo v0, "CMD_ERR_INVALID_ARGS"

    .restart local v0    # "errStr":Ljava/lang/String;
    goto :goto_0

    .line 191
    .end local v0    # "errStr":Ljava/lang/String;
    :pswitch_f
    const-string/jumbo v0, "CMD_ERR_FILE_COPY"

    .restart local v0    # "errStr":Ljava/lang/String;
    goto :goto_0

    .line 194
    .end local v0    # "errStr":Ljava/lang/String;
    :pswitch_10
    const-string/jumbo v0, "CMD_ERR_RANDOM_BYTE"

    .restart local v0    # "errStr":Ljava/lang/String;
    goto :goto_0

    .line 197
    .end local v0    # "errStr":Ljava/lang/String;
    :pswitch_11
    const-string/jumbo v0, "CMD_ERR_WRITE_KEYFILE"

    .restart local v0    # "errStr":Ljava/lang/String;
    goto :goto_0

    .line 200
    .end local v0    # "errStr":Ljava/lang/String;
    :pswitch_12
    const-string/jumbo v0, "CMD_ERR_MAP_FILE"

    .restart local v0    # "errStr":Ljava/lang/String;
    goto :goto_0

    .line 203
    .end local v0    # "errStr":Ljava/lang/String;
    :pswitch_13
    const-string/jumbo v0, "CMD_ERR_REMOVE_DIR"

    .restart local v0    # "errStr":Ljava/lang/String;
    goto :goto_0

    .line 144
    nop

    :pswitch_data_0
    .packed-switch -0xdc
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getUserSalt(I)[B
    .locals 12
    .param p1, "userId"    # I

    .prologue
    .line 397
    const/16 v9, 0x20

    new-array v5, v9, [B

    .line 399
    .local v5, "salt":[B
    new-instance v7, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v9

    const-string/jumbo v10, ".Spaces"

    invoke-direct {v7, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 400
    .local v7, "userSaltDir":Ljava/io/File;
    new-instance v8, Ljava/io/File;

    const-string/jumbo v9, "salt"

    invoke-direct {v8, v7, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 402
    .local v8, "userSaltFile":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 404
    const/4 v1, 0x0

    .line 406
    .local v1, "finput":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 407
    .end local v1    # "finput":Ljava/io/FileInputStream;
    .local v2, "finput":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v2, v5}, Ljava/io/FileInputStream;->read([B)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 413
    invoke-direct {p0, v2}, Lcom/android/server/securespaces/SpaceEncryptionService;->closeStream(Ljava/io/Closeable;)V

    .line 443
    .end local v2    # "finput":Ljava/io/FileInputStream;
    .end local v5    # "salt":[B
    :goto_0
    return-object v5

    .line 408
    .restart local v1    # "finput":Ljava/io/FileInputStream;
    .restart local v5    # "salt":[B
    :catch_0
    move-exception v0

    .line 409
    .end local v1    # "finput":Ljava/io/FileInputStream;
    .local v0, "e":Ljava/io/IOException;
    :goto_1
    :try_start_2
    const-string/jumbo v9, "SpaceEncryptionService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "error reading salt file: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 411
    const/4 v5, 0x0

    .line 413
    .local v5, "salt":[B
    invoke-direct {p0, v1}, Lcom/android/server/securespaces/SpaceEncryptionService;->closeStream(Ljava/io/Closeable;)V

    goto :goto_0

    .line 412
    .end local v0    # "e":Ljava/io/IOException;
    .local v5, "salt":[B
    :catchall_0
    move-exception v9

    .line 413
    :goto_2
    invoke-direct {p0, v1}, Lcom/android/server/securespaces/SpaceEncryptionService;->closeStream(Ljava/io/Closeable;)V

    .line 412
    throw v9

    .line 417
    :cond_0
    const/4 v3, 0x0

    .line 419
    .local v3, "foutput":Ljava/io/FileOutputStream;
    :try_start_3
    invoke-virtual {v7}, Ljava/io/File;->mkdir()Z

    .line 420
    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-nez v9, :cond_1

    .line 421
    new-instance v9, Ljava/io/IOException;

    const-string/jumbo v10, "error creating .Spaces directory"

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 435
    :catch_1
    move-exception v0

    .line 436
    .end local v3    # "foutput":Ljava/io/FileOutputStream;
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_3
    :try_start_4
    const-string/jumbo v9, "SpaceEncryptionService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "io exception: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 438
    const/4 v5, 0x0

    .line 440
    .local v5, "salt":[B
    invoke-direct {p0, v3}, Lcom/android/server/securespaces/SpaceEncryptionService;->closeStream(Ljava/io/Closeable;)V

    goto :goto_0

    .line 425
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v3    # "foutput":Ljava/io/FileOutputStream;
    .local v5, "salt":[B
    :cond_1
    :try_start_5
    invoke-static {v7}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 426
    new-instance v9, Ljava/io/IOException;

    const-string/jumbo v10, "error setting selabel on .Spaces directory"

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 439
    .end local v3    # "foutput":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v9

    .line 440
    :goto_4
    invoke-direct {p0, v3}, Lcom/android/server/securespaces/SpaceEncryptionService;->closeStream(Ljava/io/Closeable;)V

    .line 439
    throw v9

    .line 429
    .restart local v3    # "foutput":Ljava/io/FileOutputStream;
    :cond_2
    :try_start_6
    new-instance v6, Ljava/security/SecureRandom;

    invoke-direct {v6}, Ljava/security/SecureRandom;-><init>()V

    .line 430
    .local v6, "sr":Ljava/security/SecureRandom;
    invoke-virtual {v6, v5}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 432
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 433
    .local v4, "foutput":Ljava/io/FileOutputStream;
    :try_start_7
    invoke-virtual {v4, v5}, Ljava/io/FileOutputStream;->write([B)V

    .line 434
    .end local v3    # "foutput":Ljava/io/FileOutputStream;
    invoke-virtual {v8}, Ljava/io/File;->setReadOnly()Z
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 440
    invoke-direct {p0, v4}, Lcom/android/server/securespaces/SpaceEncryptionService;->closeStream(Ljava/io/Closeable;)V

    goto/16 :goto_0

    .line 439
    :catchall_2
    move-exception v9

    move-object v3, v4

    .end local v4    # "foutput":Ljava/io/FileOutputStream;
    .local v3, "foutput":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 435
    .end local v3    # "foutput":Ljava/io/FileOutputStream;
    .restart local v4    # "foutput":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    move-object v3, v4

    .end local v4    # "foutput":Ljava/io/FileOutputStream;
    .restart local v3    # "foutput":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 412
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "foutput":Ljava/io/FileOutputStream;
    .end local v6    # "sr":Ljava/security/SecureRandom;
    .restart local v2    # "finput":Ljava/io/FileInputStream;
    :catchall_3
    move-exception v9

    move-object v1, v2

    .end local v2    # "finput":Ljava/io/FileInputStream;
    .local v1, "finput":Ljava/io/FileInputStream;
    goto :goto_2

    .line 408
    .end local v1    # "finput":Ljava/io/FileInputStream;
    .restart local v2    # "finput":Ljava/io/FileInputStream;
    :catch_3
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    move-object v1, v2

    .end local v2    # "finput":Ljava/io/FileInputStream;
    .restart local v1    # "finput":Ljava/io/FileInputStream;
    goto/16 :goto_1
.end method

.method private initializeEcryptfsMounts()V
    .locals 13

    .prologue
    .line 632
    iget-object v10, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mEcryptfsLock:Ljava/lang/Object;

    monitor-enter v10

    .line 634
    :try_start_0
    new-instance v5, Lcom/android/internal/util/ProcFileReader;

    new-instance v9, Ljava/io/FileInputStream;

    const-string/jumbo v11, "/proc/mounts"

    invoke-direct {v9, v11}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v9}, Lcom/android/internal/util/ProcFileReader;-><init>(Ljava/io/InputStream;)V

    .line 635
    .local v5, "pfr":Lcom/android/internal/util/ProcFileReader;
    new-instance v0, Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v11, "/user/"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 636
    .local v0, "dataUser":Ljava/lang/String;
    const-string/jumbo v4, "/mnt/media_rw/"

    .line 637
    .local v4, "mntMediaRw":Ljava/lang/String;
    :goto_0
    invoke-virtual {v5}, Lcom/android/internal/util/ProcFileReader;->hasMoreData()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 643
    invoke-virtual {v5}, Lcom/android/internal/util/ProcFileReader;->nextString()Ljava/lang/String;

    move-result-object v7

    .line 645
    .local v7, "s1":Ljava/lang/String;
    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 646
    invoke-virtual {v5}, Lcom/android/internal/util/ProcFileReader;->nextString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 647
    invoke-virtual {v5}, Lcom/android/internal/util/ProcFileReader;->nextString()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v11, "ecryptfs"

    invoke-virtual {v9, v11}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v9

    .line 646
    if-eqz v9, :cond_0

    .line 649
    const-string/jumbo v9, "/"

    invoke-virtual {v7, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    add-int/lit8 v3, v9, 0x1

    .line 650
    .local v3, "i":I
    new-instance v8, Ljava/lang/Integer;

    invoke-virtual {v7, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    .line 651
    .local v8, "userId":Ljava/lang/Integer;
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-nez v9, :cond_1

    .line 653
    iget-object v9, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mEcryptfsMountedUsers:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 682
    .end local v3    # "i":I
    .end local v8    # "userId":Ljava/lang/Integer;
    :cond_0
    :goto_1
    invoke-virtual {v5}, Lcom/android/internal/util/ProcFileReader;->finishLine()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 685
    .end local v0    # "dataUser":Ljava/lang/String;
    .end local v4    # "mntMediaRw":Ljava/lang/String;
    .end local v5    # "pfr":Lcom/android/internal/util/ProcFileReader;
    .end local v7    # "s1":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 686
    .local v1, "e":Ljava/io/FileNotFoundException;
    :try_start_1
    const-string/jumbo v9, "SpaceEncryptionService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "file not found: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :goto_2
    monitor-exit v10

    .line 631
    return-void

    .line 655
    .restart local v0    # "dataUser":Ljava/lang/String;
    .restart local v3    # "i":I
    .restart local v4    # "mntMediaRw":Ljava/lang/String;
    .restart local v5    # "pfr":Lcom/android/internal/util/ProcFileReader;
    .restart local v7    # "s1":Ljava/lang/String;
    .restart local v8    # "userId":Ljava/lang/Integer;
    :cond_1
    :try_start_2
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-direct {p0, v9}, Lcom/android/server/securespaces/SpaceEncryptionService;->doEcryptfsUnmountLocked(I)I

    move-result v6

    .line 656
    .local v6, "rc":I
    if-eqz v6, :cond_0

    .line 657
    const-string/jumbo v9, "SpaceEncryptionService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "ecryptfs unmount operation for user "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 658
    const-string/jumbo v12, " failed with rc = "

    .line 657
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 687
    .end local v0    # "dataUser":Ljava/lang/String;
    .end local v3    # "i":I
    .end local v4    # "mntMediaRw":Ljava/lang/String;
    .end local v5    # "pfr":Lcom/android/internal/util/ProcFileReader;
    .end local v6    # "rc":I
    .end local v7    # "s1":Ljava/lang/String;
    .end local v8    # "userId":Ljava/lang/Integer;
    :catch_1
    move-exception v2

    .line 688
    .local v2, "e":Ljava/io/IOException;
    :try_start_3
    const-string/jumbo v9, "SpaceEncryptionService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "io exception: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 632
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    monitor-exit v10

    throw v9

    .line 663
    .restart local v0    # "dataUser":Ljava/lang/String;
    .restart local v4    # "mntMediaRw":Ljava/lang/String;
    .restart local v5    # "pfr":Lcom/android/internal/util/ProcFileReader;
    .restart local v7    # "s1":Ljava/lang/String;
    :cond_2
    :try_start_4
    const-string/jumbo v9, "/mnt/media_rw/"

    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 664
    invoke-virtual {v5}, Lcom/android/internal/util/ProcFileReader;->nextString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 665
    invoke-virtual {v5}, Lcom/android/internal/util/ProcFileReader;->nextString()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v11, "ecryptfs_vfat"

    invoke-virtual {v9, v11}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v9

    .line 664
    if-eqz v9, :cond_0

    .line 667
    const-string/jumbo v9, "_"

    invoke-virtual {v7, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    add-int/lit8 v3, v9, 0x1

    .line 668
    .restart local v3    # "i":I
    new-instance v8, Ljava/lang/Integer;

    invoke-virtual {v7, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    .line 675
    .restart local v8    # "userId":Ljava/lang/Integer;
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Lcom/android/server/securespaces/SpaceEncryptionService;->jniEcryptfsUnmountRemovable(I)I

    move-result v6

    .line 676
    .restart local v6    # "rc":I
    if-eqz v6, :cond_0

    .line 677
    const-string/jumbo v9, "SpaceEncryptionService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "ecryptfs unmount removable operation for user "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 678
    const-string/jumbo v12, " failed with rc = "

    .line 677
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 684
    .end local v3    # "i":I
    .end local v6    # "rc":I
    .end local v7    # "s1":Ljava/lang/String;
    .end local v8    # "userId":Ljava/lang/Integer;
    :cond_3
    invoke-virtual {v5}, Lcom/android/internal/util/ProcFileReader;->close()V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_2
.end method

.method private isSdcardVoldMounted()Z
    .locals 9

    .prologue
    .line 721
    const/4 v5, 0x0

    .line 723
    .local v5, "rc":Z
    :try_start_0
    const-string/jumbo v0, "/dev/block/vold/public"

    .line 724
    .local v0, "dbvp":Ljava/lang/String;
    const-string/jumbo v3, "/mnt/media_rw/"

    .line 725
    .local v3, "mm":Ljava/lang/String;
    new-instance v4, Lcom/android/internal/util/ProcFileReader;

    new-instance v6, Ljava/io/FileInputStream;

    const-string/jumbo v7, "/proc/mounts"

    invoke-direct {v6, v7}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v6}, Lcom/android/internal/util/ProcFileReader;-><init>(Ljava/io/InputStream;)V

    .line 726
    .local v4, "pfr":Lcom/android/internal/util/ProcFileReader;
    :goto_0
    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->hasMoreData()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 729
    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->nextString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "/dev/block/vold/public"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 730
    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->nextString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "/mnt/media_rw/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v6

    .line 729
    if-eqz v6, :cond_1

    .line 731
    const/4 v5, 0x1

    .line 736
    :cond_0
    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->close()V

    .line 742
    .end local v0    # "dbvp":Ljava/lang/String;
    .end local v3    # "mm":Ljava/lang/String;
    .end local v4    # "pfr":Lcom/android/internal/util/ProcFileReader;
    :goto_1
    return v5

    .line 734
    .restart local v0    # "dbvp":Ljava/lang/String;
    .restart local v3    # "mm":Ljava/lang/String;
    .restart local v4    # "pfr":Lcom/android/internal/util/ProcFileReader;
    :cond_1
    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->finishLine()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 737
    .end local v0    # "dbvp":Ljava/lang/String;
    .end local v3    # "mm":Ljava/lang/String;
    .end local v4    # "pfr":Lcom/android/internal/util/ProcFileReader;
    :catch_0
    move-exception v1

    .line 738
    .local v1, "e":Ljava/io/FileNotFoundException;
    const-string/jumbo v6, "SpaceEncryptionService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "file not found: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 739
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v2

    .line 740
    .local v2, "e":Ljava/io/IOException;
    const-string/jumbo v6, "SpaceEncryptionService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "io exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private isUserEcryptfsMountedLocked(I)Z
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mEcryptfsMountedUsers:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isUserEcryptfsMountedRemovableLocked(I)Z
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mEcryptfsMountedUsersRemovable:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static native jniEcryptfsMountRemovable(ILjava/lang/String;)I
.end method

.method private static native jniEcryptfsUnmountRemovable(I)I
.end method

.method private static native jniInitssService()I
.end method

.method private static native jniRecvssService()I
.end method

.method private static native jniSendssService(ILjava/lang/String;)I
.end method

.method private static native jniWipeRemovableUserDir(I)I
.end method

.method private processPackageManagerQueueLocked(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 618
    iget-object v0, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mPms:Lcom/android/server/pm/PackageManagerService;

    if-nez v0, :cond_0

    .line 619
    const-string/jumbo v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageManagerService;

    iput-object v0, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mPms:Lcom/android/server/pm/PackageManagerService;

    .line 621
    :cond_0
    iget-object v1, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mPackageManagerQueue:Lcom/android/server/securespaces/PackageManagerQueue;

    monitor-enter v1

    .line 622
    :try_start_0
    iget-object v0, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mPms:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mPackageManagerQueue:Lcom/android/server/securespaces/PackageManagerQueue;

    invoke-virtual {v0, p1, v2}, Lcom/android/server/pm/PackageManagerService;->processPackageManagerQueue(ILcom/android/server/securespaces/PackageManagerQueue;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 617
    return-void

    .line 621
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private validatePermission(Ljava/lang/String;)V
    .locals 4
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 609
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 610
    .local v0, "uid":I
    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    if-eqz v0, :cond_0

    .line 612
    const/4 v1, -0x1

    const/4 v2, 0x1

    .line 611
    invoke-static {p1, v0, v1, v2}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    move-result v1

    if-eqz v1, :cond_0

    .line 613
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Permission check failed, need: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 608
    :cond_0
    return-void
.end method


# virtual methods
.method public ecryptfsMount(IILjava/lang/String;)I
    .locals 4
    .param p1, "userId"    # I
    .param p2, "authId"    # I
    .param p3, "authData"    # Ljava/lang/String;

    .prologue
    .line 752
    const-string/jumbo v1, "SpaceEncryptionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "in ecryptfsMount("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", authData)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    const-string/jumbo v1, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v1}, Lcom/android/server/securespaces/SpaceEncryptionService;->validatePermission(Ljava/lang/String;)V

    .line 755
    invoke-direct {p0, p1}, Lcom/android/server/securespaces/SpaceEncryptionService;->enableGraphiteAppBeforeSwitch(I)V

    .line 757
    if-eqz p3, :cond_0

    .line 758
    iget-object v1, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mKeyguard:Lcom/android/server/securespaces/Keyguard;

    if-nez v1, :cond_0

    .line 759
    new-instance v1, Lcom/android/server/securespaces/Keyguard;

    iget-object v2, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/securespaces/Keyguard;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mKeyguard:Lcom/android/server/securespaces/Keyguard;

    .line 763
    :cond_0
    iget-object v2, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mEcryptfsLock:Ljava/lang/Object;

    monitor-enter v2

    .line 766
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/securespaces/SpaceEncryptionService;->isUserEcryptfsMountedLocked(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 767
    const/4 v1, 0x1

    monitor-exit v2

    return v1

    .line 771
    :cond_1
    if-nez p3, :cond_3

    .line 772
    :try_start_1
    const-string/jumbo v1, "4178522d9b7d8c122e09d8c21e499939"

    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/securespaces/SpaceEncryptionService;->doEcryptfsMountLocked(IILjava/lang/String;)I

    move-result v0

    .line 777
    .local v0, "rc":I
    :goto_0
    if-nez v0, :cond_2

    .line 778
    iget-object v1, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mEcryptfsMountedUsers:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 779
    invoke-direct {p0, p1}, Lcom/android/server/securespaces/SpaceEncryptionService;->processPackageManagerQueueLocked(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    monitor-exit v2

    .line 781
    return v0

    .line 774
    .end local v0    # "rc":I
    :cond_3
    :try_start_2
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/securespaces/SpaceEncryptionService;->doEcryptfsMountLocked(IILjava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    .restart local v0    # "rc":I
    goto :goto_0

    .line 763
    .end local v0    # "rc":I
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public ecryptfsMountRemovable(I)V
    .locals 11
    .param p1, "userId"    # I

    .prologue
    const/16 v10, 0x63

    .line 231
    iget-object v8, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mEcryptfsLock:Ljava/lang/Object;

    monitor-enter v8

    .line 232
    if-ne p1, v10, :cond_1

    .line 233
    :try_start_0
    const-string/jumbo v7, "SpaceEncryptionService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "ecryptfsMountRemovable() called with invalid userId = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v8

    .line 230
    return-void

    .line 234
    :cond_1
    const/4 v7, -0x1

    if-ne p1, v7, :cond_4

    .line 238
    const/4 v7, 0x0

    :try_start_1
    invoke-direct {p0, v7}, Lcom/android/server/securespaces/SpaceEncryptionService;->doEcryptfsMountRemovableLocked(I)V

    .line 240
    const-string/jumbo v7, "user"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/os/IUserManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IUserManager;

    move-result-object v5

    .line 241
    .local v5, "um":Landroid/os/IUserManager;
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 242
    .local v1, "am":Landroid/app/IActivityManager;
    if-eqz v5, :cond_3

    if-eqz v1, :cond_3

    .line 244
    const/4 v7, 0x1

    :try_start_2
    invoke-interface {v5, v7}, Landroid/os/IUserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v6

    .line 245
    .local v6, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    .line 246
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v0, :cond_0

    .line 247
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 248
    .local v4, "ui":Landroid/content/pm/UserInfo;
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isSpace()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 249
    iget v7, v4, Landroid/content/pm/UserInfo;->id:I

    if-eqz v7, :cond_2

    .line 250
    iget v7, v4, Landroid/content/pm/UserInfo;->id:I

    if-eq v7, v10, :cond_2

    .line 251
    iget v7, v4, Landroid/content/pm/UserInfo;->id:I

    const/4 v9, 0x0

    invoke-interface {v1, v7, v9}, Landroid/app/IActivityManager;->isUserRunning(II)Z

    move-result v7

    .line 248
    if-eqz v7, :cond_2

    .line 253
    iget v7, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v7}, Lcom/android/server/securespaces/SpaceEncryptionService;->doEcryptfsMountRemovableLocked(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 246
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 258
    .end local v0    # "N":I
    .end local v3    # "i":I
    .end local v4    # "ui":Landroid/content/pm/UserInfo;
    .end local v6    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catch_0
    move-exception v2

    .line 259
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string/jumbo v7, "SpaceEncryptionService"

    const-string/jumbo v9, "call to getUsers() failed"

    invoke-static {v7, v9, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 231
    .end local v1    # "am":Landroid/app/IActivityManager;
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v5    # "um":Landroid/os/IUserManager;
    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7

    .line 262
    .restart local v1    # "am":Landroid/app/IActivityManager;
    .restart local v5    # "um":Landroid/os/IUserManager;
    :cond_3
    :try_start_4
    const-string/jumbo v7, "SpaceEncryptionService"

    const-string/jumbo v9, "unable to contact UserManagerService.  it is running?"

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 265
    .end local v1    # "am":Landroid/app/IActivityManager;
    .end local v5    # "um":Landroid/os/IUserManager;
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/server/securespaces/SpaceEncryptionService;->doEcryptfsMountRemovableLocked(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public ecryptfsOverwrite(I)I
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 870
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 872
    .local v0, "callingUid":I
    const-string/jumbo v1, "SpaceEncryptionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "in ecryptfsOverwrite("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    if-eqz v0, :cond_0

    .line 874
    const-string/jumbo v1, "SpaceEncryptionService"

    const-string/jumbo v2, "Calling UID must be System to overwrite the Ecryptfs keys."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    const/4 v1, -0x1

    return v1

    .line 877
    :cond_0
    iget-object v1, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mEcryptfsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 878
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/securespaces/SpaceEncryptionService;->doEcryptfsOverwriteLocked(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    monitor-exit v1

    return v2

    .line 877
    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2
.end method

.method public ecryptfsUnmount(I)I
    .locals 6
    .param p1, "userId"    # I

    .prologue
    const/4 v5, 0x0

    .line 788
    const-string/jumbo v2, "SpaceEncryptionService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "in ecryptfsUnmount("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    iget-object v3, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mEcryptfsLock:Ljava/lang/Object;

    monitor-enter v3

    .line 793
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/securespaces/SpaceEncryptionService;->isUserEcryptfsMountedLocked(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    .line 794
    const/4 v2, 0x1

    monitor-exit v3

    return v2

    .line 798
    :cond_0
    const/4 v0, 0x0

    .line 799
    .local v0, "media_only":Z
    :try_start_1
    invoke-static {p1}, Landroid/service/securespaces/SecureSpacesService;->isUserWipeDataPending(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 800
    iget-object v2, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mEcryptfsUnmountPendingUsers:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    monitor-exit v3

    .line 802
    return v5

    .line 804
    :cond_1
    :try_start_2
    iget-object v2, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mEcryptfsUnmountPendingUsers:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 807
    const/4 v0, 0x1

    .line 809
    :cond_2
    const-string/jumbo v2, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v2}, Lcom/android/server/securespaces/SpaceEncryptionService;->validatePermission(Ljava/lang/String;)V

    .line 813
    invoke-direct {p0, p1, v0}, Lcom/android/server/securespaces/SpaceEncryptionService;->doEcryptfsUnmountLocked(IZ)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    .line 814
    .local v1, "rc":I
    if-nez v1, :cond_3

    if-eqz v0, :cond_4

    :cond_3
    :goto_0
    monitor-exit v3

    .line 818
    return v1

    .line 816
    :cond_4
    :try_start_3
    iget-object v2, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mEcryptfsMountedUsers:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 790
    .end local v0    # "media_only":Z
    .end local v1    # "rc":I
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public ecryptfsUnmountRemovable(I)V
    .locals 7
    .param p1, "userId"    # I

    .prologue
    .line 287
    iget-object v4, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mEcryptfsLock:Ljava/lang/Object;

    monitor-enter v4

    .line 288
    const/16 v3, 0x63

    if-ne p1, v3, :cond_1

    .line 289
    :try_start_0
    const-string/jumbo v3, "SpaceEncryptionService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ecryptfsUnmountRemovable() called with invalid userId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v4

    .line 286
    return-void

    .line 290
    :cond_1
    const/4 v3, -0x1

    if-ne p1, v3, :cond_2

    .line 294
    :try_start_1
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mEcryptfsMountedUsersRemovable:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 295
    .local v2, "userIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "ui$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 296
    .local v0, "ui":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/server/securespaces/SpaceEncryptionService;->doEcryptfsUnmountRemovableLocked(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 287
    .end local v0    # "ui":Ljava/lang/Integer;
    .end local v1    # "ui$iterator":Ljava/util/Iterator;
    .end local v2    # "userIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 299
    :cond_2
    :try_start_2
    invoke-direct {p0, p1}, Lcom/android/server/securespaces/SpaceEncryptionService;->doEcryptfsUnmountRemovableLocked(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public ecryptfsUpdate(IILjava/lang/String;)I
    .locals 7
    .param p1, "userId"    # I
    .param p2, "authId"    # I
    .param p3, "authData"    # Ljava/lang/String;

    .prologue
    .line 830
    const-string/jumbo v4, "SpaceEncryptionService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "in ecryptfsUpdate("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", authData)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    iget-object v5, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mEcryptfsLock:Ljava/lang/Object;

    monitor-enter v5

    .line 836
    :try_start_0
    const-string/jumbo v4, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v4}, Lcom/android/server/securespaces/SpaceEncryptionService;->validatePermission(Ljava/lang/String;)V

    .line 841
    invoke-direct {p0, p1}, Lcom/android/server/securespaces/SpaceEncryptionService;->isUserEcryptfsMountedLocked(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_0

    .line 842
    const/4 v4, -0x1

    monitor-exit v5

    return v4

    .line 845
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v3

    .line 846
    .local v3, "userManager":Lcom/android/server/pm/UserManagerService;
    invoke-virtual {v3, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoPartial(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 849
    .local v2, "ui":Landroid/content/pm/UserInfo;
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 851
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isHidden()Z

    move-result v4

    if-eqz v4, :cond_2

    if-nez p2, :cond_2

    .line 852
    const/16 v4, 0x20

    new-array v0, v4, [B

    .line 853
    .local v0, "randomAuth":[B
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    .line 854
    .local v1, "sr":Ljava/security/SecureRandom;
    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 855
    invoke-static {v0}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p3

    .line 861
    .end local v0    # "randomAuth":[B
    .end local v1    # "sr":Ljava/security/SecureRandom;
    :cond_1
    :goto_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/securespaces/SpaceEncryptionService;->doEcryptfsUpdateLocked(IILjava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    monitor-exit v5

    return v4

    .line 857
    :cond_2
    :try_start_2
    const-string/jumbo p3, "4178522d9b7d8c122e09d8c21e499939"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 835
    .end local v2    # "ui":Landroid/content/pm/UserInfo;
    .end local v3    # "userManager":Lcom/android/server/pm/UserManagerService;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public isAuthProtected(I)Z
    .locals 5
    .param p1, "userId"    # I

    .prologue
    .line 952
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 953
    .local v1, "lpu":Lcom/android/internal/widget/LockPatternUtils;
    invoke-virtual {v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled(I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled(I)Z

    move-result v0

    .line 955
    :goto_0
    const-string/jumbo v2, "SpaceEncryptionService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isAuthProtected: userId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    const-string/jumbo v2, "SpaceEncryptionService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "lpu.isLockPasswordEnabled() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled(I)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    const-string/jumbo v2, "SpaceEncryptionService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "lpu.isLockPatternEnabled() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled(I)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    return v0

    .line 953
    :cond_0
    const/4 v0, 0x1

    .local v0, "isProtected":Z
    goto :goto_0
.end method

.method public isDataDirectoryTmpfs()Z
    .locals 8

    .prologue
    .line 695
    const/4 v4, 0x0

    .line 697
    .local v4, "rc":Z
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 698
    .local v0, "dataDir":Ljava/lang/String;
    new-instance v3, Lcom/android/internal/util/ProcFileReader;

    new-instance v5, Ljava/io/FileInputStream;

    const-string/jumbo v6, "/proc/mounts"

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v5}, Lcom/android/internal/util/ProcFileReader;-><init>(Ljava/io/InputStream;)V

    .line 699
    .local v3, "pfr":Lcom/android/internal/util/ProcFileReader;
    :goto_0
    invoke-virtual {v3}, Lcom/android/internal/util/ProcFileReader;->hasMoreData()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 702
    invoke-virtual {v3}, Lcom/android/internal/util/ProcFileReader;->nextString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "tmpfs"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 703
    invoke-virtual {v3}, Lcom/android/internal/util/ProcFileReader;->nextString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v5

    .line 702
    if-eqz v5, :cond_1

    .line 704
    invoke-virtual {v3}, Lcom/android/internal/util/ProcFileReader;->nextString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "tmpfs"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v5

    .line 702
    if-eqz v5, :cond_1

    .line 705
    const/4 v4, 0x1

    .line 710
    :cond_0
    invoke-virtual {v3}, Lcom/android/internal/util/ProcFileReader;->close()V

    .line 716
    .end local v0    # "dataDir":Ljava/lang/String;
    .end local v3    # "pfr":Lcom/android/internal/util/ProcFileReader;
    :goto_1
    return v4

    .line 708
    .restart local v0    # "dataDir":Ljava/lang/String;
    .restart local v3    # "pfr":Lcom/android/internal/util/ProcFileReader;
    :cond_1
    invoke-virtual {v3}, Lcom/android/internal/util/ProcFileReader;->finishLine()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 711
    .end local v0    # "dataDir":Ljava/lang/String;
    .end local v3    # "pfr":Lcom/android/internal/util/ProcFileReader;
    :catch_0
    move-exception v1

    .line 712
    .local v1, "e":Ljava/io/FileNotFoundException;
    const-string/jumbo v5, "SpaceEncryptionService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "file not found: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 713
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v2

    .line 714
    .local v2, "e":Ljava/io/IOException;
    const-string/jumbo v5, "SpaceEncryptionService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "io exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public needAirlockUser(I)Z
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 964
    const/4 v0, 0x0

    .line 965
    .local v0, "needAirLockUser":Z
    iget-object v3, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mEcryptfsLock:Ljava/lang/Object;

    monitor-enter v3

    .line 966
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/securespaces/SpaceEncryptionService;->needsEcryptfsMount(I)Z

    move-result v1

    .line 967
    .local v1, "needsEcryptfsMount":Z
    invoke-virtual {p0, p1}, Lcom/android/server/securespaces/SpaceEncryptionService;->isAuthProtected(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 968
    const/4 v0, 0x1

    :cond_0
    monitor-exit v3

    .line 970
    return v0

    .line 965
    .end local v1    # "needsEcryptfsMount":Z
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public needsEcryptfsMount(I)Z
    .locals 6
    .param p1, "userId"    # I

    .prologue
    const/4 v5, 0x0

    .line 888
    iget-object v3, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mEcryptfsLock:Ljava/lang/Object;

    monitor-enter v3

    .line 889
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/securespaces/SpaceEncryptionService;->isUserEcryptfsMountedLocked(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    monitor-exit v3

    .line 892
    return v5

    .line 895
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v1

    .line 896
    .local v1, "userManager":Lcom/android/server/pm/UserManagerService;
    invoke-virtual {v1, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoPartial(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 897
    .local v0, "ui":Landroid/content/pm/UserInfo;
    if-nez v0, :cond_1

    .line 898
    const-string/jumbo v2, "SpaceEncryptionService"

    const-string/jumbo v4, "needsEcryptfsMount - user does not exist for given user id."

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    .line 899
    return v5

    .line 901
    :cond_1
    if-eqz p1, :cond_2

    const/16 v2, 0x63

    if-ne p1, v2, :cond_3

    :cond_2
    monitor-exit v3

    .line 903
    return v5

    .line 906
    :cond_3
    :try_start_2
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isEncryptedSpace()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    monitor-exit v3

    return v2

    .line 888
    .end local v0    # "ui":Landroid/content/pm/UserInfo;
    .end local v1    # "userManager":Lcom/android/server/pm/UserManagerService;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public onWipeUserDataCompleted(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 1172
    iget-object v1, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mEcryptfsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1174
    :try_start_0
    iget-object v0, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mEcryptfsUnmountPendingUsers:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1175
    iget-object v0, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mEcryptfsUnmountPendingUsers:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1176
    invoke-direct {p0, p1}, Lcom/android/server/securespaces/SpaceEncryptionService;->doEcryptfsUnmountLocked(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 1177
    iget-object v0, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mEcryptfsMountedUsers:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1181
    :cond_0
    iget-object v0, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mEcryptfsUnmountRemovablePendingUsers:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1182
    iget-object v0, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mEcryptfsUnmountRemovablePendingUsers:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1183
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/securespaces/SpaceEncryptionService;->doEcryptfsUnmountRemovableLocked(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v1

    .line 1170
    return-void

    .line 1172
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public processEncryption(Landroid/content/pm/UserInfo;)Z
    .locals 7
    .param p1, "userInfo"    # Landroid/content/pm/UserInfo;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 923
    iget v1, p1, Landroid/content/pm/UserInfo;->id:I

    .line 924
    .local v1, "userId":I
    iget-object v3, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mEcryptfsLock:Ljava/lang/Object;

    monitor-enter v3

    .line 927
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/server/securespaces/SpaceEncryptionService;->needsEcryptfsMount(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 928
    const-string/jumbo v2, "SpaceEncryptionService"

    const-string/jumbo v4, "processEncryption no need to encrypt the user."

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    .line 929
    return v5

    .line 933
    :cond_0
    const/4 v2, 0x0

    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {p0, v1, v2, v4}, Lcom/android/server/securespaces/SpaceEncryptionService;->ecryptfsMount(IILjava/lang/String;)I

    move-result v0

    .line 934
    .local v0, "rc":I
    if-gez v0, :cond_1

    .line 935
    const-string/jumbo v2, "SpaceEncryptionService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "processEncryption ecryptfsMount failed with rc = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    .line 936
    return v6

    .line 942
    :cond_1
    :try_start_2
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isHidden()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 943
    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v2, v4}, Lcom/android/server/securespaces/SpaceEncryptionService;->ecryptfsUpdate(IILjava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    monitor-exit v3

    .line 945
    return v5

    .line 924
    .end local v0    # "rc":I
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public setAirlockWallpaperToUser(I)V
    .locals 8
    .param p1, "userIdOrig"    # I

    .prologue
    const/4 v7, -0x1

    const/16 v6, 0x63

    .line 1013
    if-ne p1, v6, :cond_0

    .line 1014
    const-string/jumbo v4, "SpaceEncryptionService"

    const-string/jumbo v5, "Invalid userid."

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    return-void

    .line 1020
    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v4

    const-string/jumbo v5, "wallpaper"

    invoke-direct {v2, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1021
    .local v2, "srcWallpaperFile":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    invoke-static {v6}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v4

    const-string/jumbo v5, "wallpaper"

    invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1023
    .local v0, "dstWallpaperFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1024
    invoke-static {v2, v0}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1025
    const-string/jumbo v4, "SpaceEncryptionService"

    const-string/jumbo v5, "Copy of wallpaper file failed."

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    :cond_1
    :goto_0
    const/16 v4, 0x1c0

    invoke-static {v0, v4, v7, v7}, Landroid/os/FileUtils;->setPermissions(Ljava/io/File;III)I

    move-result v4

    if-eqz v4, :cond_2

    .line 1032
    const-string/jumbo v4, "SpaceEncryptionService"

    const-string/jumbo v5, "Set permissions of wallpaper file failed."

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    :cond_2
    new-instance v3, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v4

    const-string/jumbo v5, "wallpaper_info.xml"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1041
    .local v3, "srcWallpaperInfoFile":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-static {v6}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v4

    const-string/jumbo v5, "wallpaper_info.xml"

    invoke-direct {v1, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1042
    .local v1, "dstWallpaperInfoFile":Ljava/io/File;
    invoke-static {v3, v1}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1043
    const-string/jumbo v4, "SpaceEncryptionService"

    const-string/jumbo v5, "Copy of wallpaper info file failed."

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1012
    :cond_3
    return-void

    .line 1028
    .end local v1    # "dstWallpaperInfoFile":Ljava/io/File;
    .end local v3    # "srcWallpaperInfoFile":Ljava/io/File;
    :cond_4
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method public setOpAddExcludeFromWipe(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 6
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1141
    const-string/jumbo v0, "SpaceEncryptionService"

    const-string/jumbo v1, "setOpAddExcludeFromWipe(%d, %s)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    aput-object p3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1142
    invoke-virtual {p0, p2}, Lcom/android/server/securespaces/SpaceEncryptionService;->needsEcryptfsMount(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1143
    iget-object v1, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mPackageManagerQueue:Lcom/android/server/securespaces/PackageManagerQueue;

    monitor-enter v1

    .line 1144
    :try_start_0
    iget-object v0, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mPackageManagerQueue:Lcom/android/server/securespaces/PackageManagerQueue;

    const/4 v2, 0x7

    invoke-virtual {v0, v2, p1, p3, p2}, Lcom/android/server/securespaces/PackageManagerQueue;->setOp(ILjava/lang/String;Ljava/lang/String;I)V

    .line 1145
    iget-object v0, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mPackageManagerQueue:Lcom/android/server/securespaces/PackageManagerQueue;

    invoke-virtual {v0}, Lcom/android/server/securespaces/PackageManagerQueue;->writeOp()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 1147
    return v5

    .line 1143
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1149
    :cond_0
    return v4
.end method

.method public setOpClearUserData(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 3
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1128
    invoke-virtual {p0, p2}, Lcom/android/server/securespaces/SpaceEncryptionService;->needsEcryptfsMount(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1129
    iget-object v1, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mPackageManagerQueue:Lcom/android/server/securespaces/PackageManagerQueue;

    monitor-enter v1

    .line 1130
    :try_start_0
    iget-object v0, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mPackageManagerQueue:Lcom/android/server/securespaces/PackageManagerQueue;

    const/4 v2, 0x6

    invoke-virtual {v0, v2, p1, p3, p2}, Lcom/android/server/securespaces/PackageManagerQueue;->setOp(ILjava/lang/String;Ljava/lang/String;I)V

    .line 1131
    iget-object v0, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mPackageManagerQueue:Lcom/android/server/securespaces/PackageManagerQueue;

    invoke-virtual {v0}, Lcom/android/server/securespaces/PackageManagerQueue;->writeOp()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 1133
    const/4 v0, 0x1

    return v0

    .line 1129
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1135
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setOpCreateUserConfig(I)Z
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 1116
    invoke-virtual {p0, p1}, Lcom/android/server/securespaces/SpaceEncryptionService;->needsEcryptfsMount(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1117
    iget-object v1, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mPackageManagerQueue:Lcom/android/server/securespaces/PackageManagerQueue;

    monitor-enter v1

    .line 1118
    :try_start_0
    iget-object v0, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mPackageManagerQueue:Lcom/android/server/securespaces/PackageManagerQueue;

    const/4 v2, 0x5

    invoke-virtual {v0, v2, p1}, Lcom/android/server/securespaces/PackageManagerQueue;->setOp(II)V

    .line 1119
    iget-object v0, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mPackageManagerQueue:Lcom/android/server/securespaces/PackageManagerQueue;

    invoke-virtual {v0}, Lcom/android/server/securespaces/PackageManagerQueue;->writeOp()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 1121
    const/4 v0, 0x1

    return v0

    .line 1117
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1123
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setOpCreateUserData(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Z
    .locals 8
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "uid"    # I
    .param p5, "seinfo"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1056
    invoke-virtual {p0, p2}, Lcom/android/server/securespaces/SpaceEncryptionService;->needsEcryptfsMount(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1057
    iget-object v7, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mPackageManagerQueue:Lcom/android/server/securespaces/PackageManagerQueue;

    monitor-enter v7

    .line 1058
    :try_start_0
    iget-object v0, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mPackageManagerQueue:Lcom/android/server/securespaces/PackageManagerQueue;

    const/4 v1, 0x0

    move-object v2, p1

    move-object v3, p3

    move v4, p2

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/securespaces/PackageManagerQueue;->setOp(ILjava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    .line 1059
    iget-object v0, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mPackageManagerQueue:Lcom/android/server/securespaces/PackageManagerQueue;

    invoke-virtual {v0}, Lcom/android/server/securespaces/PackageManagerQueue;->writeOp()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v7

    .line 1061
    const/4 v0, 0x1

    return v0

    .line 1057
    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0

    .line 1063
    :cond_0
    return v1
.end method

.method public setOpDeleteCacheFiles(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 3
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1092
    invoke-virtual {p0, p2}, Lcom/android/server/securespaces/SpaceEncryptionService;->needsEcryptfsMount(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1093
    iget-object v1, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mPackageManagerQueue:Lcom/android/server/securespaces/PackageManagerQueue;

    monitor-enter v1

    .line 1094
    :try_start_0
    iget-object v0, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mPackageManagerQueue:Lcom/android/server/securespaces/PackageManagerQueue;

    const/4 v2, 0x4

    invoke-virtual {v0, v2, p1, p3, p2}, Lcom/android/server/securespaces/PackageManagerQueue;->setOp(ILjava/lang/String;Ljava/lang/String;I)V

    .line 1095
    iget-object v0, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mPackageManagerQueue:Lcom/android/server/securespaces/PackageManagerQueue;

    invoke-virtual {v0}, Lcom/android/server/securespaces/PackageManagerQueue;->writeOp()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 1097
    const/4 v0, 0x1

    return v0

    .line 1093
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1099
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setOpDeleteCodeCacheFiles(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 3
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1104
    invoke-virtual {p0, p2}, Lcom/android/server/securespaces/SpaceEncryptionService;->needsEcryptfsMount(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1105
    iget-object v1, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mPackageManagerQueue:Lcom/android/server/securespaces/PackageManagerQueue;

    monitor-enter v1

    .line 1106
    :try_start_0
    iget-object v0, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mPackageManagerQueue:Lcom/android/server/securespaces/PackageManagerQueue;

    const/4 v2, 0x3

    invoke-virtual {v0, v2, p1, p3, p2}, Lcom/android/server/securespaces/PackageManagerQueue;->setOp(ILjava/lang/String;Ljava/lang/String;I)V

    .line 1107
    iget-object v0, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mPackageManagerQueue:Lcom/android/server/securespaces/PackageManagerQueue;

    invoke-virtual {v0}, Lcom/android/server/securespaces/PackageManagerQueue;->writeOp()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 1109
    const/4 v0, 0x1

    return v0

    .line 1105
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1111
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setOpDestroyAppData(Ljava/lang/String;Ljava/lang/String;IIJ)Z
    .locals 9
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "flags"    # I
    .param p5, "ceDataInode"    # J

    .prologue
    .line 1154
    if-nez p1, :cond_0

    .line 1155
    const-string/jumbo p1, ""

    .line 1158
    :cond_0
    const-string/jumbo v0, "SpaceEncryptionService"

    const-string/jumbo v1, "setOpDestroyAppData(%d, %s)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1159
    invoke-virtual {p0, p3}, Lcom/android/server/securespaces/SpaceEncryptionService;->needsEcryptfsMount(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1160
    iget-object v8, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mPackageManagerQueue:Lcom/android/server/securespaces/PackageManagerQueue;

    monitor-enter v8

    .line 1161
    :try_start_0
    iget-object v0, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mPackageManagerQueue:Lcom/android/server/securespaces/PackageManagerQueue;

    const/16 v1, 0x9

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-wide v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/securespaces/PackageManagerQueue;->setOp(ILjava/lang/String;Ljava/lang/String;IIJ)V

    .line 1162
    iget-object v0, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mPackageManagerQueue:Lcom/android/server/securespaces/PackageManagerQueue;

    invoke-virtual {v0}, Lcom/android/server/securespaces/PackageManagerQueue;->writeOp()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v8

    .line 1164
    const/4 v0, 0x1

    return v0

    .line 1160
    :catchall_0
    move-exception v0

    monitor-exit v8

    throw v0

    .line 1166
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public setOpLinkNativeLibraryDir(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "dataPath"    # Ljava/lang/String;
    .param p4, "newNativePath32"    # Ljava/lang/String;

    .prologue
    .line 1080
    invoke-virtual {p0, p2}, Lcom/android/server/securespaces/SpaceEncryptionService;->needsEcryptfsMount(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1081
    iget-object v6, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mPackageManagerQueue:Lcom/android/server/securespaces/PackageManagerQueue;

    monitor-enter v6

    .line 1082
    :try_start_0
    iget-object v0, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mPackageManagerQueue:Lcom/android/server/securespaces/PackageManagerQueue;

    const/4 v1, 0x2

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/securespaces/PackageManagerQueue;->setOp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1083
    iget-object v0, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mPackageManagerQueue:Lcom/android/server/securespaces/PackageManagerQueue;

    invoke-virtual {v0}, Lcom/android/server/securespaces/PackageManagerQueue;->writeOp()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v6

    .line 1085
    const/4 v0, 0x1

    return v0

    .line 1081
    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0

    .line 1087
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setOpRemove(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 4
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 1068
    invoke-virtual {p0, p2}, Lcom/android/server/securespaces/SpaceEncryptionService;->needsEcryptfsMount(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1069
    iget-object v1, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mPackageManagerQueue:Lcom/android/server/securespaces/PackageManagerQueue;

    monitor-enter v1

    .line 1070
    :try_start_0
    iget-object v0, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mPackageManagerQueue:Lcom/android/server/securespaces/PackageManagerQueue;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, p1, p3, p2}, Lcom/android/server/securespaces/PackageManagerQueue;->setOp(ILjava/lang/String;Ljava/lang/String;I)V

    .line 1071
    iget-object v0, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mPackageManagerQueue:Lcom/android/server/securespaces/PackageManagerQueue;

    invoke-virtual {v0}, Lcom/android/server/securespaces/PackageManagerQueue;->writeOp()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 1073
    return v3

    .line 1069
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1075
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public switchUser(I)Z
    .locals 10
    .param p1, "userId"    # I

    .prologue
    .line 977
    const-string/jumbo v7, "android.permission.MANAGE_USERS"

    invoke-direct {p0, v7}, Lcom/android/server/securespaces/SpaceEncryptionService;->validatePermission(Ljava/lang/String;)V

    .line 978
    const/4 v4, 0x0

    .line 980
    .local v4, "rc":Z
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 981
    .local v0, "am":Landroid/app/IActivityManager;
    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->switchUser(I)Z

    move-result v4

    .line 982
    .local v4, "rc":Z
    if-eqz v4, :cond_2

    .line 983
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v6

    .line 985
    .local v6, "wm":Landroid/view/IWindowManager;
    const/4 v2, 0x0

    .line 991
    .local v2, "iters":I
    :cond_0
    const-string/jumbo v7, "SpaceEncryptionService"

    const-string/jumbo v8, "waiting for current user to be updated..."

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    const-wide/16 v8, 0xfa

    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V

    .line 993
    add-int/lit8 v2, v2, 0x1

    .line 994
    invoke-interface {v0}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v7

    iget v7, v7, Landroid/content/pm/UserInfo;->id:I

    if-eq v7, p1, :cond_1

    const/16 v7, 0x8

    if-lt v2, v7, :cond_0

    .line 995
    :cond_1
    iget-object v7, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mKeyguard:Lcom/android/server/securespaces/Keyguard;

    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Lcom/android/server/securespaces/Keyguard;->keyguardDone(ZZ)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1008
    .end local v0    # "am":Landroid/app/IActivityManager;
    .end local v2    # "iters":I
    .end local v4    # "rc":Z
    .end local v6    # "wm":Landroid/view/IWindowManager;
    :cond_2
    :goto_0
    return v4

    .line 1003
    :catch_0
    move-exception v1

    .line 1004
    .local v1, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v7, "SpaceEncryptionService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "interrupted while waiting for user "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 1006
    const/4 v4, 0x0

    .local v4, "rc":Z
    goto :goto_0

    .line 1000
    .end local v1    # "e":Ljava/lang/InterruptedException;
    .end local v4    # "rc":Z
    :catch_1
    move-exception v5

    .line 1001
    .local v5, "rex":Landroid/os/RemoteException;
    const-string/jumbo v7, "SpaceEncryptionService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "binder call threw a remote exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    const/4 v4, 0x0

    .restart local v4    # "rc":Z
    goto :goto_0

    .line 997
    .end local v4    # "rc":Z
    .end local v5    # "rex":Landroid/os/RemoteException;
    :catch_2
    move-exception v3

    .line 998
    .local v3, "npe":Ljava/lang/NullPointerException;
    const-string/jumbo v7, "SpaceEncryptionService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "npe encountered in switchUser("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    const/4 v4, 0x0

    .restart local v4    # "rc":Z
    goto :goto_0
.end method

.method public systemReady()V
    .locals 0

    .prologue
    .line 218
    return-void
.end method

.method public wipeRemovableUserDir(I)V
    .locals 5
    .param p1, "userId"    # I

    .prologue
    .line 331
    iget-object v2, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mEcryptfsLock:Ljava/lang/Object;

    monitor-enter v2

    .line 332
    const/16 v1, 0x63

    if-eq p1, v1, :cond_0

    if-nez p1, :cond_1

    .line 333
    :cond_0
    :try_start_0
    const-string/jumbo v1, "SpaceEncryptionService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "wipeRemovableUserDir() called with invalid userId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 334
    return-void

    .line 332
    :cond_1
    if-ltz p1, :cond_0

    .line 336
    :try_start_1
    invoke-static {p1}, Lcom/android/server/securespaces/SpaceEncryptionService;->jniWipeRemovableUserDir(I)I

    move-result v0

    .line 337
    .local v0, "rc":I
    if-eqz v0, :cond_2

    .line 338
    const-string/jumbo v1, "SpaceEncryptionService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "call to jniWipeRemovableUserDir() failed for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 339
    const-string/jumbo v4, " with rc="

    .line 338
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    monitor-exit v2

    .line 330
    return-void

    .line 331
    .end local v0    # "rc":I
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
