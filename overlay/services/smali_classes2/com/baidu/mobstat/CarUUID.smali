.class public Lcom/baidu/mobstat/CarUUID;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string/jumbo v0, "(\\w{32})"

    .line 36
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/baidu/mobstat/CarUUID;->a:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 68
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "-"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/File;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 159
    if-nez p0, :cond_1

    .line 180
    :cond_0
    :goto_0
    return-object v0

    .line 159
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 162
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v1, 0x400

    .line 164
    :try_start_1
    new-array v3, v1, [B

    .line 166
    invoke-virtual {v2, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    .line 168
    new-instance v1, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v1, v3, v5, v4}, Ljava/lang/String;-><init>([BII)V

    .line 170
    sget-object v3, Lcom/baidu/mobstat/CarUUID;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 172
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v3

    if-nez v3, :cond_2

    .line 176
    :goto_1
    invoke-static {v2}, Lcom/baidu/mobstat/fc;->a(Ljava/io/Closeable;)V

    .line 172
    return-object v0

    :cond_2
    move-object v0, v1

    goto :goto_1

    :catch_0
    move-exception v1

    move-object v1, v0

    .line 176
    :goto_2
    invoke-static {v1}, Lcom/baidu/mobstat/fc;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 177
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    .line 176
    :goto_3
    invoke-static {v2}, Lcom/baidu/mobstat/fc;->a(Ljava/io/Closeable;)V

    .line 177
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3

    .line 172
    :catch_1
    move-exception v1

    move-object v1, v2

    goto :goto_2
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/16 v5, 0x15

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 113
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v5, :cond_0

    move v0, v1

    :goto_0
    const-string/jumbo v4, "libdueros_uuid.so"

    .line 115
    invoke-virtual {p0, v4, v0}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 116
    :try_start_1
    invoke-static {v0, p1}, Lcom/baidu/mobstat/CarUUID;->a(Ljava/io/FileOutputStream;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v3

    if-nez v3, :cond_1

    .line 130
    invoke-static {v0}, Lcom/baidu/mobstat/fc;->a(Ljava/io/Closeable;)V

    .line 133
    :goto_1
    return v2

    :cond_0
    move v0, v2

    .line 113
    goto :goto_0

    .line 117
    :cond_1
    :try_start_2
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ge v3, v5, :cond_2

    .line 130
    invoke-static {v0}, Lcom/baidu/mobstat/fc;->a(Ljava/io/Closeable;)V

    .line 125
    return v1

    .line 118
    :cond_2
    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    const-string/jumbo v4, "libdueros_uuid.so"

    .line 120
    invoke-virtual {p0, v4}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 122
    new-instance v5, Ljava/io/File;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x1c9

    invoke-static {v5, v3}, Lcom/baidu/mobstat/CarUUID;->a(Ljava/io/File;I)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v3

    if-nez v3, :cond_4

    :goto_2
    move v1, v2

    .line 130
    :cond_3
    invoke-static {v0}, Lcom/baidu/mobstat/fc;->a(Ljava/io/Closeable;)V

    .line 122
    return v1

    :cond_4
    const/16 v3, 0x1e4

    :try_start_4
    invoke-static {v4, v3}, Lcom/baidu/mobstat/CarUUID;->a(Ljava/io/File;I)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v3

    if-nez v3, :cond_3

    goto :goto_2

    .line 131
    :catch_0
    move-exception v0

    move-object v0, v3

    .line 130
    :goto_3
    invoke-static {v0}, Lcom/baidu/mobstat/fc;->a(Ljava/io/Closeable;)V

    goto :goto_1

    .line 131
    :catchall_0
    move-exception v0

    .line 130
    :goto_4
    invoke-static {v3}, Lcom/baidu/mobstat/fc;->a(Ljava/io/Closeable;)V

    .line 131
    throw v0

    :catchall_1
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3
.end method

.method private static a(Ljava/io/File;I)Z
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 197
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 202
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 203
    invoke-static {v0, p1}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    return v2

    .line 198
    :cond_0
    return v2

    .line 205
    :catch_0
    move-exception v0

    .line 210
    const/4 v0, 0x0

    return v0
.end method

.method private static a(Ljava/io/FileOutputStream;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 185
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 186
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    .line 192
    const/4 v0, 0x0

    return v0
.end method

.method private static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "libdueros_uuid.so"

    .line 72
    invoke-virtual {p0, v0}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 74
    invoke-static {v0}, Lcom/baidu/mobstat/CarUUID;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    const-string/jumbo v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 137
    invoke-static {p0, v0}, Lcom/baidu/mobstat/CarUUID;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "backups/.SystemConfig"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 142
    new-instance v2, Ljava/io/File;

    const-string/jumbo v1, ".dueros_uuid"

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 146
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    :try_start_1
    invoke-static {v0, p1}, Lcom/baidu/mobstat/CarUUID;->a(Ljava/io/FileOutputStream;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v1

    .line 152
    invoke-static {v0}, Lcom/baidu/mobstat/fc;->a(Ljava/io/Closeable;)V

    .line 148
    return v1

    .line 138
    :cond_0
    return v3

    .line 148
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 152
    :goto_0
    invoke-static {v0}, Lcom/baidu/mobstat/fc;->a(Ljava/io/Closeable;)V

    .line 155
    return v3

    .line 153
    :catchall_0
    move-exception v0

    .line 152
    :goto_1
    invoke-static {v1}, Lcom/baidu/mobstat/fc;->a(Ljava/io/Closeable;)V

    .line 153
    throw v0

    :catchall_1
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_1

    .line 148
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    const-string/jumbo v0, "android.permission.READ_EXTERNAL_STORAGE"

    .line 78
    invoke-static {p0, v0}, Lcom/baidu/mobstat/CarUUID;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "backups/.SystemConfig"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 83
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, ".dueros_uuid"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 85
    invoke-static {v1}, Lcom/baidu/mobstat/CarUUID;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 79
    return-object v0
.end method

.method private static c(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 214
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    .line 215
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    .line 214
    invoke-virtual {p0, p1, v1, v2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 89
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 90
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    .line 91
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 93
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 107
    return-object v5

    .line 93
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 94
    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 98
    new-instance v3, Ljava/io/File;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    const-string/jumbo v4, "files"

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    new-instance v0, Ljava/io/File;

    const-string/jumbo v4, "libdueros_uuid.so"

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 101
    invoke-static {v0}, Lcom/baidu/mobstat/CarUUID;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 102
    if-eqz v0, :cond_0

    .line 103
    return-object v0
.end method

.method public static optUUID(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    invoke-static {p0}, Lcom/baidu/mobstat/CarUUID;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 40
    if-nez v0, :cond_0

    .line 44
    invoke-static {p0}, Lcom/baidu/mobstat/CarUUID;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 45
    if-nez v0, :cond_1

    .line 50
    invoke-static {p0}, Lcom/baidu/mobstat/CarUUID;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 51
    if-nez v0, :cond_2

    .line 57
    invoke-static {p0}, Lcom/baidu/mobstat/CarUUID;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 58
    if-nez v0, :cond_3

    const-string/jumbo v0, ""

    .line 64
    return-object v0

    .line 41
    :cond_0
    return-object v0

    .line 46
    :cond_1
    invoke-static {p0, v0}, Lcom/baidu/mobstat/CarUUID;->a(Landroid/content/Context;Ljava/lang/String;)Z

    .line 47
    return-object v0

    .line 52
    :cond_2
    invoke-static {p0, v0}, Lcom/baidu/mobstat/CarUUID;->a(Landroid/content/Context;Ljava/lang/String;)Z

    .line 53
    invoke-static {p0, v0}, Lcom/baidu/mobstat/CarUUID;->b(Landroid/content/Context;Ljava/lang/String;)Z

    .line 54
    return-object v0

    .line 59
    :cond_3
    invoke-static {p0, v0}, Lcom/baidu/mobstat/CarUUID;->a(Landroid/content/Context;Ljava/lang/String;)Z

    .line 60
    invoke-static {p0, v0}, Lcom/baidu/mobstat/CarUUID;->b(Landroid/content/Context;Ljava/lang/String;)Z

    .line 61
    return-object v0
.end method
