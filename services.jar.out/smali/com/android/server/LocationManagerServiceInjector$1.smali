.class final Lcom/android/server/LocationManagerServiceInjector$1;
.super Landroid/location/ILocationPolicyListener$Stub;
.source "LocationManagerServiceInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LocationManagerServiceInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 326
    invoke-direct {p0}, Landroid/location/ILocationPolicyListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onRestrictBackgroundChanged(Z)V
    .locals 3
    .param p1, "restrictBackground"    # Z

    .prologue
    .line 340
    invoke-static {}, Lcom/android/server/LocationManagerServiceInjector;->-get0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onRestrictBackgroundChanged(restrictBackground="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    invoke-static {}, Lcom/android/server/LocationManagerServiceInjector;->-get1()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 342
    :try_start_0
    invoke-static {p1}, Lcom/android/server/LocationManagerServiceInjector;->-set0(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 339
    return-void

    .line 341
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public onUidRulesChanged(II)V
    .locals 4
    .param p1, "uid"    # I
    .param p2, "uidRules"    # I

    .prologue
    .line 329
    invoke-static {}, Lcom/android/server/LocationManagerServiceInjector;->-get1()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 330
    :try_start_0
    invoke-static {}, Lcom/android/server/LocationManagerServiceInjector;->-get2()Landroid/util/SparseIntArray;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3}, Landroid/util/SparseIntArray;->get(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 331
    .local v0, "oldRules":I
    if-ne v0, p2, :cond_0

    monitor-exit v2

    return-void

    .line 333
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/android/server/LocationManagerServiceInjector;->-get2()Landroid/util/SparseIntArray;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    .line 335
    invoke-static {p1, p2}, Lcom/android/server/LocationManagerServiceInjector;->-wrap0(II)V

    .line 328
    return-void

    .line 329
    .end local v0    # "oldRules":I
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
