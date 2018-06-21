.class public Lcom/android/server/securespaces/PackageManagerQueue;
.super Ljava/lang/Object;
.source "PackageManagerQueue.java"


# static fields
.field private static final DIRECTORY:Ljava/lang/String; = ".Spaces"

.field private static final FILE_NAME:Ljava/lang/String; = "pmops"

.field public static final PMO_ADDEXCLUDEWIPE:I = 0x7

.field public static final PMO_CLEARUSERDATA:I = 0x6

.field public static final PMO_CREATEUSERCONFIG:I = 0x5

.field public static final PMO_CREATEUSERDATA:I = 0x0

.field public static final PMO_DELETECACHEDIRS:I = 0x4

.field public static final PMO_DELETECODECACHEDIRS:I = 0x3

.field public static final PMO_DESTORYAPPDATA:I = 0x9

.field public static final PMO_LINKNATIVELIBRARYDIR:I = 0x2

.field public static final PMO_REMOVE:I = 0x1

.field private static final SALT_LENGTH:I = 0x10

.field static final TAG:Ljava/lang/String; = "PackageManagerQueue"

.field private static final VERSION:I = 0x2

.field private static final pmqLock:Ljava/lang/Object;

.field private static sInstance:Lcom/android/server/securespaces/PackageManagerQueue;


# instance fields
.field private ceDataInode:J

.field private flag:I

.field private nativeLibraryDir:Ljava/lang/String;

.field private opCode:I

.field private packageName:Ljava/lang/String;

.field private seinfo:Ljava/lang/String;

.field private uid:I

.field private user:I

