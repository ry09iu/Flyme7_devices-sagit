.class Lcom/android/server/pm/PackageManagerService$OriginInfo;
.super Ljava/lang/Object;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "OriginInfo"
.end annotation


# instance fields
.field final cid:Ljava/lang/String;

.field final existing:Z

.field final file:Ljava/io/File;

.field final resolvedFile:Ljava/io/File;

.field final resolvedPath:Ljava/lang/String;

.field final staged:Z


# direct methods
.method private constructor <init>(Ljava/io/File;Ljava/lang/String;ZZ)V
    .locals 2
    .param p1, "file"    # Ljava/io/File;
    .param p2, "cid"    # Ljava/lang/String;
    .param p3, "staged"    # Z
    .param p4, "existing"    # Z

    .prologue
    const/4 v0, 0x0

    .line 13238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13239
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$OriginInfo;->file:Ljava/io/File;

    .line 13240
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$OriginInfo;->cid:Ljava/lang/String;

    .line 13241
    iput-boolean p3, p0, Lcom/android/server/pm/PackageManagerService$OriginInfo;->staged:Z

    .line 13242
    iput-boolean p4, p0, Lcom/android/server/pm/PackageManagerService$OriginInfo;->existing:Z

    .line 13244
    if-eqz p2, :cond_0

    .line 13245
    invoke-static {p2}, Lcom/android/internal/content/PackageHelper;->getSdDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedPath:Ljava/lang/String;

    .line 13246
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedFile:Ljava/io/File;

    .line 13238
    :goto_0
    return-void

    .line 13247
    :cond_0
    if-eqz p1, :cond_1

    .line 13248
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedPath:Ljava/lang/String;

    .line 13249
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedFile:Ljava/io/File;

    goto :goto_0

    .line 13251
    :cond_1
    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedPath:Ljava/lang/String;

    .line 13252
    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedFile:Ljava/io/File;

    goto :goto_0
.end method

.method static fromExistingFile(Ljava/io/File;)Lcom/android/server/pm/PackageManagerService$OriginInfo;
    .locals 4
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 13227
    new-instance v0, Lcom/android/server/pm/PackageManagerService$OriginInfo;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/server/pm/PackageManagerService$OriginInfo;-><init>(Ljava/io/File;Ljava/lang/String;ZZ)V

    return-object v0
.end method

.method static fromNothing()Lcom/android/server/pm/PackageManagerService$OriginInfo;
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 13219
    new-instance v0, Lcom/android/server/pm/PackageManagerService$OriginInfo;

    invoke-direct {v0, v2, v2, v1, v1}, Lcom/android/server/pm/PackageManagerService$OriginInfo;-><init>(Ljava/io/File;Ljava/lang/String;ZZ)V

    return-object v0
.end method

.method static fromStagedContainer(Ljava/lang/String;)Lcom/android/server/pm/PackageManagerService$OriginInfo;
    .locals 4
    .param p0, "cid"    # Ljava/lang/String;

    .prologue
    .line 13235
    new-instance v0, Lcom/android/server/pm/PackageManagerService$OriginInfo;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, p0, v2, v3}, Lcom/android/server/pm/PackageManagerService$OriginInfo;-><init>(Ljava/io/File;Ljava/lang/String;ZZ)V

    return-object v0
.end method

.method static fromStagedFile(Ljava/io/File;)Lcom/android/server/pm/PackageManagerService$OriginInfo;
    .locals 4
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 13231
    new-instance v0, Lcom/android/server/pm/PackageManagerService$OriginInfo;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/server/pm/PackageManagerService$OriginInfo;-><init>(Ljava/io/File;Ljava/lang/String;ZZ)V

    return-object v0
.end method

.method static fromUntrustedFile(Ljava/io/File;)Lcom/android/server/pm/PackageManagerService$OriginInfo;
    .locals 3
    .param p0, "file"    # Ljava/io/File;

    .prologue
    const/4 v2, 0x0

    .line 13223
    new-instance v0, Lcom/android/server/pm/PackageManagerService$OriginInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v2, v2}, Lcom/android/server/pm/PackageManagerService$OriginInfo;-><init>(Ljava/io/File;Ljava/lang/String;ZZ)V

    return-object v0
.end method


# virtual methods
.method public getLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13214
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$OriginInfo;->file:Ljava/io/File;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$OriginInfo;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$OriginInfo;->cid:Ljava/lang/String;

    goto :goto_0
.end method
