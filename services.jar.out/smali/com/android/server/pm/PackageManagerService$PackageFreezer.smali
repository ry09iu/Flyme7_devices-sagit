.class Lcom/android/server/pm/PackageManagerService$PackageFreezer;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageFreezer"
.end annotation


# instance fields
.field private final mChildren:[Lcom/android/server/pm/PackageManagerService$PackageFreezer;

.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field private final mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mPackageName:Ljava/lang/String;

.field private final mWeFroze:Z

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;

    .prologue
    const/4 v1, 0x0

    .line 20771
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20762
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 20763
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 20772
    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->mPackageName:Ljava/lang/String;

    .line 20773
    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->mChildren:[Lcom/android/server/pm/PackageManagerService$PackageFreezer;

    .line 20774
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->mWeFroze:Z

    .line 20775
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string/jumbo v1, "close"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 20771
    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;ILjava/lang/String;)V
    .locals 8
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "killReason"    # Ljava/lang/String;

    .prologue
    .line 20778
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20762
    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v4, p0, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 20763
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 20779
    iget-object v5, p1, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v5

    .line 20780
    :try_start_0
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->mPackageName:Ljava/lang/String;

    .line 20781
    iget-object v4, p1, Lcom/android/server/pm/PackageManagerService;->mFrozenPackages:Landroid/util/ArraySet;

    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->mWeFroze:Z

    .line 20783
    iget-object v4, p1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v4, v4, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    .line 20784
    .local v3, "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz v3, :cond_0

    .line 20785
    iget-object v4, v3, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    iget v6, v3, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {p1, v4, v6, p3, p4}, Lcom/android/server/pm/PackageManagerService;->-wrap27(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;IILjava/lang/String;)V

    .line 20788
    :cond_0
    iget-object v4, p1, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v4, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Package;

    .line 20789
    .local v2, "p":Landroid/content/pm/PackageParser$Package;
    if-eqz v2, :cond_1

    iget-object v4, v2, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    if-eqz v4, :cond_1

    .line 20790
    iget-object v4, v2, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 20791
    .local v0, "N":I
    new-array v4, v0, [Lcom/android/server/pm/PackageManagerService$PackageFreezer;

    iput-object v4, p0, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->mChildren:[Lcom/android/server/pm/PackageManagerService$PackageFreezer;

    .line 20792
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 20793
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->mChildren:[Lcom/android/server/pm/PackageManagerService$PackageFreezer;

    new-instance v7, Lcom/android/server/pm/PackageManagerService$PackageFreezer;

    iget-object v4, v2, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-direct {v7, p1, v4, p3, p4}, Lcom/android/server/pm/PackageManagerService$PackageFreezer;-><init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;ILjava/lang/String;)V

    aput-object v7, v6, v1

    .line 20792
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 20797
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_1
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->mChildren:[Lcom/android/server/pm/PackageManagerService$PackageFreezer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit v5

    .line 20800
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string/jumbo v5, "close"

    invoke-virtual {v4, v5}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 20778
    return-void

    .line 20779
    .end local v2    # "p":Landroid/content/pm/PackageParser$Package;
    .end local v3    # "ps":Lcom/android/server/pm/PackageSetting;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method


# virtual methods
.method public close()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 20815
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v2}, Ldalvik/system/CloseGuard;->close()V

    .line 20816
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 20817
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v2

    .line 20818
    :try_start_0
    iget-boolean v3, p0, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->mWeFroze:Z

    if-eqz v3, :cond_0

    .line 20819
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mFrozenPackages:Landroid/util/ArraySet;

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 20822
    :cond_0
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->mChildren:[Lcom/android/server/pm/PackageManagerService$PackageFreezer;

    if-eqz v3, :cond_1

    .line 20823
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->mChildren:[Lcom/android/server/pm/PackageManagerService$PackageFreezer;

    array-length v4, v3

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v0, v3, v1

    .line 20824
    .local v0, "freezer":Lcom/android/server/pm/PackageManagerService$PackageFreezer;
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20823
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "freezer":Lcom/android/server/pm/PackageManagerService$PackageFreezer;
    :cond_1
    monitor-exit v2

    .line 20814
    :cond_2
    return-void

    .line 20817
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 20806
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 20807
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20809
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 20804
    return-void

    .line 20808
    :catchall_0
    move-exception v0

    .line 20809
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 20808
    throw v0
.end method
