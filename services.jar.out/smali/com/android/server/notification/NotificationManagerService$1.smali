.class Lcom/android/server/notification/NotificationManagerService$1;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"

# interfaces
.implements Lcom/android/server/notification/NotificationDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/notification/NotificationManagerService;

    .prologue
    .line 496
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clearEffects()V
    .locals 3

    .prologue
    .line 599
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 601
    :try_start_0
    invoke-static {}, Landroid/os/MiuiProcess;->boostPriorityForLockedSection()V

    .line 603
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "NotificationService"

    const-string/jumbo v2, "clearEffects"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-wrap19(Lcom/android/server/notification/NotificationManagerService;)V

    .line 605
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-wrap20(Lcom/android/server/notification/NotificationManagerService;)V

    .line 606
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-wrap18(Lcom/android/server/notification/NotificationManagerService;)V

    .line 608
    invoke-static {}, Landroid/os/MiuiProcess;->resetPriorityAfterLockedSection()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 598
    return-void

    .line 599
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onClearAll(III)V
    .locals 8
    .param p1, "callingUid"    # I
    .param p2, "callingPid"    # I
    .param p3, "userId"    # I

    .prologue
    .line 528
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v7, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v7

    .line 529
    :try_start_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const/4 v4, 0x3

    const/4 v5, 0x0

    .line 530
    const/4 v6, 0x1

    move v1, p1

    move v2, p2

    move v3, p3

    .line 529
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/notification/NotificationManagerService;->cancelAllLocked(IIIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v7

    .line 527
    return-void

    .line 528
    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0
.end method

.method public onNotificationActionClick(IILjava/lang/String;I)V
    .locals 7
    .param p1, "callingUid"    # I
    .param p2, "callingPid"    # I
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "actionIndex"    # I

    .prologue
    .line 557
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v4, v3, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v4

    .line 558
    :try_start_0
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v3, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/NotificationRecord;

    .line 559
    .local v2, "r":Lcom/android/server/notification/NotificationRecord;
    if-nez v2, :cond_0

    .line 560
    const-string/jumbo v3, "NotificationService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "No notification with key: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    return-void

    :cond_0
    :try_start_1

    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v3, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService;->addFlymePackageClickNumber(IILjava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "now":J
    invoke-virtual {v2, v0, v1}, Lcom/android/server/notification/NotificationRecord;->getLifespanMs(J)I

    move-result v3

    invoke-virtual {v2, v0, v1}, Lcom/android/server/notification/NotificationRecord;->getFreshnessMs(J)I

    move-result v5

    invoke-virtual {v2, v0, v1}, Lcom/android/server/notification/NotificationRecord;->getExposureMs(J)I

    move-result v6

    .line 564
    invoke-static {p3, p4, v3, v5, v6}, Lcom/android/server/EventLogTags;->writeNotificationActionClicked(Ljava/lang/String;IIII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v4

    .line 556
    return-void

    .line 557
    .end local v0    # "now":J
    .end local v2    # "r":Lcom/android/server/notification/NotificationRecord;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public onNotificationClear(IILjava/lang/String;Ljava/lang/String;II)V
    .locals 12
    .param p1, "callingUid"    # I
    .param p2, "callingPid"    # I
    .param p3, "pkg"    # Ljava/lang/String;
    .param p4, "tag"    # Ljava/lang/String;
    .param p5, "id"    # I
    .param p6, "userId"    # I

    .prologue
    .line 573
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const/4 v6, 0x0

    .line 574
    const/16 v7, 0x42

    .line 575
    const/4 v8, 0x1

    const/4 v10, 0x2

    const/4 v11, 0x0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v9, p6

    .line 573
    invoke-virtual/range {v0 .. v11}, Lcom/android/server/notification/NotificationManagerService;->cancelNotification(IILjava/lang/String;Ljava/lang/String;IIIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    .line 572
    return-void
.end method

.method public onNotificationClick(IILjava/lang/String;)V
    .locals 19
    .param p1, "callingUid"    # I
    .param p2, "callingPid"    # I
    .param p3, "key"    # Ljava/lang/String;

    .prologue
    .line 536
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v2, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    monitor-enter v18

    .line 537
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/notification/NotificationRecord;

    .line 538
    .local v16, "r":Lcom/android/server/notification/NotificationRecord;
    if-nez v16, :cond_0

    .line 539
    const-string/jumbo v2, "NotificationService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "No notification with key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v18

    .line 540
    return-void

    .line 542
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 544
    .local v14, "now":J
    move-object/from16 v0, v16

    invoke-virtual {v0, v14, v15}, Lcom/android/server/notification/NotificationRecord;->getLifespanMs(J)I

    move-result v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v14, v15}, Lcom/android/server/notification/NotificationRecord;->getFreshnessMs(J)I

    move-result v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v14, v15}, Lcom/android/server/notification/NotificationRecord;->getExposureMs(J)I

    move-result v4

    move-object/from16 v0, p3

    invoke-static {v0, v2, v3, v4}, Lcom/android/server/EventLogTags;->writeNotificationClicked(Ljava/lang/String;III)V


    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    move/from16 v0, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/server/notification/NotificationManagerService;->addFlymePackageClickNumber(IILjava/lang/String;)V

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v17, v0

    .local v17, "sbn":Landroid/service/notification/StatusBarNotification;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual/range {v17 .. v17}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v17 .. v17}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v6

    .line 548
    invoke-virtual/range {v17 .. v17}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v7

    .line 549
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v11

    .line 548
    const/16 v8, 0x10

    .line 549
    const/16 v9, 0x40

    const/4 v10, 0x0

    .line 550
    const/4 v12, 0x1

    const/4 v13, 0x0

    move/from16 v3, p1

    move/from16 v4, p2

    .line 547
    invoke-virtual/range {v2 .. v13}, Lcom/android/server/notification/NotificationManagerService;->cancelNotification(IILjava/lang/String;Ljava/lang/String;IIIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v18

    .line 535
    return-void

    .line 536
    .end local v14    # "now":J
    .end local v16    # "r":Lcom/android/server/notification/NotificationRecord;
    .end local v17    # "sbn":Landroid/service/notification/StatusBarNotification;
    :catchall_0
    move-exception v2

    monitor-exit v18

    throw v2
.end method

.method public onNotificationError(IILjava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)V
    .locals 20
    .param p1, "callingUid"    # I
    .param p2, "callingPid"    # I
    .param p3, "pkg"    # Ljava/lang/String;
    .param p4, "tag"    # Ljava/lang/String;
    .param p5, "id"    # I
    .param p6, "uid"    # I
    .param p7, "initialPid"    # I
    .param p8, "message"    # Ljava/lang/String;
    .param p9, "userId"    # I

    .prologue
    .line 616
    const-string/jumbo v4, "NotificationService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onNotification error pkg="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " tag="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 617
    const-string/jumbo v6, "; will crashApplication(uid="

    .line 616
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p6

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 617
    const-string/jumbo v6, ", pid="

    .line 616
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p7

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 617
    const-string/jumbo v6, ")"

    .line 616
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 619
    const/4 v14, 0x4

    const/4 v15, 0x0

    move/from16 v5, p1

    move/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move/from16 v9, p5

    move/from16 v13, p9

    .line 618
    invoke-virtual/range {v4 .. v15}, Lcom/android/server/notification/NotificationManagerService;->cancelNotification(IILjava/lang/String;Ljava/lang/String;IIIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    .line 620
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v18

    .line 622
    .local v18, "ident":J
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    .line 623
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Bad notification posted from package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 624
    const-string/jumbo v6, ": "

    .line 623
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p8

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 622
    move/from16 v0, p6

    move/from16 v1, p7

    move-object/from16 v2, p3

    invoke-interface {v4, v0, v1, v2, v5}, Landroid/app/IActivityManager;->crashApplication(IILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 627
    :goto_0
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 615
    return-void

    .line 625
    :catch_0
    move-exception v16

    .local v16, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public onNotificationExpansionChanged(Ljava/lang/String;ZZ)V
    .locals 10
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "userAction"    # Z
    .param p3, "expanded"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 656
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v9, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v9

    .line 657
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/notification/NotificationRecord;

    .line 658
    .local v8, "r":Lcom/android/server/notification/NotificationRecord;
    if-eqz v8, :cond_0

    .line 659
    iget-object v1, v8, Lcom/android/server/notification/NotificationRecord;->stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    invoke-virtual {v1, p2, p3}, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->onExpansionChanged(ZZ)V

    .line 660
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 662
    .local v6, "now":J
    if-eqz p2, :cond_1

    move v1, v2

    :goto_0
    if-eqz p3, :cond_2

    .line 663
    :goto_1
    invoke-virtual {v8, v6, v7}, Lcom/android/server/notification/NotificationRecord;->getLifespanMs(J)I

    move-result v3

    invoke-virtual {v8, v6, v7}, Lcom/android/server/notification/NotificationRecord;->getFreshnessMs(J)I

    move-result v4

    invoke-virtual {v8, v6, v7}, Lcom/android/server/notification/NotificationRecord;->getExposureMs(J)I

    move-result v5

    move-object v0, p1

    .line 661
    invoke-static/range {v0 .. v5}, Lcom/android/server/EventLogTags;->writeNotificationExpansion(Ljava/lang/String;IIIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v6    # "now":J
    :cond_0
    monitor-exit v9

    .line 655
    return-void

    .restart local v6    # "now":J
    :cond_1
    move v1, v0

    .line 662
    goto :goto_0

    :cond_2
    move v2, v0

    goto :goto_1

    .line 656
    .end local v6    # "now":J
    .end local v8    # "r":Lcom/android/server/notification/NotificationRecord;
    :catchall_0
    move-exception v0

    monitor-exit v9

    throw v0
.end method

.method public onNotificationVisibilityChanged([Lcom/android/internal/statusbar/NotificationVisibility;[Lcom/android/internal/statusbar/NotificationVisibility;)V
    .locals 8
    .param p1, "newlyVisibleKeys"    # [Lcom/android/internal/statusbar/NotificationVisibility;
    .param p2, "noLongerVisibleKeys"    # [Lcom/android/internal/statusbar/NotificationVisibility;

    .prologue
    const/4 v2, 0x0

    .line 633
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v4, v3, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v4

    .line 634
    :try_start_0
    array-length v5, p1

    move v3, v2

    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v0, p1, v3

    .line 635
    .local v0, "nv":Lcom/android/internal/statusbar/NotificationVisibility;
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v6, v6, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    iget-object v7, v0, Lcom/android/internal/statusbar/NotificationVisibility;->key:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/NotificationRecord;

    .line 636
    .local v1, "r":Lcom/android/server/notification/NotificationRecord;
    if-nez v1, :cond_0

    .line 634
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 637
    :cond_0
    iget v6, v0, Lcom/android/internal/statusbar/NotificationVisibility;->rank:I

    const/4 v7, 0x1

    invoke-virtual {v1, v7, v6}, Lcom/android/server/notification/NotificationRecord;->setVisibility(ZI)V

    .line 638
    invoke-virtual {v0}, Lcom/android/internal/statusbar/NotificationVisibility;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 633
    .end local v0    # "nv":Lcom/android/internal/statusbar/NotificationVisibility;
    .end local v1    # "r":Lcom/android/server/notification/NotificationRecord;
    :catchall_0
    move-exception v2

    monitor-exit v4

    throw v2

    .line 644
    :cond_1
    :try_start_1
    array-length v3, p2

    :goto_2
    if-ge v2, v3, :cond_3

    aget-object v0, p2, v2

    .line 645
    .restart local v0    # "nv":Lcom/android/internal/statusbar/NotificationVisibility;
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v5, v5, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    iget-object v6, v0, Lcom/android/internal/statusbar/NotificationVisibility;->key:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/NotificationRecord;

    .line 646
    .restart local v1    # "r":Lcom/android/server/notification/NotificationRecord;
    if-nez v1, :cond_2

    .line 644
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 647
    :cond_2
    iget v5, v0, Lcom/android/internal/statusbar/NotificationVisibility;->rank:I

    const/4 v6, 0x0

    invoke-virtual {v1, v6, v5}, Lcom/android/server/notification/NotificationRecord;->setVisibility(ZI)V

    .line 648
    invoke-virtual {v0}, Lcom/android/internal/statusbar/NotificationVisibility;->recycle()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .end local v0    # "nv":Lcom/android/internal/statusbar/NotificationVisibility;
    .end local v1    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_3
    monitor-exit v4

    .line 632
    return-void
.end method

.method public onPanelHidden()V
    .locals 3

    .prologue
    .line 591
    invoke-static {}, Lcom/android/server/EventLogTags;->writeNotificationPanelHidden()V

    .line 593
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-get21(Lcom/android/server/notification/NotificationManagerService;)Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v0

    const-string/jumbo v1, "NotificationService"

    const/16 v2, 0xa

    invoke-static {v0, v2, v1}, Landroid/os/MiuiProcess;->setThreadPriority(IILjava/lang/String;)V

    .line 590
    return-void
.end method

.method public onPanelRevealed(ZI)V
    .locals 3
    .param p1, "clearEffects"    # Z
    .param p2, "items"    # I

    .prologue
    .line 581
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-get21(Lcom/android/server/notification/NotificationManagerService;)Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v0

    const-string/jumbo v1, "NotificationService"

    const/4 v2, -0x2

    invoke-static {v0, v2, v1}, Landroid/os/MiuiProcess;->setThreadPriority(IILjava/lang/String;)V

    .line 583
    invoke-static {p2}, Lcom/android/server/EventLogTags;->writeNotificationPanelRevealed(I)V

    .line 584
    if-eqz p1, :cond_0

    .line 585
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$1;->clearEffects()V

    .line 579
    :cond_0
    return-void
.end method

.method public onSetDisabled(I)V
    .locals 8
    .param p1, "status"    # I

    .prologue
    const/4 v4, 0x0

    .line 500
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v5, v5, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v5

    .line 501
    :try_start_0
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 502
    const/high16 v7, 0x40000

    and-int/2addr v7, p1

    if-eqz v7, :cond_0

    const/4 v4, 0x1

    .line 501
    :cond_0
    invoke-static {v6, v4}, Lcom/android/server/notification/NotificationManagerService;->-set2(Lcom/android/server/notification/NotificationManagerService;Z)Z

    .line 503
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const/4 v6, 0x0

    invoke-static {v4, v6}, Lcom/android/server/notification/NotificationManagerService;->-wrap9(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 505
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .line 507
    .local v2, "identity":J
    :try_start_1
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v4, v4, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->getRingtonePlayer()Landroid/media/IRingtonePlayer;

    move-result-object v1

    .line 508
    .local v1, "player":Landroid/media/IRingtonePlayer;
    if-eqz v1, :cond_1

    .line 509
    invoke-interface {v1}, Landroid/media/IRingtonePlayer;->stopAsync()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 513
    :cond_1
    :try_start_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 516
    .end local v1    # "player":Landroid/media/IRingtonePlayer;
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-wide v2

    .line 518
    :try_start_3
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v4, v4, Lcom/android/server/notification/NotificationManagerService;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v4}, Landroid/os/Vibrator;->cancel()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 520
    :try_start_4
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local v2    # "identity":J
    :cond_2
    monitor-exit v5

    .line 499
    return-void

    .line 511
    .restart local v2    # "identity":J
    :catch_0
    move-exception v0

    .line 513
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_5
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 500
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v2    # "identity":J
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 512
    .restart local v2    # "identity":J
    :catchall_1
    move-exception v4

    .line 513
    :try_start_6
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 512
    throw v4

    .line 519
    :catchall_2
    move-exception v4

    .line 520
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 519
    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method public onNotificationClearForReason(IILjava/lang/String;Ljava/lang/String;III)V
    .locals 12
    .param p1, "callingUid"    # I
    .param p2, "callingPid"    # I
    .param p3, "pkg"    # Ljava/lang/String;
    .param p4, "tag"    # Ljava/lang/String;
    .param p5, "id"    # I
    .param p6, "userId"    # I
    .param p7, "reason"    # I

    .prologue
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const/4 v6, 0x0

    const/16 v7, 0x42

    const/4 v8, 0x1

    const/4 v11, 0x0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-virtual/range {v0 .. v11}, Lcom/android/server/notification/NotificationManagerService;->cancelNotification(IILjava/lang/String;Ljava/lang/String;IIIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    return-void
.end method

.method public onNotificationUserFilter(Ljava/lang/String;Ljava/lang/String;III)V
    .locals 6
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "id"    # I
    .param p4, "userId"    # I
    .param p5, "key"    # I

    .prologue
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/notification/NotificationManagerService;->updateNotificationUserFilter(Ljava/lang/String;Ljava/lang/String;III)V

    return-void
.end method
