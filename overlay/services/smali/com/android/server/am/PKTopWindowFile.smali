.class public Lcom/android/server/am/PKTopWindowFile;
.super Ljava/lang/Object;
.source "PKTopWindowFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/PKTopWindowFile$FileUtils;
    }
.end annotation


# static fields
.field public static final PK_ICON_DIR:Ljava/lang/String;

.field public static final PK_ICON_FILE:Ljava/io/File;

.field public static final PK_ICON_ZIP_DIR:Ljava/lang/String;

.field public static final PK_ICON_ZIP_FILE:Ljava/io/File;

.field public static final TAG:Ljava/lang/String; = "PKTopWindowFile"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "system"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "pkicons"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/PKTopWindowFile;->PK_ICON_DIR:Ljava/lang/String;

    .line 37
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/server/am/PKTopWindowFile;->PK_ICON_DIR:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/am/PKTopWindowFile;->PK_ICON_FILE:Ljava/io/File;

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "system"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "pkicons.zip"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/PKTopWindowFile;->PK_ICON_ZIP_DIR:Ljava/lang/String;

    .line 39
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/server/am/PKTopWindowFile;->PK_ICON_ZIP_DIR:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/am/PKTopWindowFile;->PK_ICON_ZIP_FILE:Ljava/io/File;

    .line 34
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createPkLogoDir()Z
    .locals 2

    .prologue
    .line 42
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/server/am/PKTopWindowFile;->PK_ICON_DIR:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 43
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 44
    invoke-static {v0}, Lcom/android/server/am/PKTopWindowFile$FileUtils;->deleteDir(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 45
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v1

    return v1

    .line 47
    :cond_0
    const/4 v1, 0x0

    return v1

    .line 50
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v1

    return v1
.end method
