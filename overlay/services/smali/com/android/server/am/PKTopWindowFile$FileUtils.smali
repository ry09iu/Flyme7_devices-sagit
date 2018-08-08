.class public Lcom/android/server/am/PKTopWindowFile$FileUtils;
.super Ljava/lang/Object;
.source "PKTopWindowFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/PKTopWindowFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FileUtils"
.end annotation


# static fields
.field private static final BUFFER_LEN:I = 0x2000

.field private static final HEX_DIGITS:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/am/PKTopWindowFile$FileUtils;->HEX_DIGITS:[C

    .line 54
    return-void

    .line 56
    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static bytes2HexString([B)Ljava/lang/String;
    .locals 7
    .param p0, "bytes"    # [B

    .prologue
    .line 69
    if-nez p0, :cond_0

    const-string/jumbo v5, ""

    return-object v5

    .line 70
    :cond_0
    array-length v3, p0

    .line 71
    .local v3, "len":I
    if-gtz v3, :cond_1

    const-string/jumbo v5, ""

    return-object v5

    .line 72
    :cond_1
    shl-int/lit8 v5, v3, 0x1

    new-array v4, v5, [C

    .line 73
    .local v4, "ret":[C
    const/4 v0, 0x0

    .local v0, "i":I
    const/4 v1, 0x0

    .local v1, "j":I
    move v2, v1

    .end local v1    # "j":I
    .local v2, "j":I
    :goto_0
    if-ge v0, v3, :cond_2

    .line 74
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "j":I
    .restart local v1    # "j":I
    sget-object v5, Lcom/android/server/am/PKTopWindowFile$FileUtils;->HEX_DIGITS:[C

    aget-byte v6, p0, v0

    shr-int/lit8 v6, v6, 0x4

    and-int/lit8 v6, v6, 0xf

    aget-char v5, v5, v6

    aput-char v5, v4, v2

    .line 75
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "j":I
    .restart local v2    # "j":I
    sget-object v5, Lcom/android/server/am/PKTopWindowFile$FileUtils;->HEX_DIGITS:[C

    aget-byte v6, p0, v0

    and-int/lit8 v6, v6, 0xf

    aget-char v5, v5, v6

    aput-char v5, v4, v1

    .line 73
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 77
    :cond_2
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>([C)V

    return-object v5
.end method

.method private static createOrExistsDir(Ljava/io/File;)Z
    .locals 1
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 490
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static createOrExistsFile(Ljava/io/File;)Z
    .locals 3
    .param p0, "file"    # Ljava/io/File;

    .prologue
    const/4 v2, 0x0

    .line 494
    if-nez p0, :cond_0

    return v2

    .line 495
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v1

    return v1

    .line 496
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/PKTopWindowFile$FileUtils;->createOrExistsDir(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 498
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 499
    :catch_0
    move-exception v0

    .line 500
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v0}, Lcom/android/server/am/PKTopWindowConfig$StackTrace;->print(Ljava/lang/Exception;)V

    .line 501
    return v2
.end method

.method public static deleteDir(Ljava/io/File;)Z
    .locals 6
    .param p0, "dir"    # Ljava/io/File;

    .prologue
    const/4 v3, 0x0

    .line 526
    if-nez p0, :cond_0

    return v3

    .line 528
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    return v2

    .line 530
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_2

    return v3

    .line 531
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 532
    .local v1, "files":[Ljava/io/File;
    if-eqz v1, :cond_5

    array-length v2, v1

    if-eqz v2, :cond_5

    .line 533
    array-length v4, v1

    move v2, v3

    :goto_0
    if-ge v2, v4, :cond_5

    aget-object v0, v1, v2

    .line 534
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 535
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v5

    if-nez v5, :cond_4

    return v3

    .line 536
    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 537
    invoke-static {v0}, Lcom/android/server/am/PKTopWindowFile$FileUtils;->deleteDir(Ljava/io/File;)Z

    move-result v5

    if-nez v5, :cond_4

    return v3

    .line 533
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 541
    .end local v0    # "file":Ljava/io/File;
    :cond_5
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v2

    return v2
.end method

.method public static getComments(Ljava/io/File;)Ljava/util/List;
    .locals 4
    .param p0, "zipFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 479
    if-nez p0, :cond_0

    return-object v3

    .line 480
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 481
    .local v0, "comments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/zip/ZipFile;

    invoke-direct {v3, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v1

    .line 482
    .local v1, "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 483
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/zip/ZipEntry;

    .line 484
    .local v2, "entry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getComment()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 486
    .end local v2    # "entry":Ljava/util/zip/ZipEntry;
    :cond_1
    return-object v0
.end method

.method public static getComments(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p0, "zipFilePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 467
    invoke-static {p0}, Lcom/android/server/am/PKTopWindowFile$FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/PKTopWindowFile$FileUtils;->getComments(Ljava/io/File;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static getFileByPath(Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 506
    invoke-static {p0}, Lcom/android/server/am/PKTopWindowFile$FileUtils;->isSpace(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static getFileMD5(Ljava/io/File;)[B
    .locals 9
    .param p0, "file"    # Ljava/io/File;

    .prologue
    const/4 v8, 0x0

    .line 87
    if-nez p0, :cond_0

    return-object v8

    .line 88
    :cond_0
    const/4 v1, 0x0

    .line 90
    .local v1, "dis":Ljava/security/DigestInputStream;
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 91
    .local v5, "fis":Ljava/io/FileInputStream;
    const-string/jumbo v7, "MD5"

    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v6

    .line 92
    .local v6, "md":Ljava/security/MessageDigest;
    new-instance v2, Ljava/security/DigestInputStream;

    invoke-direct {v2, v5, v6}, Ljava/security/DigestInputStream;-><init>(Ljava/io/InputStream;Ljava/security/MessageDigest;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    .local v2, "dis":Ljava/security/DigestInputStream;
    const/high16 v7, 0x40000

    :try_start_1
    new-array v0, v7, [B

    .line 95
    .end local v1    # "dis":Ljava/security/DigestInputStream;
    .local v0, "buffer":[B
    :cond_1
    invoke-virtual {v2, v0}, Ljava/security/DigestInputStream;->read([B)I

    move-result v7

    if-gtz v7, :cond_1

    .line 97
    invoke-virtual {v2}, Ljava/security/DigestInputStream;->getMessageDigest()Ljava/security/MessageDigest;

    move-result-object v6

    .line 98
    invoke-virtual {v6}, Ljava/security/MessageDigest;->digest()[B
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v7

    .line 103
    if-eqz v2, :cond_2

    .line 104
    :try_start_2
    invoke-virtual {v2}, Ljava/security/DigestInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 98
    :cond_2
    :goto_0
    return-object v7

    .line 106
    :catch_0
    move-exception v3

    .line 107
    .local v3, "e":Ljava/io/IOException;
    invoke-static {v3}, Lcom/android/server/am/PKTopWindowConfig$StackTrace;->print(Ljava/lang/Exception;)V

    goto :goto_0

    .line 99
    .end local v0    # "buffer":[B
    .end local v2    # "dis":Ljava/security/DigestInputStream;
    .end local v3    # "e":Ljava/io/IOException;
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .end local v6    # "md":Ljava/security/MessageDigest;
    .restart local v1    # "dis":Ljava/security/DigestInputStream;
    :catch_1
    move-exception v4

    .line 100
    .end local v1    # "dis":Ljava/security/DigestInputStream;
    .local v4, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_3
    invoke-static {v4}, Lcom/android/server/am/PKTopWindowConfig$StackTrace;->print(Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 103
    if-eqz v1, :cond_3

    .line 104
    :try_start_4
    invoke-virtual {v1}, Ljava/security/DigestInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 110
    :cond_3
    :goto_2
    return-object v8

    .line 106
    :catch_2
    move-exception v3

    .line 107
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-static {v3}, Lcom/android/server/am/PKTopWindowConfig$StackTrace;->print(Ljava/lang/Exception;)V

    goto :goto_2

    .line 101
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    .line 103
    :goto_3
    if-eqz v1, :cond_4

    .line 104
    :try_start_5
    invoke-virtual {v1}, Ljava/security/DigestInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 101
    :cond_4
    :goto_4
    throw v7

    .line 106
    :catch_3
    move-exception v3

    .line 107
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-static {v3}, Lcom/android/server/am/PKTopWindowConfig$StackTrace;->print(Ljava/lang/Exception;)V

    goto :goto_4

    .line 101
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v2    # "dis":Ljava/security/DigestInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "md":Ljava/security/MessageDigest;
    :catchall_1
    move-exception v7

    move-object v1, v2

    .end local v2    # "dis":Ljava/security/DigestInputStream;
    .local v1, "dis":Ljava/security/DigestInputStream;
    goto :goto_3

    .line 99
    .end local v1    # "dis":Ljava/security/DigestInputStream;
    .restart local v2    # "dis":Ljava/security/DigestInputStream;
    :catch_4
    move-exception v4

    .restart local v4    # "e":Ljava/lang/Exception;
    move-object v1, v2

    .end local v2    # "dis":Ljava/security/DigestInputStream;
    .restart local v1    # "dis":Ljava/security/DigestInputStream;
    goto :goto_1
.end method

.method public static getFileMD5ToString(Ljava/io/File;)Ljava/lang/String;
    .locals 1
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 65
    invoke-static {p0}, Lcom/android/server/am/PKTopWindowFile$FileUtils;->getFileMD5(Ljava/io/File;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/PKTopWindowFile$FileUtils;->bytes2HexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFilesPath(Ljava/io/File;)Ljava/util/List;
    .locals 3
    .param p0, "zipFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 449
    if-nez p0, :cond_0

    return-object v2

    .line 450
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 451
    .local v1, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/zip/ZipFile;

    invoke-direct {v2, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v0

    .line 452
    .local v0, "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 453
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/zip/ZipEntry;

    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 455
    :cond_1
    return-object v1
.end method

.method public static getFilesPath(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p0, "zipFilePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 437
    invoke-static {p0}, Lcom/android/server/am/PKTopWindowFile$FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/PKTopWindowFile$FileUtils;->getFilesPath(Ljava/io/File;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static isSpace(Ljava/lang/String;)Z
    .locals 4
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 510
    if-nez p0, :cond_0

    return v3

    .line 511
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .local v1, "len":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 512
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-nez v2, :cond_1

    .line 513
    const/4 v2, 0x0

    return v2

    .line 511
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 516
    :cond_2
    return v3
.end method

.method private static unzipChildFile(Ljava/io/File;Ljava/util/List;Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;Ljava/lang/String;)Z
    .locals 11
    .param p0, "destDir"    # Ljava/io/File;
    .param p2, "zf"    # Ljava/util/zip/ZipFile;
    .param p3, "entry"    # Ljava/util/zip/ZipEntry;
    .param p4, "entryName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;",
            "Ljava/util/zip/ZipFile;",
            "Ljava/util/zip/ZipEntry;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p1, "files":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    const/4 v10, 0x0

    .line 399
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 400
    .local v2, "filePath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 401
    .local v1, "file":Ljava/io/File;
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 402
    invoke-virtual {p3}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 403
    invoke-static {v1}, Lcom/android/server/am/PKTopWindowFile$FileUtils;->createOrExistsDir(Ljava/io/File;)Z

    move-result v8

    if-nez v8, :cond_6

    return v10

    .line 405
    :cond_0
    invoke-static {v1}, Lcom/android/server/am/PKTopWindowFile$FileUtils;->createOrExistsFile(Ljava/io/File;)Z

    move-result v8

    if-nez v8, :cond_1

    return v10

    .line 406
    :cond_1
    const/4 v3, 0x0

    .line 407
    .local v3, "in":Ljava/io/InputStream;
    const/4 v6, 0x0

    .line 409
    .local v6, "out":Ljava/io/OutputStream;
    :try_start_0
    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-virtual {p2, p3}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 410
    .local v4, "in":Ljava/io/InputStream;
    :try_start_1
    new-instance v7, Ljava/io/BufferedOutputStream;

    .end local v3    # "in":Ljava/io/InputStream;
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v7, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 411
    .local v7, "out":Ljava/io/OutputStream;
    const/16 v8, 0x2000

    :try_start_2
    new-array v0, v8, [B

    .line 413
    .end local v6    # "out":Ljava/io/OutputStream;
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v5

    .local v5, "len":I
    const/4 v8, -0x1

    if-eq v5, v8, :cond_4

    .line 414
    const/4 v8, 0x0

    invoke-virtual {v7, v0, v8, v5}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 416
    .end local v0    # "buffer":[B
    .end local v5    # "len":I
    :catchall_0
    move-exception v8

    move-object v6, v7

    .end local v7    # "out":Ljava/io/OutputStream;
    .local v6, "out":Ljava/io/OutputStream;
    move-object v3, v4

    .line 417
    .end local v4    # "in":Ljava/io/InputStream;
    .end local v6    # "out":Ljava/io/OutputStream;
    :goto_1
    if-eqz v3, :cond_2

    .line 418
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 420
    :cond_2
    if-eqz v6, :cond_3

    .line 421
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    .line 416
    :cond_3
    throw v8

    .line 417
    .restart local v0    # "buffer":[B
    .restart local v4    # "in":Ljava/io/InputStream;
    .restart local v5    # "len":I
    .restart local v7    # "out":Ljava/io/OutputStream;
    :cond_4
    if-eqz v4, :cond_5

    .line 418
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 420
    :cond_5
    if-eqz v7, :cond_6

    .line 421
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    .line 425
    .end local v0    # "buffer":[B
    .end local v4    # "in":Ljava/io/InputStream;
    .end local v5    # "len":I
    .end local v7    # "out":Ljava/io/OutputStream;
    :cond_6
    const/4 v8, 0x1

    return v8

    .line 416
    .restart local v3    # "in":Ljava/io/InputStream;
    .local v6, "out":Ljava/io/OutputStream;
    :catchall_1
    move-exception v8

    goto :goto_1

    .end local v3    # "in":Ljava/io/InputStream;
    .restart local v4    # "in":Ljava/io/InputStream;
    :catchall_2
    move-exception v8

    move-object v3, v4

    .end local v4    # "in":Ljava/io/InputStream;
    .local v3, "in":Ljava/io/InputStream;
    goto :goto_1
.end method

.method public static unzipFile(Ljava/io/File;Ljava/io/File;)Ljava/util/List;
    .locals 1
    .param p0, "zipFile"    # Ljava/io/File;
    .param p1, "destDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 332
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/server/am/PKTopWindowFile$FileUtils;->unzipFileByKeyword(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static unzipFile(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p0, "zipFilePath"    # Ljava/lang/String;
    .param p1, "destDirPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 318
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/server/am/PKTopWindowFile$FileUtils;->unzipFileByKeyword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static unzipFileByKeyword(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .param p0, "zipFile"    # Ljava/io/File;
    .param p1, "destDir"    # Ljava/io/File;
    .param p2, "keyword"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 364
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    return-object v5

    .line 365
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 366
    .local v3, "files":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    new-instance v4, Ljava/util/zip/ZipFile;

    invoke-direct {v4, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 367
    .local v4, "zf":Ljava/util/zip/ZipFile;
    invoke-virtual {v4}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v0

    .line 368
    .local v0, "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    invoke-static {p2}, Lcom/android/server/am/PKTopWindowFile$FileUtils;->isSpace(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 369
    :cond_2
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 370
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/zip/ZipEntry;

    .line 371
    .local v1, "entry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v2

    .line 372
    .local v2, "entryName":Ljava/lang/String;
    const-string/jumbo v5, "../"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 373
    const-string/jumbo v5, "ZipUtils"

    const-string/jumbo v6, "it\'s dangerous!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    return-object v3

    .line 376
    :cond_3
    invoke-static {p1, v3, v4, v1, v2}, Lcom/android/server/am/PKTopWindowFile$FileUtils;->unzipChildFile(Ljava/io/File;Ljava/util/List;Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    return-object v3

    .line 379
    .end local v1    # "entry":Ljava/util/zip/ZipEntry;
    .end local v2    # "entryName":Ljava/lang/String;
    :cond_4
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 380
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/zip/ZipEntry;

    .line 381
    .restart local v1    # "entry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v2

    .line 382
    .restart local v2    # "entryName":Ljava/lang/String;
    const-string/jumbo v5, "../"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 383
    const-string/jumbo v5, "ZipUtils"

    const-string/jumbo v6, "it\'s dangerous!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    return-object v3

    .line 386
    :cond_5
    invoke-virtual {v2, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 387
    invoke-static {p1, v3, v4, v1, v2}, Lcom/android/server/am/PKTopWindowFile$FileUtils;->unzipChildFile(Ljava/io/File;Ljava/util/List;Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    return-object v3

    .line 391
    .end local v1    # "entry":Ljava/util/zip/ZipEntry;
    .end local v2    # "entryName":Ljava/lang/String;
    :cond_6
    return-object v3
.end method

.method public static unzipFileByKeyword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p0, "zipFilePath"    # Ljava/lang/String;
    .param p1, "destDirPath"    # Ljava/lang/String;
    .param p2, "keyword"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 348
    invoke-static {p0}, Lcom/android/server/am/PKTopWindowFile$FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {p1}, Lcom/android/server/am/PKTopWindowFile$FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/android/server/am/PKTopWindowFile$FileUtils;->unzipFileByKeyword(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static zipFile(Ljava/io/File;Ljava/io/File;)Z
    .locals 1
    .param p0, "srcFile"    # Ljava/io/File;
    .param p1, "zipFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 239
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/server/am/PKTopWindowFile$FileUtils;->zipFile(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static zipFile(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Z
    .locals 3
    .param p0, "srcFile"    # Ljava/io/File;
    .param p1, "zipFile"    # Ljava/io/File;
    .param p2, "comment"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 255
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v2, 0x0

    return v2

    .line 256
    :cond_1
    const/4 v0, 0x0

    .line 258
    .local v0, "zos":Ljava/util/zip/ZipOutputStream;
    :try_start_0
    new-instance v1, Ljava/util/zip/ZipOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 259
    .local v1, "zos":Ljava/util/zip/ZipOutputStream;
    :try_start_1
    const-string/jumbo v2, ""

    .end local v0    # "zos":Ljava/util/zip/ZipOutputStream;
    invoke-static {p0, v2, v1, p2}, Lcom/android/server/am/PKTopWindowFile$FileUtils;->zipFile(Ljava/io/File;Ljava/lang/String;Ljava/util/zip/ZipOutputStream;Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v2

    .line 261
    if-eqz v1, :cond_2

    .line 262
    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 259
    :cond_2
    return v2

    .line 260
    .end local v1    # "zos":Ljava/util/zip/ZipOutputStream;
    .restart local v0    # "zos":Ljava/util/zip/ZipOutputStream;
    :catchall_0
    move-exception v2

    .line 261
    .end local v0    # "zos":Ljava/util/zip/ZipOutputStream;
    :goto_0
    if-eqz v0, :cond_3

    .line 262
    invoke-virtual {v0}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 260
    :cond_3
    throw v2

    .restart local v1    # "zos":Ljava/util/zip/ZipOutputStream;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "zos":Ljava/util/zip/ZipOutputStream;
    .local v0, "zos":Ljava/util/zip/ZipOutputStream;
    goto :goto_0
.end method

.method private static zipFile(Ljava/io/File;Ljava/lang/String;Ljava/util/zip/ZipOutputStream;Ljava/lang/String;)Z
    .locals 11
    .param p0, "srcFile"    # Ljava/io/File;
    .param p1, "rootPath"    # Ljava/lang/String;
    .param p2, "zos"    # Ljava/util/zip/ZipOutputStream;
    .param p3, "comment"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 272
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {p1}, Lcom/android/server/am/PKTopWindowFile$FileUtils;->isSpace(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string/jumbo v7, ""

    :goto_0
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 273
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 274
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 275
    .local v3, "fileList":[Ljava/io/File;
    if-eqz v3, :cond_0

    array-length v7, v3

    if-gtz v7, :cond_3

    .line 276
    :cond_0
    new-instance v1, Ljava/util/zip/ZipEntry;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x2f

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 277
    .local v1, "entry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v1, p3}, Ljava/util/zip/ZipEntry;->setComment(Ljava/lang/String;)V

    .line 278
    invoke-virtual {p2, v1}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 279
    invoke-virtual {p2}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 304
    .end local v1    # "entry":Ljava/util/zip/ZipEntry;
    .end local v3    # "fileList":[Ljava/io/File;
    :cond_1
    :goto_1
    const/4 v7, 0x1

    return v7

    .line 272
    :cond_2
    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    goto :goto_0

    .line 281
    .restart local v3    # "fileList":[Ljava/io/File;
    :cond_3
    array-length v9, v3

    move v7, v8

    :goto_2
    if-ge v7, v9, :cond_1

    aget-object v2, v3, v7

    .line 282
    .local v2, "file":Ljava/io/File;
    invoke-static {v2, p1, p2, p3}, Lcom/android/server/am/PKTopWindowFile$FileUtils;->zipFile(Ljava/io/File;Ljava/lang/String;Ljava/util/zip/ZipOutputStream;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_4

    return v8

    .line 281
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 286
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "fileList":[Ljava/io/File;
    :cond_5
    const/4 v4, 0x0

    .line 288
    .local v4, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v5, Ljava/io/BufferedInputStream;

    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 289
    .local v5, "is":Ljava/io/InputStream;
    :try_start_1
    new-instance v1, Ljava/util/zip/ZipEntry;

    .end local v4    # "is":Ljava/io/InputStream;
    invoke-direct {v1, p1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 290
    .restart local v1    # "entry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v1, p3}, Ljava/util/zip/ZipEntry;->setComment(Ljava/lang/String;)V

    .line 291
    invoke-virtual {p2, v1}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 292
    const/16 v7, 0x2000

    new-array v0, v7, [B

    .line 294
    .local v0, "buffer":[B
    :goto_3
    const/4 v7, 0x0

    const/16 v8, 0x2000

    invoke-virtual {v5, v0, v7, v8}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    .local v6, "len":I
    const/4 v7, -0x1

    if-eq v6, v7, :cond_7

    .line 295
    const/4 v7, 0x0

    invoke-virtual {p2, v0, v7, v6}, Ljava/util/zip/ZipOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 298
    .end local v0    # "buffer":[B
    .end local v1    # "entry":Ljava/util/zip/ZipEntry;
    .end local v6    # "len":I
    :catchall_0
    move-exception v7

    move-object v4, v5

    .line 299
    .end local v5    # "is":Ljava/io/InputStream;
    :goto_4
    if-eqz v4, :cond_6

    .line 300
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 298
    :cond_6
    throw v7

    .line 297
    .restart local v0    # "buffer":[B
    .restart local v1    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v5    # "is":Ljava/io/InputStream;
    .restart local v6    # "len":I
    :cond_7
    :try_start_2
    invoke-virtual {p2}, Ljava/util/zip/ZipOutputStream;->closeEntry()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 299
    if-eqz v5, :cond_1

    .line 300
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    goto :goto_1

    .line 298
    .end local v0    # "buffer":[B
    .end local v1    # "entry":Ljava/util/zip/ZipEntry;
    .end local v5    # "is":Ljava/io/InputStream;
    .end local v6    # "len":I
    .restart local v4    # "is":Ljava/io/InputStream;
    :catchall_1
    move-exception v7

    goto :goto_4
.end method

.method public static zipFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "srcFilePath"    # Ljava/lang/String;
    .param p1, "zipFilePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 209
    invoke-static {p0}, Lcom/android/server/am/PKTopWindowFile$FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {p1}, Lcom/android/server/am/PKTopWindowFile$FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/server/am/PKTopWindowFile$FileUtils;->zipFile(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static zipFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "srcFilePath"    # Ljava/lang/String;
    .param p1, "zipFilePath"    # Ljava/lang/String;
    .param p2, "comment"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 225
    invoke-static {p0}, Lcom/android/server/am/PKTopWindowFile$FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {p1}, Lcom/android/server/am/PKTopWindowFile$FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/android/server/am/PKTopWindowFile$FileUtils;->zipFile(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static zipFiles(Ljava/util/Collection;Ljava/io/File;)Z
    .locals 1
    .param p1, "zipFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/io/File;",
            ">;",
            "Ljava/io/File;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 166
    .local p0, "srcFiles":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/io/File;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/server/am/PKTopWindowFile$FileUtils;->zipFiles(Ljava/util/Collection;Ljava/io/File;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static zipFiles(Ljava/util/Collection;Ljava/io/File;Ljava/lang/String;)Z
    .locals 6
    .param p1, "zipFile"    # Ljava/io/File;
    .param p2, "comment"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/io/File;",
            ">;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p0, "srcFiles":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/io/File;>;"
    const/4 v5, 0x0

    .line 182
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    return v5

    .line 183
    :cond_1
    const/4 v2, 0x0

    .line 185
    .local v2, "zos":Ljava/util/zip/ZipOutputStream;
    :try_start_0
    new-instance v3, Ljava/util/zip/ZipOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    .local v3, "zos":Ljava/util/zip/ZipOutputStream;
    :try_start_1
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .end local v2    # "zos":Ljava/util/zip/ZipOutputStream;
    move-result-object v1

    .local v1, "srcFile$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 187
    .local v0, "srcFile":Ljava/io/File;
    const-string/jumbo v4, ""

    invoke-static {v0, v4, v3, p2}, Lcom/android/server/am/PKTopWindowFile$FileUtils;->zipFile(Ljava/io/File;Ljava/lang/String;Ljava/util/zip/ZipOutputStream;Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v4

    if-nez v4, :cond_2

    .line 191
    if-eqz v3, :cond_3

    .line 192
    invoke-virtual {v3}, Ljava/util/zip/ZipOutputStream;->finish()V

    .line 193
    invoke-virtual {v3}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 187
    :cond_3
    return v5

    .line 189
    .end local v0    # "srcFile":Ljava/io/File;
    :cond_4
    const/4 v4, 0x1

    .line 191
    if-eqz v3, :cond_5

    .line 192
    invoke-virtual {v3}, Ljava/util/zip/ZipOutputStream;->finish()V

    .line 193
    invoke-virtual {v3}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 189
    :cond_5
    return v4

    .line 190
    .end local v1    # "srcFile$iterator":Ljava/util/Iterator;
    .end local v3    # "zos":Ljava/util/zip/ZipOutputStream;
    .restart local v2    # "zos":Ljava/util/zip/ZipOutputStream;
    :catchall_0
    move-exception v4

    .line 191
    .end local v2    # "zos":Ljava/util/zip/ZipOutputStream;
    :goto_0
    if-eqz v2, :cond_6

    .line 192
    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->finish()V

    .line 193
    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 190
    :cond_6
    throw v4

    .restart local v3    # "zos":Ljava/util/zip/ZipOutputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "zos":Ljava/util/zip/ZipOutputStream;
    .local v2, "zos":Ljava/util/zip/ZipOutputStream;
    goto :goto_0
.end method

.method public static zipFiles(Ljava/util/Collection;Ljava/lang/String;)Z
    .locals 1
    .param p1, "zipFilePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 124
    .local p0, "srcFiles":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/server/am/PKTopWindowFile$FileUtils;->zipFiles(Ljava/util/Collection;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static zipFiles(Ljava/util/Collection;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "zipFilePath"    # Ljava/lang/String;
    .param p2, "comment"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p0, "srcFilePaths":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 140
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    return v6

    .line 141
    :cond_1
    const/4 v2, 0x0

    .line 143
    .local v2, "zos":Ljava/util/zip/ZipOutputStream;
    :try_start_0
    new-instance v3, Ljava/util/zip/ZipOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    .local v3, "zos":Ljava/util/zip/ZipOutputStream;
    :try_start_1
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .end local v2    # "zos":Ljava/util/zip/ZipOutputStream;
    move-result-object v1

    .local v1, "srcFile$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 145
    .local v0, "srcFile":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/am/PKTopWindowFile$FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-static {v4, v5, v3, p2}, Lcom/android/server/am/PKTopWindowFile$FileUtils;->zipFile(Ljava/io/File;Ljava/lang/String;Ljava/util/zip/ZipOutputStream;Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v4

    if-nez v4, :cond_2

    .line 149
    if-eqz v3, :cond_3

    .line 150
    invoke-virtual {v3}, Ljava/util/zip/ZipOutputStream;->finish()V

    .line 151
    invoke-virtual {v3}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 145
    :cond_3
    return v6

    .line 147
    .end local v0    # "srcFile":Ljava/lang/String;
    :cond_4
    const/4 v4, 0x1

    .line 149
    if-eqz v3, :cond_5

    .line 150
    invoke-virtual {v3}, Ljava/util/zip/ZipOutputStream;->finish()V

    .line 151
    invoke-virtual {v3}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 147
    :cond_5
    return v4

    .line 148
    .end local v1    # "srcFile$iterator":Ljava/util/Iterator;
    .end local v3    # "zos":Ljava/util/zip/ZipOutputStream;
    .restart local v2    # "zos":Ljava/util/zip/ZipOutputStream;
    :catchall_0
    move-exception v4

    .line 149
    .end local v2    # "zos":Ljava/util/zip/ZipOutputStream;
    :goto_0
    if-eqz v2, :cond_6

    .line 150
    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->finish()V

    .line 151
    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 148
    :cond_6
    throw v4

    .restart local v3    # "zos":Ljava/util/zip/ZipOutputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "zos":Ljava/util/zip/ZipOutputStream;
    .local v2, "zos":Ljava/util/zip/ZipOutputStream;
    goto :goto_0
.end method