.field private uuid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/securespaces/PackageManagerQueue;->sInstance:Lcom/android/server/securespaces/PackageManagerQueue;

    .line 44
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/securespaces/PackageManagerQueue;->pmqLock:Ljava/lang/Object;

    .line 38
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput v1, p0, Lcom/android/server/securespaces/PackageManagerQueue;->opCode:I

    .line 59
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/server/securespaces/PackageManagerQueue;->packageName:Ljava/lang/String;

    .line 60
    iput v1, p0, Lcom/android/server/securespaces/PackageManagerQueue;->user:I

    .line 61
    iput v1, p0, Lcom/android/server/securespaces/PackageManagerQueue;->uid:I

    .line 62
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/server/securespaces/PackageManagerQueue;->seinfo:Ljava/lang/String;

    .line 63
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/server/securespaces/PackageManagerQueue;->nativeLibraryDir:Ljava/lang/String;

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/securespaces/PackageManagerQueue;->uuid:Ljava/lang/String;

    .line 65
    iput v1, p0, Lcom/android/server/securespaces/PackageManagerQueue;->flag:I

    .line 66
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/securespaces/PackageManagerQueue;->ceDataInode:J

    .line 75
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/server/securespaces/PackageManagerQueue;
    .locals 2

    .prologue
    const-class v1, Lcom/android/server/securespaces/PackageManagerQueue;

    monitor-enter v1

    .line 80
    :try_start_0
    sget-object v0, Lcom/android/server/securespaces/PackageManagerQueue;->sInstance:Lcom/android/server/securespaces/PackageManagerQueue;

    if-nez v0, :cond_0

    .line 81
    new-instance v0, Lcom/android/server/securespaces/PackageManagerQueue;

    invoke-direct {v0}, Lcom/android/server/securespaces/PackageManagerQueue;-><init>()V

    sput-object v0, Lcom/android/server/securespaces/PackageManagerQueue;->sInstance:Lcom/android/server/securespaces/PackageManagerQueue;

    .line 82
    :cond_0
    sget-object v0, Lcom/android/server/securespaces/PackageManagerQueue;->sInstance:Lcom/android/server/securespaces/PackageManagerQueue;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public processQueue(Lcom/android/server/pm/Installer;Ljava/lang/Object;I)V
    .locals 24
    .param p1, "installer"    # Lcom/android/server/pm/Installer;
    .param p2, "installerLock"    # Ljava/lang/Object;
    .param p3, "userId"    # I

    .prologue
    .line 263
    new-instance v20, Ljava/io/File;

    invoke-static/range {p3 .. p3}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v3

    const-string/jumbo v4, ".Spaces"

    move-object/from16 v0, v20

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 264
    .local v20, "userQueueDir":Ljava/io/File;
    new-instance v21, Ljava/io/File;

    const-string/jumbo v3, "pmops"

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 266
    .local v21, "userQueueFile":Ljava/io/File;
    const/16 v16, 0x0

    .line 267
    .local v16, "fis":Ljava/io/FileInputStream;
    const/4 v2, 0x0

    .line 268
    .local v2, "bis":Ljava/io/BufferedInputStream;
    const/4 v11, 0x0

    .line 270
    .local v11, "dis":Ljava/io/DataInputStream;
    sget-object v23, Lcom/android/server/securespaces/PackageManagerQueue;->pmqLock:Ljava/lang/Object;

    monitor-enter v23

    .line 272
    :try_start_0
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_10
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v23

    .line 274
    return-void

    .line 278
    :cond_0
    :try_start_1
    new-instance v17, Ljava/io/FileInputStream;

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_10
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 279
    .end local v16    # "fis":Ljava/io/FileInputStream;
    .local v17, "fis":Ljava/io/FileInputStream;
    :try_start_2
    new-instance v10, Ljava/io/BufferedInputStream;

    const/16 v3, 0x800

    move-object/from16 v0, v17

    invoke-direct {v10, v0, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_11
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    .line 280
    .local v10, "bis":Ljava/io/BufferedInputStream;
    :try_start_3
    new-instance v12, Ljava/io/DataInputStream;

    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    invoke-direct {v12, v10}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_c
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_f
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_12
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    .line 284
    .end local v11    # "dis":Ljava/io/DataInputStream;
    .local v12, "dis":Ljava/io/DataInputStream;
    const/16 v3, 0x10

    :try_start_4
    new-array v0, v3, [B

    move-object/from16 v18, v0

    .line 285
    .local v18, "headerSalt":[B
    const/16 v3, 0x10

    new-array v0, v3, [B

    move-object/from16 v19, v0

    .line 288
    .local v19, "recordSalt":[B
    invoke-virtual {v12}, Ljava/io/DataInputStream;->readInt()I

    move-result v22

    .line 289
    .local v22, "version":I
    const/4 v3, 0x2

    move/from16 v0, v22

    if-eq v0, v3, :cond_2

    .line 290
    const-string/jumbo v3, "PackageManagerQueue"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Error processing PackageManager op-file for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ". Unrecognized version."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 384
    if-eqz v12, :cond_1

    :try_start_5
    invoke-virtual {v12}, Ljava/io/DataInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_1
    :goto_0
    monitor-exit v23

    .line 291
    return-void

    .line 385
    :catch_0
    move-exception v14

    .line 387
    .local v14, "e":Ljava/io/IOException;
    :try_start_6
    invoke-virtual {v14}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 270
    .end local v14    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    move-object v11, v12

    .end local v12    # "dis":Ljava/io/DataInputStream;
    .local v11, "dis":Ljava/io/DataInputStream;
    move-object v2, v10

    .end local v10    # "bis":Ljava/io/BufferedInputStream;
    .local v2, "bis":Ljava/io/BufferedInputStream;
    move-object/from16 v16, v17

    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .end local v11    # "dis":Ljava/io/DataInputStream;
    .end local v17    # "fis":Ljava/io/FileInputStream;
    .end local v18    # "headerSalt":[B
    .end local v19    # "recordSalt":[B
    .end local v22    # "version":I
    :goto_1
    monitor-exit v23

    throw v3

    .line 293
    .restart local v10    # "bis":Ljava/io/BufferedInputStream;
    .restart local v12    # "dis":Ljava/io/DataInputStream;
    .restart local v17    # "fis":Ljava/io/FileInputStream;
    .restart local v18    # "headerSalt":[B
    .restart local v19    # "recordSalt":[B
    .restart local v22    # "version":I
    :cond_2
    :try_start_7
    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/io/DataInputStream;->readFully([B)V

    .line 296
    :goto_2
    invoke-virtual {v10}, Ljava/io/BufferedInputStream;->available()I

    move-result v3

    if-lez v3, :cond_8

    .line 298
    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/io/DataInputStream;->readFully([B)V

    .line 299
    invoke-virtual {v12}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/securespaces/PackageManagerQueue;->opCode:I

    .line 301
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/securespaces/PackageManagerQueue;->opCode:I

    packed-switch v3, :pswitch_data_0

    .line 346
    :pswitch_0
    const-string/jumbo v3, "PackageManagerQueue"

    const-string/jumbo v4, "Unknown opcode in queueOperation."

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_2

    .line 373
    .end local v18    # "headerSalt":[B
    .end local v19    # "recordSalt":[B
    .end local v22    # "version":I
    :catch_1
    move-exception v13

    .local v13, "e":Ljava/io/FileNotFoundException;
    move-object v11, v12

    .end local v12    # "dis":Ljava/io/DataInputStream;
    .restart local v11    # "dis":Ljava/io/DataInputStream;
    move-object v2, v10

    .end local v10    # "bis":Ljava/io/BufferedInputStream;
    .restart local v2    # "bis":Ljava/io/BufferedInputStream;
    move-object/from16 v16, v17

    .line 374
    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .end local v11    # "dis":Ljava/io/DataInputStream;
    .end local v17    # "fis":Ljava/io/FileInputStream;
    :goto_3
    :try_start_8
    const-string/jumbo v3, "PackageManagerQueue"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "FileNotFoundException caught in processQueue(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    invoke-virtual {v13}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 384
    if-eqz v11, :cond_3

    :try_start_9
    invoke-virtual {v11}, Ljava/io/DataInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .end local v13    # "e":Ljava/io/FileNotFoundException;
    :cond_3
    :goto_4
    monitor-exit v23

    .line 393
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->delete()Z

    .line 260
    return-void

    .line 303
    .restart local v10    # "bis":Ljava/io/BufferedInputStream;
    .restart local v12    # "dis":Ljava/io/DataInputStream;
    .restart local v17    # "fis":Ljava/io/FileInputStream;
    .restart local v18    # "headerSalt":[B
    .restart local v19    # "recordSalt":[B
    .restart local v22    # "version":I
    :pswitch_1
    :try_start_a
    invoke-virtual {v12}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/securespaces/PackageManagerQueue;->uuid:Ljava/lang/String;

    .line 304
    invoke-virtual {v12}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/securespaces/PackageManagerQueue;->packageName:Ljava/lang/String;

    .line 305
    invoke-virtual {v12}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/securespaces/PackageManagerQueue;->user:I

    .line 306
    invoke-virtual {v12}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/securespaces/PackageManagerQueue;->uid:I

    .line 307
    invoke-virtual {v12}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/securespaces/PackageManagerQueue;->seinfo:Ljava/lang/String;

    .line 350
    :goto_5
    if-nez p1, :cond_6

    .line 351
    const-string/jumbo v3, "PackageManagerQueue"

    const-string/jumbo v4, "Unable to execute queued PackageManager operation.  reference to Installer is null."

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 384
    if-eqz v12, :cond_4

    :try_start_b
    invoke-virtual {v12}, Ljava/io/DataInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :cond_4
    :goto_6
    monitor-exit v23

    .line 352
    return-void

    .line 310
    :pswitch_2
    :try_start_c
    invoke-virtual {v12}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/securespaces/PackageManagerQueue;->uuid:Ljava/lang/String;

    .line 311
    invoke-virtual {v12}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/securespaces/PackageManagerQueue;->packageName:Ljava/lang/String;

    .line 312
    invoke-virtual {v12}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/securespaces/PackageManagerQueue;->user:I
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    goto :goto_5

    .line 376
    .end local v18    # "headerSalt":[B
    .end local v19    # "recordSalt":[B
    .end local v22    # "version":I
    :catch_2
    move-exception v14

    .restart local v14    # "e":Ljava/io/IOException;
    move-object v11, v12

    .end local v12    # "dis":Ljava/io/DataInputStream;
    .restart local v11    # "dis":Ljava/io/DataInputStream;
    move-object v2, v10

    .end local v10    # "bis":Ljava/io/BufferedInputStream;
    .restart local v2    # "bis":Ljava/io/BufferedInputStream;
    move-object/from16 v16, v17

    .line 377
    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .end local v11    # "dis":Ljava/io/DataInputStream;
    .end local v17    # "fis":Ljava/io/FileInputStream;
    :goto_7
    :try_start_d
    const-string/jumbo v3, "PackageManagerQueue"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "IOException caught in processQueue(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    invoke-virtual {v14}, Ljava/io/IOException;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 384
    if-eqz v11, :cond_3

    :try_start_e
    invoke-virtual {v11}, Ljava/io/DataInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_3
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    goto :goto_4

    .line 385
    :catch_3
    move-exception v14

    .line 387
    :try_start_f
    invoke-virtual {v14}, Ljava/io/IOException;->printStackTrace()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    goto/16 :goto_4

    .line 270
    .end local v14    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v3

    goto/16 :goto_1

    .line 315
    .restart local v10    # "bis":Ljava/io/BufferedInputStream;
    .restart local v12    # "dis":Ljava/io/DataInputStream;
    .restart local v17    # "fis":Ljava/io/FileInputStream;
    .restart local v18    # "headerSalt":[B
    .restart local v19    # "recordSalt":[B
    .restart local v22    # "version":I
    :pswitch_3
    :try_start_10
    invoke-virtual {v12}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/securespaces/PackageManagerQueue;->uuid:Ljava/lang/String;

    .line 316
    invoke-virtual {v12}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/securespaces/PackageManagerQueue;->packageName:Ljava/lang/String;

    .line 317
    invoke-virtual {v12}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/securespaces/PackageManagerQueue;->nativeLibraryDir:Ljava/lang/String;

    .line 318
    invoke-virtual {v12}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/securespaces/PackageManagerQueue;->user:I
    :try_end_10
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_10} :catch_1
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_2
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_4
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    goto :goto_5

    .line 379
    .end local v18    # "headerSalt":[B
    .end local v19    # "recordSalt":[B
    .end local v22    # "version":I
    :catch_4
    move-exception v15

    .local v15, "e":Ljava/lang/Exception;
    move-object v11, v12

    .end local v12    # "dis":Ljava/io/DataInputStream;
    .restart local v11    # "dis":Ljava/io/DataInputStream;
    move-object v2, v10

    .end local v10    # "bis":Ljava/io/BufferedInputStream;
    .restart local v2    # "bis":Ljava/io/BufferedInputStream;
    move-object/from16 v16, v17

    .line 380
    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .end local v11    # "dis":Ljava/io/DataInputStream;
    .end local v17    # "fis":Ljava/io/FileInputStream;
    :goto_8
    :try_start_11
    const-string/jumbo v3, "PackageManagerQueue"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception caught in processQueue(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    .line 384
    if-eqz v11, :cond_3

    :try_start_12
    invoke-virtual {v11}, Ljava/io/DataInputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_5
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    goto/16 :goto_4

    .line 385
    :catch_5
    move-exception v14

    .line 387
    .restart local v14    # "e":Ljava/io/IOException;
    :try_start_13
    invoke-virtual {v14}, Ljava/io/IOException;->printStackTrace()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    goto/16 :goto_4

    .line 321
    .end local v14    # "e":Ljava/io/IOException;
    .end local v15    # "e":Ljava/lang/Exception;
    .restart local v10    # "bis":Ljava/io/BufferedInputStream;
    .restart local v12    # "dis":Ljava/io/DataInputStream;
    .restart local v17    # "fis":Ljava/io/FileInputStream;
    .restart local v18    # "headerSalt":[B
    .restart local v19    # "recordSalt":[B
    .restart local v22    # "version":I
    :pswitch_4
    :try_start_14
    invoke-virtual {v12}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/securespaces/PackageManagerQueue;->uuid:Ljava/lang/String;

    .line 322
    invoke-virtual {v12}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/securespaces/PackageManagerQueue;->packageName:Ljava/lang/String;

    .line 323
    invoke-virtual {v12}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/securespaces/PackageManagerQueue;->user:I
    :try_end_14
    .catch Ljava/io/FileNotFoundException; {:try_start_14 .. :try_end_14} :catch_1
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_2
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_4
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    goto/16 :goto_5

    .line 382
    .end local v18    # "headerSalt":[B
    .end local v19    # "recordSalt":[B
    .end local v22    # "version":I
    :catchall_2
    move-exception v3

    move-object v11, v12

    .end local v12    # "dis":Ljava/io/DataInputStream;
    .restart local v11    # "dis":Ljava/io/DataInputStream;
    move-object v2, v10

    .end local v10    # "bis":Ljava/io/BufferedInputStream;
    .restart local v2    # "bis":Ljava/io/BufferedInputStream;
    move-object/from16 v16, v17

    .line 384
    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .end local v11    # "dis":Ljava/io/DataInputStream;
    .end local v17    # "fis":Ljava/io/FileInputStream;
    :goto_9
    if-eqz v11, :cond_5

    :try_start_15
    invoke-virtual {v11}, Ljava/io/DataInputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_9
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    .line 382
    :cond_5
    :goto_a
    :try_start_16
    throw v3
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_1

    .line 326
    .restart local v10    # "bis":Ljava/io/BufferedInputStream;
    .restart local v12    # "dis":Ljava/io/DataInputStream;
    .restart local v17    # "fis":Ljava/io/FileInputStream;
    .restart local v18    # "headerSalt":[B
    .restart local v19    # "recordSalt":[B
    .restart local v22    # "version":I
    :pswitch_5
    :try_start_17
    invoke-virtual {v12}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/securespaces/PackageManagerQueue;->uuid:Ljava/lang/String;

    .line 327
    invoke-virtual {v12}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/securespaces/PackageManagerQueue;->packageName:Ljava/lang/String;

    .line 328
    invoke-virtual {v12}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/securespaces/PackageManagerQueue;->user:I

    goto/16 :goto_5

    .line 331
    :pswitch_6
    invoke-virtual {v12}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/securespaces/PackageManagerQueue;->user:I

    goto/16 :goto_5

    .line 334
    :pswitch_7
    invoke-virtual {v12}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/securespaces/PackageManagerQueue;->uuid:Ljava/lang/String;

    .line 335
    invoke-virtual {v12}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/securespaces/PackageManagerQueue;->packageName:Ljava/lang/String;

    .line 336
    invoke-virtual {v12}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/securespaces/PackageManagerQueue;->user:I

    goto/16 :goto_5

    .line 339
    :pswitch_8
    invoke-virtual {v12}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/securespaces/PackageManagerQueue;->uuid:Ljava/lang/String;

    .line 340
    invoke-virtual {v12}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/securespaces/PackageManagerQueue;->packageName:Ljava/lang/String;

    .line 341
    invoke-virtual {v12}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/securespaces/PackageManagerQueue;->user:I

    .line 342
    invoke-virtual {v12}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/securespaces/PackageManagerQueue;->flag:I

    .line 343
    invoke-virtual {v12}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/server/securespaces/PackageManagerQueue;->ceDataInode:J
    :try_end_17
    .catch Ljava/io/FileNotFoundException; {:try_start_17 .. :try_end_17} :catch_1
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_2
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_4
    .catchall {:try_start_17 .. :try_end_17} :catchall_2

    goto/16 :goto_5

    .line 385
    :catch_6
    move-exception v14

    .line 387
    .restart local v14    # "e":Ljava/io/IOException;
    :try_start_18
    invoke-virtual {v14}, Ljava/io/IOException;->printStackTrace()V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    goto/16 :goto_6

    .line 355
    .end local v14    # "e":Ljava/io/IOException;
    :cond_6
    :try_start_19
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/securespaces/PackageManagerQueue;->user:I

    move/from16 v0, p3

    if-eq v3, v0, :cond_7

    .line 356
    const-string/jumbo v3, "PackageManagerQueue"

    const-string/jumbo v4, "Invalid user id in PackagerManager queue."

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 360
    :cond_7
    monitor-enter p2
    :try_end_19
    .catch Ljava/io/FileNotFoundException; {:try_start_19 .. :try_end_19} :catch_1
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_2
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_4
    .catchall {:try_start_19 .. :try_end_19} :catchall_2

    .line 361
    :try_start_1a
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/securespaces/PackageManagerQueue;->opCode:I

    packed-switch v3, :pswitch_data_1

    .line 367
    const-string/jumbo v3, "PackageManagerQueue"

    const-string/jumbo v4, "Unknown opcode in queueOperation."

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_3

    :try_start_1b
    monitor-exit p2
    :try_end_1b
    .catch Ljava/io/FileNotFoundException; {:try_start_1b .. :try_end_1b} :catch_1
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_4
    .catchall {:try_start_1b .. :try_end_1b} :catchall_2

    goto/16 :goto_2

    .line 363
    :pswitch_9
    :try_start_1c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/securespaces/PackageManagerQueue;->uuid:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/securespaces/PackageManagerQueue;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/securespaces/PackageManagerQueue;->user:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/securespaces/PackageManagerQueue;->flag:I

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/server/securespaces/PackageManagerQueue;->ceDataInode:J

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/pm/Installer;->destroyAppData(Ljava/lang/String;Ljava/lang/String;IIJ)V

    .line 364
    const-string/jumbo v3, "PackageManagerQueue"

    const-string/jumbo v4, "destroyAppData"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_3

    :try_start_1d
    monitor-exit p2

    goto/16 :goto_2

    .line 360
    :catchall_3
    move-exception v3

    monitor-exit p2

    throw v3
    :try_end_1d
    .catch Ljava/io/FileNotFoundException; {:try_start_1d .. :try_end_1d} :catch_1
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_4
    .catchall {:try_start_1d .. :try_end_1d} :catchall_2

    .line 384
    :cond_8
    if-eqz v12, :cond_9

    :try_start_1e
    invoke-virtual {v12}, Ljava/io/DataInputStream;->close()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_7
    .catchall {:try_start_1e .. :try_end_1e} :catchall_0

    :cond_9
    :goto_b
    move-object v11, v12

    .end local v12    # "dis":Ljava/io/DataInputStream;
    .restart local v11    # "dis":Ljava/io/DataInputStream;
    move-object v2, v10

    .end local v10    # "bis":Ljava/io/BufferedInputStream;
    .restart local v2    # "bis":Ljava/io/BufferedInputStream;
    move-object/from16 v16, v17

    .end local v17    # "fis":Ljava/io/FileInputStream;
    .local v16, "fis":Ljava/io/FileInputStream;
    goto/16 :goto_4

    .line 385
    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .end local v11    # "dis":Ljava/io/DataInputStream;
    .end local v16    # "fis":Ljava/io/FileInputStream;
    .restart local v10    # "bis":Ljava/io/BufferedInputStream;
    .restart local v12    # "dis":Ljava/io/DataInputStream;
    .restart local v17    # "fis":Ljava/io/FileInputStream;
    :catch_7
    move-exception v14

    .line 387
    .restart local v14    # "e":Ljava/io/IOException;
    :try_start_1f
    invoke-virtual {v14}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_0

    goto :goto_b

    .line 385
    .end local v10    # "bis":Ljava/io/BufferedInputStream;
    .end local v12    # "dis":Ljava/io/DataInputStream;
    .end local v14    # "e":Ljava/io/IOException;
    .end local v17    # "fis":Ljava/io/FileInputStream;
    .end local v18    # "headerSalt":[B
    .end local v19    # "recordSalt":[B
    .end local v22    # "version":I
    .restart local v13    # "e":Ljava/io/FileNotFoundException;
    :catch_8
    move-exception v14

    .line 387
    .restart local v14    # "e":Ljava/io/IOException;
    :try_start_20
    invoke-virtual {v14}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_4

    .line 385
    .end local v13    # "e":Ljava/io/FileNotFoundException;
    .end local v14    # "e":Ljava/io/IOException;
    :catch_9
    move-exception v14

    .line 387
    .restart local v14    # "e":Ljava/io/IOException;
    invoke-virtual {v14}, Ljava/io/IOException;->printStackTrace()V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_1

    goto/16 :goto_a

    .line 382
    .end local v14    # "e":Ljava/io/IOException;
    :catchall_4
    move-exception v3

    goto/16 :goto_9

    .local v2, "bis":Ljava/io/BufferedInputStream;
    .local v11, "dis":Ljava/io/DataInputStream;
    .restart local v17    # "fis":Ljava/io/FileInputStream;
    :catchall_5
    move-exception v3

    move-object/from16 v16, v17

    .end local v17    # "fis":Ljava/io/FileInputStream;
    .restart local v16    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_9

    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .end local v16    # "fis":Ljava/io/FileInputStream;
    .restart local v10    # "bis":Ljava/io/BufferedInputStream;
    .restart local v17    # "fis":Ljava/io/FileInputStream;
    :catchall_6
    move-exception v3

    move-object v2, v10

    .end local v10    # "bis":Ljava/io/BufferedInputStream;
    .local v2, "bis":Ljava/io/BufferedInputStream;
    move-object/from16 v16, v17

    .end local v17    # "fis":Ljava/io/FileInputStream;
    .restart local v16    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_9

    .line 373
    .local v2, "bis":Ljava/io/BufferedInputStream;
    .local v16, "fis":Ljava/io/FileInputStream;
    :catch_a
    move-exception v13

    .restart local v13    # "e":Ljava/io/FileNotFoundException;
    goto/16 :goto_3

    .end local v13    # "e":Ljava/io/FileNotFoundException;
    .end local v16    # "fis":Ljava/io/FileInputStream;
    .restart local v17    # "fis":Ljava/io/FileInputStream;
    :catch_b
    move-exception v13

    .restart local v13    # "e":Ljava/io/FileNotFoundException;
    move-object/from16 v16, v17

    .end local v17    # "fis":Ljava/io/FileInputStream;
    .local v16, "fis":Ljava/io/FileInputStream;
    goto/16 :goto_3

    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .end local v13    # "e":Ljava/io/FileNotFoundException;
    .end local v16    # "fis":Ljava/io/FileInputStream;
    .restart local v10    # "bis":Ljava/io/BufferedInputStream;
    .restart local v17    # "fis":Ljava/io/FileInputStream;
    :catch_c
    move-exception v13

    .restart local v13    # "e":Ljava/io/FileNotFoundException;
    move-object v2, v10

    .end local v10    # "bis":Ljava/io/BufferedInputStream;
    .local v2, "bis":Ljava/io/BufferedInputStream;
    move-object/from16 v16, v17

    .end local v17    # "fis":Ljava/io/FileInputStream;
    .restart local v16    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_3

    .line 376
    .end local v13    # "e":Ljava/io/FileNotFoundException;
    .local v2, "bis":Ljava/io/BufferedInputStream;
    .local v16, "fis":Ljava/io/FileInputStream;
    :catch_d
    move-exception v14

    .restart local v14    # "e":Ljava/io/IOException;
    goto/16 :goto_7

    .end local v14    # "e":Ljava/io/IOException;
    .end local v16    # "fis":Ljava/io/FileInputStream;
    .restart local v17    # "fis":Ljava/io/FileInputStream;
    :catch_e
    move-exception v14

    .restart local v14    # "e":Ljava/io/IOException;
    move-object/from16 v16, v17

    .end local v17    # "fis":Ljava/io/FileInputStream;
    .local v16, "fis":Ljava/io/FileInputStream;
    goto/16 :goto_7

    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .end local v14    # "e":Ljava/io/IOException;
    .end local v16    # "fis":Ljava/io/FileInputStream;
    .restart local v10    # "bis":Ljava/io/BufferedInputStream;
    .restart local v17    # "fis":Ljava/io/FileInputStream;
    :catch_f
    move-exception v14

    .restart local v14    # "e":Ljava/io/IOException;
    move-object v2, v10

    .end local v10    # "bis":Ljava/io/BufferedInputStream;
    .local v2, "bis":Ljava/io/BufferedInputStream;
    move-object/from16 v16, v17

    .end local v17    # "fis":Ljava/io/FileInputStream;
    .restart local v16    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_7

    .line 379
    .end local v14    # "e":Ljava/io/IOException;
    .local v2, "bis":Ljava/io/BufferedInputStream;
    .local v16, "fis":Ljava/io/FileInputStream;
    :catch_10
    move-exception v15

    .restart local v15    # "e":Ljava/lang/Exception;
    goto/16 :goto_8

    .end local v15    # "e":Ljava/lang/Exception;
    .end local v16    # "fis":Ljava/io/FileInputStream;
    .restart local v17    # "fis":Ljava/io/FileInputStream;
    :catch_11
    move-exception v15

    .restart local v15    # "e":Ljava/lang/Exception;
    move-object/from16 v16, v17

    .end local v17    # "fis":Ljava/io/FileInputStream;
    .local v16, "fis":Ljava/io/FileInputStream;
    goto/16 :goto_8

    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .end local v15    # "e":Ljava/lang/Exception;
    .end local v16    # "fis":Ljava/io/FileInputStream;
    .restart local v10    # "bis":Ljava/io/BufferedInputStream;
    .restart local v17    # "fis":Ljava/io/FileInputStream;
    :catch_12
    move-exception v15

    .restart local v15    # "e":Ljava/lang/Exception;
    move-object v2, v10

    .end local v10    # "bis":Ljava/io/BufferedInputStream;
    .local v2, "bis":Ljava/io/BufferedInputStream;
    move-object/from16 v16, v17

    .end local v17    # "fis":Ljava/io/FileInputStream;
    .restart local v16    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_8

    .line 301
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_8
    .end packed-switch

    .line 361
    :pswitch_data_1
    .packed-switch 0x9
        :pswitch_9
    .end packed-switch
.end method

.method public setOp(II)V
    .locals 0
    .param p1, "op"    # I
    .param p2, "user"    # I

    .prologue
    .line 125
    iput p1, p0, Lcom/android/server/securespaces/PackageManagerQueue;->opCode:I

    .line 126
    iput p2, p0, Lcom/android/server/securespaces/PackageManagerQueue;->user:I

    .line 124
    return-void
.end method

.method public setOp(ILjava/lang/String;I)V
    .locals 0
    .param p1, "op"    # I
    .param p2, "uuid"    # Ljava/lang/String;
    .param p3, "user"    # I

    .prologue
    .line 119
    iput p1, p0, Lcom/android/server/securespaces/PackageManagerQueue;->opCode:I

    .line 120
    iput p3, p0, Lcom/android/server/securespaces/PackageManagerQueue;->user:I

    .line 121
    iput-object p2, p0, Lcom/android/server/securespaces/PackageManagerQueue;->uuid:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public setOp(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "op"    # I
    .param p2, "uuid"    # Ljava/lang/String;
    .param p3, "pName"    # Ljava/lang/String;
    .param p4, "user"    # I

    .prologue
    .line 112
    iput p1, p0, Lcom/android/server/securespaces/PackageManagerQueue;->opCode:I

    .line 113
    iput-object p3, p0, Lcom/android/server/securespaces/PackageManagerQueue;->packageName:Ljava/lang/String;

    .line 114
    iput p4, p0, Lcom/android/server/securespaces/PackageManagerQueue;->user:I

    .line 115
    iput-object p2, p0, Lcom/android/server/securespaces/PackageManagerQueue;->uuid:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public setOp(ILjava/lang/String;Ljava/lang/String;IIJ)V
    .locals 0
    .param p1, "op"    # I
    .param p2, "uuid"    # Ljava/lang/String;
    .param p3, "pName"    # Ljava/lang/String;
    .param p4, "user"    # I
    .param p5, "flag"    # I
    .param p6, "ceDataInode"    # J

    .prologue
    .line 99
    iput p1, p0, Lcom/android/server/securespaces/PackageManagerQueue;->opCode:I

    .line 100
    iput-object p2, p0, Lcom/android/server/securespaces/PackageManagerQueue;->uuid:Ljava/lang/String;

    .line 101
    iput-object p3, p0, Lcom/android/server/securespaces/PackageManagerQueue;->packageName:Ljava/lang/String;

    .line 102
    iput p4, p0, Lcom/android/server/securespaces/PackageManagerQueue;->user:I

    .line 103
    iput p5, p0, Lcom/android/server/securespaces/PackageManagerQueue;->flag:I

    .line 104
    iput-wide p6, p0, Lcom/android/server/securespaces/PackageManagerQueue;->ceDataInode:J

    .line 98
    return-void
.end method

.method public setOp(ILjava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .param p1, "op"    # I
    .param p2, "uuid"    # Ljava/lang/String;
    .param p3, "pName"    # Ljava/lang/String;
    .param p4, "user"    # I
    .param p5, "uid"    # I
    .param p6, "seinfo"    # Ljava/lang/String;

    .prologue
    .line 88
    iput p1, p0, Lcom/android/server/securespaces/PackageManagerQueue;->opCode:I

    .line 89
    iput-object p3, p0, Lcom/android/server/securespaces/PackageManagerQueue;->packageName:Ljava/lang/String;

    .line 90
    iput p4, p0, Lcom/android/server/securespaces/PackageManagerQueue;->user:I

    .line 91
    iput p5, p0, Lcom/android/server/securespaces/PackageManagerQueue;->uid:I

    .line 92
    iput-object p6, p0, Lcom/android/server/securespaces/PackageManagerQueue;->seinfo:Ljava/lang/String;

    .line 93
    iput-object p2, p0, Lcom/android/server/securespaces/PackageManagerQueue;->uuid:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public setOp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "op"    # I
    .param p2, "uuid"    # Ljava/lang/String;
    .param p3, "pName"    # Ljava/lang/String;
    .param p4, "nativeLibDir"    # Ljava/lang/String;
    .param p5, "user"    # I

    .prologue
    .line 134
    iput p1, p0, Lcom/android/server/securespaces/PackageManagerQueue;->opCode:I

    .line 135
    iput-object p3, p0, Lcom/android/server/securespaces/PackageManagerQueue;->packageName:Ljava/lang/String;

    .line 136
    iput-object p4, p0, Lcom/android/server/securespaces/PackageManagerQueue;->nativeLibraryDir:Ljava/lang/String;

    .line 137
    iput p5, p0, Lcom/android/server/securespaces/PackageManagerQueue;->user:I

    .line 138
    iput-object p2, p0, Lcom/android/server/securespaces/PackageManagerQueue;->uuid:Ljava/lang/String;

    .line 133
    return-void
.end method

.method public writeOp()V
    .locals 20

    .prologue
    .line 146
    new-instance v13, Ljava/io/File;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/securespaces/PackageManagerQueue;->user:I

    invoke-static {v15}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v15

    const-string/jumbo v16, ".Spaces"

    move-object/from16 v0, v16

    invoke-direct {v13, v15, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 147
    .local v13, "userQueueDir":Ljava/io/File;
    new-instance v14, Ljava/io/File;

    const-string/jumbo v15, "pmops"

    invoke-direct {v14, v13, v15}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 149
    .local v14, "userQueueFile":Ljava/io/File;
    const/4 v9, 0x0

    .line 150
    .local v9, "fos":Ljava/io/FileOutputStream;
    const/4 v2, 0x0

    .line 151
    .local v2, "bos":Ljava/io/BufferedOutputStream;
    const/4 v4, 0x0

    .line 153
    .local v4, "dos":Ljava/io/DataOutputStream;
    const/16 v15, 0x10

    new-array v11, v15, [B

    .line 154
    .local v11, "salt":[B
    new-instance v12, Ljava/security/SecureRandom;

    invoke-direct {v12}, Ljava/security/SecureRandom;-><init>()V

    .line 156
    .local v12, "sr":Ljava/security/SecureRandom;
    sget-object v16, Lcom/android/server/securespaces/PackageManagerQueue;->pmqLock:Ljava/lang/Object;

    monitor-enter v16

    .line 158
    :try_start_0
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v15

    if-nez v15, :cond_1

    .line 161
    const-string/jumbo v15, "PackageManagerQueue"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "PackageManger op-file does not exist for user "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/securespaces/PackageManagerQueue;->user:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 162
    const-string/jumbo v18, ".  Creating it now."

    .line 161
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    invoke-virtual {v13}, Ljava/io/File;->mkdirs()Z

    .line 164
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v14}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 165
    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .local v10, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v3, Ljava/io/BufferedOutputStream;

    const/16 v15, 0x800

    invoke-direct {v3, v10, v15}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_e
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 166
    .local v3, "bos":Ljava/io/BufferedOutputStream;
    :try_start_2
    new-instance v5, Ljava/io/DataOutputStream;

    .end local v2    # "bos":Ljava/io/BufferedOutputStream;
    invoke-direct {v5, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_f
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 168
    .local v5, "dos":Ljava/io/DataOutputStream;
    :try_start_3
    invoke-virtual {v12, v11}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 171
    .end local v4    # "dos":Ljava/io/DataOutputStream;
    const/4 v15, 0x2

    invoke-virtual {v5, v15}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 172
    invoke-virtual {v5, v11}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_a
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_d
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_10
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    move-object v4, v5

    .end local v5    # "dos":Ljava/io/DataOutputStream;
    .local v4, "dos":Ljava/io/DataOutputStream;
    move-object v2, v3

    .end local v3    # "bos":Ljava/io/BufferedOutputStream;
    .local v2, "bos":Ljava/io/BufferedOutputStream;
    move-object v9, v10

    .line 183
    .end local v10    # "fos":Ljava/io/FileOutputStream;
    .local v9, "fos":Ljava/io/FileOutputStream;
    :goto_0
    :try_start_4
    const-string/jumbo v15, "PackageManagerQueue"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Appending record to PackageManager op-file for user "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/securespaces/PackageManagerQueue;->user:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    invoke-virtual {v12, v11}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 188
    invoke-virtual {v4, v11}, Ljava/io/DataOutputStream;->write([B)V

    .line 189
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/securespaces/PackageManagerQueue;->opCode:I

    invoke-virtual {v4, v15}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 191
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/securespaces/PackageManagerQueue;->opCode:I

    packed-switch v15, :pswitch_data_0

    .line 236
    :pswitch_0
    const-string/jumbo v15, "PackageManagerQueue"

    const-string/jumbo v17, "Unknown opcode in queueOperation."

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 251
    :goto_1
    if-eqz v4, :cond_0

    :try_start_5
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .end local v2    # "bos":Ljava/io/BufferedOutputStream;
    .end local v4    # "dos":Ljava/io/DataOutputStream;
    .end local v9    # "fos":Ljava/io/FileOutputStream;
    :cond_0
    :goto_2
    monitor-exit v16

    .line 141
    return-void

    .line 177
    .local v2, "bos":Ljava/io/BufferedOutputStream;
    .local v4, "dos":Ljava/io/DataOutputStream;
    .local v9, "fos":Ljava/io/FileOutputStream;
    :cond_1
    :try_start_6
    new-instance v10, Ljava/io/FileOutputStream;

    const/4 v15, 0x1

    invoke-direct {v10, v14, v15}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 178
    .restart local v10    # "fos":Ljava/io/FileOutputStream;
    :try_start_7
    new-instance v3, Ljava/io/BufferedOutputStream;

    .end local v9    # "fos":Ljava/io/FileOutputStream;
    const/16 v15, 0x800

    invoke-direct {v3, v10, v15}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_8
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_b
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_e
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 179
    .restart local v3    # "bos":Ljava/io/BufferedOutputStream;
    :try_start_8
    new-instance v5, Ljava/io/DataOutputStream;

    .end local v2    # "bos":Ljava/io/BufferedOutputStream;
    invoke-direct {v5, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_9
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_c
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_f
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .restart local v5    # "dos":Ljava/io/DataOutputStream;
    move-object v4, v5

    .end local v5    # "dos":Ljava/io/DataOutputStream;
    .local v4, "dos":Ljava/io/DataOutputStream;
    move-object v2, v3

    .end local v3    # "bos":Ljava/io/BufferedOutputStream;
    .local v2, "bos":Ljava/io/BufferedOutputStream;
    move-object v9, v10

    .end local v10    # "fos":Ljava/io/FileOutputStream;
    .local v9, "fos":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 193
    :pswitch_1
    :try_start_9
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/securespaces/PackageManagerQueue;->uuid:Ljava/lang/String;

    invoke-virtual {v4, v15}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 194
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/securespaces/PackageManagerQueue;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v15}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 195
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/securespaces/PackageManagerQueue;->user:I

    invoke-virtual {v4, v15}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 196
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/securespaces/PackageManagerQueue;->uid:I

    invoke-virtual {v4, v15}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 197
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/securespaces/PackageManagerQueue;->seinfo:Ljava/lang/String;

    invoke-virtual {v4, v15}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_1

    .line 240
    .end local v2    # "bos":Ljava/io/BufferedOutputStream;
    .end local v4    # "dos":Ljava/io/DataOutputStream;
    .end local v9    # "fos":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v6

    .line 241
    .local v6, "e":Ljava/io/FileNotFoundException;
    :goto_3
    :try_start_a
    const-string/jumbo v15, "PackageManagerQueue"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "FileNotFoundException caught in writeOp(): "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    invoke-virtual {v6}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 251
    if-eqz v4, :cond_0

    :try_start_b
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_2

    .line 252
    :catch_1
    move-exception v7

    .line 254
    .local v7, "e":Ljava/io/IOException;
    :try_start_c
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_2

    .line 156
    .end local v6    # "e":Ljava/io/FileNotFoundException;
    .end local v7    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v15

    monitor-exit v16

    throw v15

    .line 200
    .restart local v2    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v4    # "dos":Ljava/io/DataOutputStream;
    .restart local v9    # "fos":Ljava/io/FileOutputStream;
    :pswitch_2
    :try_start_d
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/securespaces/PackageManagerQueue;->uuid:Ljava/lang/String;

    invoke-virtual {v4, v15}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 201
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/securespaces/PackageManagerQueue;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v15}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 202
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/securespaces/PackageManagerQueue;->user:I

    invoke-virtual {v4, v15}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_d
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_2
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_4
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto/16 :goto_1

    .line 243
    .end local v2    # "bos":Ljava/io/BufferedOutputStream;
    .end local v4    # "dos":Ljava/io/DataOutputStream;
    .end local v9    # "fos":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v7

    .line 244
    .restart local v7    # "e":Ljava/io/IOException;
    :goto_4
    :try_start_e
    const-string/jumbo v15, "PackageManagerQueue"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "IOException caught in writeOp(): "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 251
    if-eqz v4, :cond_0

    :try_start_f
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_3
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto/16 :goto_2

    .line 252
    :catch_3
    move-exception v7

    .line 254
    :try_start_10
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    goto/16 :goto_2

    .line 205
    .end local v7    # "e":Ljava/io/IOException;
    .restart local v2    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v4    # "dos":Ljava/io/DataOutputStream;
    .restart local v9    # "fos":Ljava/io/FileOutputStream;
    :pswitch_3
    :try_start_11
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/securespaces/PackageManagerQueue;->uuid:Ljava/lang/String;

    invoke-virtual {v4, v15}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 206
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/securespaces/PackageManagerQueue;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v15}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 207
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/securespaces/PackageManagerQueue;->nativeLibraryDir:Ljava/lang/String;

    invoke-virtual {v4, v15}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 208
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/securespaces/PackageManagerQueue;->user:I

    invoke-virtual {v4, v15}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_11
    .catch Ljava/io/FileNotFoundException; {:try_start_11 .. :try_end_11} :catch_0
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_2
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_4
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    goto/16 :goto_1

    .line 246
    .end local v2    # "bos":Ljava/io/BufferedOutputStream;
    .end local v4    # "dos":Ljava/io/DataOutputStream;
    .end local v9    # "fos":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v8

    .line 247
    .local v8, "e":Ljava/lang/Exception;
    :goto_5
    :try_start_12
    const-string/jumbo v15, "PackageManagerQueue"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Exception caught in writeOp(): "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    .line 251
    if-eqz v4, :cond_0

    :try_start_13
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_5
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    goto/16 :goto_2

    .line 252
    :catch_5
    move-exception v7

    .line 254
    .restart local v7    # "e":Ljava/io/IOException;
    :try_start_14
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    goto/16 :goto_2

    .line 211
    .end local v7    # "e":Ljava/io/IOException;
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v2    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v4    # "dos":Ljava/io/DataOutputStream;
    .restart local v9    # "fos":Ljava/io/FileOutputStream;
    :pswitch_4
    :try_start_15
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/securespaces/PackageManagerQueue;->uuid:Ljava/lang/String;

    invoke-virtual {v4, v15}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 212
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/securespaces/PackageManagerQueue;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v15}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 213
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/securespaces/PackageManagerQueue;->user:I

    invoke-virtual {v4, v15}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_15
    .catch Ljava/io/FileNotFoundException; {:try_start_15 .. :try_end_15} :catch_0
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_2
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_4
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    goto/16 :goto_1

    .line 249
    .end local v2    # "bos":Ljava/io/BufferedOutputStream;
    .end local v4    # "dos":Ljava/io/DataOutputStream;
    .end local v9    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v15

    .line 251
    :goto_6
    if-eqz v4, :cond_2

    :try_start_16
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_7
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    .line 249
    :cond_2
    :goto_7
    :try_start_17
    throw v15
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    .line 216
    .restart local v2    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v4    # "dos":Ljava/io/DataOutputStream;
    .restart local v9    # "fos":Ljava/io/FileOutputStream;
    :pswitch_5
    :try_start_18
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/securespaces/PackageManagerQueue;->uuid:Ljava/lang/String;

    invoke-virtual {v4, v15}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 217
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/securespaces/PackageManagerQueue;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v15}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 218
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/securespaces/PackageManagerQueue;->user:I

    invoke-virtual {v4, v15}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto/16 :goto_1

    .line 221
    :pswitch_6
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/securespaces/PackageManagerQueue;->user:I

    invoke-virtual {v4, v15}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto/16 :goto_1

    .line 224
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/securespaces/PackageManagerQueue;->uuid:Ljava/lang/String;

    invoke-virtual {v4, v15}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 225
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/securespaces/PackageManagerQueue;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v15}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 226
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/securespaces/PackageManagerQueue;->user:I

    invoke-virtual {v4, v15}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto/16 :goto_1

    .line 229
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/securespaces/PackageManagerQueue;->uuid:Ljava/lang/String;

    invoke-virtual {v4, v15}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 230
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/securespaces/PackageManagerQueue;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v15}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 231
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/securespaces/PackageManagerQueue;->user:I

    invoke-virtual {v4, v15}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 232
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/securespaces/PackageManagerQueue;->flag:I

    invoke-virtual {v4, v15}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 233
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/securespaces/PackageManagerQueue;->ceDataInode:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V
    :try_end_18
    .catch Ljava/io/FileNotFoundException; {:try_start_18 .. :try_end_18} :catch_0
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_2
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_4
    .catchall {:try_start_18 .. :try_end_18} :catchall_1

    goto/16 :goto_1

    .line 252
    :catch_6
    move-exception v7

    .line 254
    .restart local v7    # "e":Ljava/io/IOException;
    :try_start_19
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    .line 252
    .end local v2    # "bos":Ljava/io/BufferedOutputStream;
    .end local v4    # "dos":Ljava/io/DataOutputStream;
    .end local v7    # "e":Ljava/io/IOException;
    .end local v9    # "fos":Ljava/io/FileOutputStream;
    :catch_7
    move-exception v7

    .line 254
    .restart local v7    # "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    goto :goto_7

    .line 249
    .end local v7    # "e":Ljava/io/IOException;
    .local v2, "bos":Ljava/io/BufferedOutputStream;
    .local v4, "dos":Ljava/io/DataOutputStream;
    .restart local v10    # "fos":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v15

    move-object v9, v10

    .end local v10    # "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "fos":Ljava/io/FileOutputStream;
    goto :goto_6

    .end local v2    # "bos":Ljava/io/BufferedOutputStream;
    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v10    # "fos":Ljava/io/FileOutputStream;
    :catchall_3
    move-exception v15

    move-object v2, v3

    .end local v3    # "bos":Ljava/io/BufferedOutputStream;
    .local v2, "bos":Ljava/io/BufferedOutputStream;
    move-object v9, v10

    .end local v10    # "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "fos":Ljava/io/FileOutputStream;
    goto :goto_6

    .end local v2    # "bos":Ljava/io/BufferedOutputStream;
    .end local v4    # "dos":Ljava/io/DataOutputStream;
    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v5    # "dos":Ljava/io/DataOutputStream;
    .restart local v10    # "fos":Ljava/io/FileOutputStream;
    :catchall_4
    move-exception v15

    move-object v4, v5

    .end local v5    # "dos":Ljava/io/DataOutputStream;
    .local v4, "dos":Ljava/io/DataOutputStream;
    move-object v2, v3

    .end local v3    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v2    # "bos":Ljava/io/BufferedOutputStream;
    move-object v9, v10

    .end local v10    # "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "fos":Ljava/io/FileOutputStream;
    goto :goto_6

    .line 240
    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .local v2, "bos":Ljava/io/BufferedOutputStream;
    .local v4, "dos":Ljava/io/DataOutputStream;
    .restart local v10    # "fos":Ljava/io/FileOutputStream;
    :catch_8
    move-exception v6

    .restart local v6    # "e":Ljava/io/FileNotFoundException;
    move-object v9, v10

    .end local v10    # "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_3

    .end local v2    # "bos":Ljava/io/BufferedOutputStream;
    .end local v6    # "e":Ljava/io/FileNotFoundException;
    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v10    # "fos":Ljava/io/FileOutputStream;
    :catch_9
    move-exception v6

    .restart local v6    # "e":Ljava/io/FileNotFoundException;
    move-object v2, v3

    .end local v3    # "bos":Ljava/io/BufferedOutputStream;
    .local v2, "bos":Ljava/io/BufferedOutputStream;
    move-object v9, v10

    .end local v10    # "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_3

    .end local v2    # "bos":Ljava/io/BufferedOutputStream;
    .end local v4    # "dos":Ljava/io/DataOutputStream;
    .end local v6    # "e":Ljava/io/FileNotFoundException;
    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v5    # "dos":Ljava/io/DataOutputStream;
    .restart local v10    # "fos":Ljava/io/FileOutputStream;
    :catch_a
    move-exception v6

    .restart local v6    # "e":Ljava/io/FileNotFoundException;
    move-object v4, v5

    .end local v5    # "dos":Ljava/io/DataOutputStream;
    .local v4, "dos":Ljava/io/DataOutputStream;
    move-object v2, v3

    .end local v3    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v2    # "bos":Ljava/io/BufferedOutputStream;
    move-object v9, v10

    .end local v10    # "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_3

    .line 243
    .end local v6    # "e":Ljava/io/FileNotFoundException;
    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .local v2, "bos":Ljava/io/BufferedOutputStream;
    .local v4, "dos":Ljava/io/DataOutputStream;
    .restart local v10    # "fos":Ljava/io/FileOutputStream;
    :catch_b
    move-exception v7

    .restart local v7    # "e":Ljava/io/IOException;
    move-object v9, v10

    .end local v10    # "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_4

    .end local v2    # "bos":Ljava/io/BufferedOutputStream;
    .end local v7    # "e":Ljava/io/IOException;
    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v10    # "fos":Ljava/io/FileOutputStream;
    :catch_c
    move-exception v7

    .restart local v7    # "e":Ljava/io/IOException;
    move-object v2, v3

    .end local v3    # "bos":Ljava/io/BufferedOutputStream;
    .local v2, "bos":Ljava/io/BufferedOutputStream;
    move-object v9, v10

    .end local v10    # "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_4

    .end local v2    # "bos":Ljava/io/BufferedOutputStream;
    .end local v4    # "dos":Ljava/io/DataOutputStream;
    .end local v7    # "e":Ljava/io/IOException;
    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v5    # "dos":Ljava/io/DataOutputStream;
    .restart local v10    # "fos":Ljava/io/FileOutputStream;
    :catch_d
    move-exception v7

    .restart local v7    # "e":Ljava/io/IOException;
    move-object v4, v5

    .end local v5    # "dos":Ljava/io/DataOutputStream;
    .local v4, "dos":Ljava/io/DataOutputStream;
    move-object v2, v3

    .end local v3    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v2    # "bos":Ljava/io/BufferedOutputStream;
    move-object v9, v10

    .end local v10    # "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_4

    .line 246
    .end local v7    # "e":Ljava/io/IOException;
    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .local v2, "bos":Ljava/io/BufferedOutputStream;
    .local v4, "dos":Ljava/io/DataOutputStream;
    .restart local v10    # "fos":Ljava/io/FileOutputStream;
    :catch_e
    move-exception v8

    .restart local v8    # "e":Ljava/lang/Exception;
    move-object v9, v10

    .end local v10    # "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_5

    .end local v2    # "bos":Ljava/io/BufferedOutputStream;
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v10    # "fos":Ljava/io/FileOutputStream;
    :catch_f
    move-exception v8

    .restart local v8    # "e":Ljava/lang/Exception;
    move-object v2, v3

    .end local v3    # "bos":Ljava/io/BufferedOutputStream;
    .local v2, "bos":Ljava/io/BufferedOutputStream;
    move-object v9, v10

    .end local v10    # "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_5

    .end local v2    # "bos":Ljava/io/BufferedOutputStream;
    .end local v4    # "dos":Ljava/io/DataOutputStream;
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v5    # "dos":Ljava/io/DataOutputStream;
    .restart local v10    # "fos":Ljava/io/FileOutputStream;
    :catch_10
    move-exception v8

    .restart local v8    # "e":Ljava/lang/Exception;
    move-object v4, v5

    .end local v5    # "dos":Ljava/io/DataOutputStream;
    .local v4, "dos":Ljava/io/DataOutputStream;
    move-object v2, v3

    .end local v3    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v2    # "bos":Ljava/io/BufferedOutputStream;
    move-object v9, v10

    .end local v10    # "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_5

    .line 191
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_8
    .end packed-switch
.end method
