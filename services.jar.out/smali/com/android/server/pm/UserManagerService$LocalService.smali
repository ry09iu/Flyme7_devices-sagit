.class Lcom/android/server/pm/UserManagerService$LocalService;
.super Landroid/os/UserManagerInternal;
.source "UserManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/UserManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocalService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/UserManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/pm/UserManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pm/UserManagerService;

    .prologue
    .line 3398
    iput-object p1, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-direct {p0}, Landroid/os/UserManagerInternal;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/UserManagerService$LocalService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pm/UserManagerService;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService$LocalService;-><init>(Lcom/android/server/pm/UserManagerService;)V

    return-void
.end method


# virtual methods
.method public addUserRestrictionsListener(Landroid/os/UserManagerInternal$UserRestrictionsListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/os/UserManagerInternal$UserRestrictionsListener;

    .prologue
    .line 3438
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->-get8(Lcom/android/server/pm/UserManagerService;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    .line 3439
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->-get8(Lcom/android/server/pm/UserManagerService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 3437
    return-void

    .line 3438
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public createUserEvenWhenDisallowed(Ljava/lang/String;I)Landroid/content/pm/UserInfo;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .prologue
    const/4 v4, 0x1

    .line 3541
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    const/16 v2, -0x2710

    const/4 v3, 0x0

    invoke-static {v1, p1, p2, v2, v3}, Lcom/android/server/pm/UserManagerService;->-wrap0(Lcom/android/server/pm/UserManagerService;Ljava/lang/String;IIZ)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 3544
    .local v0, "user":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3548
    :cond_0
    :goto_0
    return-object v0

    .line 3545
    :cond_1
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    const-string/jumbo v2, "no_sms"

    iget v3, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v2, v4, v3}, Lcom/android/server/pm/UserManagerService;->setUserRestriction(Ljava/lang/String;ZI)V

    .line 3546
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    const-string/jumbo v2, "no_outgoing_calls"

    iget v3, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v2, v4, v3}, Lcom/android/server/pm/UserManagerService;->setUserRestriction(Ljava/lang/String;ZI)V

    goto :goto_0
.end method

.method public getBaseUserRestrictions(I)Landroid/os/Bundle;
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 3408
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->-get6(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 3409
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->-get1(Lcom/android/server/pm/UserManagerService;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 3408
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getUserRestriction(ILjava/lang/String;)Z
    .locals 1
    .param p1, "userId"    # I
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 3433
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerService;->getUserRestrictions(I)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isUserRunning(I)Z
    .locals 4
    .param p1, "userId"    # I

    .prologue
    const/4 v0, 0x0

    .line 3553
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v1}, Lcom/android/server/pm/UserManagerService;->-get9(Lcom/android/server/pm/UserManagerService;)Landroid/util/SparseIntArray;

    move-result-object v1

    monitor-enter v1

    .line 3554
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v2}, Lcom/android/server/pm/UserManagerService;->-get9(Lcom/android/server/pm/UserManagerService;)Landroid/util/SparseIntArray;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseIntArray;->get(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-ltz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    monitor-exit v1

    return v0

    .line 3553
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public isUserUnlockingOrUnlocked(I)Z
    .locals 5
    .param p1, "userId"    # I

    .prologue
    const/4 v1, 0x1

    .line 3574
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v2}, Lcom/android/server/pm/UserManagerService;->-get9(Lcom/android/server/pm/UserManagerService;)Landroid/util/SparseIntArray;

    move-result-object v2

    monitor-enter v2

    .line 3575
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v3}, Lcom/android/server/pm/UserManagerService;->-get9(Lcom/android/server/pm/UserManagerService;)Landroid/util/SparseIntArray;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3, p1, v4}, Landroid/util/SparseIntArray;->get(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 3576
    .local v0, "state":I
    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    .line 3577
    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    :cond_0
    :goto_0
    monitor-exit v2

    .line 3576
    return v1

    .line 3577
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 3574
    .end local v0    # "state":I
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public onEphemeralUserStop(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 3523
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v1}, Lcom/android/server/pm/UserManagerService;->-get10(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 3524
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v1, p1}, Lcom/android/server/pm/UserManagerService;->-wrap1(Lcom/android/server/pm/UserManagerService;I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 3525
    .local v0, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isEphemeral()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3528
    iget v1, v0, Landroid/content/pm/UserInfo;->flags:I

    or-int/lit8 v1, v1, 0x40

    iput v1, v0, Landroid/content/pm/UserInfo;->flags:I

    .line 3529
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3531
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/content/pm/UserInfo;->guestToRemove:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    .line 3522
    return-void

    .line 3523
    .end local v0    # "userInfo":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public removeAllUsers()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 3492
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    if-nez v3, :cond_0

    .line 3494
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v3}, Lcom/android/server/pm/UserManagerService;->-wrap4(Lcom/android/server/pm/UserManagerService;)V

    .line 3491
    :goto_0
    return-void

    .line 3497
    :cond_0
    new-instance v2, Lcom/android/server/pm/UserManagerService$LocalService$1;

    invoke-direct {v2, p0}, Lcom/android/server/pm/UserManagerService$LocalService$1;-><init>(Lcom/android/server/pm/UserManagerService$LocalService;)V

    .line 3509
    .local v2, "userSwitchedReceiver":Landroid/content/BroadcastReceiver;
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 3510
    .local v1, "userSwitchedFilter":Landroid/content/IntentFilter;
    const-string/jumbo v3, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3511
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v3}, Lcom/android/server/pm/UserManagerService;->-get2(Lcom/android/server/pm/UserManagerService;)Landroid/content/Context;

    move-result-object v3

    .line 3512
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v4}, Lcom/android/server/pm/UserManagerService;->-get3(Lcom/android/server/pm/UserManagerService;)Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x0

    .line 3511
    invoke-virtual {v3, v2, v1, v5, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 3516
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v3}, Lcom/android/server/pm/UserManagerService;->-get2(Lcom/android/server/pm/UserManagerService;)Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "activity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 3517
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0, v6}, Landroid/app/ActivityManager;->switchUser(I)Z

    goto :goto_0
