.class Lcom/android/server/pm/PackageManagerServiceInjector$PackageDeleteConfirmObserver;
.super Lmiui/content/pm/IPackageDeleteConfirmObserver$Stub;
.source "PackageManagerServiceInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerServiceInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PackageDeleteConfirmObserver"
.end annotation


# instance fields
.field delete:Z

.field finished:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 667
    invoke-direct {p0}, Lmiui/content/pm/IPackageDeleteConfirmObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfirm(Z)V
    .locals 1
    .param p1, "delete"    # Z

    .prologue
    .line 672
    monitor-enter p0

    .line 673
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/pm/PackageManagerServiceInjector$PackageDeleteConfirmObserver;->finished:Z

    .line 674
    iput-boolean p1, p0, Lcom/android/server/pm/PackageManagerServiceInjector$PackageDeleteConfirmObserver;->delete:Z

    .line 675
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerServiceInjector$PackageDeleteConfirmObserver;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 671
    return-void

    .line 672
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
