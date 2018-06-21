.class Lcom/android/server/pm/PackageManagerService$13;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver2;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$deleteAllUsers:Z

.field final synthetic val$deleteFlags:I

.field final synthetic val$observer:Landroid/content/pm/IPackageDeleteObserver2;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$userId:I

.field final synthetic val$users:[I


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;ZLjava/lang/String;II[ILandroid/content/pm/IPackageDeleteObserver2;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "val$deleteAllUsers"    # Z
    .param p3, "val$packageName"    # Ljava/lang/String;
    .param p4, "val$userId"    # I
    .param p5, "val$deleteFlags"    # I
    .param p6, "val$users"    # [I
    .param p7, "val$observer"    # Landroid/content/pm/IPackageDeleteObserver2;

    .prologue
    .line 16115
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$13;->this$0:Lcom/android/server/pm/PackageManagerService;

    iput-boolean p2, p0, Lcom/android/server/pm/PackageManagerService$13;->val$deleteAllUsers:Z

    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$13;->val$packageName:Ljava/lang/String;

    iput p4, p0, Lcom/android/server/pm/PackageManagerService$13;->val$userId:I

    iput p5, p0, Lcom/android/server/pm/PackageManagerService$13;->val$deleteFlags:I

    iput-object p6, p0, Lcom/android/server/pm/PackageManagerService$13;->val$users:[I

    iput-object p7, p0, Lcom/android/server/pm/PackageManagerService$13;->val$observer:Landroid/content/pm/IPackageDeleteObserver2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 16117
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$13;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    invoke-virtual {v6, p0}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 16119
    iget-boolean v6, p0, Lcom/android/server/pm/PackageManagerService$13;->val$deleteAllUsers:Z

    if-nez v6, :cond_0

    .line 16120
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$13;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$13;->val$packageName:Ljava/lang/String;

    iget v8, p0, Lcom/android/server/pm/PackageManagerService$13;->val$userId:I

    iget v9, p0, Lcom/android/server/pm/PackageManagerService$13;->val$deleteFlags:I

    invoke-static {v6, v7, v8, v9}, Lcom/android/server/pm/PackageManagerService;->-wrap11(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;II)I

    move-result v3

    .line 16144
    .local v3, "returnCode":I
    :goto_0
    :try_start_0
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$13;->val$observer:Landroid/content/pm/IPackageDeleteObserver2;

    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$13;->val$packageName:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-interface {v6, v7, v3, v8}, Landroid/content/pm/IPackageDeleteObserver2;->onPackageDeleted(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16150
    :goto_1
    move v2, v3

    .line 16151
    .local v2, "retCode":I
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$13;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    new-instance v7, Lcom/android/server/pm/PackageManagerService$13$1;

    iget-object v8, p0, Lcom/android/server/pm/PackageManagerService$13;->val$packageName:Ljava/lang/String;

    invoke-direct {v7, p0, v8, v2}, Lcom/android/server/pm/PackageManagerService$13$1;-><init>(Lcom/android/server/pm/PackageManagerService$13;Ljava/lang/String;I)V

    invoke-virtual {v6, v7}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->post(Ljava/lang/Runnable;)Z

    .line 16116
    return-void

    .line 16122
    .end local v2    # "retCode":I
    .end local v3    # "returnCode":I
    :cond_0
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$13;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$13;->val$packageName:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/server/pm/PackageManagerService$13;->val$users:[I

    invoke-static {v6, v7, v8}, Lcom/android/server/pm/PackageManagerService;->-wrap10(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;[I)[I

    move-result-object v0

    .line 16124
    .local v0, "blockUninstallUserIds":[I
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 16125
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$13;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$13;->val$packageName:Ljava/lang/String;

    iget v8, p0, Lcom/android/server/pm/PackageManagerService$13;->val$userId:I

    iget v9, p0, Lcom/android/server/pm/PackageManagerService$13;->val$deleteFlags:I

    invoke-static {v6, v7, v8, v9}, Lcom/android/server/pm/PackageManagerService;->-wrap11(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;II)I

    move-result v3

    .restart local v3    # "returnCode":I
    goto :goto_0

    .line 16128
    .end local v3    # "returnCode":I
    :cond_1
    iget v6, p0, Lcom/android/server/pm/PackageManagerService$13;->val$deleteFlags:I

    and-int/lit8 v4, v6, -0x3

    .line 16129
    .local v4, "userFlags":I
    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$13;->val$users:[I

    const/4 v6, 0x0

    array-length v8, v7

    :goto_2
    if-ge v6, v8, :cond_3

    aget v5, v7, v6

    .line 16130
    .local v5, "userId":I
    invoke-static {v0, v5}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v9

    if-nez v9, :cond_2

    .line 16131
    iget-object v9, p0, Lcom/android/server/pm/PackageManagerService$13;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v10, p0, Lcom/android/server/pm/PackageManagerService$13;->val$packageName:Ljava/lang/String;

    invoke-static {v9, v10, v5, v4}, Lcom/android/server/pm/PackageManagerService;->-wrap11(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;II)I

    move-result v3

    .line 16132
    .restart local v3    # "returnCode":I
    const/4 v9, 0x1

    if-eq v3, v9, :cond_2

    .line 16133
    const-string/jumbo v9, "PackageManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Package delete failed for user "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 16134
    const-string/jumbo v11, ", returnCode "

    .line 16133
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 16129
    .end local v3    # "returnCode":I
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 16140
    .end local v5    # "userId":I
    :cond_3
    const/4 v3, -0x4

    .restart local v3    # "returnCode":I
    goto :goto_0

    .line 16145
    .end local v0    # "blockUninstallUserIds":[I
    .end local v4    # "userFlags":I
    :catch_0
    move-exception v1

    .line 16146
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v6, "PackageManager"

    const-string/jumbo v7, "Observer no longer exists."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