.end method

.method public removeUserRestrictionsListener(Landroid/os/UserManagerInternal$UserRestrictionsListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/os/UserManagerInternal$UserRestrictionsListener;

    .prologue
    .line 3445
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->-get8(Lcom/android/server/pm/UserManagerService;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    .line 3446
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->-get8(Lcom/android/server/pm/UserManagerService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 3444
    return-void

    .line 3445
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public removeUserState(I)V
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 3567
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->-get9(Lcom/android/server/pm/UserManagerService;)Landroid/util/SparseIntArray;

    move-result-object v1

    monitor-enter v1

    .line 3568
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->-get9(Lcom/android/server/pm/UserManagerService;)Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 3566
    return-void

    .line 3567
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setBaseUserRestrictionsByDpmsForMigration(ILandroid/os/Bundle;)V
    .locals 5
    .param p1, "userId"    # I
    .param p2, "baseRestrictions"    # Landroid/os/Bundle;

    .prologue
    .line 3416
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v1}, Lcom/android/server/pm/UserManagerService;->-get6(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 3417
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v1}, Lcom/android/server/pm/UserManagerService;->-get1(Lcom/android/server/pm/UserManagerService;)Landroid/util/SparseArray;

    move-result-object v1

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3, p2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v1, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3418
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v1, p1}, Lcom/android/server/pm/UserManagerService;->-wrap3(Lcom/android/server/pm/UserManagerService;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 3421
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v1, p1}, Lcom/android/server/pm/UserManagerService;->-wrap2(Lcom/android/server/pm/UserManagerService;I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v0

    .line 3422
    .local v0, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v1}, Lcom/android/server/pm/UserManagerService;->-get5(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 3423
    if-eqz v0, :cond_0

    .line 3424
    :try_start_1
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v1, v0}, Lcom/android/server/pm/UserManagerService;->-wrap8(Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/UserManagerService$UserData;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_0
    monitor-exit v2

    .line 3415
    return-void

    .line 3416
    .end local v0    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 3426
    .restart local v0    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :cond_0
    :try_start_2
    const-string/jumbo v1, "UserManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "UserInfo not found for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 3422
    :catchall_1
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public setDeviceManaged(Z)V
    .locals 2
    .param p1, "isManaged"    # Z

    .prologue
    .line 3452
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->-get10(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 3453
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0, p1}, Lcom/android/server/pm/UserManagerService;->-set1(Lcom/android/server/pm/UserManagerService;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 3451
    return-void

    .line 3452
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setDevicePolicyUserRestrictions(ILandroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "userId"    # I
    .param p2, "localRestrictions"    # Landroid/os/Bundle;
    .param p3, "globalRestrictions"    # Landroid/os/Bundle;

    .prologue
    .line 3402
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/pm/UserManagerService;->setDevicePolicyUserRestrictionsInner(ILandroid/os/Bundle;Landroid/os/Bundle;)V

    .line 3401
    return-void
.end method

.method public setForceEphemeralUsers(Z)V
    .locals 2
    .param p1, "forceEphemeralUsers"    # Z

    .prologue
    .line 3485
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->-get10(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 3486
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0, p1}, Lcom/android/server/pm/UserManagerService;->-set0(Lcom/android/server/pm/UserManagerService;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 3484
    return-void

    .line 3485
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setUserIcon(ILandroid/graphics/Bitmap;)V
    .locals 7
    .param p1, "userId"    # I
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 3466
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3468
    .local v0, "ident":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v3}, Lcom/android/server/pm/UserManagerService;->-get5(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3469
    :try_start_1
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v3, p1}, Lcom/android/server/pm/UserManagerService;->-wrap2(Lcom/android/server/pm/UserManagerService;I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v2

    .line 3470
    .local v2, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    if-eqz v2, :cond_0

    iget-object v3, v2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-boolean v3, v3, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v3, :cond_1

    .line 3471
    :cond_0
    const-string/jumbo v3, "UserManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setUserIcon: unknown user #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3479
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3472
    return-void

    .line 3474
    :cond_1
    :try_start_3
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    iget-object v5, v2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-static {v3, v5, p2}, Lcom/android/server/pm/UserManagerService;->-wrap7(Lcom/android/server/pm/UserManagerService;Landroid/content/pm/UserInfo;Landroid/graphics/Bitmap;)V

    .line 3475
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v3, v2}, Lcom/android/server/pm/UserManagerService;->-wrap8(Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/UserManagerService$UserData;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v4

    .line 3477
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v3, p1}, Lcom/android/server/pm/UserManagerService;->-wrap6(Lcom/android/server/pm/UserManagerService;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 3479
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3465
    return-void

    .line 3468
    .end local v2    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :catchall_0
    move-exception v3

    :try_start_5
    monitor-exit v4

    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 3478
    :catchall_1
    move-exception v3

    .line 3479
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3478
    throw v3
.end method

.method public setUserManaged(IZ)V
    .locals 2
    .param p1, "userId"    # I
    .param p2, "isManaged"    # Z

    .prologue
    .line 3459
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->-get10(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 3460
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->-get4(Lcom/android/server/pm/UserManagerService;)Landroid/util/SparseBooleanArray;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 3458
    return-void

    .line 3459
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setUserState(II)V
    .locals 2
    .param p1, "userId"    # I
    .param p2, "userState"    # I

    .prologue
    .line 3560
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->-get9(Lcom/android/server/pm/UserManagerService;)Landroid/util/SparseIntArray;

    move-result-object v1

    monitor-enter v1

    .line 3561
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->-get9(Lcom/android/server/pm/UserManagerService;)Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 3559
    return-void

    .line 3560
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
