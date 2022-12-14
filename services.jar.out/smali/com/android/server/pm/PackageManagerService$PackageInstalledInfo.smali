.class Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;
.super Ljava/lang/Object;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PackageInstalledInfo"
.end annotation


# instance fields
.field addedChildPackages:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;",
            ">;"
        }
    .end annotation
.end field

.field isReplace:Z

.field name:Ljava/lang/String;

.field newUsers:[I

.field origPackage:Ljava/lang/String;

.field origPermission:Ljava/lang/String;

.field origUsers:[I

.field pkg:Landroid/content/pm/PackageParser$Package;

.field removedInfo:Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;

.field returnCode:I

.field returnMsg:Ljava/lang/String;

.field uid:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 14634
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14647
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->isReplace:Z

    .line 14634
    return-void
.end method

.method private setReturnMessage(Ljava/lang/String;)V
    .locals 3
    .param p1, "returnMsg"    # Ljava/lang/String;

    .prologue
    .line 14676
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnMsg:Ljava/lang/String;

    .line 14677
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->addedChildPackages:Landroid/util/ArrayMap;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->addedChildPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 14678
    .local v0, "childCount":I
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 14679
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->addedChildPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;

    iput-object p1, v2, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnMsg:Ljava/lang/String;

    .line 14678
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 14677
    .end local v0    # "childCount":I
    .end local v1    # "i":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "childCount":I
    goto :goto_0

    .line 14675
    .restart local v1    # "i":I
    :cond_1
    return-void
.end method


# virtual methods
.method public setError(ILjava/lang/String;)V
    .locals 1
    .param p1, "code"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 14650
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->setReturnCode(I)V

    .line 14651
    invoke-direct {p0, p2}, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->setReturnMessage(Ljava/lang/String;)V

    .line 14652
    const-string/jumbo v0, "PackageManager"

    invoke-static {v0, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 14649
    return-void
.end method

.method public setError(Ljava/lang/String;Landroid/content/pm/PackageParser$PackageParserException;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Landroid/content/pm/PackageParser$PackageParserException;

    .prologue
    .line 14656
    iget v0, p2, Landroid/content/pm/PackageParser$PackageParserException;->error:I

    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->setReturnCode(I)V

    .line 14657
    invoke-static {p1, p2}, Landroid/util/ExceptionUtils;->getCompleteMessage(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->setReturnMessage(Ljava/lang/String;)V

    .line 14658
    const-string/jumbo v0, "PackageManager"

    invoke-static {v0, p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 14655
    return-void
.end method

.method public setError(Ljava/lang/String;Lcom/android/server/pm/PackageManagerException;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Lcom/android/server/pm/PackageManagerException;

    .prologue
    .line 14662
    iget v0, p2, Lcom/android/server/pm/PackageManagerException;->error:I

    iput v0, p0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnCode:I

    .line 14663
    invoke-static {p1, p2}, Landroid/util/ExceptionUtils;->getCompleteMessage(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->setReturnMessage(Ljava/lang/String;)V

    .line 14664
    const-string/jumbo v0, "PackageManager"

    invoke-static {v0, p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 14661
    return-void
.end method

.method public setReturnCode(I)V
    .locals 3
    .param p1, "returnCode"    # I

    .prologue
    .line 14668
    iput p1, p0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnCode:I

    .line 14669
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->addedChildPackages:Landroid/util/ArrayMap;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->addedChildPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 14670
    .local v0, "childCount":I
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 14671
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->addedChildPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;

    iput p1, v2, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnCode:I

    .line 14670
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 14669
    .end local v0    # "childCount":I
    .end local v1    # "i":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "childCount":I
    goto :goto_0

    .line 14667
    .restart local v1    # "i":I
    :cond_1
    return-void
.end method
